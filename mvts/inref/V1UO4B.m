V1UO4B ;IW-YS-TS,V1UO,MVTS V9.10;15/6/96;UNARY OPERATOR -11-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"31---V1UO4B: Unary operator -11-",!
8012 W !,"I-801.2  Triplicate unary operators and a numlit"
80121 S ^ABSN="10346",^ITEM="I-801.2.1  +++numlit",^NEXT="80122^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+++000000 S ^VCORR="0" D ^VEXAMINE
80122 S ^ABSN="10347",^ITEM="I-801.2.2  ++-numlit",^NEXT="80123^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=++-123 S ^VCORR="-123" D ^VEXAMINE
80123 S ^ABSN="10348",^ITEM="I-801.2.3  ++'numlit",^NEXT="80124^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=++'.01290 S ^VCORR="0" D ^VEXAMINE
80124 S ^ABSN="10349",^ITEM="I-801.2.4  +-+numlit",^NEXT="80125^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+-+.00003 S ^VCORR="-.00003" D ^VEXAMINE
80125 S ^ABSN="10350",^ITEM="I-801.2.5  +--numlit",^NEXT="80126^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+--.0000 S ^VCORR="0" D ^VEXAMINE
80126 S ^ABSN="10351",^ITEM="I-801.2.6  +-'numlit",^NEXT="80127^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+-'0000.000 S ^VCORR="-1" D ^VEXAMINE
80127 S ^ABSN="10352",^ITEM="I-801.2.7  +'+numlit",^NEXT="80128^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+'+264.0000 S ^VCORR="0" D ^VEXAMINE
80128 S ^ABSN="10353",^ITEM="I-801.2.8  +'-numlit",^NEXT="80129^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+'-000E3 S ^VCORR="1" D ^VEXAMINE
80129 S ^ABSN="10354",^ITEM="I-801.2.9  +''numlit",^NEXT="801210^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+''120E3 S ^VCORR="1" D ^VEXAMINE
 ;
801210 S ^ABSN="10355",^ITEM="I-801.2.10  -++numlit",^NEXT="801211^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-++45E+3 S ^VCORR="-45000" D ^VEXAMINE
801211 S ^ABSN="10356",^ITEM="I-801.2.11  -+-numlit",^NEXT="801212^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-+-39E-003 S ^VCORR=".039" D ^VEXAMINE
801212 S ^ABSN="10357",^ITEM="I-801.2.12  -+'numlit",^NEXT="801213^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-+'.000E-4 S ^VCORR="-1" D ^VEXAMINE
801213 S ^ABSN="10358",^ITEM="I-801.2.13  --+numlit",^NEXT="801214^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=--+.21E3 S ^VCORR="210" D ^VEXAMINE
801214 S ^ABSN="10359",^ITEM="I-801.2.14  ---numlit",^NEXT="801215^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=---.21E-3 S ^VCORR="-.00021" D ^VEXAMINE
801215 S ^ABSN="10360",^ITEM="I-801.2.15  --'numlit",^NEXT="801216^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=--'000.00000E+4 S ^VCORR="1" D ^VEXAMINE
801216 S ^ABSN="10361",^ITEM="I-801.2.16  -'+numlit",^NEXT="801217^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-'+21.598E2 S ^VCORR="0" D ^VEXAMINE
801217 S ^ABSN="10362",^ITEM="I-801.2.17  -'-numlit",^NEXT="801218^V1UO4B,V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-'-06.45E+5 S ^VCORR="0" D ^VEXAMINE
801218 S ^ABSN="10363",^ITEM="I-801.2.18  -''numlit",^NEXT="V1UO4C^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-''98.191E-3 S ^VCORR="-1" D ^VEXAMINE
 ;
END W !!,"End of 31---V1UO4B",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
