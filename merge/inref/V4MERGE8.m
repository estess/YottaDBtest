V4MERGE8 ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"82---V4MERGE8:  MERGE Command  -8-"
 ;
1 S ^ABSN="40573",^ITEM="IV-573  $d(lvn)=11 and $d(gvn)=0"
 S ^NEXT="2^V4MERGE8,V4MERGE9^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S A(2,1)="A21 ",A(2,1,1)="A211 ",^V(1)="V1 ",^V(1,1)="V11 "
 M A(2,1)=^V(1,1,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="21:A21 211:A211 /1:V1 11:V11 " D ^VEXAMINE K ^V
 ;
2 S ^ABSN="40574",^ITEM="IV-574  $d(lvn)=11 and $d(gvn)=1"
 S ^NEXT="3^V4MERGE8,V4MERGE9^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S A(1)="A1 ",A(1,1)="A11 ",A(1,1,1)="A111 ",A(2)="A2 "
 S ^V="V "
 M A(1,1)=^V
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="1:A1 11:V 111:A111 2:A2 /:V " D ^VEXAMINE K ^V
 ;
3 S ^ABSN="40575",^ITEM="IV-575  $d(lvn)=11 and $d(gvn)=10"
 S ^NEXT="4^V4MERGE8,V4MERGE9^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S A(1,1)="A11 ",A(2,1)="A21 ",A(2,1,1)="A211 "
 S ^V(3)="V3 ",^V(3,1,1)="V311 ",^V(3,1,1,1)="V3111 ",^V(3,2)="V32 "
 M A(2,1)=^V(3,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="11:A11 21:A21 211:V311 2111:V3111 /3:V3 311:V311 3111:V3111 32:V32 " D ^VEXAMINE K ^V
 ;
4 S ^ABSN="40576",^ITEM="IV-576  $d(lvn)=11 and $d(gvn)=11"
 S ^NEXT="V4MERGE9^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S A(1,2)="A12 ",A(2)="A2 ",A(2,1)="A21 ",A(3)="A3 "
 S ^V(1)="V1 ",^V(1,1)="V11 ",^V(1,2)="V12 ",^V(1,2,1)="V121 ",^V(1,2,1,1)="V1211 "
 M A(2)=^V(1,2)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="12:A12 2:V12 21:V121 211:V1211 3:A3 /1:V1 11:V11 12:V12 121:V121 1211:V1211 " D ^VEXAMINE K ^V
 ;
END W !!,"End of 82 --- V4MERGE8",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
