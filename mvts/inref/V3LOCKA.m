V3LOCKA ;IW-KO-YS-TS,V3LOCK,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 LOCK (^VB,^VF)
 S ^VB=1
 LOCK +^VA
 S ^VA=^VA*10
 LOCK
 H
 ;
V3LOCKMA ;
 LOCK ^VF
 LOCK +^VA,+^VA,+^VA
 S ^VB=1
 S ^VA=^VA*10 LOCK -^VA H 1
 S ^VA=^VA*10 LOCK -^VA H 1
 S ^VA=^VA*10 LOCK -^VA H 1
 LOCK
 H
 ;
V3LOCKMB ;
 LOCK ^VF
 LOCK +(^VA,^VA,^VA)
 S ^VB=1
 S ^VA=^VA*10 LOCK -^VA H 1
 S ^VA=^VA*10 LOCK -^VA H 1
 S ^VA=^VA*10 LOCK -^VA H 1
 LOCK
 H
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
