V3TR ;IW-KO-YS-TS,VV3,MVTS V9.10;15/6/96;PART-90 SUB-DRIVER
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
V3TR01 W !!,"7---V3TR01" D ^V3TR01
V3TR02 W !!,"8---V3TR02" D ^V3TR02
V3TR03 W !!,"9---V3TR03" D ^V3TR03
V3TR04 W !!,"10---V3TR04" D ^V3TR04
V3TR05 W !!,"11---V3TR05" D ^V3TR05
V3TR06 W !!,"12---V3TR06" D ^V3TR06
V3TR07 W !!,"13---V3TR07" D ^V3TR07
V3TR08 W !!,"14---V3TR08" D ^V3TR08
V3TR09 W !!,"15---V3TR09" D ^V3TR09
V3TR10 W !!,"16---V3TR10" D ^V3TR10
V3TR11 W !!,"17---V3TR11" D ^V3TR11
 ;
END K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
