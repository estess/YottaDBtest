V1GO ;IW-KO-TS,VV1,MVTS V9.10;15/6/96;GOTO COMMAND (LOCAL BRANCHING)  SUB DRIVER
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
V1GO1 W !!,"123---V1GO1" D ^V1GO1
V1GO2 W !!,"124---V1GO2" D ^V1GO2
V1GO3 W !!,"125---V1GO3" D ^V1GO3
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
