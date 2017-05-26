#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2013, 2015 Fidelity National Information	#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
#
# ------------------------------------------------------------------------------
echo "ext_filter test starts..."
setenv subtest_list "basic notalive badconv stress multimods badconv2 badconv4 nosectrig bigtrans many_nulls read_timeout"
if ( "TRUE" == $gtm_test_unicode_support ) setenv subtest_list "$subtest_list ubasic"

setenv subtest_exclude_list ""
if ("HOST_HP-UX_PA_RISC" == "$gtm_test_os_machtype") then
	setenv subtest_exclude_list "$subtest_exclude_list nosectrig"
endif

# If the platform/host does not have prior GT.M versions, disable tests that require them
if ($?gtm_test_nopriorgtmver) then
	setenv subtest_exclude_list "$subtest_exclude_list nosectrig"
endif

$gtm_tst/com/submit_subtest.csh

echo "ext_filter test DONE."
