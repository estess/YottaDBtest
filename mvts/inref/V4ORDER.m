V4ORDER ;IW-KO-TS-YS,V4ORDER,MVTS V9.10;15/6/96;$ORDER
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 W !,"Tests of $ORDER(glvn,expr) function"
 ;
V4ORD21 W !!,"108---V4ORD21" D ^V4ORD21
V4ORD22 W !!,"109---V4ORD22" D ^V4ORD22
V4ORD23 W !!,"110---V4ORD23" D ^V4ORD23
V4ORD24 W !!,"111---V4ORD24" D ^V4ORD24
V4ORD25 W !!,"112---V4ORD25" D ^V4ORD25
V4ORD26 W !!,"113---V4ORD26" D ^V4ORD26
V4ORD27 W !!,"114---V4ORD27" D ^V4ORD27
V4ORD28 W !!,"115---V4ORD28" D ^V4ORD28
V4ORD29 W !!,"116---V4ORD29" D ^V4ORD29
V4ORD2A W !!,"117---V4ORD2A" D ^V4ORD2A
END Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
