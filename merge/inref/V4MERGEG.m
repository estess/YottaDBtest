V4MERGEG ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"90---V4MERGEG:  MERGE Command  -G-"
 ;
1 S ^ABSN="40605",^ITEM="IV-605  $d(gvn1)=11 and $d(gvn2)=0"
 S ^NEXT="2^V4MERGEG,V4MERGEH^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V,^VV
 S ^V(1)="V1 ",^V(1,1,1)="V111 ",^V(1,1,1,1)="V1111 "
 S ^VV(2)="VV2 "
 M ^V(1,1,1)=^VV(2,1)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("^VV"),^VCOMP=X_"/"_Y
 S ^VCORR="1:V1 111:V111 1111:V1111 /2:VV2 " D ^VEXAMINE K ^V,^VV
 ;
2 S ^ABSN="40606",^ITEM="IV-606  $d(gvn1)=11 and $d(gvn2)=1"
 S ^NEXT="3^V4MERGEG,V4MERGEH^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V,^VV
 S ^V(1)="V1 ",^V(1,1,1)="V111 ",^V(1,1,1,1)="V1111 "
 S ^VV(2)="VV2 ",^VV(2,1)="VV21 "
 m ^V(1,1,1)=^VV(2,1)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("^VV"),^VCOMP=X_"/"_Y
 S ^VCORR="1:V1 111:VV21 1111:V1111 /2:VV2 21:VV21 " D ^VEXAMINE K ^V,^VV
 ;
3 S ^ABSN="40607",^ITEM="IV-607  $d(gvn1)=11 and $d(gvn2)=10"
 S ^NEXT="4^V4MERGEG,V4MERGEH^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V,^VV
 S ^V(1,1,1)="V111 ",^V(1,1,1,1)="V1111 ",^V(1,1,1,2)="V1112 "
 S ^VV(2,1)="V21 ",^VV(2,1,1)="V211 "
 M ^V(1,1,1)=^VV(2)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("^VV"),^VCOMP=X_"/"_Y
 S ^VCORR="111:V111 1111:V21 11111:V211 1112:V1112 /21:V21 211:V211 " D ^VEXAMINE K ^V,^VV
 ;
4 S ^ABSN="40608",^ITEM="IV-608  $d(gvn1)=11 and $d(gvn2)=11"
 S ^NEXT="V4MERGEH^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V,^VV
 S ^V="V ",^V(1)="V1 ",^V(1,1)="V11 ",^V(1,1,1,1)="V1111 "
 S ^VV="VV ",^VV(2,1)="VV21 "
 M ^V=^VV
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("^VV"),^VCOMP=X_"/"_Y
 S ^VCORR=":VV 1:V1 11:V11 1111:V1111 21:VV21 /:VV 21:VV21 " D ^VEXAMINE K ^V,^VV
 ;
END W !!,"End of 90 --- V4MERGEG",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
