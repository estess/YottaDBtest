V3CBR2 ;IW-KO-YS-TS,V3CBR,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
1 W !!,"141---V3CBR2: call by reference -2-",!
 S ^ABSN="31098",^ITEM="III-1098  selective NEW command"
 S ^NEXT="2^V3CBR2,V3CBR3^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d A(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 1Y 1X 1Y|BC1X 1Y 0 0|" D ^VEXAMINE
 ;
2 S ^ABSN="31099",^ITEM="III-1099  NEW all command"
 S ^NEXT="3^V3CBR2,V3CBR3^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d B(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 0 0 0|BC1X 1Y 0 0|" D ^VEXAMINE
 ;
3 S ^ABSN="31100",^ITEM="III-1100  exclusive NEW command"
 S ^NEXT="V3CBR3^V3CBR,END^VV3" D ^V3PRESET
 S X="X",Y="Y"
 S ^VCOMP="" d  S ^VCOMP=^VCOMP_"C"
 . S ^VCOMP=^VCOMP_"A" d C(.X,.Y) S ^VCOMP=^VCOMP_"B"
 D CHK
 S ^VCORR="A/1X 1Y 1X 1Y|/0 0 1X 0|BC1X 1Y 0 0|" D ^VEXAMINE
END W !!,"End of 141 --- V3CBR2",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
A(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 n X
 S ^VCOMP=^VCOMP_"/" D CHK Q
 ;
B(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 n
 S ^VCOMP=^VCOMP_"/" D CHK Q
 ;
C(A,B) S ^VCOMP=^VCOMP_"/" D CHK
 n (A)
 S ^VCOMP=^VCOMP_"/" D CHK Q
 ;
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
