V1BOR2B ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: '<  -B-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"51---V1BOR2B: Binary operator  relational: '<  -B-",!
777 S ^ABSN="10669",^ITEM="I-77.7  -3'<-4",^NEXT="7771^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-3'<-4,^VCORR="1" D ^VEXAMINE
7771 S ^ABSN="10670",^ITEM="I-77.7.1  '(-3<-4)",^NEXT="778^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(-3<-4),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
778 S ^ABSN="10671",^ITEM="I-77.8  4'<3.0",^NEXT="7781^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=4'<3.0,^VCORR="1" D ^VEXAMINE
7781 S ^ABSN="10672",^ITEM="I-77.8.1  '(4<3.0)",^NEXT="779^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(4<3.0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
779 S ^ABSN="10673",^ITEM="I-77.9  -4.1'<3",^NEXT="7791^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-4.1'<3,^VCORR="0" D ^VEXAMINE
7791 S ^ABSN="10674",^ITEM="I-77.9.1  '(-4.1<3)",^NEXT="7710^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(-4.1<3),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
7710 S ^ABSN="10675",^ITEM="I-77.10  .3E1'<00400E-2",^NEXT="77101^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=.3E1'<00400E-2,^VCORR="0" D ^VEXAMINE
77101 S ^ABSN="10676",^ITEM="I-77.10.1  '(.3E1<00400E-2)",^NEXT="7711^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(.3E1<00400E-2),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
7711 S ^ABSN="10677",^ITEM="I-77.11  -.3E01'<4E0",^NEXT="77111^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-.3E01'<4E0,^VCORR="0" D ^VEXAMINE
77111 S ^ABSN="10678",^ITEM="I-77.11.1  '(-.3E01<4E0)",^NEXT="7712^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(-.3E01<4E0),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
7712 S ^ABSN="10679",^ITEM="I-77.12  -5'<-4",^NEXT="77121^V1BOR2B,V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=-5'<-4,^VCORR="0" D ^VEXAMINE
77121 S ^ABSN="10680",^ITEM="I-77.12.1  '(-5<-4)",^NEXT="V1BOR2C^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(-5<-4),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 51---V1BOR2B",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
