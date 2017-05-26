#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2002-2016 Fidelity National Information		#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
echo "Checking ZWR output of globals for straight Collation"
$GTM << \aaa >& straight.out
zwr ^AGLOBALVAR1
zwr ^BGLOBALVAR1
zwr ^morefill
h
\aaa
set tstamp=`date +%H%M%S`
set diff_file="straight_$tstamp.diff"
diff $gtm_tst/$tst/inref/straight.txt straight.out >& "$diff_file"
if $status then
	echo "Globals collation check FAILED"
	echo "Check straight_$tstamp.diff"
else
	echo "Globals collation check PASSED"
	echo "Now verify data in application level"
	$GTM << \aaa
	d in2^mixfill("ver",15)
	d in2^numfill("ver",1,2)
	h
\aaa
endif
