V3NEWO1 ;IW-KO-YS-TS,V3NEW,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"95---V3NEWO1: NEW -25-"
 W !!,"$ORDER for NEWed Variable"
 ;
49 S ^ABSN="30956",^ITEM="III-0956  $D(lvn)=0"
 S ^NEXT="50^V3NEWO1,V3NEWO2^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 D NEWO1
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "   ;11 1 
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "   ;0 0 
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "   ;0 0 
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "   ;0 0 
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A        ;a
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)     ;a(2)
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B        ;
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)     ;
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C        ;
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)     ;
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D        ;
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)     ;
 S Q="" F K=1:1 S Q=$O(A(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;2
 S Q="" F K=1:1 S Q=$O(B(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(C(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(D(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S ^VCORR="000/11 1 1 0 10 1 0 0 aa(2)bc(2)223a#11 1 0 0 0 0 0 0 aa(2)2"
 D ^VEXAMINE
 ;
50 S ^ABSN="30957",^ITEM="III-0957  $D(lvn)=1"
 S ^NEXT="^V3NEWO2,V3NEWP^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A="A",B="B",C="C" s D=32 k D
 D NEWO2
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "   ;1 0 
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "   ;1 0 
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "   ;1 0 
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "   ;0 0 
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A        ;A
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)     ;
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B        ;b
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)     ;
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C        ;C
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)     ;
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D        ;
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)     ;
 S Q="" F K=1:1 S Q=$O(A(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(B(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(C(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(D(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S ^VCORR="010/11 1 1 0 10 1 11 1 aa(2)bc(2)dd(2)222#1 0 1 0 1 0 0 0 AbC"
 D ^VEXAMINE
 ;
END W !!,"End of 95 --- V3NEWO1",!
 K  Q
 ;
NEWO1 ;
 NEW (A)
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;000/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)",C(3,3)=33,C("a",0)="a0"
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "   ;11 1 
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "   ;1 0 
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "   ;10 1 
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "   ;0 0 
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A        ;a
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)     ;a(2)
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B        ;b
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)     ;
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C        ;
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)     ;c(2)
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D        ;
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)     ;
 S Q="" F K=1:1 S Q=$O(A(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;2
 S Q="" F K=1:1 S Q=$O(B(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(C(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;23a
 S Q="" F K=1:1 S Q=$O(D(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S ^VCOMP=^VCOMP_"#"                      ;#
 QUIT
 ;
NEWO2 ;
 NEW (B)
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;010/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)",D="d",D(2)="d(2)"
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "   ;11 1 
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "   ;1 0 
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "   ;10 1 
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "   ;11 1 
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A        ;a
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)     ;a(2)
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B        ;b
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)     ;
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C        ;
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)     ;c(2)
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D        ;d
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)     ;d(2)
 S Q="" F K=1:1 S Q=$O(A(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;2
 S Q="" F K=1:1 S Q=$O(B(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;
 S Q="" F K=1:1 S Q=$O(C(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;2
 S Q="" F K=1:1 S Q=$O(D(Q)) Q:Q=""  S ^VCOMP=^VCOMP_Q ;2
 S ^VCOMP=^VCOMP_"#"                      ;#
 QUIT
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
