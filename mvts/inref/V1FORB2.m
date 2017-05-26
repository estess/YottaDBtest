V1FORB2 ;IW-YS-TS,VV1,MVTS V9.10;15/6/96;FOR COMMNAD -2.2-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"143---V1FORB2: FOR command -2.2-",!
 ;
361 W !,"I-361  Interpretation sequence of forparameter"
3611 S ^ABSN="11767",^ITEM="I-361.1  Forparameter is expr",^NEXT="3612^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP="" K I F I=$D(I),$D(I),$D(I) S ^VCOMP=^VCOMP_$D(I)_" "_I_"  " I I=1 K I
 S ^VCOMP=^VCOMP_I,^VCORR="1 0  1 1  1 0  0" D ^VEXAMINE
 ;
3612 S ^ABSN="11768",^ITEM="I-361.2  Forparameter is numexpr1:numexpr2",^NEXT="3613^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP=""
 K I S K=0,I(1)="" F I=$D(I):$D(I) S K=K+1,^VCOMP=^VCOMP_I_" " S:I=40 I="ABCD" I K=8 Q
 S ^VCOMP=^VCOMP_I,^VCORR="10 20 30 40 10 20 30 40 ABCD" D ^VEXAMINE
 ;
3613 S ^ABSN="11769",^ITEM="I-361.3  Forparameter is numexpr1:numexpr2:numexpr3",^NEXT="3614^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP=""
 K I S K=0,I(1)="" F I=$D(I):$D(I):$D(I) S K=K+1,^VCOMP=^VCOMP_I_" "
 S ^VCOMP=^VCOMP_I,^VCORR="10 10" D ^VEXAMINE
 ;
3614 S ^ABSN="11770",^ITEM="I-361.4  numexpr2 is lvn",^NEXT="362^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP="",I=5,A(5)=13
 F I=1:A(I):100 S ^VCOMP=^VCOMP_I_" "
 S ^VCOMP=^VCOMP_I,^VCORR="1 14 27 40 53 66 79 92 92" D ^VEXAMINE
 ;
362 W !,"I-362  Forparameter contains lvn"
 S ^ABSN="11771",^ITEM="I-362  Forparameter contains lvn",^NEXT="363^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP="",A=1,B=1 F I=A,B,B,C S B=B+1,C=4 S ^VCOMP=^VCOMP_I_" "
 S ^VCOMP=^VCOMP_I,^VCORR="1 2 3 4 4" D ^VEXAMINE
 ;
363 W !,"I-363  Change the value of lvn in FOR scope"
3631 S ^ABSN="11772",^ITEM="I-363.1  SET lvn=lvn+1",^NEXT="3632^V1FORB2,V1FORC^VV1" D ^V1PRESET
 S ^VCOMP="" F I=2:2:10 SET I=I+1 F J=I:3:10 S ^VCOMP=^VCOMP_I_"*"_J_" "
 S ^VCOMP=^VCOMP_I_"*"_J,^VCORR="3*3 3*6 3*9 6*6 6*9 9*9 9*9" D ^VEXAMINE
 ;
3632 S ^ABSN="11773",^ITEM="I-363.2  DO command in FOR scope",^NEXT="V1FORC^VV1" D ^V1PRESET
 S ^VCOMP="" F I=1:.1E+1:3.3 D D20
 S ^VCOMP=^VCOMP_I,^VCORR="1233" D ^VEXAMINE
 ;
END W !!,"End of 143---V1FORB2",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
D20 S ^VCOMP=^VCOMP_I QUIT
