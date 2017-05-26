V4QLEN5 ;IW-KO-YS-TS,V4QLEN,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"50---V4QLEN5:  $QLENGTH function  -5-"
 ;
 W !!,"gvn"
 ;
1 S ^ABSN="40370",^ITEM="IV-370  unsubscripted"
 S ^NEXT="2^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^VCOMP=$QLENGTH("^V")
 S ^VCORR="0" D ^VEXAMINE
 ;
 W !!,"1 subscript"
 ;
2 S ^ABSN="40371",^ITEM="IV-371  subscript is an integer number"
 S ^NEXT="3^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^VCOMP=$QLENGTH("^V(987654321054321)")
 S ^VCORR="1" D ^VEXAMINE
 ;
;**MVTS LOCAL CHANGE**
;Current requirement is for canonic input 10/2001 SE
3 ;S ^ABSN="40372",^ITEM="IV-372  subscript is a number"
 ;S ^NEXT="4^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 ;S ^VCOMP=$ql("^V(-12345678912345E-25)")
 ;S ^VCORR="1" D ^VEXAMINE
 ;
4 S ^ABSN="40373",^ITEM="IV-373  subscript is a string"
 S ^NEXT="5^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^VCOMP=$QL("^V(""      "")")
 S ^VCORR="1" D ^VEXAMINE
 ;
5 S ^ABSN="40374",^ITEM="IV-374  $DATA(gvn)=0"
 S ^NEXT="6^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^VCOMP=$ql("^V(43745.3743)")
 S ^VCORR="1" D ^VEXAMINE
 ;
6 S ^ABSN="40375",^ITEM="IV-375  $DATA(gvn)=1"
 S ^NEXT="7^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^V(":+""><")="aaa"
 S ^VCOMP=$ql("^V("":+""""><"")")
 S ^VCORR="1" D ^VEXAMINE K ^V
 ;
7 S ^ABSN="40376",^ITEM="IV-376  $DATA(gvn)=10"
 S ^NEXT="8^V4QLEN5,V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^V(12.34,"A","B","C")=""
 S ^VCOMP=$ql("^V(12.34)")
 S ^VCORR="1" D ^VEXAMINE K ^V
 ;
8 S ^ABSN="40377",^ITEM="IV-377  $DATA(gvn)=11"
 S ^NEXT="V4QLEN6^V4QLEN,V4QSUB^VV4" D ^V4PRESET K  K ^V
 S ^V="a"
 S ^V("A")=""
 S ^V("A","B","C")=""
 S ^VCOMP=$qlength("^V(""A"")")
 S ^VCORR="1" D ^VEXAMINE K ^V
 ;
END W !!,"End of 50 --- V4QLEN5",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
