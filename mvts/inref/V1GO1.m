V1GO1 ;IW-KO-TS,V1GO,MVTS V9.10;15/6/96;GOTO COMMAND (LOCAL BRANCHING) -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"123---V1GO1: GOTO command (local branching) -1-",!
 W !,"GOTO label",!
382 W !,"I-382/383  label is % followed by alpha and digit"
3821 S ^ABSN="11566",^ITEM="I-382/383.1  label is %",^NEXT="3822^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%"
 GOTO % S VCOMP=VCOMP_" E- % "
 S VCOMP=VCOMP_" E- % NEXT "
 ;
% S ^VCOMP=VCOMP,^VCORR="%" D ^VEXAMINE
3822 S ^ABSN="11567",^ITEM="I-382/383.2  label is % followed by an alpha",^NEXT="3823^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%A"
 GOTO %A
 S VCOMP=VCOMP_" E- "
 ;
%90 S ^VCOMP=VCOMP,^VCORR="%90" D ^VEXAMINE
3826 S ^ABSN="11571",^ITEM="I-382/383.6  label is % followed by 7 digits",^NEXT="3827^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%0000000"
 G %0000000
 ;
%A S ^VCOMP=VCOMP,^VCORR="%A" D ^VEXAMINE
3823 S ^ABSN="11568",^ITEM="I-382/383.3  label is % followed by alphas",^NEXT="3824^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%ABCDEFG"
 G %ABCDEFG
 ;
%2345678 S ^VCOMP=VCOMP,^VCORR="%2345678" D ^VEXAMINE
3828 S ^ABSN="11573",^ITEM="I-382/383.8  label is % followed by combination of an alpha and a digit",^NEXT="3829^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%A1" G %A1
 ;
%0 S ^VCOMP=VCOMP,^VCORR="%0" D ^VEXAMINE
3825 S ^ABSN="11570",^ITEM="I-382/383.5  label is % followed by 2 digits",^NEXT="3826^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%90"
 G %90
 ;
%ABCDEFG S ^VCOMP=VCOMP,^VCORR="%ABCDEFG" D ^VEXAMINE
3824 S ^ABSN="11569",^ITEM="I-382/383.4  label is % followed by a digit",^NEXT="3825^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%0"
 G %0
 ;
%0000000 S ^VCOMP=VCOMP,^VCORR="%0000000" D ^VEXAMINE
3827 S ^ABSN="11572",^ITEM="I-382/383.7  label is % followed by another 7 digits",^NEXT="3828^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%2345678" G %2345678
 ;
%A1 S ^VCOMP=VCOMP,^VCORR="%A1" D ^VEXAMINE
3829 S ^ABSN="11574",^ITEM="I-382/383.9  label is % followed by combination of alphas and digits",^NEXT="380^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="%A1B2C3D"
 G %A1B2C3D
 ;
 S VCOMP=VCOMP_" NEXT"
%A1B2C3D S ^VCOMP=VCOMP,^VCORR="%A1B2C3D" D ^VEXAMINE
 ;
380 W !,"I-380  label is alpha"
3801 S ^ABSN="11575",^ITEM="I-380.1  label is an alpha",^NEXT="3802^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="A" G A
 ;
A S ^VCOMP=VCOMP,^VCORR="A" D ^VEXAMINE
3802 S ^ABSN="11576",^ITEM="I-380.2  label is different alpha",^NEXT="3803^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="Q"
 G Q
 ;
Z S ^VCOMP=VCOMP,^VCORR="Z" D ^VEXAMINE
3804 S ^ABSN="11578",^ITEM="I-380.4  label is 2 alphas",^NEXT="3805^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="DO"
 G DO
 ;
SET S ^VCOMP=VCOMP,^VCORR="SET" D ^VEXAMINE
3808 S ^ABSN="11582",^ITEM="I-380.8  label is 8 alphas",^NEXT="V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="ABCDEFGH"
 G ABCDEFGH
 ;
Q S ^VCOMP=VCOMP,^VCORR="Q" D ^VEXAMINE
3803 S ^ABSN="11577",^ITEM="I-380.3  label is different alpha",^NEXT="3804^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="Z"
 G Z
 ;
IF S ^VCOMP=VCOMP,^VCORR="IF" D ^VEXAMINE
3806 S ^ABSN="11580",^ITEM="I-380.6  label is 4 alphas",^NEXT="3807^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="QUIT"
 G QUIT
 ;
DO S ^VCOMP=VCOMP,^VCORR="DO" D ^VEXAMINE
3805 S ^ABSN="11579",^ITEM="I-380.5  label is another 2 alphas",^NEXT="3806^V1GO1,V1GO2^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="IF"
 G IF
 ;
QUIT S ^VCOMP=VCOMP,^VCORR="QUIT" D ^VEXAMINE
3807 S ^ABSN="11581",^ITEM="I-380.7  label is 3 alphas",^NEXT="3808^V1GO1,V1GO3^V1GO,V1OV^VV1" D ^V1PRESET
 S VCOMP="SET"
 G SET
 ;
ABCDEFGH S ^VCOMP=VCOMP,^VCORR="ABCDEFGH" D ^VEXAMINE
 ;
END W !!,"End of 123---V1GO1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
