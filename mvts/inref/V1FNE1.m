V1FNE1 ;IW-YS-TS,V1FN,MVTS V9.10;15/6/96;FUNCTION $EXTRACT -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"92---V1FNE1: $EXTRACT function -1-" W:$Y>55 #
 W !!,"$EXTRACT(expr1,intexpr2)",! W:$Y>55 #
263 W !,"I-263  expr1 is string literal"
 S ^ABSN="11254",^ITEM="I-263  expr1 is string literal",^NEXT="264^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E("ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",26) S ^VCORR="Z" D ^VEXAMINE
 ;
264 W !,"I-264  expr1 is positive integer"
 S ^ABSN="11255",^ITEM="I-264  expr1 is positive integer",^NEXT="265^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(000789400,3) S ^VCORR="9" D ^VEXAMINE
 ;
265 W !,"I-265  expr1 is negative integer"
2651 S ^ABSN="11256",^ITEM="I-265.1  -000789400",^NEXT="2652^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(-000789400,3) S ^VCORR="8" D ^VEXAMINE
2652 S ^ABSN="11257",^ITEM="I-265.2  -00789400",^NEXT="266^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(-00789400,1) S ^VCORR="-" D ^VEXAMINE
 ;
266 W !,"I-266  expr1 is non-integer numeric literal"
2661 S ^ABSN="11258",^ITEM="I-266.1  0007.89400",^NEXT="2662^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(0007.89400,3) S ^VCORR="8" D ^VEXAMINE
2662 S ^ABSN="11259",^ITEM="I-266.2  -000723.89400E-01",^NEXT="2663^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(-000723.89400E-01,4) S ^VCORR="." D ^VEXAMINE
2663 S ^ABSN="11260",^ITEM="I-266.3  0000723.8900E04",^NEXT="2664^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(0000723.8900E04,5) S ^VCORR="9" D ^VEXAMINE
2664 S ^ABSN="11261",^ITEM="I-266.4  -0000.00E04",^NEXT="267^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP="123" S ^VCOMP=$E(-0000.00E04,2) S ^VCORR="" D ^VEXAMINE
 ;
267 W !,"I-267  expr1 is function"
2671 S ^ABSN="11262",^ITEM="I-267.1  $EXTRACT(expr1,intexpr2)",^NEXT="2672^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E($EXTRACT(07564.56,2),1) S ^VCORR="5" D ^VEXAMINE
2672 S ^ABSN="11263",^ITEM="I-267.2  $E(expr1,intexpr2,intexpr3)",^NEXT="268^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E($E(07564.56,2,5),4) S ^VCORR="." D ^VEXAMINE
 ;
268 W !,"I-268  expr1 contains unary operator"
2681 S ^ABSN="11264",^ITEM="I-268.1  + unary operator",^NEXT="2682^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(+"003.56E3",3) S ^VCORR="6" D ^VEXAMINE
2682 S ^ABSN="11265",^ITEM="I-268.2  expr1 is + lvn",^NEXT="269^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S A="38E4",^VCOMP=$E(+A,6) S ^VCORR="0" D ^VEXAMINE
 ;
269 W !,"I-269  expr1 contains binary operator"
2691 S ^ABSN="11266",^ITEM="I-269.1  + binary operator",^NEXT="2692^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(1234.56+95.45,6) S ^VCORR="0" D ^VEXAMINE
2692 S ^ABSN="11267",^ITEM="I-269.2  - binary operator",^NEXT="2693^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(34.56-45.453,5) S ^VCORR="8" D ^VEXAMINE
2693 S ^ABSN="11268",^ITEM="I-269.3  + and / binary operators",^NEXT="270^V1FNE1,V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$E(.8+10/3,3) S ^VCORR="6" D ^VEXAMINE
 ;
270 W !,"I-270  expr1 an empty string"
 S ^ABSN="11269",^ITEM="I-270  expr1 an empty string",^NEXT="V1FNE2^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP="123" S ^VCOMP=$E("",1) S ^VCORR="" D ^VEXAMINE
 ;
END W !!,"End of 92---V1FNE1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
