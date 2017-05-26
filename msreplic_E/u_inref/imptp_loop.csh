#!/usr/local/bin/tcsh
#wait for the secondary to let us know it's ready
$gtm_tst/com/wait_for_log.csh -log go.txt -duration 240 -waitcreation

if ($?gtm_test_dbfill) then
	set save_gtm_test_dbfill = $gtm_test_dbfill
endif
setenv gtm_test_dbfill SLOWFILL
set cntx = 1
while (! -e end_imptp_loop.txt)
	echo "GTM_TEST_DEBUGINFO "`date`
	$MSR STARTSRC INST1 INST2
	$MSR STARTSRC INST1 INST3
	$gtm_tst/com/imptp.csh $gtm_process >>&! imptp$cntx.out
	$GTM << \EOF 
write $H,!
hang $RANDOM(5)+5
write $H,!
write "Oh, by the way, I am ",$JOB,", nice to meet you",!
halt
\EOF
	$gtm_tst/com/endtp.csh >>&! endtp$cntx.out
	$MSR STOPSRC INST1 INST2
	$MSR STOPSRC INST1 INST3
	@ cntx = $cntx + 1
	if (200 == $cntx) then
		echo "TEST-E-TIMEOUT, that took too long, I give up"
		exit 1
	endif
end
echo "GTM_TEST_DEBUGINFO "`date`
echo "seen end_imptp_loop.txt, ending loop"
echo "Will start INST1 --> INST2:"
$MSR STARTSRC INST1 INST2
echo "GTM_TEST_DEBUGINFO "`date`
if ($?save_gtm_test_dbfill) then
	setenv gtm_test_dbfill $save_gtm_test_dbfill
else
	unsetenv gtm_test_dbfill
endif
# touch imptp_loop.done
date >&! imptp_loop.done
