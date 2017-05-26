V1SEQ	;EXECUTION SEQUENCE;YS-TS,V1SEQ,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1SEQ: TEST OF EXECUTION SEQUENCE OF ROUTINES",!
788	W !,"I-788  GOTO and DO"
	S ITEM="I-788  ",V=""
	S V=V_1 DO DO788 S V=V_9
	S VCOMP=V,VCORR="123456!6789" D EXAMINER
	;
789	W !,"I-789  FOR and DO"
	S ITEM="I-789  ",V=""
	FOR I=1:1 Q:I=3  DO D7891
	S VCOMP=V,VCORR="111 112 121 122 131 132 211 212 221 222 231 232 " D EXAMINER
	;
790	W !,"I-790  FOR, DO, and GOTO"
	S ITEM="I-790  ",V=""
	S V=V_1 G A ;CONTROL WILL RETURN TO NEXT LINE.
	S V=V_"ERROR 790 2"
7901	S V=V_4 D B S V=V_7
	S V=V_8 F I=9:1:11 D C
	S V=V_12 F I=13:1:15 D E3^V1SEQ1
	S V=V_16 F I=17:2:21 D D
	S V=V_23 F I=24:1 G E5^V1SEQ1:I=25
	S V=V_" ERROR 7902 "
A7902	S VCOMP=V,VCORR="123456789101112131415161718192021222325" D EXAMINER
	;
791	W !,"I-791  FOR, XECUTE, DO, and GOTO"
	S ITEM="I-791.1  FOR, XECUTE, DO",V=""
	S V=V_11 F I=12:1:14 X "D H"_(I-11)
	S V=V_16 F I=17:1:19 X "D J"
	S V=V_20 F I=21:1:23 X "D K"
	S V=V_24 F I=25:1:27 X "D E3^V1SEQ1"
	S VCOMP=V,VCORR="1112131415161718192021222324252627" D EXAMINER
	;
	S ITEM="I-791.2  FOR, XECUTE, GOTO",V=""
	S V=V_0 F I=1:1:3 X "G L"
	S V=V_4 F I=5:1:7 X "G M"
	S V=V_8 F I=9:1:11 X "G N"
	S V=V_12 F I=13:1:15 X "G E3^V1SEQ1"
	S VCOMP=V,VCORR="0123456789101112131415" D EXAMINER
	;
	S ITEM="I-791.3  FOR, XECUTE, QUIT",V=""
	S V=V_0 F I=1:1:5 X "S V=V_I Q  S V=V_""ERROR """
	S VCOMP=V,VCORR="012345" D EXAMINER
	;
792	W !,"I-792  FOR, XECUTE, GOTO, and indirection"
	S ITEM="I-792  ",V=""
	K P S P="E" S V=V_0 D @P,@P,@Q S V=V_5
	S V=V_6 F I=7:1:9 D @("H"_(I-6))
	S VCOMP=V,VCORR="012345678910" D EXAMINER
	;
END	W !!,"END OF V1SEQ",!
	S ROUTINE="V1SEQ",TESTS=7,AUTO=7,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
	Q
	;
DO788	S V=V_2 GOTO GOTO788 S V=V_" ERROR G7881 " Q
	S V=V_" ERROR D7882 " Q
	S V=V_4 G G788^V1SEQ1 S V=V_" ERROR G7883 " Q
A	S V=V_2 D E1^V1SEQ1 G 7901 S V=V_"ERROR 7901 " Q
B	S V=V_5 G E2^V1SEQ1
C	S V=V_I Q
D	S V=V_I G E4^V1SEQ1
E	S V=V_1 S P="F" Q
F	S V=V_2 G E6^V1SEQ1
G	S V=V_4 Q
H1	S V=V_I Q
H2	S V=V_I
H3	S V=V_(I+1) Q
J	D E3^V1SEQ1 Q
K	G E3^V1SEQ1
L	S V=V_I Q
M	D E3^V1SEQ1 Q
N	G E3^V1SEQ1
D78811	S V=V_"!" Q
GOTO788	S V=V_3 DO DO788+2 S V=V_8 Q
D7891	F J=1:1:3 D D7892^V1SEQ1
