V1UO2C ;IW-YS-TS,V1UO,MVTS V9.10;15/6/96;UNARY OPERATOR -6-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"26---V1UO2C: Unary operator -6-",!
 ;
7995 W !,"I-799.5  Negate unary operator and a lvn"
79951 S ^ABSN="10275",^ITEM="I-799.5.1  ""0""",^NEXT="79952^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="0",^VCOMP=-A S ^VCORR="0" D ^VEXAMINE
79952 S ^ABSN="10276",^ITEM="I-799.5.2  ""1""",^NEXT="79953^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="1",^VCOMP=-A S ^VCORR="-1" D ^VEXAMINE
79953 S ^ABSN="10277",^ITEM="I-799.5.3  ""intlit""",^NEXT="79954^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2",^VCOMP=-A S ^VCORR="-2" D ^VEXAMINE
79954 S ^ABSN="10278",^ITEM="I-799.5.4  "".intlit""",^NEXT="79955^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A=".2",^VCOMP=-A S ^VCORR="-.2" D ^VEXAMINE
79955 S ^ABSN="10279",^ITEM="I-799.5.5  ""intlit.intlit""",^NEXT="79956^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2",^VCOMP=-A S ^VCORR="-2.2" D ^VEXAMINE
79956 S ^ABSN="10280",^ITEM="I-799.5.6  ""mantEintlit""",^NEXT="79957^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E2",^VCOMP=-A S ^VCORR="-220" D ^VEXAMINE
79957 S ^ABSN="10281",^ITEM="I-799.5.7  ""mantE+intlit""",^NEXT="79958^V1UO2C,V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E+2",^VCOMP=-A S ^VCORR="-220" D ^VEXAMINE
79958 S ^ABSN="10282",^ITEM="I-799.5.8  ""mantE-intlit""",^NEXT="V1UO3A^V1UO,V1BOA^VV1" D ^V1PRESET
 S A="2.2E-2",^VCOMP=-A S ^VCORR="-.022" D ^VEXAMINE
 ;
END W !!,"End of 26---V1UO2C",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
