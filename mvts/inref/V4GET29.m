V4GET29 ;IW-KO-YS-TS,V4GET2,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"31---V4GET29:  $GET function  -9-"
 ;
 w !,"expr has indirections"
 ;
1 S ^ABSN="40238",^ITEM="IV-238  ^VV(@A)"
 S ^NEXT="2^V4GET29,V4NAME^VV4" D ^V4PRESET K  K ^VV
 S A="^VV(""A"")",^VV("A")="F",^VV("F")=$J(123,5)
 S ^VCOMP=$g(^VV,^VV(@A))
 S ^VCORR="  123" D ^VEXAMINE K ^VV
 ;
2 S ^ABSN="40239",^ITEM="IV-239  @VV"
 S ^NEXT="3^V4GET29,V4NAME^VV4" D ^V4PRESET K  K ^VV
 S VV="@V",^VV="@@VV@(1)",V="V1",V1(1)="AAAA",V1="v1"
 S ^VCOMP=$g(@^VV,@VV)
 S ^VCORR="v1" D ^VEXAMINE K ^VV
 ;
3 S ^ABSN="40240",^ITEM="IV-240  @^VV@(12,456)"
 S ^NEXT="4^V4GET29,V4NAME^VV4" D ^V4PRESET K  K ^VV
 S ^VV(1,2,3,4,12,456)="1234567",^VV="@AA@(3,4)",^VV(1,2,3,4,12,4)="44"
 S AA="^VV(1,2)"
 S ^VCOMP=$g(A,@^VV@(12,456))_" "_^(4)
 S ^VCORR="1234567 44" D ^VEXAMINE K ^VV
 ;
4 S ^ABSN="40241",^ITEM="IV-241  @@^VV(0)@(12,456)"
 S ^NEXT="5^V4GET29,V4NAME^VV4" D ^V4PRESET K  K ^VV
 S ^VV(3,4,12,456)="12345",^VV(0)="^(3,4)",^VV(3,4,12,4)="44"
 S ^VCOMP=$g(A,@^VV(0)@(12,456))_" "_^(4)
 S ^VCORR="12345 44" D ^VEXAMINE K ^VV
 ;
5 S ^ABSN="40242",^ITEM="IV-242  nesting"
 S ^NEXT="V4NAME^VV4" D ^V4PRESET K  K ^VV
 S ^VV(1,2,3,4,12,456)="@^VV(1,2)",^VV="@AA@(3,4)",^VV(1,2,3,4,12,4)="44"
 S AA="^VV(1,2)",^VV(1,2)="ABCD",ABCD="abcd",^VV(1,2,3,4,12,2)="1"
 S ^VV(1,2,3,2)="XXX"
 S ^VCOMP=$g(@^VV,@@^VV@(12,456))_" "_^(2)
 S ^VCORR="abcd ABCD" D ^VEXAMINE K ^VV
 ;
END W !!,"End of 31 --- V4GET29",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
