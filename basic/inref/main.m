       ;
       W !,"Executing Shared Copy of MAIN...",!
       For I=1:1:5 Do
       . ;Do oddeven(I)
       . Do squaroot^squaroot(I,.sqrt) Set NUM(I,"root")=sqrt
       . Set sqr=$$squar^square(I),NUM(I,"square")=sqr
       . Set cube=$$cubeit^cube(I),NUM(I,"cube")=cube
       . Set factrl=$$fact^factor(I),NUM(I,"factorial")=factrl                 
       . Set base=10,base2=2,base8=8
       . Set binary=$$base^base(sqr,base,base2),NUM(I,"square","binary")=binary
       . Set octal=$$base^base(sqr,base,base8),NUM(I,"square","octal")=octal
       W !,"Done!"
       Q
       ;
oddeven(X) ;
       W !,X,$S(X#2=0:" is even. ",1:" is odd. ")
       Q 
       ;
