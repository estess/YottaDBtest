	;THIS SHOULD NOT PRODUCE A STRINGPOOL OVERFLOW
	S X=$J("",30000)
	F I=1:1:20 S X("*"_I_"*",I)=$J(I,1000)
	F I=1:1:20 S X="*"_X
