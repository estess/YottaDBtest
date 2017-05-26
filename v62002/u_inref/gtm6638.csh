#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2015-2016 Fidelity National Information		#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################

source $gtm_tst/com/gtm_test_setbgaccess.csh
# If run with journaling, this test requires BEFORE_IMAGE so set that unconditionally even if test was started with -jnl nobefore
source $gtm_tst/com/gtm_test_setbeforeimage.csh
setenv gtm_poollimit 0 # gtmpoollimit setting causes restarts, due to which threein1.m takes a long time to run and intermittent failures.

set hostn = $HOST:r:r:r

# For servers that are very slow with defer allocate OFF, turn it ON
set daonservers="flyingv"
echo $daonservers | $grep -w "$hostn" > /dev/null
if (!($status)) then
	setenv gtm_test_defer_allocate 1
endif

# We want epoch tapering so don't use the random setting
setenv gtm_test_epoch_taper 1

$gtm_tst/com/dbcreate.csh mumps 1 900 -allocation=2048 -extension_count=2048

echo "Verify epoch tapering is on by default"
$DSE change -fileheader -sleep_spin_count=128
$DSE dump -fileheader -all | & $grep "Epoch taper"

echo "Verify GDE with -noepochtaper"
rm mumps.dat
$GDE change -region DEFAULT -noepochtaper >>& gde_et1.out
$MUPIP create >>& gde_et1.out
$DSE change -fileheader -sleep_spin_count=128
$DSE dump -fileheader -all | & $grep "Epoch taper"

echo "Verify GDE with -epochtaper"
rm mumps.dat
$GDE change -region DEFAULT -epochtaper >>& gde_et2.out
$MUPIP create >>& gde_et2.out
$DSE change -fileheader -sleep_spin_count=128
$DSE dump -fileheader -all | & $grep "Epoch taper"

echo "Turn off tapering and verify it is off"
$MUPIP set -noepochtaper -region "*"
dse dump -fileheader -all | & $grep "Epoch taper"

echo "Turn on tapering and verify it is on"
$MUPIP set -epochtaper -region "*"
dse dump -fileheader -all | & $grep "Epoch taper"

echo "Verify if epoch taper is disabled in the template a new region picks it up"
$GDE >>& gde_et3.out << END
show -template
template -region -noepochtaper
show -template
add -name a -region=areg
add -region areg -dyn=aseg
add -segment aseg -file=a.dat
show -region
quit
END

echo "Examine the before and after for the template"
$grep ABLED gde_et3.out| $grep \<default\>

echo "Examine the just added region"
$grep ABLED gde_et3.out | $grep AREG

echo "Bump up the global buffers so we can accumulate some dirty buffers"
$MUPIP set -global_buffers=32767 -region "*"
echo "Set time based epoch to 90 seconds and autoswitch based epoch to 1 GB."
echo "At this writing, this is what Profile runs with."
$MUPIP set -journal="enable,on,before,epoch=90,auto=2097152" -reg "*" >& jnl.log

($gtm_dist/mumps -run %XCMD 'do showdbuffs^epochmon("DEFAULT",1,2000)' >taperdata.txt & ; echo $! >! mon_pid.log) >&! mon.outx
set mon_pid = `cat mon_pid.log`

# We expect new servers to be really fast
set upperbound=3000000
set expected=559

# For existing really slow servers
set really_slow_servers="atlst2000 inti liza cronem estess lespaul pfloyd jackal"
echo $really_slow_servers | $grep -w "$hostn" > /dev/null
if (!($status)) then
	set upperbound=250000
	set expected=442
endif

# For existing slow servers
if ($hostn =~ {atlhxit1,carmen,charybdis,scylla,sphere}) then
	set upperbound=500000
	set expected=448
endif

# For existing fast servers
set fast_servers="titan tuatara"
set fast_servers="$fast_servers bahirs base hathawayc duzang maimoneb rajamanin shaha kishoreh"
echo $fast_servers | $grep -w "$hostn" > /dev/null
if (!($status)) then
	set upperbound=1000000
	set expected=524
endif

echo "upperbound=$upperbound expected=$expected" >3nparms.out

echo "Run 3n+1 to generate some dirty buffers"
echo 1 $upperbound 16 100 | $gtm_dist/mumps -run threeen1f > threeen1f.out

set actual=`cat threeen1f.out | cut -f5 -d" "`

if ("$actual" == $expected) then
	echo "Pass"
else
	echo "Fail: expected=$expected actual=$actual"
	cat threeen1f.out
endif

# Make sure the monitoring pid is gone
$kill -15 $mon_pid >/dev/null
$gtm_tst/com/wait_for_proc_to_die.csh $mon_pid

$gtm_tst/com/dbcheck.csh
