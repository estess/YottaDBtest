V4QSUB6 ;IW-KO-YS-TS,V4QSUB,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"59---V4QSUB6:  $QSUBSCRIPT function  -6-"
 ;
 W !!,"2 subscripts"
 ;
1 S ^ABSN="40432",^ITEM="IV-432  subscript is an integer number"
 S ^NEXT="2^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("X(209494,""A"")",9999999)
 S ^VCORR="" D ^VEXAMINE
 ;
2 S ^ABSN="40433",^ITEM="IV-433  subscript is a number"
 S ^NEXT="3^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("LA(374.383,""A373.3739"")",3)
 S ^VCORR="" D ^VEXAMINE
 ;
3 S ^ABSN="40434",^ITEM="IV-434  subscript are numbers"
 S ^NEXT="4^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("LA(374.383,-373.3739)",3)
 S ^VCORR="" D ^VEXAMINE
 ;
4 S ^ABSN="40435",^ITEM="IV-435  subscript is a string"
 S ^NEXT="5^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("%ZZZZ(""09876Q"",1234.374)",1E1)
 S ^VCORR="" D ^VEXAMINE
 ;
5 S ^ABSN="40436",^ITEM="IV-436  subscript are strings"
 S ^NEXT="6^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$qs("ABCD(""AHD"",""0399494"")",111)
 S ^VCORR="" D ^VEXAMINE
 ;
6 S ^ABSN="40437",^ITEM="IV-437  subscript contains a "" character"
 S ^NEXT="7^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 ;(test fixed in V9.02;7/10/95)
 S ^VCOMP=$QS("%("""""""",283)",3)
 S ^VCORR="" D ^VEXAMINE
 ;
;**MVTS LOCAL CHANGE**
 ; Currently requiring canonical input that has no trailing 0's or a single 0
;10/2001 SE
7 ;S ^ABSN="40438",^ITEM="IV-438  subscript contains "" characters"
 ;S ^NEXT="8^V4QSUB6,V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 ;S ^VCOMP=$QS("ZZ(""BC""""MDF""""A"",""0.03880"")",3)
 ;S ^VCORR="" D ^VEXAMINE
 ;
8 S ^ABSN="40439",^ITEM="IV-439  5 subscripts"
 S ^NEXT="V4QSUB7^V4QSUB,V4SVQ^VV4" D ^V4PRESET K
 S ^VCOMP=$QS("X(0,1,2,3,4)",6)
 S ^VCORR="" D ^VEXAMINE
 ;
END W !!,"End of 59 --- V4QSUB6",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
