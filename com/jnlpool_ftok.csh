#!/usr/local/bin/tcsh -f   
set ipc = `$MUPIP ftok -jnlpool $gtm_repl_instance | grep repl | $tst_awk '{printf("-s %s -m %s",$3,$6);}'`
echo $ipc
