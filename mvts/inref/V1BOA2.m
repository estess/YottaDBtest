V1BOA2 ;IW-YS-TS,V1BOA,MVTS V9.10;15/6/96;BINARY OPERATOR ARITHMETIC: +  -2-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"37---V1BOA2: Binary operator  arithmetic: +  -2-",!
 ;
26 W !,"I-26  Left expratom<0, right expratom<0"
261 S ^ABSN="10453",^ITEM="I-26.1  -2+-7",^NEXT="262^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-2+-7,^VCORR=-9 D ^VEXAMINE
262 S ^ABSN="10454",^ITEM="I-26.2  -2.0+-50.3",^NEXT="263^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-2.0+-50.3,^VCORR=-52.3 D ^VEXAMINE
263 S ^ABSN="10455",^ITEM="I-26.3  -0.567+-.433",^NEXT="264^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-0.567+-.433,^VCORR=-1 D ^VEXAMINE
264 S ^ABSN="10456",^ITEM="I-26.4  -0.000345+-00.0000345",^NEXT="27^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-0.000345+-00.0000345,^VCORR=-.0003795 D ^VEXAMINE
 ;
27 W !,"I-27  expratoms are numlit"
271 S ^ABSN="10457",^ITEM="I-27.1  1E1+1.10",^NEXT="272^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=1E1+1.10,^VCORR=11.1 D ^VEXAMINE
272 S ^ABSN="10458",^ITEM="I-27.2  92.36E-2+12.36E+1",^NEXT="273^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=92.36E-2+12.36E+1,^VCORR=124.5236 D ^VEXAMINE
273 S ^ABSN="10459",^ITEM="I-27.3  00023.0E3+98.0000E-2",^NEXT="274^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=00023.0E3+98.0000E-2,^VCORR=23000.98 D ^VEXAMINE ;(test corrected in V7.5;20/8/90)
274 S ^ABSN="10460",^ITEM="I-27.4  .123E2+12300E-2",^NEXT="28^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=.123E2+12300E-2,^VCORR=135.3 D ^VEXAMINE
 ;
28 W !,"I-28  expratoms are strlit"
281 S ^ABSN="10461",^ITEM="I-28.1  ""2A2B""+""2E2B""",^NEXT="282^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP="2A2B"+"2E2B",^VCORR=202 D ^VEXAMINE
282 S ^ABSN="10462",^ITEM="I-28.2  ""234E-1+1AJDB""+""2E+2B""",^NEXT="283^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP="234E-1+1AJDB"+"2E+2B",^VCORR=223.4 D ^VEXAMINE
283 S ^ABSN="10463",^ITEM="I-28.3  ""ONE2A2B""+""00002E-2B""",^NEXT="29^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP="ONE2A2B"+"00002E-2B",^VCORR=.02 D ^VEXAMINE
 ;
29 W !,"I-29  expratoms are lvn"
291 S ^ABSN="10464",^ITEM="I-29.1  Unsubscripted lvn",^NEXT="292^V1BOA2,V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S A="-.0",B="-00002E",^VCOMP=A+B,^VCORR=-2 D ^VEXAMINE
292 S ^ABSN="10465",^ITEM="I-29.2  Subscripted lvn",^NEXT="V1BOA3^V1BOA,V1BOR^VV1" D ^V1PRESET
 S A(1)="9989E-2",B(2)="3.3002",^VCOMP=A(1)+B(2),^VCORR=103.1902 D ^VEXAMINE
 ;
END W !!,"End of 37---V1BOA2",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
