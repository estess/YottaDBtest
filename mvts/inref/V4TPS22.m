V4TPS22 ;IW-KO-YS-TS,VV4TP,MVTS V9.10;15/7/96;PART-94 Transaction
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 S ^VC=$g(^VC)_"^VC"
 S ^VD(1)=$g(^VD(1))_"^VD(1)"
 S VC=$g(VC)_"VC"
 S VD(1)=$g(VD(1))_"VD(1)"
 Q
 ;^VC^VD(1)VCVD(1)
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
