V1BOR9B ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: ] -B-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"78---V1BOR9B: Binary operator  relational: ] -B-",!
 ;
129 W !,"I-129  expratoms are strlit and strlit"
1291 S ^ABSN="11080",^ITEM="I-129.1  ""A""]""A""",^NEXT="1292^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="A"]"A",^VCORR="0" D ^VEXAMINE
1292 S ^ABSN="11081",^ITEM="I-129.2  ""AB""]""A""",^NEXT="1293^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="AB"]"A",^VCORR="1" D ^VEXAMINE
1293 S ^ABSN="11082",^ITEM="I-129.3  ""ABC""]""ABC""",^NEXT="1294^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="ABC"]"ABC",^VCORR="0" D ^VEXAMINE
1294 S ^ABSN="11083",^ITEM="I-129.4  ""AAA""]""AA""",^NEXT="1295^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="AAA"]"AA",^VCORR="1" D ^VEXAMINE
1295 S ^ABSN="11084",^ITEM="I-129.5  -""3A""]""-""",^NEXT="1296^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-"3A"]"-",^VCORR="1" D ^VEXAMINE
1296 S ^ABSN="11085",^ITEM="I-129.6  ""AA""]""AAA""",^NEXT="1297^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="AA"]"AAA",^VCORR="0" D ^VEXAMINE
1297 S ^ABSN="11086",^ITEM="I-129.7  ""AAA""]""aaa""",^NEXT="1298^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="AAA"]"aaa",^VCORR="0" D ^VEXAMINE
1298 S ^ABSN="11087",^ITEM="I-129.8  ""aaa""]""AAA""",^NEXT="130^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="aaa"]"AAA",^VCORR="1" D ^VEXAMINE
 ;
130 W !,"I-130  Empty string on left side"
1301 S ^ABSN="11088",^ITEM="I-130.1  """"]""A""",^NEXT="1302^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=""]"A",^VCORR="0" D ^VEXAMINE
1302 S ^ABSN="11089",^ITEM="I-130.2  """"]"".1234""",^NEXT="131^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=""]".1234",^VCORR="0" D ^VEXAMINE
 ;
131 W !,"I-131  Empty string on right side"
1311 S ^ABSN="11090",^ITEM="I-131.1  ""A""]""""",^NEXT="1312^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="A"]"",^VCORR="1" D ^VEXAMINE
1312 S ^ABSN="11091",^ITEM="I-131.2  ""%AND""]""""",^NEXT="132^V1BOR9B,V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="%AND"]"",^VCORR="1" D ^VEXAMINE
 ;
132 W !,"I-132  Empty string on both sides"
 S ^ABSN="11092",^ITEM="I-132  Empty string on both sides",^NEXT="V1BOR10A^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=""]"",^VCORR="0" D ^VEXAMINE
 ;
END W !!,"End of 78---V1BOR9B",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
