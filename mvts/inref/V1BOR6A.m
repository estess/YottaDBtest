V1BOR6A ;IW-YS-TS,V1BOR,MVTS V9.10;15/6/96;BINARY OPERATOR  RELATIONAL: '=  -A-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"65---V1BOR6A: Binary operator  relational: '=  -A-",!
 W !,"String not identical ('=)",!
105 W !,"I-105  expratoms are numlit and numlit"
1051 S ^ABSN="10890",^ITEM="I-105.1  30'=30",^NEXT="10511^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=30'=30,^VCORR="0" D ^VEXAMINE
10511 S ^ABSN="10891",^ITEM="I-105.1.1  '(30=30)",^NEXT="1052^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(30=30),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1052 S ^ABSN="10892",^ITEM="I-105.2  3E2'=300",^NEXT="10521^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=3E2'=300,^VCORR="0" D ^VEXAMINE
10521 S ^ABSN="10893",^ITEM="I-105.2.1  '(3E2=300)",^NEXT="1053^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(3E2=300),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1053 S ^ABSN="10894",^ITEM="I-105.3  3.000'=0003",^NEXT="10531^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=3.000'=0003,^VCORR="0" D ^VEXAMINE
10531 S ^ABSN="10895",^ITEM="I-105.3.1  '(3.000=0003)",^NEXT="1054^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(3.000=0003),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1054 S ^ABSN="10896",^ITEM="I-105.4  00000.100000'=.1",^NEXT="10541^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=00000.100000'=.1,^VCORR="0" D ^VEXAMINE
10541 S ^ABSN="10897",^ITEM="I-105.4.1  '(00000.100000=.1)",^NEXT="1055^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(00000.100000=.1),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1055 S ^ABSN="10898",^ITEM="I-105.5  0009E-3'=0.00900000",^NEXT="10551^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=0009E-3'=0.00900000,^VCORR="0" D ^VEXAMINE
10551 S ^ABSN="10899",^ITEM="I-105.5.1  '(0009E-3=0.00900000)",^NEXT="1056^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(0009E-3=0.00900000),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1056 S ^ABSN="10900",^ITEM="I-105.6  222.21'=222.201",^NEXT="10561^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=222.21'=222.201,^VCORR="1" D ^VEXAMINE
10561 S ^ABSN="10901",^ITEM="I-105.6.1  '(222.21=222.201)",^NEXT="1057^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(222.21=222.201),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1057 S ^ABSN="10902",^ITEM="I-105.7  00.03000E+000003'=30",^NEXT="10571^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=00.03000E+000003'=30,^VCORR="0" D ^VEXAMINE
10571 S ^ABSN="10903",^ITEM="I-105.7.1  '(00.03000E+000003=30)",^NEXT="1058^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(00.03000E+000003=30),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1058 S ^ABSN="10904",^ITEM="I-105.8  0'=000.00000E-03",^NEXT="10581^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=0'=000.00000E-03,^VCORR="0" D ^VEXAMINE
10581 S ^ABSN="10905",^ITEM="I-105.8.1  '(0=000.00000E-03)",^NEXT="1059^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(0=000.00000E-03),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1059 S ^ABSN="10906",^ITEM="I-105.9  0'=00000",^NEXT="10591^V1BOR6A,V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP=0'=00000,^VCORR="0" D ^VEXAMINE
10591 S ^ABSN="10907",^ITEM="I-105.9.1  '(0=00000)",^NEXT="V1BOR6B^V1BOR,V1BOL^VV1" D ^V1PRESET
 S ^VCOMP='(0=00000),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 65---V1BOR6A",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
