V4POW1 ;IW-KO-TS-YS,V4POWER,MVTS V9.10;15/6/96;POWER OPERATOR
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 ;
 W !!,"99---V4POW1:  power operator  (A**P)  -1-"
 ;
 W !,"A=1"
 ;
1 S ^ABSN="40633",^ITEM="IV-633  1**0"
 S ^NEXT="2^V4POW1,V4POW2^V4POWER,V4RAND^VV4" D ^V4PRESET K
 S ^VCOMP=1**0
 S ^VCORR="1" D ^VEXAMINE
 ;
2 S ^ABSN="40634",^ITEM="IV-634  1**1"
 S ^NEXT="3^V4POW1,V4POW2^V4POWER,V4RAND^VV4" D ^V4PRESET K
 S ^VCOMP=1**1
 S ^VCORR="1" D ^VEXAMINE
 ;
3 S ^ABSN="40635",^ITEM="IV-635  1**5"
 S ^NEXT="V4POW2^V4POWER,V4RAND^VV4" D ^V4PRESET K
 S ^VCOMP=1**5
 S ^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 99 --- V4POW1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
