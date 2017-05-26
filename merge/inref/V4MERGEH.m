V4MERGEH ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"91---V4MERGEH:  MERGE Command  -H-"
 ;
1 S ^ABSN="40609",^ITEM="IV-609  maximum length of a name"
 S ^NEXT="2^V4MERGEH,V4MERGEI^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S A="ABCDEFGHIJ",B=1234567890
 S A(A,A,A,A,A,A,A,A,A,B,B,B,B,B,B,B,B,B)="ML "
 S A(A,A,A,A,A,A,A,A,A,B,B,B,B,B,B,B,B,B,"ABCDEFG")="ML1 "
 M ^V=A
 S V=^V("ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ",1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890)
 S V=V_^V("ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ","ABCDEFGHIJ",1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,1234567890,"ABCDEFG")
 s ^VCOMP=V
 S ^VCORR="ML ML1 " D ^VEXAMINE K ^V,^VV
 ;
2 S ^ABSN="40610",^ITEM="IV-610  maximum length of a data"
 S ^NEXT="V4MERGEI^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,1)=$J(11,255)
 S ^V(1,2)=$J(12,255)
 S ^V(1,3)=$J(13,255)
 M A(2,1)=^V(1)
 S ^VCOMP=($J(11,255)=A(2,1,1))_($J(12,255)=A(2,1,2))_($J(13,255)=A(2,1,3))
 S ^VCORR="111" D ^VEXAMINE K ^V
 ;
END W !!,"End of 91 --- V4MERGEH",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
