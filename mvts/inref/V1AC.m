V1AC ;IW-YS-TS,VV1,MVTS V9.10;15/6/96;$ASCII AND $CHAR FUNCTIONS  SUB DRIVER
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
V1AC1 W !!,"104---V1AC1" D ^V1AC1
V1AC2 W !!,"105---V1AC2" D ^V1AC2
V1AC3 W !!,"106---V1AC3" D ^V1AC3
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
