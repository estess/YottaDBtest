V4NST5 ;IW-KO-YS-TS,VV4,MVTS V9.10;15/6/96;NESTING LEVEL
 ;
 W !!,"139---V4NST5: Nesting ( FOR, XECUTE, DO ) -5-"
 ;
5 S ^ABSN="40863",^ITEM="IV-863  External DO"
 S ^NEXT="V4NST6^VV4" D ^V4PRESET K
 S V="" D D1^V4NSTE2
 S ^VCOMP=V
 S ^VCORR="12345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989901234567891011121314151617181920212223242526E"
 D ^VEXAMINE
 ;
END W !!,"End of 139 --- V4NST5",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
