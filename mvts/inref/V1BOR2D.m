V1BOR2D ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: '<   -D-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"53---V1BOR2D: Binary operator  relational: '<   -D-",!
 ;
79 W !,"I-79  expratoms are strlit and numlit"
791 S ^ABSN="10697",^ITEM="I-79.1  ""3A""'<4",^NEXT="7911^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3A"'<4,^VCORR="0" D ^VEXAMINE
7911 S ^ABSN="10698",^ITEM="I-79.1.1  '(""3A""<4)",^NEXT="792^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3A"<4),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
792 S ^ABSN="10699",^ITEM="I-79.2  ""3.1""'<3.2",^NEXT="7921^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3.1"'<3.2,^VCORR="0" D ^VEXAMINE
7921 S ^ABSN="10700",^ITEM="I-79.2.1  '(""3.1""<3.2)",^NEXT="793^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3.1"<3.2),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
793 S ^ABSN="10701",^ITEM="I-79.3  ""3E1""'<31",^NEXT="7931^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3E1"'<31,^VCORR="0" D ^VEXAMINE
7931 S ^ABSN="10702",^ITEM="I-79.3.1  '(""3E1""<31)",^NEXT="794^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3E1"<31),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
794 S ^ABSN="10703",^ITEM="I-79.4  ""'0""'<.023",^NEXT="7941^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="'0"'<.023,^VCORR="0" D ^VEXAMINE
7941 S ^ABSN="10704",^ITEM="I-79.4.1  '(""'0""<.023)",^NEXT="795^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("'0"<.023),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
795 S ^ABSN="10705",^ITEM="I-79.5  ""-10""'<-5",^NEXT="7951^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="-10"'<-5,^VCORR="0" D ^VEXAMINE
7951 S ^ABSN="10706",^ITEM="I-79.5.1  '(""-10""<-5)",^NEXT="796^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("-10"<-5),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
796 S ^ABSN="10707",^ITEM="I-79.6  ""3.1""'<3.1",^NEXT="7961^V1BOR2D,V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP="3.1"'<3.1,^VCORR="1" D ^VEXAMINE
7961 S ^ABSN="10708",^ITEM="I-79.6.1  '(""3.1""<3.1)",^NEXT="V1BOR2E^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='("3.1"<3.1),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 53---V1BOR2D",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
