V1SET1 ;IW-KO-TS,VV1,MVTS V9.10;15/6/96;SET COMMAND  -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"121---V1SET1: SET command  -1-",!
781 W !,"I-781  expr is string literal"
7811 S ^ABSN="11558",^ITEM="I-781.1  Subscripted variables assigned with constant values",^NEXT="7812^V1SET1,V1SET2^V1SET,V1GO^VV1" D ^V1PRESET
 SET A(1)="012345",A(2)=6789,A(2,1)="ONE",A(2,2)="TWO",A(3,3)=-32767
 SET ^VCOMP=A(1)_A(2)_A(2,1)_A(2,2)_A(3,3)
 S ^VCORR="0123456789ONETWO-32767" D ^VEXAMINE
 ;
7812 S ^ABSN="11559",^ITEM="I-781.2  Variables' values reassigned to other variables",^NEXT="782^V1SET1,V1SET2^V1SET,V1GO^VV1" D ^V1PRESET
 SET A(1)="012345",A(2)=6789,A(2,1)="ONE",A(2,2)="TWO",A(3,3)=-32767
 S A=A(2,2),A(2,2)=A(2,1),A(2,1)=A(2),A(2)=A(1),A(1)=A(3,3)
 S ^VCOMP=A_A(1)_A(2)_A(2,1)_A(2,2)
 S ^VCORR="TWO-327670123456789ONE" D ^VEXAMINE
 ;
782 W !,"I-782  expr is lvn"
 S ^ABSN="11560",^ITEM="I-782  expr is lvn",^NEXT="783^V1SET1,V1SET2^V1SET,V1GO^VV1" D ^V1PRESET
 K A,B,C,D,E,F,^V1,^V1A S A="ONE",B="TWO",C(1)="TRON",D(5,4,3)="543000"
 S E=A,E(100)=B,E(2,3,4)=C(1),F(4,5,6)=D(5,4,3),A=D(5,4,3),C(1)=E(2,3,4)_B
 S ^V1=A,^V1A(100,2)=E(2,3,4),^V1A(01,20)=D(5,4,3)*0.001
 S ^VCOMP=E_E(100)_E(2,3,4)_F(4,5,6)_A_C(1)_" "_^V1_^V1A(100,2)_^V1A(1,20)
 S ^VCORR="ONETWOTRON543000543000TRONTWO 543000TRON543" D ^VEXAMINE
 ;
783 W !,"I-783  expr is gvn"
 S ^ABSN="11561",^ITEM="I-783  expr is gvn",^NEXT="784^V1SET1,V1SET2^V1SET,V1GO^VV1" D ^V1PRESET
 K ^V1,^V1A,A,B,C,^V1B
 S ^V1="^V1",^V1A(02,20)="OS220",^V1A(100,101)=20,^V1B(30,2)="HOME",C=2
 S A=^V1A(2,20),^V1A=^V1B(30,C),B(123,C,1)=^V1A(2,20)_^V1A(C,^V1A(100,101))
 S ^V1B(9,9)=^V1B(30,2)_^V1A
 S ^VCOMP=A_" "_^V1A_" "_B(123,2,1)_" "_^V1_" "_^V1B(9,9)
 S ^VCORR="OS220 HOME OS220OS220 ^V1 HOMEHOME" D ^VEXAMINE
 ;
784 W !,"I-784  glvn is subscripted variable"
 S ^ABSN="11562",^ITEM="I-784  glvn is subscripted variable",^NEXT="V1SET2^V1SET,V1GO^VV1" D ^V1PRESET
 K A,B,^V1A,^V1B S A=1,B=2,B(3)=30
 S A(A)=10,A(A,B)=20,B(B(3),A(A))=30,B(A+B,A(A,B)+1)=40
 S VCOMP=A(1)_" "_A(1,2)_" "_B(30,10)_" "_B(3,21)_" "
 S ^V1B(A)=50,^V1A(B,B(3))=60,^V1A(^V1B(1),^V1A(B,B(3)),B(A+B,A(A,B)+1))=70
 S VCOMP=VCOMP_^V1B(1)_" "_^V1A(2,30)_" "_^V1A(50,60,40)
 S ^VCOMP=VCOMP,^VCORR="10 20 30 40 50 60 70" D ^VEXAMINE
 ;
END W !!,"End of 121---V1SET1",!
 K  K ^V1,^V1A,^V1B,^V1C,^V1D,^V1E Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
