V1BOR2A ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: '<  -A-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"50---V1BOR2A: Binary operator  relational: '<  -A-",!
 W !,"Numeric not less than ('<)",!
77 W !,"I-77  expratoms are numlit and numlit"
771 S ^ABSN="10657",^ITEM="I-77.1  0'<0",^NEXT="7711^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=0'<0,^VCORR="1" D ^VEXAMINE
7711 S ^ABSN="10658",^ITEM="I-77.1.1  '(0<0)",^NEXT="772^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(0<0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
772 S ^ABSN="10659",^ITEM="I-77.2  0'<3",^NEXT="7721^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=0'<3,^VCORR="0" D ^VEXAMINE
7721 S ^ABSN="10660",^ITEM="I-77.2.1  '(0<3)",^NEXT="773^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(0<3),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
773 S ^ABSN="10661",^ITEM="I-77.3  3'<0",^NEXT="7731^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=3'<0,^VCORR="1" D ^VEXAMINE
7731 S ^ABSN="10662",^ITEM="I-77.3.1  '(3<0)",^NEXT="774^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(3<0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
774 S ^ABSN="10663",^ITEM="I-77.4  3'<3",^NEXT="7741^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=3'<3,^VCORR="1" D ^VEXAMINE
7741 S ^ABSN="10664",^ITEM="I-77.4.1  '(3<3)",^NEXT="775^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(3<3),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
775 S ^ABSN="10665",^ITEM="I-77.5  3'<4",^NEXT="7751^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=3'<4,^VCORR="0" D ^VEXAMINE
7751 S ^ABSN="10666",^ITEM="I-77.5.1  '(3<4)",^NEXT="776^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(3<4),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
776 S ^ABSN="10667",^ITEM="I-77.6  -3'<0",^NEXT="7761^V1BOR2A,V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-3'<0,^VCORR="0" D ^VEXAMINE
7761 S ^ABSN="10668",^ITEM="I-77.6.1  '(-3<0)",^NEXT="V1BOR2B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(-3<0),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 50---V1BOR2A",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
