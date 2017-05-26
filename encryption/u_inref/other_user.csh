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

set ver = `basename $gtm_ver`
set img = `basename $gtm_dist`
source $gtm_tst/com/set_specific.csh
$gtm_tst/com/send_env.csh

$rsh $tst_org_host -l $gtmtest1 $gtm_tst/$tst/u_inref/remote_user2.csh $ver $img $tst_working_dir $gtm_tst $USER >&! remote_user2.log
