V4REV4 ;IW-KO-YS-TS,V4REV,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"22---V4REV4:  $REVERSE function  -4-"
 ;
1 S ^ABSN="40175",^ITEM="IV-175  @VV"
 S ^NEXT="2^V4REV4,V4GET2^VV4" D ^V4PRESET
 S VV="V1(V2)",V1("ABC")="$E(321)",V2="ABC"
 S ^VCOMP=$REVERSE(@VV)
 S ^VCORR=")123(E$" D ^VEXAMINE
 ;
2 S ^ABSN="40176",^ITEM="IV-176  @^VV@(12,456)"
 S ^NEXT="3^V4REV4,V4GET2^VV4" D ^V4PRESET K ^V1,^VV
 S ^VV="^V1(3,$E(""987654321987654321"",.8+10/3))"
 S ^V1(3,7,12,456)=$L("abcdefghijklmnopqrstuvwxyz")
 S ^VCOMP=$re(@^VV@(12,456))
 S ^VCORR="62" D ^VEXAMINE K ^VV,^V1
 ;
3 S ^ABSN="40177",^ITEM="IV-177  @@^VV(0)@(12,456)"
 S ^NEXT="4^V4REV4,V4GET2^VV4" D ^V4PRESET K ^VV,^V1
 S ^VV(0)="^V1(3,$E(""987654321987654321"",.8+10/3))"
 S ^V1(3,7,12,456)="VV",VV=-3456789E-4
 S ^VCOMP=$RE(@@^VV(0)@(12,456))
 S ^VCORR="9876.543-" D ^VEXAMINE K ^VV,^V1
 ;
4 S ^ABSN="40178",^ITEM="IV-178  nesting"
 S ^NEXT="V4GET2^VV4" D ^V4PRESET K ^VV,^V1
 S ^VV(0)="^V1(3,$E(""987654321987654321"",.8+10/3))"
 K  S VV(1)="@A",VV="VV(3)",A="B(C)",C="abc",B("abc")="ABC"
 S VV(3,"ABC",4)="10;20"
 s ^V1(3,7,"10;20","ABC")="^V1(C,2)",^V1("abc",2)="XYZ"
 S ^VCOMP=$RE(@@^VV(0)@(@VV@(@@"A",4),@VV(1)))
 S ^VCORR="ZYX" D ^VEXAMINE K ^V1,^VV
 ;
END W !!,"End of 22 --- V4REV4",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
