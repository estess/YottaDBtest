#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2007-2015 Fidelity National Information		#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
#TODO : run this test with as a user name utf-8. run on a host with hostname utf-8.
alias check_mjf 'unset echo; $tst_awk -f $gtm_tst/$tst/inref/extract.awk -v "user=$USER" -v "host=$HOST:r:r:r" \!:*; set echo'
unsetenv test_replic
set unidir="αβγδε能吞"
\rm -rf $unidir
\mkdir $unidir
cd $unidir
# not using dbcreate.csh since complicated GDL setup.
setenv gtmgbldir "ＡＢＣＤ.ＥＦＧ"
$GDE << aaa
change -segment DEFAULT -file_name=我能吞下玻璃.而傷
add -name a* -region=areg
add -name A* -region=areg
add -segment aseg -file=αβγδε.dat
add -region areg -dyn=aseg
exit
aaa
if("ENCRYPT" == $test_encryption) then
        $gtm_tst/com/create_key_file.csh >& create_key_file_dbload.out
endif
$MUPIP create
#
echo "Enable before image journaling"
$MUPIP set -journal="enable,on,before" -reg "*" >&! jnl_on_1.log
$grep "GTM-I-JNLSTATE" jnl_on_1.log | sort
sleep 2
source $gtm_tst/com/get_abs_time.csh
#
# Save for forward recovery
\cp 我能吞下玻璃.而傷 before1.dat
\cp αβγδε.dat before2.dat
$GTM << gtm_eof
for i=1:1:10 set ^adata(\$char(250+i))=i
h 2
for i=1:1:10 set ^bdata(\$char(250+i))=i
h
gtm_eof
#
echo "Enable before image journaling again"
$MUPIP set -journal="enable,on,before" -reg "*" >&! jnl_on_2.log
$grep "GTM-I-JNLSTATE" jnl_on_2.log | sort
$GTM << gtm_eof
for i=11:1:20 set ^adata(\$char(250+i))=i
h 2
for i=11:1:20 set ^bdata(\$char(250+i))=i
h
gtm_eof
#
echo "Enable before image journaling on all regions"
$MUPIP set -journal="enable,on,before,file=Üäröß.mjl" -file 我能吞下玻璃.而傷
$MUPIP set -journal="enable,on,before,file=ＥＦＧ.ＡＢＣＤ" -file αβγδε.dat
$GTM << gtm_eof
for i=21:1:30 set ^adata(\$char(250+i))=i
h 2
for i=21:1:30 set ^bdata(\$char(250+i))=i
h
gtm_eof
#
echo $MUPIP journal -forward -fence=none -verify -extract=ＡＢＣＤＥＦ.Ｇ "*"
$MUPIP journal -forward -fence=none -verify -extract=ＡＢＣＤＥＦ.Ｇ "*"
if ($status != 0) then
	echo "extract -forward TEST FAILED"
	exit 1
endif
echo "check_mjf ＡＢＣＤＥＦ.Ｇ"
check_mjf ＡＢＣＤＥＦ.Ｇ >&! check_mjf_extract.out
unset echo
$grep '\^[ab]data' check_mjf_extract.out
#
echo "Backward recovering"
echo $MUPIP journal -recover -backward -extract Üäröß.mjl,ＥＦＧ.ＡＢＣＤ -since=gtm_test_since_time
$MUPIP journal -recover -backward -extract Üäröß.mjl,ＥＦＧ.ＡＢＣＤ -since=\"$gtm_test_since_time\"  >&! journal_recover_back_extract.out
$grep "GTM-S-JNLSUCCESS" journal_recover_back_extract.out
if ($status != 0) then
	echo "recover -back TEST FAILED"
	exit 1
endif
echo "check_mjf journal extract file"
if ( -f 我能吞下玻璃_而傷.mjf ) then
	check_mjf 我能吞下玻璃_而傷.mjf >&! check_mjf_backward_extract.out
	unset echo
else
	check_mjf αβγδε.mjf >&! check_mjf_backward_extract.out
	unset echo
endif
cat << EOF
# The extract file output will be in a non-deterministic order. Will therefore cause reference file issue.
# Just grep for the globals we are interested in.
EOF

$grep '\^bdata' check_mjf_backward_extract.out | sed 's/.*\\//g'
$grep '\^adata' check_mjf_backward_extract.out | sed 's/.*\\//g'

echo "Verifying the database ..."
$GTM << gtm_ver
for i=1:1:30 do ^examine(^adata(\$char(250+i)),i,"^adata")
for i=1:1:30 do ^examine(^bdata(\$char(250+i)),i,"^bdata")
h
gtm_ver
#

echo "Forward recovering"
\cp before1.dat 我能吞下玻璃.而傷
\cp before2.dat αβγδε.dat
echo $MUPIP journal -recover -forward -extract=ＡＢＣＤＥＦ.Ｇ Üäröß.mjl,ＥＦＧ.ＡＢＣＤ
$MUPIP journal -recover -forward -extract=ＡＢＣＤＥＦ.Ｇ Üäröß.mjl,ＥＦＧ.ＡＢＣＤ >&! journal_recover_forw_extract.out
if ($status != 0) then
	echo "recover -forward TEST FAILED"
	exit 1
endif
# JNLSTATE lines will be printed for each region but the order is non-deterministic. So filter that out.
$grep -v JNLSTATE journal_recover_forw_extract.out
# Print JNLSTATE lines separately in a sorted fashion
$grep JNLSTATE journal_recover_forw_extract.out | sort
echo "check_mjf ＡＢＣＤＥＦ.Ｇ"
check_mjf ＡＢＣＤＥＦ.Ｇ >&! check_mjf_forward_extract.out
unset echo
cat << EOF
# The extract file output will be in a non-deterministic order. Will therefore cause reference file issue.
# Just grep for the globals we are interested in.
EOF

# Depending on the order of processing records in forward recovery, the same records show up as having generated by
# PID4 sometimes and PID7 some other times. Since the PID# is not that important in this test, filter that out.
$grep '\^bdata' check_mjf_forward_extract.out | sed 's/PID[0-9]/PID./g'
$grep '\^adata' check_mjf_forward_extract.out | sed 's/PID[0-9]/PID./g'

#
echo "Verifying the database ..."
$GTM << gtm_ver
for i=1:1:30 do ^examine(^adata(\$char(250+i)),i,"^adata")
for i=1:1:30 do ^examine(^bdata(\$char(250+i)),i,"^adata")
h
gtm_ver
#
#
$gtm_tst/com/dbcheck.csh
