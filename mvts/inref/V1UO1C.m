V1UO1C ;IW-YS-TS,V1UO,MVTS V9.10;15/6/96;UNARY OPERATOR -3-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"23---V1UO1C: Unary operator -3-",!
 ;
7985 W !,"I-798.5  Plus unary operator and a lvn"
79851 S ^ABSN="10230",^ITEM="I-798.5.1  ""0""",^NEXT="79852^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="0",^VCOMP=+A S ^VCORR="0" D ^VEXAMINE
79852 S ^ABSN="10231",^ITEM="I-798.5.2  ""1""",^NEXT="79853^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="1",^VCOMP=+A S ^VCORR="1" D ^VEXAMINE
79853 S ^ABSN="10232",^ITEM="I-798.5.3  ""intlit""",^NEXT="79854^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2",^VCOMP=+A S ^VCORR="2" D ^VEXAMINE
79854 S ^ABSN="10233",^ITEM="I-798.5.4  "".intlit""",^NEXT="79855^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A=".2",^VCOMP=+A S ^VCORR=".2" D ^VEXAMINE
79855 S ^ABSN="10234",^ITEM="I-798.5.5  ""intlit.intlit""",^NEXT="79856^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2",^VCOMP=+A S ^VCORR="2.2" D ^VEXAMINE
79856 S ^ABSN="10235",^ITEM="I-798.5.6  ""mantEintlit""",^NEXT="79857^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E2",^VCOMP=+A S ^VCORR="220" D ^VEXAMINE
79857 S ^ABSN="10236",^ITEM="I-798.5.7  ""mantE+intlit""",^NEXT="79858^V1UO1C,V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E+2",^VCOMP=+A S ^VCORR="220" D ^VEXAMINE
79858 S ^ABSN="10237",^ITEM="I-798.5.8  ""mantE-intlit""",^NEXT="V1UO2A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E-2",^VCOMP=+A S ^VCORR=".022" D ^VEXAMINE
 ;
END W !!,"End of 23---V1UO1C",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
