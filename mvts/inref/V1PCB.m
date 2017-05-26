V1PCB ;IW-YS-MM-TS,V1PC,MVTS V9.10;15/6/96;POST-CONDITIONALS -2-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"137---V1PCB: Post conditionals -2-",! W:$Y>55 #
 ;
%714 D 714 D ^VEXAMINE
%715 D 715 D ^VEXAMINE
%837 D 837 D ^VEXAMINE
%838 D 838 D ^VEXAMINE
%839 D 839 D ^VEXAMINE
%840 D 840 D ^VEXAMINE
%841 D 841 D ^VEXAMINE
 ;
END W !!,"End of 137---V1PCB",!
 K  K ^V,^V1PC1 Q
 ;
714 W !,"I-714  GOTO command ( command word )"
 S ^ABSN="11715",^ITEM="I-714  GOTO command ( command word )",^NEXT="%715^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="1 7141 "
 GOTO:0 BUG S ^VCOMP=^VCOMP_"1 "
 GOTO:1 7141 S ^VCOMP=^VCOMP_"++1"
 S ^VCOMP=^VCOMP_"++2" Q
 ;
715 W !,"I-715  GOTO command ( argument )"
 S ^ABSN="11716",^ITEM="I-715  GOTO command ( argument )",^NEXT="%837^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="2 4 "
 G ENTER^V1PC1:2=1 S ^VCOMP=^VCOMP_"2 "
 G ENTERY^V1PC1:10.0=1E1 S ^VCOMP=^VCOMP_"-3 "
 S ^VCOMP=^VCOMP_"--3 " Q
 ;
837 W !,"I-837  GOTO with postconditionalized label list"
 S ^ABSN="11717",^ITEM="I-837  GOTO with postconditionalized label list",^NEXT="%838^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="B1 3 D1 E1 ",PC=2 G B1:PC=2=1,BUG Q
 ;
838 W !,"I-838  GOTO with postconditionalized label+intexpr list"
 S ^ABSN="11718",^ITEM="I-838  GOTO with postconditionalized label+intexpr list",^NEXT="%839^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="TABLE+1 00000000+1 RAPID+2 00000000+5 "
 S PC=2,^V1PC1(1)=1 G:$D(PC) BUG+2:" ,"=",",TABLE+1:$F(1E-2,".")
 ;
839 W !,"I-839  GOTO with postconditionalized ^routineref list"
 S ^ABSN="11719",^ITEM="I-839  GOTO with postconditionalized ^routineref list",^NEXT="%840^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="^V1PC11 ^V1PC12 " D 8391 D 8392 G 8393
 ;
840 W !,"I-840  GOTO with postconditionalized label^routineref list"
 S ^ABSN="11720",^ITEM="I-840  GOTO with postconditionalized label^routineref list",^NEXT="%841^V1PCB,V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="A LABEL D 0010 F " K ^V1PC1
 S PC=2 G A^V1PC1:1/1,BUG^V1PC1:1000*0
 ;
841 W !,"I-841  GOTO with postconditionalized label+intexpr^routineref list"
 S ^ABSN="11721",^ITEM="I-841  GOTO with postconditionalized label+intexpr^routineref list",^NEXT="V1PCC^V1PC,V1FORA^VV1" D ^V1PRESET
 S ^VCOMP="",^VCORR="%DRAFT+3 %DRAFT+4 123456"
 S PC=03.000 G:"A"=$E("ABC",1) %DRAFT+3^V1PC1:$E(PC,1)=3,%DRAFT+1^V1PC1
 ;
B1 S ^VCOMP=^VCOMP_"B1 " G:$P("101010",1,3) A1,BUG S ^VCOMP=^VCOMP_"3 " ;837
 G D1:1-1=0,A1:1 S ^VCOMP=^VCOMP_"E_B1+1 " Q  ;837
D1 S ^VCOMP=^VCOMP_"D1 " G E1:$D(PC),BUG ;837
A1 S ^VCOMP=^VCOMP_"--A1 " ;837
E1 S ^VCOMP=^VCOMP_"E1 " Q  ;837
BUG S ^VCOMP=^VCOMP_"BUG " Q
 S ^VCOMP=^VCOMP_"BUG+1 " Q
7141 S ^VCOMP=^VCOMP_"7141 " Q  ;714
 ;
TABLE S ^VCOMP=^VCOMP_"TABLE " Q
 S ^VCOMP=^VCOMP_"TABLE+1 " G:$E("A1A",2,2) BUG:0,00000000+1:"A"="A" ;838
00000000 S ^VCOMP=^VCOMP_"00000000 " Q
 S ^VCOMP=^VCOMP_"00000000+1 " G:"ABC"="ABC" RAPID+PC:$L("MUMPS")=5,BUG:$L("MUMPS")=0 Q
RAPID S ^VCOMP=^VCOMP_"RAPID "
 S ^VCOMP=^VCOMP_"RAPID+1 "
 S ^VCOMP=^VCOMP_"RAPID+2 " G:1=^V1PC1(1) 00000000+5:^V1PC1(1)=1,BUG:1 ;836
 S ^VCOMP=^VCOMP_"00000000+5 " Q
 ;
GO1 S ^VCOMP=^VCOMP_1 G GO1+-1+PC^V1PC1,BUG^V1PC1
0010 S ^VCOMP=^VCOMP_"0010 " G:$P($T(0010)," ",2)="S" BUG^V1PC1:$D(PC)=0,F^V1PC1
LABEL S ^VCOMP=^VCOMP_"LABEL " G BUG^V1PC1:$D(PC)=11,D^V1PC1:.1 Q
GO2 S ^VCOMP=^VCOMP_3 G GO2+PC+1^V1PC1,BUG^V1PC1
GO3 S ^VCOMP=^VCOMP_5 G GO3+PC^V1PC1,BUG
 ;
8391 S I=1 G:2=2=1 ^V1PC1,^V1PC1 Q
8392 S I=2 G:$E(12.34E1,3) ^V1PC1:$L("00.232#")=7,^V1PC1:1 Q
8393 S I=3 G ^V1PC1:$P(090807060,0,2)=9,^V1PC1:2=2=2 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
