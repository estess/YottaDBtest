V3FN22 ;IW-KO-YS-TS,V3FN2,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"45---V3FN22: $FNUMBER(numexpr,fncodexpr)  -2-"
 W !!,"fncodexpr is a ""P"""
 ;
6 S ^ABSN="30457",^ITEM="III-0457  numexpr=0000"
 S ^NEXT="7^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0000,"P")
 S ^VCORR=" 0 " D ^VEXAMINE
 ;
7 S ^ABSN="30458",^ITEM="III-0458  numexpr=1"
 S ^NEXT="8^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(1,"P")
 S ^VCORR=" 1 " D ^VEXAMINE
 ;
8 S ^ABSN="30459",^ITEM="III-0459  numexpr=-1"
 S ^NEXT="9^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-1,"P")
 S ^VCORR="(1)" D ^VEXAMINE
 ;
9 S ^ABSN="30460",^ITEM="III-0460  numexpr=0020.00000"
 S ^NEXT="10^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0020.00000,"P")
 S ^VCORR=" 20 " D ^VEXAMINE
 ;
10 S ^ABSN="30461",^ITEM="III-0461  numexpr=-00020.00000"
 S ^NEXT="11^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00020.00000,"P")
 S ^VCORR="(20)" D ^VEXAMINE
 ;
11 S ^ABSN="30462",^ITEM="III-0462  numexpr=31267"
 S ^NEXT="12^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(31267,"P")
 S ^VCORR=" 31267 " D ^VEXAMINE
 ;
12 S ^ABSN="30463",^ITEM="III-0463  numexpr=-31267"
 S ^NEXT="13^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-31267,"P")
 S ^VCORR="(31267)" D ^VEXAMINE
 ;
13 S ^ABSN="30464",^ITEM="III-0464  numexpr=000000000000000000000000262999219"
 S ^NEXT="14^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000000000000000000000000262999219,"P")
 S ^VCORR=" 262999219 " D ^VEXAMINE
 ;
14 S ^ABSN="30465",^ITEM="III-0465  numexpr=-000000000000000000000000262999219"
 S ^NEXT="15^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000000000000000000000000262999219,"P")
 S ^VCORR="(262999219)" D ^VEXAMINE
 ;
15 S ^ABSN="30466",^ITEM="III-0466  numexpr=000.000789200"
 S ^NEXT="16^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000.000789200,"P")
 S ^VCORR=" .0007892 " D ^VEXAMINE
 ;
16 S ^ABSN="30467",^ITEM="III-0467  numexpr=-000.000789200"
 S ^NEXT="17^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000.000789200,"P")
 S ^VCORR="(.0007892)" D ^VEXAMINE
 ;
17 S ^ABSN="30468",^ITEM="III-0468  numexpr=00670.00789200"
 S ^NEXT="18^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(00670.00789200,"P")
 S ^VCORR=" 670.007892 " D ^VEXAMINE
 ;
18 S ^ABSN="30469",^ITEM="III-0469  numexpr=-00670.00789200"
 S ^NEXT="19^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00670.00789200,"P")
 S ^VCORR="(670.007892)" D ^VEXAMINE
 ;
19 S ^ABSN="30470",^ITEM="III-0470  numexpr=981000000000"
 S ^NEXT="20^V3FN22,V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(981000000000,"P")
 S ^VCORR=" 981000000000 " D ^VEXAMINE
 ;
20 S ^ABSN="30471",^ITEM="III-0471  numexpr=-981000000000"
 S ^NEXT="V3FN23^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-981000000000,"P")
 S ^VCORR="(981000000000)" D ^VEXAMINE
 ;
END W !!,"End of 45 --- V3FN22",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
