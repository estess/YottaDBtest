V4MERGE5 ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"79---V4MERG^V4MERGE,V4READ^VV4:  MERGE Command  -5-"
 ;
 W !!,"MERGE lvn=gvn",!
 ;
1 S ^ABSN="40561",^ITEM="IV-561  $d(lvn)=0 and $d(gvn)=0"
 S ^NEXT="2^V4MERGE5,V4MERGE6^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 MERGE A(1)=^V
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="/" D ^VEXAMINE K ^V
 ;
2 S ^ABSN="40562",^ITEM="IV-562  $d(lvn)=0 and $d(gvn)=1"
 S ^NEXT="3^V4MERGE5,V4MERGE6^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,1,1)="V111 ",^V(2)="V2 ",A(1)="A1 "
 M A(1,1)=^V(1,1,1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="1:A1 11:V111 /111:V111 2:V2 " D ^VEXAMINE K ^V
 ;
3 S ^ABSN="40563",^ITEM="IV-563  $d(lvn)=0 and $d(gvn)=10"
 S ^NEXT="4^V4MERGE5,V4MERGE6^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,2)="V12 ",^V(1,1,1)="V111 ",^V(1,1,1,1)="V1111 "
 S ^V(1,2,1)="V121 "
 M A(2)=^V(1)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="211:V111 2111:V1111 22:V12 221:V121 /111:V111 1111:V1111 12:V12 121:V121 " D ^VEXAMINE K ^V
 ;
4 S ^ABSN="40564",^ITEM="IV-564  $d(lvn)=0 and $d(gvn)=11"
 S ^NEXT="V4MERGE6^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,2)="V12 ",^V(1,1,1)="V111 ",^V(1,1,1,1)="V1111 "
 S ^V(1,2,1)="V121 "
 M A(2)=^V(1,2)
 S X=$$^V4MERE("A"),Y=$$^V4MERE("^V"),^VCOMP=X_"/"_Y
 S ^VCORR="2:V12 21:V121 /111:V111 1111:V1111 12:V12 121:V121 " D ^VEXAMINE K ^V
 ;
END W !!,"End of 79 --- V4MERGE5",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
