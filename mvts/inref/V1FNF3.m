V1FNF3 ;IW-YS-TS,V1FN,MVTS V9.10;15/6/96;FUNCTION $FIND -3-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"98---V1FNF3: $FIND function -3-"
 W !!,"$FIND(expr1,expr2,intexpr3)",!
297 W !,"I-297  intexpr3<0"
2971 S ^ABSN="11339",^ITEM="I-297.1  expr1 contains expr2",^NEXT="2972^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$FIND("ABCBC","BC",-2) S ^VCORR=4 D ^VEXAMINE
2972 S ^ABSN="11340",^ITEM="I-297.2  expr2 is an empty string",^NEXT="2973^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$FIND("ABCBC","",-12) S ^VCORR=1 D ^VEXAMINE
2973 S ^ABSN="11341",^ITEM="I-297.3  expr1 and expr2 are empty string",^NEXT="2974^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("","",-10.2) S ^VCORR=1 D ^VEXAMINE
2974 S ^ABSN="11342",^ITEM="I-297.4  expr1 is an empty string",^NEXT="298^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("","power",-10.2),^VCORR=0 D ^VEXAMINE
 ;
298 W !,"I-298  intexpr3=0"
2981 S ^ABSN="11343",^ITEM="I-298.1  $L(expr1)>$L(expr2)",^NEXT="2982^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("abcdefghijkl","cdef",0) S ^VCORR=7 D ^VEXAMINE
2982 S ^ABSN="11344",^ITEM="I-298.2  $L(expr1)<$L(expr2)",^NEXT="2983^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","ABCD",0) S ^VCORR=0 D ^VEXAMINE
2983 S ^ABSN="11345",^ITEM="I-298.3  expr2 is an empty string",^NEXT="2984^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","",0) S ^VCORR=1 D ^VEXAMINE
2984 S ^ABSN="11346",^ITEM="I-298.4  expr1 and expr2 are empty strings",^NEXT="2985^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("","",0),^VCORR=1 D ^VEXAMINE
2985 S ^ABSN="11347",^ITEM="I-298.5  expr1 is an empty string",^NEXT="299^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("",1232,0) S ^VCORR=0 D ^VEXAMINE
 ;
299 W !,"I-299  0<intexpr3 and intexpr3'>$L(expr1)"
2991 S ^ABSN="11348",^ITEM="I-299.1  intexpr3=1",^NEXT="2992^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","BC",1) S ^VCORR=4 D ^VEXAMINE
2992 S ^ABSN="11349",^ITEM="I-299.2  $E(expr1,intexpr3,intexpr3+$L(expr2)-1)=expr2",^NEXT="2993^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABCdef","BCd",2),^VCORR=5 D ^VEXAMINE
2993 S ^ABSN="11350",^ITEM="I-299.3  intexpr3=$L(expr1)",^NEXT="2994^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","BC",3),^VCORR=0 D ^VEXAMINE
2994 S ^ABSN="11351",^ITEM="I-299.4  expr2 is an empty string",^NEXT="300^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","",2),^VCORR=2 D ^VEXAMINE
 ;
300 W !,"I-300  intexpr3>$LENGTH(expr1)"
3001 S ^ABSN="11352",^ITEM="I-300.1  $L(expr1)>$L(expr2)>1",^NEXT="3002^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABCBC","BC",6) S ^VCORR=0 D ^VEXAMINE
3002 S ^ABSN="11353",^ITEM="I-300.2  expr2 is an empty string",^NEXT="3003^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","",8.1),^VCORR=8 D ^VEXAMINE
3003 S ^ABSN="11354",^ITEM="I-300.3  expr2 is an empty string and intexpr3>255",^NEXT="3004^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABC","",900.5) S ^VCORR=900 D ^VEXAMINE
3004 S ^ABSN="11355",^ITEM="I-300.4  expr1 and expr2 are empty strings",^NEXT="301^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("","",8.1) S ^VCORR=8 D ^VEXAMINE
 ;
301 W !,"I-301  expr1 contains more than one expr2's and intexpr3'>$F(expr1,expr2)"
 S ^ABSN="11356",^ITEM="I-301  expr1 contains more than one expr2's and intexpr3'>$F(expr1,expr2)",^NEXT="302^V1FNF3,V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABCBC","BC",3),^VCORR=6 D ^VEXAMINE
 ;
302 W !,"I-302  expr1 contains more than one expr2's and intexpr3>$F(expr1,expr2)"
 S ^ABSN="11357",^ITEM="I-302  expr1 contains more than one expr2's and intexpr3>$F(expr1,expr2)",^NEXT="V1FNL1^V1FN,V1AC^VV1" D ^V1PRESET
 S ^VCOMP=$F("ABCBC","BC",12),^VCORR=0 D ^VEXAMINE
 ;
END W !!,"End of 98---V1FNF3",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
