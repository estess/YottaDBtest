MAIN	;TEST FOR BUG IN GARBAGE COLLECTOR
	S A="" F I=65:1:90 S A=A_$C(I)
	W !,"SUBJECT:",?10,A
	S B=$E(A,2,5)
	F I=1:1:50 S J=I_I,Z=$J("",30000),K=I_I
	W !,"S/B EQU:",?10,A,!
	Q
