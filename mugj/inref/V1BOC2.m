V1BOC2	;BINARY OPERATORS -3.2- (&!_);YS-TS,V1BOC,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1BOC2: TEST OF BINARY OPERATORS -3.2- (!)" W:$Y>55 #
	W !!,"Or (!)",!
150	W !,"I-150  expratoms are 0 or 1"
	S ITEM="I-150.1  1!1" S VCOMP=1!1,VCORR="1" D EXAMINER
	S ITEM="I-150.2  1!0" S VCOMP=1!0,VCORR="1" D EXAMINER
	S ITEM="I-150.3  0!1" S VCOMP=0!1,VCORR="1" D EXAMINER
	S ITEM="I-150.4  0!0" S VCOMP=0!0,VCORR="0" D EXAMINER
	;
151	W !,"I-151  expratoms are numlit"
	S ITEM="I-151.1  2!1000" S VCOMP=2!1000,VCORR="1" D EXAMINER
	S ITEM="I-151.2  -8E-10!0.00E-3" S VCOMP=-8E-10!0.00E-3,VCORR=1 D EXAMINER
	S ITEM="I-151.3  0!9E-12" S VCOMP=0!9E-12,VCORR="1" D EXAMINER
	S ITEM="I-151.4  0.06E+12!-0.007" S VCOMP=0.06E+12!-0.007,VCORR="1" D EXAMINER
	;
152	W !,"I-152  expratoms are strlit"
	S ITEM="I-152.1  ""A3B3""!""ABC""" S VCOMP="A3B3"!"ABC",VCORR="0" D EXAMINER
	S ITEM="I-152.2  ""2E2A""!""2B2A""" S VCOMP="2E2A"!"2B2A",VCORR="1" D EXAMINER
	;
153	W !,"I-153  expratoms are empty string"
	S ITEM="I-153  " S VCOMP=""!"",VCORR="0" D EXAMINER
	;
154	W !,"I-154  expratoms are lvn"
	S A=0,B="B",C=2,%D="3E-2Z"
	S ITEM="I-154.1  A!C" S VCOMP=A!C,VCORR="1" D EXAMINER
	S ITEM="I-154.2  B!%D" S VCOMP=B!%D,VCORR="1" D EXAMINER
	;
	W !!,"Nor ('!)",!
155	W !,"I-155  expratoms are 0 or 1"
	S ITEM="I-155.1  1'!1" S VCOMP=1'!1,VCORR="0" D EXAMINER
	S ITEM="I-155.2  1'!0" S VCOMP=1'!0,VCORR="0" D EXAMINER
	S ITEM="I-155.3  0'!1" S VCOMP=0'!1,VCORR="0" D EXAMINER
	S ITEM="I-155.4  0'!0" S VCOMP=0'!0,VCORR="1" D EXAMINER
	;
156	W !,"I-156  expratoms are numlit"
	S ITEM="I-156.1  2'!1000" S VCOMP=2'!1000,VCORR="0" D EXAMINER
	S ITEM="I-156.2  -8E-10'!0.00E+6" S VCOMP=-8E-10'!0.00E+6,VCORR="0" D EXAMINER
	S ITEM="I-156.3  000000'!9E-12" S VCOMP=000000'!9E-12,VCORR="0" D EXAMINER
	S ITEM="I-156.4  0.06E+12'!-0.007" S VCOMP=0.06E+12'!-0.007,VCORR=0 D EXAMINER
	;
157	W !,"I-157  expratoms are strlit"
	S ITEM="I-157.1  ""A3B3""'!""ABC""" S VCOMP="A3B3"'!"ABC",VCORR="1" D EXAMINER
	S ITEM="I-157.2  ""2E2A""'!""2B2A""" S VCOMP="2E2A"'!"2B2A",VCORR="0" D EXAMINER
	;
158	W !,"I-158  expratoms are empty string"
	S ITEM="I-158  " S VCOMP=""'!"",VCORR="1" D EXAMINER
	;
159	W !,"I-159  expratoms are lvn"
	S A=0,B="B",C=2,%D="3E-2Z"
	S ITEM="I-159.1  A'!B" S VCOMP=A'!B,VCORR="1" D EXAMINER
	S ITEM="I-159.2  B'!%D" S VCOMP=B'!%D,VCORR="0" D EXAMINER
	;
END	W !!,"END OF V1BOC2",!
	S ROUTINE="V1BOC2",TESTS=26,AUTO=26,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
