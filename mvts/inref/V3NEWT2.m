V3NEWT2 ;IW-KO-YS-TS,V3NEW,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"106---V3NEWMT2: NEW -36-"
 ;
77 S ^ABSN="30984",^ITEM="III-0984  $D(lvn)=10"
 S ^NEXT="78^V3NEWT2,V3NEWT3^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A(2)="A(2)",B(2)="B(2)",C(2)="C(2)"
 D NEWT23,CHECK
 S ^VCORR="11 1 1 0 10 1 11 1 aa(2)bc(2)dd(2)#11 1 1 0 11 1 1 0 aaa(2)bbccc(2)dd#10 1 10 1 10 1 0 0 A(2)B(2)C(2)#"
 D ^VEXAMINE
 ;
78 S ^ABSN="30985",^ITEM="III-0985  $D(lvn)=11"
 S ^NEXT="^V3NEWT3,V3NEWT4^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A="A",A(2)="A(2)",B="B",B(2)="B(2)",C="C",C(2)="C(2)"
 D NEWT24
 D CHECK
 S ^VCORR="1 0 11 1 11 1 1 0 aabbB(2)ccC(2)dd#11 1 1 0 10 1 11 1 aa(2)bc(2)dd(2)#11 1 11 1 11 1 1 0 AA(2)bbB(2)ccC(2)dd#"
 D ^VEXAMINE
 ;
END W !!,"End of 106 --- V3NEWT2",!
 K  Q
 ;
NEWT23 ;
 n
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)",D="d",D(2)="d(2)"
 D CHECK
 NEW (C,A)
 S A="aa",B="bb",C="cc",D="dd"
 D CHECK
 QUIT
 ;
NEWT24 ;
 NEW A
 S A="aa",B="bb",C="cc",D="dd"
 D CHECK
 n
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)",D="d",D(2)="d(2)"
 D CHECK
 QUIT
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
CHECK ;
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)
 S ^VCOMP=^VCOMP_"#"
