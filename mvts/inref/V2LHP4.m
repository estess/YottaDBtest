V2LHP4 ;IW-KO-TS,VV2,MVTS V9.10;15/6/96;LEFT HAND $PIECE -4-
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 W !!,"13---V2LHP4: Left hand $PIECE -4-",!
 ;
114 W !,"II-114  expr2 is an empty string" ;title corrected in V7.5;20/12/89
 S ^ABSN="20124",^ITEM="II-114  expr2 is an empty string",^NEXT="115^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S ^VCOMP=""
 S A="ABC",$P(A,"")="D",B="ABC",$P(B,"",2)="D"
 S C="ABCD",$P(C,"",2,3)="E",D="ABC",$P(D,"",1,3)="D"
 S ^VCOMP=A_" "_B_" "_C_" "_D,^VCORR="D ABCD ABCDE D" D ^VEXAMINE
 ;
115 W !,"II-115  Value of glvn is numeric data"
 S ^ABSN="20125",^ITEM="II-115  Value of glvn is numeric data",^NEXT="116^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP=""
 S X=002305102,$P(X,0.0,2,2)=15 S VCOMP=VCOMP_X_" "
 S X=1212.425,$P(X,".",2,3)="000" S VCOMP=VCOMP_X_" "
 S X=12.324E2,$P(X,2,3,999)=00 S VCOMP=VCOMP_X
 S ^VCOMP=VCOMP,^VCORR="2301502 1212.000 12320" D ^VEXAMINE
 ;
116 W !,"II-116  Control characters are used as delimiters (expr1)"
 S ^ABSN="20126",^ITEM="II-116  Control characters are used as delimiters (expr1)",^NEXT="117^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP=""
 S Y=$C(13),VCOMP="A"_Y_"B"_Y_"C",$P(VCOMP,Y,2,2)="D"
 S ^VCOMP=VCOMP,^VCORR="A"_Y_"D"_Y_"C" D ^VEXAMINE
 ;
117 W !,"II-117  Value of expr1 contains operators"
 S ^ABSN="20127",^ITEM="II-117  Value of expr1 contains operators",^NEXT="118^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP=""
 S X=012030405,$P(X,+"A"-"E",3)=6 S VCOMP=VCOMP_X_" "
 S X=21319,$P(X,2=2)=003 S VCOMP=VCOMP_X_" "
 S X="A1B1C",$P(X,"ABC"["C",02,10E2)="" S VCOMP=VCOMP_X
 S ^VCOMP=VCOMP,^VCORR="12030605 31319 A1" D ^VEXAMINE
 ;
118 W !,"II-118  intexpr2 and intexpr3 are numlits"
 S ^ABSN="20128",^ITEM="II-118  intexpr2 and intexpr3 are numlits",^NEXT="119^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP="A*B*C",$P(VCOMP,"*",002.30,2.99999)="D"
 S ^VCOMP=VCOMP,^VCORR="A*D*C" D ^VEXAMINE
 ;
119 W !,"II-119  Value of expr1,intexpr2,intexpr3 are functions"
1191 S ^ABSN="20129",^ITEM="II-119.1  $C",^NEXT="1192^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP="A*B*C",$P(VCOMP,$C(42))="D"
 S ^VCOMP=VCOMP,^VCORR="D*B*C" D ^VEXAMINE
 ;
1192 S ^ABSN="20130",^ITEM="II-119.2  $L",^NEXT="1193^V2LHP4,V2VNIA^VV2" D ^V2PRESET
 S VCOMP="ABCABCABCABCABCABCABC",Y="B",$P(VCOMP,Y,2,$L(VCOMP,Y))="-"
 S ^VCOMP=VCOMP,^VCORR="AB-" D ^VEXAMINE
 ;
1193 S ^ABSN="20131",^ITEM="II-119.3  $P",^NEXT="V2VNIA^VV2" D ^V2PRESET
 S Y="ABC*ABC*ABC*ABC",VCOMP=""
 F I=1:1 S A=$T(TEX+I),X=Y Q:A=""  S $P(X,$P(A,";",2),$P(A,";",3),$P(A,";",4))=$P(A,";",5),VCOMP=VCOMP_X_" "
 S ^VCOMP=VCOMP,^VCORR="DDD*ABC*ABC*ABC ABCDDDABC DDDABC*ABC ABC*ABC*ABC*ABCD " D ^VEXAMINE
 ;
END W !!,"End of 13---V2LHP4",!
 K  K ^V Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
TEX ;
 ;*;1;1;DDD;DDD*ABC*ABC*ABC
 ;ABC;2;4;DDD;ABCDDDABC
 ;ABC*A;1;2;DDD;DDDABC*ABC
 ;ABC*ABC*ABC*ABC;2;3;D;ABC*ABC*ABC*ABCD
