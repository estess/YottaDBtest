V1FORA2 ;IW-YS-TS,V1FORA,MVTS V9.10;15/6/96;FOR COMMAND -1.2-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"140---V1FORA2: FOR command -1.2-",!
 ;
341 W !,"I-341/343  numexpr2<0"
3411 S ^ABSN="11742",^ITEM="I-341/343.1  numexpr1<numexpr3",^NEXT="3412^V1FORA2,V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S VCOMP="" F I=4:-2:5555555 S VCOMP=VCOMP_I
 S VCOMP=VCOMP_I,^VCOMP=VCOMP,^VCORR="4" D ^VEXAMINE
 ;
3412 S ^ABSN="11743",^ITEM="I-341/343.2  numexpr1=numexpr3",^NEXT="3413^V1FORA2,V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S VCOMP="" F I=4:-2:4 S VCOMP=VCOMP_I
 S VCOMP=VCOMP_I,^VCOMP=VCOMP,^VCORR="44" D ^VEXAMINE
 ;
3413 S ^ABSN="11744",^ITEM="I-341/343.3  numexpr1>numexpr3",^NEXT="344^V1FORA2,V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S VCOMP="" F I=4:-2:-5 S VCOMP=VCOMP_I
 S VCOMP=VCOMP_I,^VCOMP=VCOMP,^VCORR="420-2-4-4" D ^VEXAMINE
 ;
344 W !,"I-344  numexpr1=numexpr2=numexpr3"
3441 S ^ABSN="11745",^ITEM="I-344.1  numexpr>0",^NEXT="3442^V1FORA2,V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S ^VCOMP="" F I=10:10:10 S ^VCOMP=^VCOMP_I
 S ^VCOMP=^VCOMP_I,^VCORR="1010" D ^VEXAMINE
 ;
3442 S ^ABSN="11746",^ITEM="I-344.2  numexpr=0",^NEXT="3443^V1FORA2,V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S ^VCOMP="" S J=0 F I=0:000:.0 S ^VCOMP=^VCOMP_I,J=J+1 I J=3 S I=4
 S ^VCOMP=^VCOMP_I,^VCORR="0004" D ^VEXAMINE
 ;
3443 S ^ABSN="11747",^ITEM="I-344.3  numexpr<0",^NEXT="V1FORA3^V1FORA,V1FORB^VV1" D ^V1PRESET
 S ^VCOMP="" F I=-12:-12.0:"-12" S ^VCOMP=^VCOMP_I
 S ^VCOMP=^VCOMP_I,^VCORR="-12-12" D ^VEXAMINE
 ;
END W !!,"End of 140---V1FORA2",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
