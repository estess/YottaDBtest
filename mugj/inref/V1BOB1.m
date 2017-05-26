V1BOB1	;BINARY OPERATORS -2.1- (<>=[]);YS-TS,V1BOB,VALIDATION VERSION 7.1;31-AUG-1987;
	;COPYRIGHT MUMPS SYSTEM LABORATORY 1978
	S PASS=0,FAIL=0
	W !!,"V1BOB1: TEST OF BINARY OPERATORS -2.1-  (RELATIONAL: < )",!
	W !,"numeric less than (<)",!
70	W !,"I-70  expratoms are numlit and numlit"
	S ITEM="I-70.1  0<0" S VCOMP=0<0,VCORR="0" D EXAMINER
	S ITEM="I-70.2  0<3" S VCOMP=0<3,VCORR="1" D EXAMINER
	S ITEM="I-70.3  3<0" S VCOMP=3<0,VCORR="0" D EXAMINER
	S ITEM="I-70.4  3<3" S VCOMP=3<3,VCORR="0" D EXAMINER
	S ITEM="I-70.5  3<4" S VCOMP=3<4,VCORR="1" D EXAMINER
	S ITEM="I-70.6  -3<0" S VCOMP=-3<0,VCORR="1" D EXAMINER
	S ITEM="I-70.7  -3<-4" S VCOMP=-3<-4,VCORR="0" D EXAMINER
	S ITEM="I-70.8  4<3.0" S VCOMP=4<3.0,VCORR="0" D EXAMINER
	S ITEM="I-70.9  -4.1<3" S VCOMP=-4.1<3,VCORR="1" D EXAMINER
	S ITEM="I-70.10  .3E1<00400E-2" S VCOMP=.3E1<00400E-2,VCORR="1" D EXAMINER
	S ITEM="I-70.11  -.3E01<4E0" S VCOMP=-.3E01<4E0,VCORR="1" D EXAMINER
	S ITEM="I-70.12  -5<-4" S VCOMP=-5<-4,VCORR="1" D EXAMINER
	;
71	W !,"I-71  expratoms are numlit and strlit"
	S ITEM="I-71.1  3.1<""3.2""" S VCOMP=3.1<"3.2",VCORR="1" D EXAMINER
	S ITEM="I-71.2  3.1<""-3.0""" S VCOMP=3.1<"-3.0",VCORR="0" D EXAMINER
	S ITEM="I-71.3  3.1<""+3.2E+5""" S VCOMP=3.1<"+3.2E+5",VCORR="1" D EXAMINER
	S ITEM="I-71.4  0010000.000<""00099.2e+500""" S VCOMP=0010000.000<"00099.2e+500",VCORR="0" D EXAMINER
	S ITEM="I-71.5  00.01<""00000.1000000000000000""" S VCOMP=00.01<"00000.1000000000000000",VCORR="1" D EXAMINER
	S ITEM="I-71.6  3.1<""3.1WQWEQWQWQWQWWQ""" S VCOMP=3.1<"3.1WQWEQWQWQWQWWQ",VCORR="0" D EXAMINER
	;
72	W !,"I-72  expratoms are strlit and numlit"
	S ITEM="I-72.1  ""3A""<4" S VCOMP="3A"<4,VCORR="1" D EXAMINER
	S ITEM="I-72.2  ""3.1""<3.2" S VCOMP="3.1"<3.2,VCORR="1" D EXAMINER
	S ITEM="I-72.3  ""3E1""<31" S VCOMP="3E1"<31,VCORR="1" D EXAMINER
	S ITEM="I-72.4  ""'0""<.023" S VCOMP="'0"<.023,VCORR="1" D EXAMINER
	S ITEM="I-72.5  ""-10""<-5" S VCOMP="-10"<-5,VCORR="1" D EXAMINER
	S ITEM="I-72.6  ""3.1""<3.1" S VCOMP="3.1"<3.1,VCORR="0" D EXAMINER
	;
73	W !,"I-73  expratoms are strlit and strlit"
	S ITEM="I-73.1  ""3A""<""4""" S VCOMP="3A"<"4",VCORR="1" D EXAMINER
	S ITEM="I-73.2  -""3E1A""<+""30.01A""" S VCOMP=-"3E1A"<+"30.01A",VCORR="1" D EXAMINER
	S ITEM="I-73.3  +""3A""<""4""" S VCOMP=+"3A"<"4",VCORR="1" D EXAMINER
	S ITEM="I-73.4  ""3E1A""<""30.01E-""" S VCOMP="3E1A"<"30.01E-",VCORR="1" D EXAMINER
	S ITEM="I-73.5  ""+3A""<""2""" S VCOMP="+3A"<"2",VCORR="0" D EXAMINER
	S ITEM="I-73.6  ""+30A""<""30""" S VCOMP="+30A"<"30",VCORR="0" D EXAMINER
	S ITEM="I-73.7  ""QWERTY""<""ZXY30""" S VCOMP="QWERTY"<"ZXY30",VCORR="0" D EXAMINER
	;
74	W !,"I-74  empty string on left side"
	S ITEM="I-74.1  """"<3" S VCOMP=""<3,VCORR="1" D EXAMINER
	S ITEM="I-74.2  """"<0" S VCOMP=""<0,VCORR="0" D EXAMINER
	S ITEM="I-74.3  """"<""-.03""" S VCOMP=""<"-.03",VCORR="0" D EXAMINER
	S ITEM="I-74.4  """"<""+.03""" S VCOMP=""<"+.03",VCORR="1" D EXAMINER
	;
75	W !,"I-75  empty string on right side"
	S ITEM="I-75.1  3<""""" S VCOMP=3<"",VCORR="0" D EXAMINER
	S ITEM="I-75.2  0<""""" S VCOMP=0<"",VCORR="0" D EXAMINER
	S ITEM="I-75.3  -3<""""" S VCOMP=-3<"",VCORR="1" D EXAMINER
	;
76	W !,"I-76  empty string on both sides"
	S ITEM="I-76  " S VCOMP=""<"",VCORR="0" D EXAMINER
	;
END	W !!,"END OF V1BOB1",!
	S ROUTINE="V1BOB1",TESTS=39,AUTO=39,VISUAL=0 D ^VREPORT
	K  Q
	;
EXAMINER	I VCORR=VCOMP S PASS=PASS+1 W !,"   PASS  ",ITEM W:$Y>55 # Q
	S FAIL=FAIL+1 W !,"** FAIL  ",ITEM W:$Y>55 #
	W !,"           COMPUTED =""",VCOMP,"""" W:$Y>55 #
	W !,"           CORRECT  =""",VCORR,"""" W:$Y>55 #
