#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2018 YottaDB LLC. and/or its subsidiaries.	#
# All rights reserved.						#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
#
#
#
echo "# Using literal false postconditionals with arguments containing syntax errors"
echo "# In previous versions, this would produce a SIG11 error"
$ydb_dist/mumps -run test1^gtm8854
$ydb_dist/mumps -run test2^gtm8854
