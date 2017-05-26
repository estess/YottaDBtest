V2PAT2 ;IW-KO-TS,VV2,MVTS V9.10;15/6/96;PATTERN MATCH OPERATOR -2-
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 W !!,"20---V2PAT2: Pattern match operator -2-",!
155 W !,"II-155  Indirection pattern"
 S ^ABSN="20172",^ITEM="II-155  Indirection pattern",^NEXT="156^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S ^VCOMP="ABC123#$!"?@(".4AN2.N1.99999999PN")_("12.34"?2.N.P.2N)
 S ^VCORR="11" D ^VEXAMINE
 ;
156 W !,"II-156  Nesting of pattern"
 S ^ABSN="20173",^ITEM="II-156  Nesting of pattern",^NEXT="157^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S ^VCOMP="MUMPS"?@("VALIDATION"?@("TEST"?4A_"""VALIDATION""")_"A"_($P("ABC/DDD","/")?.N+3_"U"_"1""S"""))
 S ^VCORR="1" D ^VEXAMINE
 ;
157 W !,"II-157  expr is 255 characters"
 S ^ABSN="20174",^ITEM="II-157  expr is 255 characters",^NEXT="158^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S X="" F I=0:1:127 S X=X_$C(I)
 F I=0:1:126 S X=X_$C(I)
 S ^VCOMP=(X?1.255CNPA)_(X?.999CNP)_(X?255.999CNPAULCNPAUL)_(X'?255.999CNNPAUL)
 S ^VCORR="1010" D ^VEXAMINE
 ;
158 W !,"II-158  expr ? repcount strlit when strlit is an empty string"
 S ^ABSN="20175",^ITEM="II-158  expr ? repcount strlit when strlit is an empty string",^NEXT="159^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S VCOMP="",X=""
 S VCOMP=VCOMP_(X?."")_(X?.000"")_(X?00."")_(""?0.0"")_(""?0000"")_" "
 S VCOMP=VCOMP_(""?.11"")_(X?21."")_(X?1.100"")_(X?5"")_" "
 S VCOMP=VCOMP_("@"?."")_("A"?.11"")_("B"?1."")_("C"?1.100"")_("D"?999"")
 S ^VCOMP=VCOMP,^VCORR="11111 1111 00000" D ^VEXAMINE
 ;
159 W !,"II-159  expr ? repcount strlit when expr is an empty string"
 S ^ABSN="20176",^ITEM="II-159  expr ? repcount strlit when expr is an empty string",^NEXT="160^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S X="" S ^VCOMP=X?."@"_(""?.100"A")_(""?1."C")_(""?0."C")_(X?2.9"D")_(X?0.99"D")_(X?1"E")_(X?0"E")
 S ^VCORR="11010101" D ^VEXAMINE
 ;
160 W !,"II-160  Lower case pattern code ""c"""
1601 S ^ABSN="20177",^ITEM="II-160.1  repcount",^NEXT="1602^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S ^VCOMP="" s C="" s C=C_$C(127) F I=0:1:31 s C=C_$c(I)
 S ^VCOMP=^VCOMP_(C?.c)_(C?33c)_(C?33e)_(C?.33c)_(C?33.c)_(C?1.33c)_(C?32c)
 S ^VCORR="1111110" D ^VEXAMINE
 ;
1602 S ^ABSN="20178",^ITEM="II-160.2  its mapping",^NEXT="1603^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S ^VCOMP="" F I=0:1:127 S A=$C(I)?1c,^VCOMP=^VCOMP_A
 S ^VCORR="11111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001" D ^VEXAMINE
 ;
1603 S ^ABSN="20179",^ITEM="II-160.3  lvn?5c",^NEXT="161^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S ^VCOMP="" F I=0:1:127 S A=$C(I,I,I,I,I),A=A?5c,^VCOMP=^VCOMP_A
 S ^VCORR="11111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001" D ^VEXAMINE
 ;
161 W !,"II-161  Lower case pattern code ""p"""
1611 S ^ABSN="20180",^ITEM="II-161.1  repcount",^NEXT="1612^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S VCOMP="" s P="" f I=32:1:126 s I=$s(I=48:58,I=65:91,I=97:123,1:I),P=P_$c(I)
 S VCOMP=VCOMP_(P?.p)_(P?33p)_(P?33e)_(P?.33p)_(P?33.p)_(P?1.33p)_(P?30p)
 S ^VCOMP=VCOMP,^VCORR="1111110" D ^VEXAMINE
 ;
1612 S ^ABSN="20181",^ITEM="II-161.2  its mapping",^NEXT="1613^V2PAT2,V2PAT3^VV2" D ^V2PRESET
 S VCOMP="" F I=0:1:127 S A=$C(I)?1p,VCOMP=VCOMP_A
 S ^VCOMP=VCOMP,^VCORR="00000000000000000000000000000000111111111111111100000000001111111000000000000000000000000001111110000000000000000000000000011110" D ^VEXAMINE
 ;
1613 S ^ABSN="20182",^ITEM="II-161.3  lvn?5p",^NEXT="V2PAT3^VV2" D ^V2PRESET
 S VCOMP="" F I=0:1:127 S A=$C(I,I,I,I,I),A=A?5p,VCOMP=VCOMP_A
 S ^VCOMP=VCOMP,^VCORR="00000000000000000000000000000000111111111111111100000000001111111000000000000000000000000001111110000000000000000000000000011110" D ^VEXAMINE
 ;
END W !!,"End of 20---V2PAT2",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
