#!/usr/local/bin/tcsh -f
#
# Test Plan
#	This is a new subtest for testing Chinese collation in local variables. It
#	follows the same pattern as in local_col.csh
#	The flow is described here:
#	1. Create a db with Chinese collation
#	2. Fill the db as well as some local variables though calling some M programs.
#	3. Do zwr of the local variables A, B and morefill
#	4. Compare the log to a pre-generated reference file by calling
#	   check_local_chnm.csh
#	
$switch_chset "UTF-8"
source $gtm_tst/com/cre_coll_sl.csh chinese 1

# ========= debug section ===========
echo " ====== DEBUG INFORMATION START ======"
echo $gtm_local_collate
env | grep gtm_collate_1
echo " ====== DEBUG INFORMATION END ======"
# ======== end of debug section =====

$GTM << \aaa  >& local_chnc.out
w "Current local collation=",$$get^%LCLCOL,!
if '$$set^%LCLCOL(1) W "Local collation cannot be changed",!
do ls^mixfill
do ls1^mixfill
zwrite a
zwrite A
do lks^mixfill
do lks1^mixfill
zwrite a
zwrite A
do lvs^mixfill
do lvs1^mixfill
\aaa
$gtm_tst/$tst/u_inref/check_local_chnc.csh
