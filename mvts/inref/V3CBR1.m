V3CBR1 ;IW-KO-YS-TS,V3CBR,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
1 W !!,"140---V3CBR1: call by reference -1-",!
 S ^ABSN="31095",^ITEM="III-1095  selective KILL command"
 S ^NEXT="2^V3CBR1,V3CBR2^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d A(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 1Y 0 1Y|BC0 1Y 0 0|" D ^VEXAMINE
 ;
2 S ^ABSN="31096",^ITEM="III-1096  KILL all command"
 S ^NEXT="3^V3CBR1,V3CBR2^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d B(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 0 0 0|BC0 0 0 0|" D ^VEXAMINE
 ;
3 S ^ABSN="31097",^ITEM="III-1097  exclusive KILL command"
 S ^NEXT="V3CBR2^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d C(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 0 0 0|BC0 0 0 0|" D ^VEXAMINE
END W !!,"End of 140 --- V3CBR1",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
A(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 K A
 S ^VCOMP=^VCOMP_"/" D CHK
 Q
 ;
B(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 K
 S ^VCOMP=^VCOMP_"/" D CHK
 Q
 ;
C(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 K (A)
 S ^VCOMP=^VCOMP_"/" D CHK
 Q
CHK ;
 S ^VCOMP=^VCOMP_$D(X)      I $D(X)#10=1 S ^VCOMP=^VCOMP_X
 S ^VCOMP=^VCOMP_" "
 S ^VCOMP=^VCOMP_$D(Y)      I $D(Y)#10=1 S ^VCOMP=^VCOMP_Y
 S ^VCOMP=^VCOMP_" "
 S ^VCOMP=^VCOMP_$D(A)      I $D(A)#10=1 S ^VCOMP=^VCOMP_A
 S ^VCOMP=^VCOMP_" "
 S ^VCOMP=^VCOMP_$D(B)      I $D(B)#10=1 S ^VCOMP=^VCOMP_B
 S ^VCOMP=^VCOMP_"|"
 Q
