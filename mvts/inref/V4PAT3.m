V4PAT3 ;IW-KO-YS-TS,V4PAT,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"128---V4PAT3: pattern match operator  -3-"
 ;
 W !,"expr ? I (patatom,patatom)"
 ;
1 S ^ABSN="40788",^ITEM="IV-788  expr ? I (N patatom, N patatom)"
 S ^NEXT="2^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="34AND45"
 S ^VCOMP=X?3(2N,3A)
 S ^VCORR="1" D ^VEXAMINE
 ;
2 S ^ABSN="40789",^ITEM="IV-789  expr ? I (.N patatom, N patatom)"
 S ^NEXT="3^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="1/343/46"
 S ^VCOMP=X?5(.3N,1"/")
 S ^VCORR="1" D ^VEXAMINE
 ;
3 S ^ABSN="40790",^ITEM="IV-790  expr ? I (.N patatom, .N patatom)"
 S ^NEXT="4^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="12345ABCDE1234ABCD123ABC12AB1A"
 S ^VCOMP=X?9(.5N,.5A)
 S ^VCORR="0" D ^VEXAMINE
 ;
4 S ^ABSN="40791",^ITEM="IV-791  expr ? I (.N patatom, N. patatom)"
 S ^NEXT="5^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="AS  +   LLLLL------\\\\\"
 S ^VCOMP=X?6(.3A,4.P)
 S ^VCORR="1" D ^VEXAMINE
 ;
5 S ^ABSN="40792",^ITEM="IV-792  expr ? I (.N patatom, N.M patatom)"
 S ^NEXT="6^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="****A95+++"
 S ^VCOMP=X?3(.2AN,2.4P)
 S ^VCORR="0" D ^VEXAMINE
 ;
6 S ^ABSN="40793",^ITEM="IV-793  expr ? I (N. patatom, N patatom)"
 S ^NEXT="7^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABAABABABABABABABABABAB"
 S ^VCOMP=X?4(4.A,3"AB")
 S ^VCORR="1" D ^VEXAMINE
 ;
7 S ^ABSN="40794",^ITEM="IV-794  expr ? I (N. patatom, .N patatom)"
 S ^NEXT="8^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABABABABABABABABABABABABABABABABABABAB"
 S ^VCOMP=X?4(3.A,.5"AB")
 S ^VCORR="1" D ^VEXAMINE
 ;
8 S ^ABSN="40795",^ITEM="IV-795  expr ? I (N. patatom, N. patatom)"
 S ^NEXT="9^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="BABABABABABABAB"
 S ^VCOMP=X?4(4.A,2."AB")
 S ^VCORR="0" D ^VEXAMINE
 ;
9 S ^ABSN="40796",^ITEM="IV-796  expr ? I (N. patatom, N.M patatom)"
 S ^NEXT="10^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABABABABABABABABABABAB"
 S ^VCOMP=X?4(7.A,3.4"AB")
 S ^VCORR="1" D ^VEXAMINE
 ;
 ;
10 S ^ABSN="40797",^ITEM="IV-797  expr ? I (N.M patatom, N patatom)"
 S ^NEXT="11^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABABABABABABABABABABABABABABAB"
 S ^VCOMP=X?4(2.8A,2"AB")
 S ^VCORR="1" D ^VEXAMINE
 ;
11 S ^ABSN="40798",^ITEM="IV-798  expr ? I (N.M patatom, .N patatom)"
 S ^NEXT="12^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="0000AA00000AAAAAAAAAAAA055550"
 S ^VCOMP=X?5(4.10NA,.15A)
 S ^VCORR="1" D ^VEXAMINE
 ;
12 S ^ABSN="40799",^ITEM="IV-799  expr ? I (N.M patatom, N. patatom)"
 S ^NEXT="13^V4PAT3,V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABABABABABACABABABAB"
 S ^VCOMP=X?3(2.10"AB",5.A)
 S ^VCORR="1" D ^VEXAMINE
 ;
13 S ^ABSN="40800",^ITEM="IV-800  expr ? I (N.M patatom, N.M patatom)"
 S ^NEXT="V4PAT4^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABABABABABABABABABABABABABABABABABAB"
 S ^VCOMP=X?3(4.10"AB",6.10A)
 S ^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 128 --- V4PAT3",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
