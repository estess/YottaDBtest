V4SVQ2 ;IW-KO-YS-TS,V4SVQ,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"70---V4SVQ2:  Special variable $QUIT  -2-"
 ;
1 S ^ABSN="40520",^ITEM="IV-520  FOR scope"
 S ^NEXT="2^V4SVQ2,V4SVQ3^V4SVQ,V4MERGE^VV4" D ^V4PRESET K
 F I=1:1:4 S:I=3 V=$QUIT
 S ^VCOMP=V
 S ^VCORR="0" D ^VEXAMINE
 ;
2 S ^ABSN="40521",^ITEM="IV-521  GOTO"
 S ^NEXT="3^V4SVQ2,V4SVQ3^V4SVQ,V4MERGE^VV4" D ^V4PRESET K
 GOTO 999
 S V=99
1000 S ^VCOMP=V
 S ^VCORR="0" D ^VEXAMINE
 ;
3 S ^ABSN="40522",^ITEM="IV-522  return by eor"
 S ^NEXT="V4SVQ3^V4SVQ,V4MERGE^VV4" D ^V4PRESET K
 D EOF
 S ^VCOMP=V
 S ^VCORR="0" D ^VEXAMINE
 ;
END W !!,"End of 70 --- V4SVQ2",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
999 S V=$quit G 1000
EOF S V=$Q ;EOF
