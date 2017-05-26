V1FORC2	;FOR COMMAND -3.2-;YS-TS,V1FORC,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1FORC2: TEST OF FOR COMMAND -3.2-",!
373	W !,"I-373  FOR ... FOR ... QUIT ... FOR ... QUIT"
	S ITEM="I-373  ",VCOMP=""
	F I=1:2:5 S VCOMP=VCOMP_"  " F J=I/10:1:2 S VCOMP=VCOMP_J_" " Q:I/10'=J  F K=J:0.1:0.7 S VCOMP=VCOMP_K Q:K>.45  S VCOMP=VCOMP_"-"
	S VCORR="  .1 .1-.2-.3-.4-.51.1   .3 .3-.4-.51.3   .5 .51.5 " D EXAMINER
	;
374	W !,"I-374  FOR ... FOR ... GOTO"
	S ITEM="I-374.1  a forparameter",VCOMP="" F I=1:1:3 S VCOMP=VCOMP_I_"*" F J=1:1:4 S VCOMP=VCOMP_J_" " I I>1,J>1 G G3741
	S VCOMP=VCOMP_"---"
G3741	S VCOMP=VCOMP_I_" "_J,VCORR="1*1 2 3 4 2*1 2 2 2" D EXAMINER
	;
	S ITEM="I-374.2  list of forparameter",VCOMP=""
	F I="A","B","C" S VCOMP=VCOMP_I_"*" F J="X","Y",1:1:4 S VCOMP=VCOMP_J_" " IF I="B",J="Y" GOTO G3742 S VCOMP=VCOMP_"///"
	S VCOMP=VCOMP_"+++"
G3742	S VCOMP=VCOMP_I_" "_J,VCORR="A*X Y 1 2 3 4 B*X Y B Y" D EXAMINER
	;
375	W !,"I-375  FOR ... GOTO ... FOR"
	S ITEM="I-375  ",VCOMP=""
	F I=1:2:8,"A" S VCOMP=VCOMP_I_" " GOTO:I=5 G375 F K=2:2:7 S VCOMP=VCOMP_K_" "
	S VCOMP=VCOMP_"###"
G375	S VCOMP=VCOMP_I_K S VCORR="1 2 4 6 3 2 4 6 5 56" D EXAMINER
	;
	G 376
G376	S VCOMP=VCOMP_I_J_K,VCORR=" 111.112. 121.122. 211.211" G G3761
376	W !,"I-376  FOR ... FOR ... FOR ... GOTO"
	S ITEM="I-376  ",VCOMP="" F I=1:1:2 F J=1:1:2 S VCOMP=VCOMP_" " F K=1:1:2 S VCOMP=VCOMP_I_J_K_"." I I=2 G G376
	S VCOMP=VCOMP_"$$$"
G3761	D EXAMINER
	;
377	W !,"I-377  FOR ... GOTO ... QUIT"
	S ITEM="I-377  ",VCOMP="",X=0
G3771	S X=100+X F I=X:5 S VCOMP=VCOMP_I_" " G:X=100 G3771^V1FORC2 Q
	S VCOMP=VCOMP_I S VCORR="100 200 200" D EXAMINER
	;
378	W !,"I-378  FOR ... QUIT ... FOR ... GOTO"
	S ITEM="I-378  ",VCOMP="",X=0
G3781	S X=X+1 F I=1:2 S VCOMP=VCOMP_"  "_I Q:X=3  F J=2:2:4 S VCOMP=VCOMP_J_" " G G3781^V1FORC2
	S VCOMP=VCOMP_I_J S VCORR="  12   12   112" D EXAMINER
	;
379	W !,"I-379  FOR ... FOR ... QUIT ... GOTO"
	S ITEM="I-379  ",VCOMP="",X=0
G379	S X=X+1
	F I=1:1:3 S VCOMP=VCOMP_"*" F J=10:10:30 S VCOMP=VCOMP_I_J_" " Q:I=2  G G379:X=1
	S VCOMP=VCOMP_I_J S VCORR="*110 *110 120 130 *210 *310 320 330 330" D EXAMINER
	;
END	W !!,"END OF V1FORC2",!
	S ROUTINE="V1FORC2",TESTS=8,AUTO=8,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
	Q
