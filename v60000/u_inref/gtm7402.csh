#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2012-2015 Fidelity National Information 	#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################

# The test specifically avoids setting globals in EREG
setenv gtm_test_sprgde_exclude_reglist EREG

# Enable -defer_allocate so that we can get the GBLOFLOW error
setenv gtm_test_defer_allocate 1

$gtm_tst/com/dbcreate.csh mumps 8
$MUPIP set -exten=0 -reg "*" >&! set_exten_0.out
sort set_exten_0.out
$MUPIP set -exten=100 -reg EREG
$GTM << GTM_EOF
	do ^gtm7402
GTM_EOF
$gtm_tst/com/dbcheck.csh
