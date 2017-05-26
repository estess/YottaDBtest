V1BOR4C ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: '>   -C-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"60---V1BOR4C: Binary operator  relational: '>   -C-",!
 W !,"Numeric not greater than ('>)",!
 ;
93 W !,"I-93  expratoms are strlit and numlit"
931 S ^ABSN="10808",^ITEM="I-93.1  ""3A""'>2",^NEXT="9311^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3A"'>2,^VCORR="0" D ^VEXAMINE
9311 S ^ABSN="10809",^ITEM="I-93.1.1  '(""3A"">2)",^NEXT="932^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3A">2),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
932 S ^ABSN="10810",^ITEM="I-93.2  ""3E1""'>29",^NEXT="9321^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3E1"'>29,^VCORR="0" D ^VEXAMINE
9321 S ^ABSN="10811",^ITEM="I-93.2.1  '(""3E1"">29)",^NEXT="933^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3E1">29),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
933 S ^ABSN="10812",^ITEM="I-93.3  ""3.1""'>3.0",^NEXT="9331^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3.1"'>3.0,^VCORR="0" D ^VEXAMINE
9331 S ^ABSN="10813",^ITEM="I-93.3.1  '(""3.1"">3.0)",^NEXT="934^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3.1">3.0),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
934 S ^ABSN="10814",^ITEM="I-93.4  ""2.99""'>3.0",^NEXT="9341^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="2.99"'>3.0,^VCORR="1" D ^VEXAMINE
9341 S ^ABSN="10815",^ITEM="I-93.4.1  '(""2.99"">3.0)",^NEXT="935^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("2.99">3.0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
935 S ^ABSN="10816",^ITEM="I-93.5  ""-87.01E-1""'>-98710",^NEXT="9351^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="-87.01E-1"'>-98710,^VCORR="0" D ^VEXAMINE
9351 S ^ABSN="10817",^ITEM="I-93.5.1  '(""-87.01E-1"">-98710)",^NEXT="94^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("-87.01E-1">-98710),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
94 W !,"I-94  expratoms are strlit and strlit"
941 S ^ABSN="10818",^ITEM="I-94.1  ""3A""'>""2""",^NEXT="9411^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3A"'>"2",^VCORR="0" D ^VEXAMINE
9411 S ^ABSN="10819",^ITEM="I-94.1.1  '(""3A"">""2"")",^NEXT="942^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3A">"2"),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
942 S ^ABSN="10820",^ITEM="I-94.2  ""3E1A""'>""029.9A""",^NEXT="9421^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3E1A"'>"029.9A",^VCORR="0" D ^VEXAMINE
9421 S ^ABSN="10821",^ITEM="I-94.2.1  '(""3E1A"">""029.9A"")",^NEXT="943^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3E1A">"029.9A"),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
943 S ^ABSN="10822",^ITEM="I-94.3  ""-23ENGLISH""'>""-22.00e-9""",^NEXT="9431^V1BOR4C,V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="-23ENGLISH"'>"-22.00e-9",^VCORR="1" D ^VEXAMINE
9431 S ^ABSN="10823",^ITEM="I-94.3.1  '(""-23ENGLISH"">""-22.00e-9"")",^NEXT="V1BOR4D^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("-23ENGLISH">"-22.00e-9"),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 60---V1BOR4C",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
