	S ABC=123,DEF=456,%J=999
	S %="^TMP(%J,ABC,DEF,""D"",1,ABC\100*100)"
	K ^TMP
	W $T(+1),!
	W $D(@%),!
	S @%=1
	W $D(@%),!
	S ^(ABC\100*100,1)="DATA"
	W $D(@%),!
