V3PRESET ;IW-KO-YS-TS,VV3,MVTS V9.10;15/6/96;PART-90 UTILITY
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 S ^VREPORT("Part-90",^ABSN)="*ABORT*"
 S ^VREPORT("Part-90",^ABSN,"ITEM")=^ITEM
 S ^VREPORT("Part-90",^ABSN,"NEXT")=^NEXT
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
