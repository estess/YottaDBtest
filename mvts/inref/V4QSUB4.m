V4QSUB4 ;IW-KO-YS-TS,V4QSUB,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"57---V4QSUB4:  $QSUBSCRIPT function  -4-"
 ;
1 S ^ABSN="40419",^ITEM="IV-419  subscript is a number"
 S ^NEXT="2^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("ZZZZZZZZ(-.000234,2937373)",2)
 S ^VCORR="2937373" D ^VEXAMINE
 ;
2 S ^ABSN="40420",^ITEM="IV-420  subscript are numbers"
 S ^NEXT="3^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("%A(-9280.833,8383.83)",1)
 S ^VCORR="-9280.833" D ^VEXAMINE
 ;
3 S ^ABSN="40421",^ITEM="IV-421  subscript is a string"
 S ^NEXT="4^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$qs("%ZZZ(""abcd"",-2838.083)",2)
 S ^VCORR="-2838.083" D ^VEXAMINE
 ;
4 S ^ABSN="40422",^ITEM="IV-422  subscript are strings"
 S ^NEXT="5^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("%ZZZ(""abcd"",""--2838.083"")",1)
 S ^VCORR="abcd" D ^VEXAMINE
 ;
5 S ^ABSN="40423",^ITEM="IV-423  subscript contains a "" character"
 S ^NEXT="6^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("Z(""AA""""BB"",12)",1)
 S ^VCORR="AA""BB" D ^VEXAMINE
 ;
6 S ^ABSN="40424",^ITEM="IV-424  subscript contains "" characters"
 S ^NEXT="7^V4QSUB4,V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$qs("Z999999("""""""","""""""""""")",2)
 S ^VCORR="""""" D ^VEXAMINE
 ;
7 S ^ABSN="40425",^ITEM="IV-425  5 subscripts"
 S ^NEXT="V4QSUB5^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("AAAA(""X"",0,-123.83,.9293,-9)",4)
 S ^VCORR=".9293" D ^VEXAMINE
 ;
END W !!,"End of 57 --- V4QSUB4",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
