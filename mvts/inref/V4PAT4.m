V4PAT4 ;IW-KO-YS-TS,V4PAT,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"129---V4PAT4: pattern match operator  -4-"
 W !,"expr ? .I (patatom,patatom)"
 ;
1 S ^ABSN="40801",^ITEM="IV-801  expr ? .I (N patatom, N patatom)"
 S ^NEXT="2^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="QIEJjioDIFU"
 S ^VCOMP=X?.4(4U,3L)
 S ^VCORR="1" D ^VEXAMINE
 ;
2 S ^ABSN="40802",^ITEM="IV-802  expr ? .I (.N patatom, N patatom)"
 S ^NEXT="3^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="0123123123123"
 S ^VCOMP=X?.5(.5"123",2N)
 S ^VCORR="1" D ^VEXAMINE
 ;
3 S ^ABSN="40803",^ITEM="IV-803  expr ? .I (.N patatom, .N patatom)"
 S ^NEXT="4^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="A AAA AA "
 S ^VCOMP=X?.5(.4A,.4"A ")
 S ^VCORR="1" D ^VEXAMINE
 ;
4 S ^ABSN="40804",^ITEM="IV-804  expr ? .I (.N patatom, N. patatom)"
 S ^NEXT="5^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="1234SFGHTHJJY5664FDFFFDDFFF4564XGGGGGDD565656GGGGFDFDFDFD444FGGGGGGGGF"
 S ^VCOMP=X?.1000000(.5N,5.A)
 S ^VCORR="1" D ^VEXAMINE
 ;
5 S ^ABSN="40805",^ITEM="IV-805  expr ? .I (.N patatom, N.M patatom)"
 S ^NEXT="6^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="ABCDE38495043ABC384949DHFJABCDEF49499JFJFJ"
 S ^VCOMP=X?.100(.5A,3.10N)
 S ^VCORR="1" D ^VEXAMINE
 ;
6 S ^ABSN="40806",^ITEM="IV-806  expr ? .I (N. patatom, N patatom)"
 S ^NEXT="7^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
 S ^VCOMP=X?.5(2.A,2"AA")
 S ^VCORR="0" D ^VEXAMINE
 ;
7 S ^ABSN="40807",^ITEM="IV-807  expr ? .I (N. patatom, .N patatom)"
 S ^NEXT="8^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X=""
 S ^VCOMP=X?.10(0.A,.2N)
 S ^VCORR="1" D ^VEXAMINE
 ;
8 S ^ABSN="40808",^ITEM="IV-808  expr ? .I (N. patatom, N. patatom)"
 S ^NEXT="9^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="000--1111-6666"
 S ^VCOMP=X?.5(1."-",3.N)
 S ^VCORR="1" D ^VEXAMINE
 ;
9 S ^ABSN="40809",^ITEM="IV-809  expr ? .I (N. patatom, N.M patatom)"
 S ^NEXT="10^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="--AADAS474747474         A     0123456789abc12BDBDBDBDD??__BDB_DBDBDDBDB"
 S ^VCOMP=X?.10(3.PA,2.10N)
 S ^VCORR="1" D ^VEXAMINE
 ;
10 S ^ABSN="40810",^ITEM="IV-810  expr ? .I (N.M patatom, N patatom)"
 S ^NEXT="11^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="8FDKDS9DFKDS8FK 12345ABCDEFGHIOKJ 123456789456123ACDD"
 S ^VCOMP=X?.10(3.10AN,1" 12345")
 S ^VCORR="1" D ^VEXAMINE
 ;
11 S ^ABSN="40811",^ITEM="IV-811  expr ? .I (N.M patatom, .N patatom)"
 S ^NEXT="12^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="D8D8D8D8D8+-*/39NN39=393900"
 S ^VCOMP=X?.10(3.10AN,.5PN)
 S ^VCORR="1" D ^VEXAMINE
 ;
12 S ^ABSN="40812",^ITEM="IV-812  expr ? .I (N.M patatom, N. patatom)"
 S ^NEXT="13^V4PAT4,V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="38323M3-8333333M03*-/400387Q894-6789AD"
 S ^VCOMP=X?.6(3.10AN,4.PN)
 S ^VCORR="0" D ^VEXAMINE
 ;
13 S ^ABSN="40813",^ITEM="IV-813  expr ? .I (N.M patatom, N.M patatom)"
 S ^NEXT="V4PAT5^V4PAT,V4NST1^VV4" D ^V4PRESET K
 S X="A1A1--AAA-AKK"
 S ^VCOMP=X?.5(2.5AN,2.5PA)
 S ^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 129 --- V4PAT4",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
