V012 ;IW-YS-TS,V1RN,MVTS V9.10;15/6/96;CALLED BY <V1RN>
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 S VCOMP=VCOMP_"V012 " Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
