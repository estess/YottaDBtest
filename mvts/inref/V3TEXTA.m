V3TEXTA ;IW-KO-YS-TS,V3TEXT,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
LABEL S A=2 ;COMMENT
 ;
B ;S ^VCOMP=123 S B=3 ;;TEST
A ;A+0
 ;;A+1
 ;A+2
 S A=1 ;A+3
ZZ0Z Q  ;
 S A=1 ;ZZ0Z+1
 S A=2 ;ZZ0Z+2
 S A=3 ;ZZ0Z+3
 S A=4 ;ZZ0Z+4
 S A=5            S A=6     ;COMMNET
 S A="DATA"   S B("B")="HELLO "" HELLO"
ABC S A=123 ;0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 
 ;COMMENT  ;; COMMNET
 ;
