V4MERGE4 ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"78---V4MERGE4:  MERGE Command  -4-"
 ;
1 S ^ABSN="40557",^ITEM="IV-557  $d(lvn1)=11 and $d(lvn2)=0"
 S ^NEXT="2^V4MERGE4,V4MERGE5^V4MERGE,V4READ^VV4" D ^V4PRESET K
 S A("A",1)="A1 ",A("A",1,1)="A11 ",B(1)="B1 "
 M A("A",1)=B(1,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("B"),^VCOMP=X_"/"_Y
 S ^VCORR="A1:A1 A11:A11 /1:B1 " D ^VEXAMINE
 ;
2 S ^ABSN="40558",^ITEM="IV-558  $d(lvn1)=11 and $d(lvn2)=1"
 S ^NEXT="3^V4MERGE4,V4MERGE5^V4MERGE,V4READ^VV4" D ^V4PRESET K
 S A("A",1)="A1 ",A("A",1,1)="A11 ",B(1,1)="B11 ",B="B ",B(1)="B1 "
 M A("A")=B(1,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("B"),^VCOMP=X_"/"_Y
 S ^VCORR="A:B11 A1:A1 A11:A11 /:B 1:B1 11:B11 " D ^VEXAMINE
 ;
3 S ^ABSN="40559",^ITEM="IV-559  $d(lvn1)=11 and $d(lvn2)=10"
 S ^NEXT="4^V4MERGE4,V4MERGE5^V4MERGE,V4READ^VV4" D ^V4PRESET K
 S A(1,1,1,1)="A1111 ",A(1,1)="A11 ",A(1,1,1,2)="A1112 "
 S B("A",1,1)="BA11 ",B("A",2,1)="A21 "
 M A(1,1)=B("A",1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("B"),^VCOMP=X_"/"_Y
 S ^VCORR="11:A11 111:BA11 1111:A1111 1112:A1112 /A11:BA11 A21:A21 " D ^VEXAMINE
 ;
4 S ^ABSN="40560",^ITEM="IV-560  $d(lvn1)=11 and $d(lvn2)=11"
 S ^NEXT="V4MERGE5^V4MERGE,V4READ^VV4" D ^V4PRESET K
 S A(1,1,1,1)="A1111 ",A(1,1)="A11 ",A(1,1,1,2)="A1112 "
 S B("A",1,1)="BA11 ",B("A",2,1)="BA21 ",B("A",1,1,1)="BA111 "
 M A(1,1)=B("A",1,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("B"),^VCOMP=X_"/"_Y
 S ^VCORR="11:BA11 111:BA111 1111:A1111 1112:A1112 /A11:BA11 A111:BA111 A21:BA21 " D ^VEXAMINE
 ;
END W !!,"End of 78 --- V4MERGE4",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
