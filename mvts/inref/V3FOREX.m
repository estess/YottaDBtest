V3FOREX ;IW-KO-YS-TS,V3FOR,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
 S ^VCOMP=^VCOMP_" V3FOREX"
 Q
GOTO GOTO EXGOTO^V3FOR1
NESTG g NESTGEX^V3FOR2 ;
 Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
