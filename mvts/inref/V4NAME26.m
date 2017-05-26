V4NAME26 ;IW-KO-YS-TS,V4NAME,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"45---V4NAME26:  $NAME function  -14-"
 ;
1 S ^ABSN="40334",^ITEM="IV-334  minimum to maximum number of one subscript of a local variable"
 S ^NEXT="2^V4NAME26,V4QLEN^VV4" D ^V4PRESET K
 S ^VCOMP=$NA(A(-123456789012345E-25,-1.23456789012345E25,123456789012345E-25,1.23456789012345E25))
 S ^VCORR="A(-.0000000000123456789012345,-12345678901234500000000000,.0000000000123456789012345,12345678901234500000000000)" D ^VEXAMINE
 ;
2 S ^ABSN="40335",^ITEM="IV-335  minimum to maximum number of one subscript of a global variable"
 S ^NEXT="3^V4NAME26,V4QLEN^VV4" D ^V4PRESET K  K ^V
 S ^VCOMP=$NA(^V(-123456789012345E-25,-1.23456789012345E25,123456789012345E-25,1.23456789012345E25))
 S ^VCORR="^V(-.0000000000123456789012345,-12345678901234500000000000,.0000000000123456789012345,12345678901234500000000000)" D ^VEXAMINE
 ;
3 S ^ABSN="40336",^ITEM="IV-336  one subscript of a local variable has maximum length"
 S ^NEXT="4^V4NAME26,V4QLEN^VV4" D ^V4PRESET K
 S A="#############################################################################################################################################################################################################################################"
 S ^VCOMP=$na(V(A),1)
 S V="V(""#############################################################################################################################################################################################################################################"")"
 S ^VCORR=V D ^VEXAMINE
 ;
4 S ^ABSN="40337",^ITEM="IV-337  one subscript of global variable has maximum length"
 S ^NEXT="5^V4NAME26,V4QLEN^VV4" D ^V4PRESET K  K ^V
 S A="#############################################################################################################################################################################################################################################"
 S ^VCOMP=$na(^V(A),1)
 S V="^V(""#############################################################################################################################################################################################################################################"")"
 S ^VCORR=V D ^VEXAMINE
 ;
; **MVTS LOCAL CHANGE**
; Referencing variables with more than 32 subscripts..
; simply commenting out the tests. 10/2001 SE
5 ;S ^ABSN="40338",^ITEM="IV-338  a local variable has maximum total length"
; S ^NEXT="6^V4NAME26,V4QLEN^VV4" D ^V4PRESET K
; S A="A",B=1
; S ^VCOMP=$NA(V(A,A,A,A,A,A,A,A,A,A,A,A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2),9999)
; S V="V(""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2)"
; S ^VCORR=V D ^VEXAMINE
 ;
6; S ^ABSN="40339",^ITEM="IV-339  a global variable has maximum total length"
; S ^NEXT="V4QLEN^VV4" D ^V4PRESET K  K ^V
; S A="A",B=1
; S ^VCOMP=$NA(^V(A,A,A,A,A,A,A,A,A,A,A,A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2),9999)
; S V="^V(""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",""A"",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2)"
; S ^VCORR=V D ^VEXAMINE
 ;
END W !!,"End of 45 --- V4NAME26",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
