V1DO1 ;IW-KO-TS,V1DO,MVTS V9.10;15/6/96;DO COMMAND (LOCAL BRANCHING) -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 S ^VCORR="START"
 GOTO START
A S V=V_"A " Q
 S V="A ERROR"
 QUIT
A1 S V=V_"A1 " Q
SET S V=V_"SET " Q
START ;
 W !!,"128---V1DO1: DO command (local branching) -1-"
 W !!,"DO label",!
238 ;
239 W !,"I-238/239  label is a ""%"" followed by alpha and/or digit"
2381 S ^ABSN="11626",^ITEM="I-238/239.1  label is a %",^NEXT="2382^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 DO % S ^VCOMP=V,^VCORR="% "
 D ^VEXAMINE
 ;
2382 S ^ABSN="11627",^ITEM="I-238/239.2  label is a % followed by an alpha",^NEXT="2383^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 DO %A S ^VCOMP=V,^VCORR="%A " D ^VEXAMINE
 ;
2383 S ^ABSN="11628",^ITEM="I-238/239.3  label is a % followed by 7 alphas",^NEXT="2384^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 D %ABCDEFG
 S ^VCOMP=V,^VCORR="%ABCDEFG " D ^VEXAMINE
 ;
2384 S ^ABSN="11629",^ITEM="I-238/239.4  label is a % followed by a digit",^NEXT="2385^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 DO %0 S ^VCOMP=V,^VCORR="%0 " D ^VEXAMINE
 ;
2385 S ^ABSN="11630",^ITEM="I-238/239.5  label is a % followed by 2 digits",^NEXT="2386^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 D %90
 S ^VCOMP=V,^VCORR="%90 " D ^VEXAMINE
 ;
2386 S ^ABSN="11631",^ITEM="I-238/239.6  label is a % followed by 7 digits",^NEXT="2387^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 D %0000000 S ^VCOMP=V,^VCORR="%0000000 " D ^VEXAMINE
 ;
2387 S ^ABSN="11632",^ITEM="I-238/239.7  label is a % followed by another 7 digits",^NEXT="2388^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 DO %2345678 SET ^VCOMP=V,^VCORR="%2345678 " D ^VEXAMINE
 ;
2388 S ^ABSN="11633",^ITEM="I-238/239.8  label is a % followed by combination of an alpha and a digit",^NEXT="2389^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 DO %A1 S ^VCOMP=V,^VCORR="%A1 " D ^VEXAMINE
 ;
2389 S ^ABSN="11634",^ITEM="I-238/239.9  label is a % followed by combination of alphas and digits",^NEXT="23810^V1DO1,V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 D %A1B2C3D S ^VCOMP=V,^VCORR="%A1B2C3D " D ^VEXAMINE
 ;
23810 S ^ABSN="11635",^ITEM="I-238/239.10  label is a % followed by combination of digits and alphas",^NEXT="V1DO2^V1DO,V1CALL^VV1" D ^V1PRESET
 S V=""
 D %0A1B2C3 S ^VCOMP=V,^VCORR="%0A1B2C3 " D ^VEXAMINE
 ;
END W !!,"End of 128---V1DO1",!
 K  Q
 ;
Z S V=V_"Z " Q
% S V=V_"% " Q
%ABCDEFG S V=V_"%ABCDEFG " Q
%0000000 S V=V_"%0000000 " Q
12 S V=V_"12 " Q
%A S V=V_"%A " Q
100 S V=V_"100 " Q
%2345678 S V=V_"%2345678 " Q
%A1B2C3D S V=V_"%A1B2C3D " Q
Q S V=V_"Q " Q
%A1 S V=V_"%A1 " Q
DO S V=V_"DO "
 QUIT
ABCDEFGH S V=V_"ABCDEFGH " Q
0 S V=V_"0 " Q
1 S V=V_"1 " Q
01 S V=V_"01 " QUIT
%0A1B2C3 S V=V_"%0A1B2C3 " Q
IF S V=V_"IF " Q
%0 S V=V_"%0 " Q
Z012A S V=V_"Z012A " Q
%90 S V=V_"%90 " Q
0012 S V=V_"0012 " Q
10 S V=V_"10 " Q
012 S V=V_"012 " QUIT
00000000 S V=V_"00000000 " Q
ZXY987A0 S V=V_"ZXY987A0 "
 QUIT  ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
92345678 S V=V_"92345678 " Q
QUIT S V=V_"QUIT " ;IMPLICIT QUIT
