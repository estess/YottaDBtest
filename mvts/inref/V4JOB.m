V4JOB ;IW-KO-YS-TS,VV4,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
 W !!,"125---V4JOB: JOB command with parameter",!
 ;
1 S ^ABSN="40769",^ITEM="IV-769  JOB ^routinename with parameter"
 S ^NEXT="2^V4JOB,V4PAT^VV4" D ^V4PRESET K  L
 K ^V4JOB S V4JOB=1,^VCOMP=""
 JOB ^V4JOBEXA("A","B")
 F I=1:1:100 Q:$D(^V4JOB)=1  H 1
 I $D(^V4JOB)=0 S ^V4JOB="JOB ERROR"
 ;
 L ^ABCDEF:100 E  S ^VCOMP=^VCOMP_"/LOCK ERROR"
 I  S ^VCOMP=^VCOMP_"LOCK OK"
 ;
 S ^VCOMP=^VCOMP_"/"_V4JOB_"/"_($P(^V4JOB," ",1)=$J)_$P(^V4JOB," ",2)
 S ^VCORR="LOCK OK/1/0AB" D ^VEXAMINE
 ;
2 S ^ABSN="40770",^ITEM="IV-770  J label^routinename with parameter"
 S ^NEXT="3^V4JOB,V4PAT^VV4" D ^V4PRESET K  L
 K ^V4JOB S V4JOB=2,^VCOMP=""
 J B^V4JOBEXA("C")
 F I=1:1:100 Q:$D(^V4JOB)=1  H 1
 I $D(^V4JOB)=0 S ^V4JOB="JOB ERROR"
 ;
 L ^ABCDEF:100 E  S ^VCOMP=^VCOMP_"/LOCK ERROR"
 I  S ^VCOMP=^VCOMP_"LOCK OK"
 ;
 S ^VCOMP=^VCOMP_"/"_V4JOB_"/"_^V4JOB
 S ^VCORR="LOCK OK/2/OK C" D ^VEXAMINE
 ;
3 S ^ABSN="40771",^ITEM="IV-771  JOB label with parameter"
 S ^NEXT="V4PAT^VV4" D ^V4PRESET K  L
 K ^V4JOB S V4JOB=3,^VCOMP=""
 JOB B("D","E",100)
 F I=1:1:100 Q:$D(^V4JOB)=1  H 1
 I $D(^V4JOB)=0 S ^V4JOB="JOB ERROR"
 ;
 L ^ABCDEF:100 E  S ^VCOMP=^VCOMP_"/LOCK ERROR"
 I  S ^VCOMP=^VCOMP_"LOCK OK"
 ;
 S ^VCOMP=^VCOMP_"/"_V4JOB_"/"_(^V4JOB)
 S ^VCORR="LOCK OK/3/OK DE100" D ^VEXAMINE
 ;
END W !!,"End of 125 --- V4JOB",!
 K  Q
 ;
B(A,B,C) S V4JOB="LVN ERROR"
 L ^ABCDEF
 S ^V4JOB="OK "_A_B_C
 H
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
