V1JST4 ;IW-YS-KO-TS,V1JST,MVTS V9.10;15/6/96; $JUSTIFY, $SELECT, $TEXT -4-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"173---V1JST4: $JUSTIFY, $SELECT and $TEXT functions -4-",!
 ;
578 W !,"I-578   intexpr2=0"
 S ^ABSN="12001",^ITEM="I-578   intexpr2=0",^NEXT="579^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J("5.2",1,0),^VCORR="5" D ^VEXAMINE
 ;
579 W !,"I-579  intexpr2>0 and intexpr3>0"
 S ^ABSN="12002",^ITEM="I-579  intexpr2>0 and intexpr3>0",^NEXT="580^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J(5.2,5,3),^VCORR="5.200" D ^VEXAMINE
 ;
580 W !,"I-580  intexpr2<0 and intexpr3=0"
 S ^ABSN="12003",^ITEM="I-580  intexpr2<0 and intexpr3=0",^NEXT="581^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J(5.2,-2,0),^VCORR="5" D ^VEXAMINE
 ;
581 W !,"I-581  intexpr2<0 and intexpr3<0"
 S ^ABSN="12004",^ITEM="I-581  intexpr2<0 and intexpr3<0",^NEXT="582^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 W !,"       (Test I-581 was withdrawn by explicit portability prohibition by X11.1-'84, MSL)"
 S ^VREPORT("Part-77",^ABSN)="*WITHDR*"
 ;
582 W !,"I-582  intexpr2>intexpr3"
 S ^ABSN="12005",^ITEM="I-582  intexpr2>intexpr3",^NEXT="583^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J("5.449",9,2),^VCORR="     5.45" D ^VEXAMINE
 ;
583 W !,"I-583  intexpr2=intexpr3"
 S ^ABSN="12006",^ITEM="I-583.1  expr1=""5.449""",^NEXT="5832^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J("5.449",5,5),^VCORR="5.44900" D ^VEXAMINE
5832 S ^ABSN="12007",^ITEM="I-583.2  expr1=""9995E-4""",^NEXT="584^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J("9995E-4",3,3),^VCORR="1.000" D ^VEXAMINE
 ;
584 W !,"I-584  intexpr2<intexpr3"
 S ^ABSN="12008",^ITEM="I-584  intexpr2<intexpr3",^NEXT="585^V1JST4,V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 S ^VCOMP=$J("5.5",1,2),^VCORR="5.50" D ^VEXAMINE
 ;
585 W !,"I-585  interpretation of intexpr2, intexpr3"
 S ^ABSN="12009",^ITEM="I-585  interpretation of intexpr2, intexpr3",^NEXT="V1JST5^V1JST,V1SVH^VV1" D ^V1PRESET
 K ^V1A S ^V1A(2,2)="-232.896EMPTY",^V1A(2,2,2)=10.9,^V1A(2,2,2,2)=2.8
 S VCOMP=$D(^V1A(2)),VCOMP=VCOMP_$J(^(2,2),1+^(2,2),^(2,2))
 S ^VCOMP=VCOMP,^VCORR="10    -232.90" D ^VEXAMINE
 ;
END W !!,"End of 173---V1JST4",!
 K  K ^V1A Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
