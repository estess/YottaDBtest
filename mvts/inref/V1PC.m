V1PC ;IW-YS-MM-TS,VV1,MVTS V9.10;15/6/96;POST-CONDITIONALS  SUB DRIVER
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
V1PCA W !!,"136---V1PCA" D ^V1PCA
V1PCB W !!,"137---V1PCB" D ^V1PCB
V1PCC W !!,"138---V1PCC" D ^V1PCC
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
