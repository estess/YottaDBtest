V3FN28 ;IW-KO-YS-TS,V3FN2,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"51---V3FN28: $FNUMBER(numexpr,fncodexpr)  -8-"
 W !!,"fncodexpr is a ""P,"""
 ;
92 S ^ABSN="30543",^ITEM="III-0543  numexpr=0000"
 S ^NEXT="93^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0000,"P,")
 S ^VCORR=" 0 " D ^VEXAMINE
 ;
93 S ^ABSN="30544",^ITEM="III-0544  numexpr=1"
 S ^NEXT="94^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(1,"P,")
 S ^VCORR=" 1 " D ^VEXAMINE
 ;
94 S ^ABSN="30545",^ITEM="III-0545  numexpr=-1"
 S ^NEXT="95^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-1,"P,")
 S ^VCORR="(1)" D ^VEXAMINE
 ;
95 S ^ABSN="30546",^ITEM="III-0546  numexpr=0020.00000"
 S ^NEXT="96^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0020.00000,"P,")
 S ^VCORR=" 20 " D ^VEXAMINE
 ;
96 S ^ABSN="30547",^ITEM="III-0547  numexpr=-00020.00000"
 S ^NEXT="97^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00020.00000,"P,")
 S ^VCORR="(20)" D ^VEXAMINE
 ;
97 S ^ABSN="30548",^ITEM="III-0548  numexpr=31267"
 S ^NEXT="98^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(31267,"P,")
 S ^VCORR=" 31,267 " D ^VEXAMINE
 ;
98 S ^ABSN="30549",^ITEM="III-0549  numexpr=-31267"
 S ^NEXT="99^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-31267,"P,")
 S ^VCORR="(31,267)" D ^VEXAMINE
 ;
99 S ^ABSN="30550",^ITEM="III-0550  numexpr=000000000000000000000000262999219"
 S ^NEXT="100^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000000000000000000000000262999219,"P,")
 S ^VCORR=" 262,999,219 " D ^VEXAMINE
 ;
100 S ^ABSN="30551",^ITEM="III-0551  numexpr=-000000000000000000000000262999219"
 S ^NEXT="101^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000000000000000000000000262999219,"P,")
 S ^VCORR="(262,999,219)" D ^VEXAMINE
 ;
101 S ^ABSN="30552",^ITEM="III-0552  numexpr=000.000789200"
 S ^NEXT="102^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000.000789200,"P,")
 S ^VCORR=" .0007892 " D ^VEXAMINE
 ;
102 S ^ABSN="30553",^ITEM="III-0553  numexpr=-000.000789200"
 S ^NEXT="103^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000.000789200,"P,")
 S ^VCORR="(.0007892)" D ^VEXAMINE
 ;
103 S ^ABSN="30554",^ITEM="III-0554  numexpr=00670.00789200"
 S ^NEXT="104^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(00670.00789200,"P,")
 S ^VCORR=" 670.007892 " D ^VEXAMINE
 ;
104 S ^ABSN="30555",^ITEM="III-0555  numexpr=-00670.00789200"
 S ^NEXT="105^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00670.00789200,"P,")
 S ^VCORR="(670.007892)" D ^VEXAMINE
 ;
105 S ^ABSN="30556",^ITEM="III-0556  numexpr=981000000000"
 S ^NEXT="106^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(981000000000,"P,")
 S ^VCORR=" 981,000,000,000 " D ^VEXAMINE
 ;
106 S ^ABSN="30557",^ITEM="III-0557  numexpr=-981000000000"
 S ^NEXT="107^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-981000000000,"P,")
 S ^VCORR="(981,000,000,000)" D ^VEXAMINE
 ;
107 S ^ABSN="30558",^ITEM="III-0558  numexpr=1E25"
 S ^NEXT="108^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(1E25,"P,")
 S ^VCORR=" 10,000,000,000,000,000,000,000,000 " D ^VEXAMINE
 ;
108 S ^ABSN="30559",^ITEM="III-0559  numexpr=-1E25"
 S ^NEXT="109^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-1E25,"P,")
 S ^VCORR="(10,000,000,000,000,000,000,000,000)" D ^VEXAMINE
 ;
109 S ^ABSN="30560",^ITEM="III-0560  numexpr=1E-25"
 S ^NEXT="110^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(1E-25,"P,")
 S ^VCORR=" .0000000000000000000000001 " D ^VEXAMINE
 ;
110 S ^ABSN="30561",^ITEM="III-0561  numexpr=-1E-25"
 S ^NEXT="111^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-1E-25,"P,")
 S ^VCORR="(.0000000000000000000000001)" D ^VEXAMINE
 ;
111 W !!,"fncodezpr is a "",P""" ;-------
 ;
 S ^ABSN="30562",^ITEM="III-0562  numexpr=00670.00789200"
 S ^NEXT="112^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(00670.00789200,",P")
 S ^VCORR=" 670.007892 " D ^VEXAMINE
 ;
112 S ^ABSN="30563",^ITEM="III-0563  numexpr=-00670.00789200"
 S ^NEXT="113^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00670.00789200,",P")
 S ^VCORR="(670.007892)" D ^VEXAMINE
 ;
113 S ^ABSN="30564",^ITEM="III-0564  numexpr=981000000000"
 S ^NEXT="114^V3FN28,V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(981000000000,",P")
 S ^VCORR=" 981,000,000,000 " D ^VEXAMINE
 ;
114 S ^ABSN="30565",^ITEM="III-0565  numexpr=-981000000000"
 S ^NEXT="V3FN29^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-981000000000,",P")
 S ^VCORR="(981,000,000,000)" D ^VEXAMINE
 ;
END W !!,"End of 51 --- V3FN28",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
