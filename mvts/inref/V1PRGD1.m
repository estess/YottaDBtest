V1PRGD1 ;IW-YS-TS,V1PRGD,MVTS V9.10;15/6/96;PRELIMINARY TEST OF GOTO, DO AND QUIT (EXPLICIT AND IMPLICIT) COMMANDS
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
728 S VCOMP=VCOMP_" ^V1PRGD1"
 QUIT  S VCOMP=VCOMP_" ^V1PRGD1-ERROR" QUIT
 S VCOMP=VCOMP_" ^V1PRGD1 next line"
 QUIT
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
