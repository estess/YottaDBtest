V3LOCKAA ;IW-KO-YS-TS,V3LOCK,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 LOCK ^VF
 S ^VB=1 I 1
 LOCK +(^VA):3 S ^VE=$T
 S ^VA=2
 LOCK
 H
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
