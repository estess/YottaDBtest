V1BOL2B1 ;IW-YS-TS,V1BOL,MVTS V9.10;15/6/96;BINARY OPERATORS  LOGICAL: '! -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"89---V1BOL2B1: Binary operators  logical: '! -1-" W:$Y>55 #
155 W !!,"Nor ('!)",!
 W !,"I-155  expratoms are 0 or 1"
1551 S ^ABSN="11213",^ITEM="I-155.1  1'!1",^NEXT="15511^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=1'!1,^VCORR="0" D ^VEXAMINE
15511 S ^ABSN="11214",^ITEM="I-155.1.1  '(1!1)",^NEXT="1552^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(1!1),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1552 S ^ABSN="11215",^ITEM="I-155.2  1'!0",^NEXT="15521^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=1'!0,^VCORR="0" D ^VEXAMINE
15521 S ^ABSN="11216",^ITEM="I-155.2.1  '(1!0)",^NEXT="1553^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(1!0),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1553 S ^ABSN="11217",^ITEM="I-155.3  0'!1",^NEXT="15531^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=0'!1,^VCORR="0" D ^VEXAMINE
15531 S ^ABSN="11218",^ITEM="I-155.3.1  '(0!1)",^NEXT="1554^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(0!1),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1554 S ^ABSN="11219",^ITEM="I-155.4  0'!0",^NEXT="15541^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=0'!0,^VCORR="1" D ^VEXAMINE
15541 S ^ABSN="11220",^ITEM="I-155.4.1  '(0!0)",^NEXT="156^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(0!0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
156 W !,"I-156  expratoms are numlit"
1561 S ^ABSN="11221",^ITEM="I-156.1  2'!1000",^NEXT="15611^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=2'!1000,^VCORR="0" D ^VEXAMINE
15611 S ^ABSN="11222",^ITEM="I-156.1.1  '(2!1000)",^NEXT="1562^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(2!1000),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1562 S ^ABSN="11223",^ITEM="I-156.2  -8E-10'!0.00E+6",^NEXT="15621^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=-8E-10'!0.00E+6,^VCORR="0" D ^VEXAMINE
15621 S ^ABSN="11224",^ITEM="I-156.2.1  '(-8E-10!0.00E+6)",^NEXT="1563^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(-8E-10!0.00E+6),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1563 S ^ABSN="11225",^ITEM="I-156.3  000000'!9E-12",^NEXT="15631^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=000000'!9E-12,^VCORR="0" D ^VEXAMINE
15631 S ^ABSN="11226",^ITEM="I-156.3.1  '(000000!9E-12)",^NEXT="1564^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(000000!9E-12),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1564 S ^ABSN="11227",^ITEM="I-156.4  0.06E+12'!-0.007",^NEXT="15641^V1BOL2B1,V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=0.06E+12'!-0.007,^VCORR=0 D ^VEXAMINE
15641 S ^ABSN="11228",^ITEM="I-156.4.1  '(0.06E+12!-0.007)",^NEXT="V1BOL2B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(0.06E+12!-0.007),^VCORR=0 D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 89---V1BOL2B1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
