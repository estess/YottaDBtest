V4GETCOM ;IW-KO-YS-TS,VV4TP,MVTS V9.10;15/7/96;PART-94 Transaction
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 D GVCOMP1
 D GVCOMP2
 D GVCOMP3
 D GVCOMPM
 Q
 ;
GVCOMP1 ;
 ;GET ^VCOMP(1,*) DATA
 S V="",N=""
 FOR  S N=$O(^VCOMP(1,N)) Q:N=""  S V=V_^VCOMP(1,N)
 S ^VCOMP=^VCOMP_V
 K ^VCOMP(1)
 Q
 ;
GVCOMP2 ;
 ;GET ^VCOMP(2,*) DATA
 S V="",N=""
 FOR  S N=$O(^VCOMP(2,N)) Q:N=""  S V=V_^VCOMP(2,N)
 S ^VCOMP=^VCOMP_V
 K ^VCOMP(2)
 Q
 ;
GVCOMP3 ;
 ;GET ^VCOMP(3,*) DATA
 S V="",N=""
 FOR  S N=$O(^VCOMP(3,N)) Q:N=""  S V=V_^VCOMP(3,N)
 S ^VCOMP=^VCOMP_V
 K ^VCOMP(3)
 Q
 ;
GVCOMPM ;
 ;GET ^VCOMP("M",*) DATA
 S V="",N=""
 FOR  S N=$O(^VCOMP("M",N)) Q:N=""  S V=V_^VCOMP("M",N)
 S ^VCOMP=^VCOMP_V
 K ^VCOMP("M")
 Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
