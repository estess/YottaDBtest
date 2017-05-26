V1BOB4	;BINARY OPERATORS -2.4- (<>=[]);YS-TS,V1BOB,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1BOB4: TEST OF BINARY OPERATORS -2.4-  (RELATIONAL: '> )",!
	W !,"numeric not greater than ('>)",!
91	W !,"I-91  expratoms are numlit and numlit"
	S ITEM="I-91.1  3'>3" S VCOMP=3'>3,VCORR="1" D EXAMINER
	S ITEM="I-91.2  4'>3" S VCOMP=4'>3,VCORR="0" D EXAMINER
	S ITEM="I-91.3  0'>0" S VCOMP=0'>0,VCORR="1" D EXAMINER
	S ITEM="I-91.4  0'>3" S VCOMP=0'>3,VCORR="1" D EXAMINER
	S ITEM="I-91.5  3'>0" S VCOMP=3'>0,VCORR="0" D EXAMINER
	S ITEM="I-91.6  -3'>0" S VCOMP=-3'>0,VCORR="1" D EXAMINER
	S ITEM="I-91.7  -3'>-4" S VCOMP=-3'>-4,VCORR="0" D EXAMINER
	S ITEM="I-91.8  4'>3.0" S VCOMP=4'>3.0,VCORR="0" D EXAMINER
	S ITEM="I-91.9  -4.1'>3" S VCOMP=-4.1'>3,VCORR="1" D EXAMINER
	S ITEM="I-91.10  .3E1'>00400E-2" S VCOMP=.3E1'>00400E-2,VCORR="1" D EXAMINER
	S ITEM="I-91.11  .3E01'>-4E0" S VCOMP=.3E01'>-4E0,VCORR="0" D EXAMINER
	;
92	W !,"I-92  expratoms are numlit and strlit"
	S ITEM="I-92.1  2'>""9Q""" S VCOMP=2'>"9Q",VCORR="1" D EXAMINER
	S ITEM="I-92.2  30.1'>""3E+1""" S VCOMP=30.1'>"3E+1",VCORR="0" D EXAMINER
	S ITEM="I-92.3  30.1'>""30.+999DG""" S VCOMP=30.1'>"30.+999DG",VCORR="0" D EXAMINER
	S ITEM="I-92.4  30.1'>""20+589""" S VCOMP=30.1'>"20+589",VCORR="0" D EXAMINER
	S ITEM="I-92.5  20'>""-3E+1""" S VCOMP=20'>"-3E+1",VCORR="0" D EXAMINER
	;
93	W !,"I-93  expratoms are strlit and numlit"
	S ITEM="I-93.1  ""3A""'>2" S VCOMP="3A"'>2,VCORR="0" D EXAMINER
	S ITEM="I-93.2  ""3E1""'>29" S VCOMP="3E1"'>29,VCORR="0" D EXAMINER
	S ITEM="I-93.3  ""3.1""'>3.0" S VCOMP="3.1"'>3.0,VCORR="0" D EXAMINER
	S ITEM="I-93.4  ""2.99""'>3.0" S VCOMP="2.99"'>3.0,VCORR="1" D EXAMINER
	S ITEM="I-93.5  ""-87.01E-1""'>-98710" S VCOMP="-87.01E-1"'>-98710,VCORR="0" D EXAMINER
	;
94	W !,"I-94  expratoms are strlit and strlit"
	S ITEM="I-94.1  ""3A""'>""2""" S VCOMP="3A"'>"2",VCORR="0" D EXAMINER
	S ITEM="I-94.2  ""3E1A""'>""029.9A""" S VCOMP="3E1A"'>"029.9A",VCORR="0" D EXAMINER
	S ITEM="I-94.3  ""-23ENGLISH""'>""-22.00e-9""" S VCOMP="-23ENGLISH"'>"-22.00e-9",VCORR="1" D EXAMINER
	;
95	W !,"I-95  empty string on left side"
	S ITEM="I-95.1  """"'>9" S VCOMP=""'>9,VCORR="1" D EXAMINER
	S ITEM="I-95.2  """"'>0" S VCOMP=""'>0,VCORR="1" D EXAMINER
	S ITEM="I-95.3  """"'>-9" S VCOMP=""'>-9,VCORR="0" D EXAMINER
	S ITEM="I-95.4  """"'>""-9FIND""" S VCOMP=""'>"-9FIND",VCORR="0" D EXAMINER
	;
96	W !,"I-96  empty string on right side"
	S ITEM="I-96.1  2'>""""" S VCOMP=2'>"",VCORR="0" D EXAMINER
	S ITEM="I-96.2  0'>""""" S VCOMP=0'>"",VCORR="1" D EXAMINER
	S ITEM="I-96.3  -2.2'>""""" S VCOMP=-2.2'>"",VCORR="1" D EXAMINER
	;
97	W !,"I-97  empty string on both sides"
	S ITEM="I-97  " S VCOMP=""'>"",VCORR="1" D EXAMINER
	;
END	W !!,"END OF V1BOB4",!
	S ROUTINE="V1BOB4",TESTS=32,AUTO=32,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
