V4SORT4 ;IW-KO-YS-TS,V4SORT,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"4---V4SORT4: Sort After operator  -4-"
 ;
1 S ^ABSN="40026",^ITEM="IV-26  ""--1""]]898"
 S ^NEXT="2^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="--1"]]898
 S ^VCORR="1" D ^VEXAMINE
 ;
2 S ^ABSN="40027",^ITEM="IV-27  ""-.""]]10000"
 S ^NEXT="3^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-."]]10000
 S ^VCORR="1" D ^VEXAMINE
 ;
3 S ^ABSN="40028",^ITEM="IV-28  ""-.0""]]+""0.-"""
 S ^NEXT="4^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-.0"]]+"0.-"
 S ^VCORR="1" D ^VEXAMINE
 ;
4 S ^ABSN="40029",^ITEM="IV-29  ""-0""]]-000.0000765"
 S ^NEXT="5^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-0"]]-000.0000765
 S ^VCORR="1" D ^VEXAMINE
 ;
5 S ^ABSN="40030",^ITEM="IV-30  ""-4.""]]84398E-10"
 S ^NEXT="6^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-4."]]84398E-10
 S ^VCORR="1" D ^VEXAMINE
 ;
6 S ^ABSN="40031",^ITEM="IV-31  ""-4.0""]]-999999999999999"
 S ^NEXT="7^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-4.0"]]-999999999999999
 S ^VCORR="1" D ^VEXAMINE
 ;
7 S ^ABSN="40032",^ITEM="IV-32  "".""]]0.000001E-10"
 S ^NEXT="8^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="."]]0.000001E-10
 S ^VCORR="1" D ^VEXAMINE
 ;
8 S ^ABSN="40033",^ITEM="IV-33  "".0""]]-0.000001E-10"
 S ^NEXT="9^V4SORT4,V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP=".0"]]-0.000001E-10
 S ^VCORR="1" D ^VEXAMINE
 ;
9 S ^ABSN="40034",^ITEM="IV-34  "".00""]]999999999999999"
 S ^NEXT="V4SORT5^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP=".00"]]999999999999999
 S ^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 4 --- V4SORT4",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
