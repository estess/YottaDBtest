#! /usr/local/bin/tcsh -f
#################################################################
#								#
#	Copyright 2014 Fidelity Information Services, Inc	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################

cd $3
setenv gtmgbldir "mumps.gld"
source $gtm_com/gtm_cshrc.csh
setenv gtm_tst $4
source $gtm_tst/com/remote_getenv.csh $3

setenv gtm_dist $PWD/$tst_ver/$tst_image
setenv gtm_exe $gtm_dist
setenv gtm_ver $gtm_dist:h
setenv GTM "$gtm_exe/mumps -direct"

source $tst_working_dir/encr_env_remote_user.csh

$GTM << GTM_EOF
set ^gtm8157=\$J
set file="gtm.lock" open file use file write \$zdate(\$H,"24:60:SS") close file
zsystem ("$gtm_tst/com/wait_for_log.csh -log dse.lock -duration 300 -waitcreation")
w \$zdate(\$H,"24:60:SS")
GTM_EOF

date >&! gtm.done

# The other user's process will not have permission to remove ipcs of this user, but will have permissions
# on db and would have cleaned up db fileheader. Do an argumentless rundown to remove the orphaned ipcs.
$gtm_tst/com/wait_for_log.csh -log gtm8157.done
$MUPIP rundown >&! rundown.outx
