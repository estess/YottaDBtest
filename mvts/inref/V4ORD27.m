V4ORD27 ;IW-KO-TS-YS,V4ORDER,MVTS V9.10;15/6/96;$ORDER
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 ;
 W !!,"114---V4ORD27:  $ORDER(glvn,expr)  -7-"
 ;
 W !,"expr has indirections"
 ;
1 S ^ABSN="40719",^ITEM="IV-719  ^V(@A)"
 S ^NEXT="2^V4ORD27,V4ORD28^V4ORDER,V4QUERY^VV4" D ^V4PRESET K  K ^V
 S A="B(1,2)",B(1,2)="A"
 S ^V("A")="-1"
 S ^VCOMP=$O(^V(1,2,3),^V(@A))
 S ^VCORR="" D ^VEXAMINE K ^V
 ;
2 S ^ABSN="40720",^ITEM="IV-720  @VV"
 S ^NEXT="3^V4ORD27,V4ORD28^V4ORDER,V4QUERY^VV4" D ^V4PRESET K
 S VV="V(1,23)",V(1,23)="-1"
 S ^VCOMP=$o(V(1,"\"),@VV)
 S ^VCORR="23" D ^VEXAMINE
 ;
3 S ^ABSN="40721",^ITEM="IV-721  @^V@(12,456)"
 S ^NEXT="4^V4ORD27,V4ORD28^V4ORDER,V4QUERY^VV4" D ^V4PRESET K  K ^V
 S A=1,^V="A(A,0)",A(1,0,12,456)=1
 S ^V(1,"Z9")=1
 S ^VCOMP=$o(^V(A,""),@^V@(12,456))
 S ^VCORR="Z9" D ^VEXAMINE K ^V
 ;
4 S ^ABSN="40722",^ITEM="IV-722  @@^V(0)@(12,456)"
 S ^NEXT="V4ORD28^V4ORDER,V4QUERY^VV4" D ^V4PRESET K  K ^V
 S A="a",X="X"
 S ^V(0)="^V(X,2,3)",^V(X,2,3,12,456)="A(2,3)",A(2,3)=-1
 S V("Y")="y",^V(1)="V1",^V(X,2,3,12,1)="V2"
 S ^VCOMP=$O(V(A),@@^V(0)@(12,456))_" "_^(1)
 S ^VCORR="Y V2" D ^VEXAMINE K ^V
 ;
END W !!,"End of 114 --- V4ORD27",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
