#! /usr/local/bin/tcsh -f
setenv test_reorg "NON_REORG"  
source $gtm_tst/$tst/u_inref/cre_coll_sl_com.csh

# create a db and fill in some local variables to test local collation

source $gtm_tst/com/dbcreate.csh mumps 2 125 500
$GTM << \aaa
d ^lclcol
\aaa
$gtm_tst/com/dbcheck.csh -extr
#
echo "Compare ZWR outputs"
diff col1.out $gtm_tst/$tst/outref/pollclcol.txt > /dev/null
if $status then
        echo "Local collation test FAILED after even before MERGE "
	exit 1
else
        echo "Local collation test PASSED"
endif         
#
echo "Compare ZWR outputs"
diff col2.out $gtm_tst/$tst/outref/pollclcol.txt > /dev/null 
if $status then
        echo "Local collation test FAILED after first set of MERGE "
	exit 1
else
        echo "Local collation test PASSED"
endif         
#
echo "Compare ZWR outputs"
diff col3.out $gtm_tst/$tst/outref/pollclcol.txt > /dev/null 
if $status then
        echo "Local collation test FAILED after second set of MERGE "
	exit 1
else
        echo "Local collation test PASSED"
endif         
#
echo "Compare ZSHOW ZWR outputs"
diff zshowlcl.out $gtm_tst/$tst/outref/zshowlcl.txt > /dev/null 
if $status then
        echo "Local collation test FAILED in zshow or, zwrite"
	exit 1
else
        echo "Local collation test PASSED"
endif         
