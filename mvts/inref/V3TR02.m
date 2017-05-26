V3TR02 ;IW-KO-YS-TS,V3TR,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"8---V3TR02: $TRANSLATE function -2-"
 W !!,"expr2 has 3 chars",!
 ;
1 S ^ABSN="30105",^ITEM="III-105  The heading substring is removed"
 S ^NEXT="2^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCCBADEFFED","ABC")
 S ^VCORR="DEFFED" D ^VEXAMINE
 ;
2 S ^ABSN="30106",^ITEM="III-106  The middle substring is removed"
 S ^NEXT="3^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCCBADEFFEDGHIIHG","DEF")
 S ^VCORR="ABCCBAGHIIHG" D ^VEXAMINE
 ;
3 S ^ABSN="30107",^ITEM="III-107  The last part is removed"
 S ^NEXT="4^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCCBADEFFEDGHIIHG","GHI")
 S ^VCORR="ABCCBADEFFED" D ^VEXAMINE
 ;
4 S ^ABSN="30108",^ITEM="III-108  Various parts are removed"
 S ^NEXT="5^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCCBADEFFEDGHIIHG","AEI")
 S ^VCORR="BCCBDFFDGHHG" D ^VEXAMINE
 ;
5 S ^ABSN="30109",^ITEM="III-109  All chars are removed"
 S ^NEXT="6^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCBCACABCBABACACB","ABC")
 S ^VCORR="" D ^VEXAMINE
 ;
 W !!,"III-110  expr1 has 255 chars",!
 ;
6 S ^ABSN="30110",^ITEM="III-110  expr1 has 255 chars"
 S ^NEXT="7^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S a="" f i=1:1:51 s a=a_"ABCDE"
 S ^VCOMP=$TR(a,"A")
 s b="" f i=1:1:51 s b=b_"BCDE"
 S ^VCORR=b D ^VEXAMINE
 ;
 W !!,"III-111  expr2 has 255 chars",!
 ;
7 S ^ABSN="30111",^ITEM="III-111  expr2 has 255 chars"
 S ^NEXT="8^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 s a="" f i=1:1:51 s a=a_"ABCDE"
 S ^VCOMP=$TR("ABCDEFGHIJ",a)
 S ^VCORR="FGHIJ" D ^VEXAMINE
 ;
 W !!,"III-112  Both expr1 and expr2 have 255 chars",!
 ;
8 S ^ABSN="30112",^ITEM="III-112  Both expr1 and expr2 have 255 chars"
 S ^NEXT="9^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S a="" f i=1:1:51 s a=a_"ABCDE"
 s b="" f i=1:1:51 s b=b_"FGHIJ"
 S ^VCOMP=$TR(a,b)
 S ^VCORR=a D ^VEXAMINE
 ;
 W !!,"III-113  $L(expr1)<$L(expr2)",!
 ;
9 S ^ABSN="30113",^ITEM="III-113  $L(expr1)<$L(expr2)"
 S ^NEXT="10^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCDEFGHIJ","ABCDEKLMNOPQRST")
 S ^VCORR="FGHIJ" D ^VEXAMINE
 ;
 W !!,"III-114  $L(expr1)=$L(expr2)",!
 ;
10 S ^ABSN="30114",^ITEM="III-114  $L(expr1)=$L(expr2)"
 S ^NEXT="11^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCDEFGHIJ","ABCDEKLMNO")
 S ^VCORR="FGHIJ" D ^VEXAMINE
 ;
 W !!,"III-115  $L(expr1)>$L(expr2)",!
 ;
11 S ^ABSN="30115",^ITEM="III-115  $L(expr1)>$L(expr2)"
 S ^NEXT="12^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCDEFGHIJ","ACEGI")
 S ^VCORR="BDFHJ" D ^VEXAMINE
 ;
 W !!,"III-116  expr1 has control chars",!
 ;
12 S ^ABSN="30116",^ITEM="III-116  expr1 has control chars"
 S ^NEXT="13^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABC"_$C(13,12,0)_"DEF","DEF")
 S ^VCORR="ABC"_$C(13,12,0) D ^VEXAMINE
 ;
 W !!,"III-117  expr2 has control chars",!
 ;
13 S ^ABSN="30117",^ITEM="III-117  expr2 has control chars"
 S ^NEXT="14^V3TR02,V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("ABCDEFGH",$C(13,10))
 S ^VCORR="ABCDEFGH" D ^VEXAMINE
 ;
 W !!,"III-118  Both expr1 and expr2 have control chars",!
 ;
14 S ^ABSN="30118",^ITEM="III-118  Both expr1 and expr2 have control chars"
 S ^NEXT="V3TR03^V3TR,V3TEXT^VV3" D ^V3PRESET
 s a="" f i=0:1:127 s a=a_$c(i)
 S ^VCOMP=$TR(a,$C(13,12,13,10))
 s b="" f i=0:1:9 s b=b_$c(i)
 s b=b_$c(11) f i=14:1:127 s b=b_$c(i)
 S ^VCORR=b D ^VEXAMINE
 ;
END W !!,"End of 8 --- V3TR02",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
