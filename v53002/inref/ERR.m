ERR     ; ; ; RECORD CONTEXT OF AN ERROR
        ;
RECORD  SET $ZTRAP="GOTO OPEN"
        SET %ERREC=$EC,$EC=""
	;ZSHOW "*":^ERR($J,$H)
	set ^ERR("ZSTATUS",$ZLEVEL)=$ZSTATUS
        GOTO LOOPT
LOOPV   ZSHOW "V":^ERR($J,$H,"VL",$ZLEVEL)
LOOPT   IF $ZLEVEL>1 ZGOTO $ZLEVEL-1:LOOPV
STACK   SET $ZTRAP="GOTO WARN"
        SET %ERRVH=$H
        SET ^ERR($J,%ERRVH,"$STACK")=$STACK
        SET ^ERR($J,%ERRVH,"$STACK",-1)=$STACK(-1)
        FOR %ERRVI=$STACK(-1):-1:1 DO
        . SET %ERRVK=""
        . FOR %ERRVJ="PLACE","MCODE","ECODE" DO
        . . SET %ERRVK=%ERRVK_$STACK(%ERRVI,%ERRVJ)_"|~|"
        . SET ^ERR($J,%ERRVH,"$STACK",%ERRVI)=%ERRVK
	ZWRITE ^ERR("ZSTATUS",*)
        GOTO WARN
OPEN    SET $ZTRAP="SET %ERRVF=$P GOTO OPEN1"
        SET %ERRIO=$IO,%ERRZA=$ZA,%ERRZB=$ZB,%ERRZE=$ZEOF
        SET %ERRVF="EP13.ERR"
        ;SET %ERRVF=$ZDATE($H,"YEARMMDD2460SS")_"_"_$J_".ERR"
        OPEN %ERRVF:NEWVERSION
OPEN1   USE %ERRVF
	WRITE $ZSTATUS,!
	ZSHOW "S"
        ;ZSHOW "*"
        KILL %ERRVF,%ERRIO,%ERRZA,%ERRZB,%ERRZE
        GOTO LOOPU
LOOPF   WRITE !,"LOCAL VARIABLES FOR ZLEVEL:  ",$ZLEVEL,!
        ZWRITE
LOOPU   IF $ZLEVEL>1 ZGOTO $ZLEVEL-1:LOOPF
        WRITE !
STAC    SET $ZTRAP="GOTO WARN"
        WRITE !,"PROGRAM STACK:",!
        WRITE "$STACK: ",$STACK,!
        WRITE "$STACK(-1): ",$STACK(-1),!
        FOR %ERRVI=$STACK(-1):-1:1 DO
        . WRITE !,"LEVEL: ",%ERRVI
        . SET %ERRVK=10
        . FOR %ERRVJ="PLACE","MCODE","ECODE" DO
        . . WRITE ?%ERRVK," ",%ERRVJ,": ",$STACK(%ERRVI,%ERRVJ)
        . . SET %ERRVK=%ERRVK+20
        CLOSE $IO
WARN    SET $ZTRAP="GOTO FATAL"
        IF $P'=$I SET %ERRIO=$IO,%ERRZA=$ZA,%ERRZB=$ZB,%ERRZE=$ZEOF
        USE $P:(NOCENABLE:CTRAP="":EXCEPTION="")
        WRITE !,"YOUR HAVE ENCOUNTERED AN ERROR"
        WRITE !,"PLEASE NOTIFY JOAN Q SUPPORTPERSON AND PROVIDE A COPY OF "
	WRITE !,"YOUR SCREEN/TERMINAL FROM BEFORE THE ERROR TWO LINES BELOW HERE",!
	WRITE !,"$ZSTATUS=",$ZSTATUS,!
	QUIT
FATAL   SET $ZTRAP=""
        ZMESSAGE +$PIECE($STACK($STACK(-1),"ECODE"),"Z",2)
