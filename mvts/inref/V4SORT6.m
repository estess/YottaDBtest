V4SORT6 ;IW-KO-YS-TS,V4SORT,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"6---V4SORT6: Sort After operator  -6-"
 ;
1 S ^ABSN="40044",^ITEM="IV-44  ""AA""]]-0.002"
 S ^NEXT="2^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="AA"]]-0.002
 S ^VCORR="1" D ^VEXAMINE
 ;
2 S ^ABSN="40045",^ITEM="IV-45  ""AB""]].00333"
 S ^NEXT="3^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="AB"]].00333
 S ^VCORR="1" D ^VEXAMINE
 ;
3 S ^ABSN="40046",^ITEM="IV-46  ""a""]]+568"
 S ^NEXT="4^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="a"]]+568
 S ^VCORR="1" D ^VEXAMINE
 ;
4 S ^ABSN="40047",^ITEM="IV-47  ""aa""]]9"
 S ^NEXT="5^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="aa"]]9
 S ^VCORR="1" D ^VEXAMINE
 ;
5 S ^ABSN="40048",^ITEM="IV-48  ""ab""]]+""ab"""
 S ^NEXT="6^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="ab"]]+"ab"
 S ^VCORR="1" D ^VEXAMINE
 ;
 W !!,"B is a string"
 ;
6 S ^ABSN="40049",^ITEM="IV-49  ""#""]]""#1"""
 S ^NEXT="7^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="#"]]"#1"
 S ^VCORR="0" D ^VEXAMINE
 ;
7 S ^ABSN="40050",^ITEM="IV-50  ""%""]]""% """
 S ^NEXT="8^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="%"]]"% "
 S ^VCORR="0" D ^VEXAMINE
 ;
8 S ^ABSN="40051",^ITEM="IV-51  ""+4""]]"" -9999999"""
 S ^NEXT="9^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="+4"]]" -9999999"
 S ^VCORR="1" D ^VEXAMINE
 ;
9 S ^ABSN="40052",^ITEM="IV-52  ""-""]]""+"""
 S ^NEXT="10^V4SORT6,V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="-"]]"+"
 S ^VCORR="1" D ^VEXAMINE
 ;
10 S ^ABSN="40053",^ITEM="IV-53  ""--1""]]""8-98"""
 S ^NEXT="V4SORT7^V4SORT,V4SORT^VV4" D ^V4PRESET K
 S ^VCOMP="--1"]]"8-98"
 S ^VCORR="0" D ^VEXAMINE
 ;
END W !!,"End of 6 --- V4SORT6",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
