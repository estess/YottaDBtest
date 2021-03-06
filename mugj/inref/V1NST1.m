V1NST1	;NESTING LEVEL -1-;KO-YS-TS,,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1NST1: TEST OF NESTING ( FOR, XECUTE, DO, @, <FUNCTION> ) -1-"
	W !,"AS THIS OWN ROUTINE IS COUNTED AS ONE LEVEL OF NESTING"
	W !,"ADDITIONAL 14 LEVELS OF NESTING ARE REQUIRED." W:$Y>55 #
	W !,"ADMITTED NESTING LEVELS ARE INDICATED BY THE NUMBER IN EACH TEST.",!
653	W !,"I-653  1 level of DO, and 14 levels of FOR"
	S ITEM="I-653.1  termination by GOTO",X="(OK)"
	F A=1:1:2 F B=1:1:2 F C=1:1:2 F D=1:1:2 F E=1:1:2 F F=1:1:2 F G=1:1:2 F H=1:1:2 F I=1:1:2 F J=1:1:2 F K=1:1:2 F L=1:1:2 F M=1:1:2 F N=1:1:2 I C=2 S VCOMP=X G F2
	S VCOMP=VCOMP_" ERROR 653"
F2	S VCORR="(OK)" D EXAMINER
	;
	S ITEM="I-653.2  termination by QUIT",X="(OK QUIT)",Z=0
	F A=1:1:2 Q:Z  F B=1:1:2 Q:Z  F C=1:1:2 Q:Z  F D=1:1:2 Q:Z  F E=1:1:2 Q:Z  F F=1:1:2 Q:Z  F G=1:1:2 Q:Z  F H=1:1:2 Q:Z  F I=1:1:2 Q:Z  F J=1:1:2 Q:Z  F K=1:1:2 Q:Z  F L=1:1:2 Q:Z  F M=1:1:2 Q:Z  F N=1:1:2 I C=2 S VCOMP=X,Z=1
	S VCORR="(OK QUIT)" D EXAMINER
	;
654	W !,"I-654  1 level of DO, and 14 levels of XECUTE"
	S ITEM="I-654  ",VCOMP=""
	S A="X B",B="X C",C="X D",D="X E",E="X F",F="X G",G="X H",H="X I"
	S I="X J",J="X K",K="X L",L="X M",M="X N"
	S P=0,N="S P=P+1 S VCOMP=VCOMP_P"
	X N,M,L,K,I,J,H,G,F,E,D,C,B,A
	S VCORR="1234567891011121314" D EXAMINER
	;
655	W !,"I-655  15 levels of DO"
	S ITEM="I-655.1  local DO",V=""
	D D1
	S VCOMP=V,VCORR="1234567891011121314" D EXAMINER
	;
	S ITEM="I-655.2  external DO",V=""
	D D1^V1NSTE
	S VCOMP=V,VCORR="E1E2E3E4E5E6E7E8E9E10E11E12E13E14" D EXAMINER
	;
656	W !,"I-656  15 levels of combinated DO, FOR, XECUTE"
	S ITEM="I-656  ",VCOMP="",Z=0
	S GGG="F H=1:1:2 Q:Z  F I=1:1:2 Q:Z  D JJJ^V1NSTE"
	S MMM="F N=1:1:2 I B=2 S VCOMP=""OK"",Z=1"
	F A=1:1:2 Q:Z  F B=1:1:2 Q:Z  D CCC
	S VCORR="OK" D EXAMINER
	;
END	W !!,"END OF V1NST1",!
	S ROUTINE="V1NST1",TESTS=6,AUTO=6,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
	Q
D6611	S V=V_I_J_" " Q
	;
GOTO	;nesting GOTO command
GG1	S V=V_"G1" G G2^V1NSTE
GG2	S V=V_"G2" G G3^V1NSTE
GG3	S V=V_"G3" G G4^V1NSTE
GG4	S V=V_"G4" G G5^V1NSTE
GG5	S V=V_"G5" G G6^V1NSTE
GG6	S V=V_"G6" G G7^V1NSTE
GG7	S V=V_"G7" G G8^V1NSTE
GG8	S V=V_"G8" G G9^V1NSTE
GG9	S V=V_"G9" G G10^V1NSTE
GG10	S V=V_"G10" G G11^V1NSTE
GG11	S V=V_"G11" G G12^V1NSTE
GG12	S V=V_"G12" G G13^V1NSTE
GG13	S V=V_"G13" G G14^V1NSTE
GG14	S V=V_"G14" G G6602
	;
G14	S V=V_14 G G6601
G1	S V=V_1 G G2
G3	S V=V_3 G G4
G5	S V=V_5 G G6
G6	S V=V_6 G G7
G7	S V=V_7 G G8
G13	S V=V_13 G G14
G8	S V=V_8 G G9
G2	S V=V_2 G G3
G4	S V=V_4 G G5
G11	S V=V_11 G G12
G9	S V=V_9 G G10
G12	S V=V_12 G G13
G10	S V=V_10 G G11
	;
D1	S V=V_1 D D2 Q
D2	S V=V_2 D D3 Q
D3	S V=V_3 D D4 Q
D4	S V=V_4 D D5 Q
D5	S V=V_5 D D6 Q
D6	S V=V_6 D D7 Q
D7	S V=V_7 D D8 Q
D8	S V=V_8 D D9 Q
D9	S V=V_9 D D10 Q
D10	S V=V_10 D D11 Q
D11	S V=V_11 D D12 Q
D12	S V=V_12 D D13 Q
D13	S V=V_13 D D14 Q
D14	S V=V_14 Q
	;
ED1	S V=V_"E1" D D2^V1NSTE Q
ED2	S V=V_"E2" D D3^V1NSTE Q
ED3	S V=V_"E3" D D4^V1NSTE Q
ED4	S V=V_"E4" D D5^V1NSTE Q
ED5	S V=V_"E5" D D6^V1NSTE Q
ED6	S V=V_"E6" D D7^V1NSTE Q
ED7	S V=V_"E7" D D8^V1NSTE Q
ED8	S V=V_"E8" D D9^V1NSTE Q
ED9	S V=V_"E9" D D10^V1NSTE Q
ED10	S V=V_"E10" D D11^V1NSTE Q
ED11	S V=V_"E11" D D12^V1NSTE Q
ED12	S V=V_"E12" D D13^V1NSTE Q
ED13	S V=V_"E13" D D14^V1NSTE Q
ED14	S V=V_"E14" Q
	;
CCC	Q:Z  F D=1:1:2 Q:Z  F E=1:1:2 Q:Z  F F=1:1:2 X GGG
	QUIT
D6612	S V=V_I_J_" "
