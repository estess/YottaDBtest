V4SORT ;IW-KO-YS-TS,VV4,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"Tests of Sort After operator  A]]B"
 ;
V4SORT1 W !!,"1---V4SORT1" D ^V4SORT1
V4SORT2 W !!,"2---V4SORT2" D ^V4SORT2
V4SORT3 W !!,"3---V4SORT3" D ^V4SORT3
V4SORT4 W !!,"4---V4SORT4" D ^V4SORT4
V4SORT5 W !!,"5---V4SORT5" D ^V4SORT5
V4SORT6 W !!,"6---V4SORT6" D ^V4SORT6
V4SORT7 W !!,"7---V4SORT7" D ^V4SORT7
V4SORT8 W !!,"8---V4SORT8" D ^V4SORT8
V4SORT9 W !!,"9---V4SORT9" D ^V4SORT9
V4SORT10 W !!,"10---V4SORT10" D ^V4SORT10
END Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
