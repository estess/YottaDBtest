V4QSUB3 ;IW-KO-YS-TS,V4QSUB,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"56---V4QSUB3:  $QSUBSCRIPT function  -2-"
 ;
 W !!,"$QL(namevalue)'<intexpr>0"
 ;
 W !!,"1 subscript"
 ;
1 S ^ABSN="40413",^ITEM="IV-413  subscript is an integer number"
 S ^NEXT="2^V4QSUB3,V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$qs("%A(0)",1)
 S ^VCORR="0" D ^VEXAMINE
 ;
2 S ^ABSN="40414",^ITEM="IV-414  subscript is a number"
 S ^NEXT="3^V4QSUB3,V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("A(294.09384)",1)
 S ^VCORR="294.09384" D ^VEXAMINE
 ;
3 S ^ABSN="40415",^ITEM="IV-415  subscript is a string"
 S ^NEXT="4^V4QSUB3,V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$qs("MMMMM(""ABCDEFGHJ"")",1)
 S ^VCORR="ABCDEFGHJ" D ^VEXAMINE
 ;
4 S ^ABSN="40416",^ITEM="IV-416  subscript contains a "" character"
 S ^NEXT="5^V4QSUB3,V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("X(""ABC""""DEF"")",1)
 S ^VCORR="ABC""DEF" D ^VEXAMINE
 ;
5 S ^ABSN="40417",^ITEM="IV-417  subscript contains "" characters"
 S ^NEXT="6^V4QSUB3,V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("X(""ABC""""D""""D""""D"")",1)
 S ^VCORR="ABC""D""D""D" D ^VEXAMINE
 ;
 W !!,"2 subscripts"
 ;
6 S ^ABSN="40418",^ITEM="IV-418  subscript is an integer number"
 S ^NEXT="V4QSUB4^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("A(93848,37498000)",1)
 S ^VCORR="93848" D ^VEXAMINE
 ;
END W !!,"End of 56 --- V4QSUB3",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
