V1BOR10D ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: ']   -D-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"82---V1BOR10D: Binary operator  relational: ']   -D-",!
 ;
136 W !,"I-136  expratoms are strlit and strlit"
1361 S ^ABSN="11129",^ITEM="I-136.1  ""B""']""A""",^NEXT="136011^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="B"']"A",^VCORR="0" D ^VEXAMINE
136011 S ^ABSN="11130",^ITEM="I-136.1.1  '(""B""]""A"")",^NEXT="1362^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("B"]"A"),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1362 S ^ABSN="11131",^ITEM="I-136.2  "")""']""(""",^NEXT="13621^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=")"']"(",^VCORR="0" D ^VEXAMINE
13621 S ^ABSN="11132",^ITEM="I-136.2.1  '("")""]""("")",^NEXT="1363^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(")"]"("),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1363 S ^ABSN="11133",^ITEM="I-136.3  ""#""']""A""",^NEXT="13631^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="#"']"A",^VCORR="1" D ^VEXAMINE
13631 S ^ABSN="11134",^ITEM="I-136.3.1  '(""#""]""A"")",^NEXT="1364^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("#"]"A"),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1364 S ^ABSN="11135",^ITEM="I-136.4  ""A""']""A""",^NEXT="13641^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="A"']"A",^VCORR="1" D ^VEXAMINE
13641 S ^ABSN="11136",^ITEM="I-136.4.1  '(""A""]""A"")",^NEXT="1365^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("A"]"A"),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1365 S ^ABSN="11137",^ITEM="I-136.5  ""AB""']""A""",^NEXT="13651^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="AB"']"A",^VCORR="0" D ^VEXAMINE
13651 S ^ABSN="11138",^ITEM="I-136.5.1  '(""AB""]""A"")",^NEXT="1366^V1BOR10D,V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("AB"]"A"),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1366 S ^ABSN="11139",^ITEM="I-136.6  ""ABC""']""ABC""",^NEXT="V1BOR10E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="ABC"']"ABC",^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 82---V1BOR10D",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
