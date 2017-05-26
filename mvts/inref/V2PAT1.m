V2PAT1 ;IW-KO-TS,VV2,MVTS V9.10;15/6/96;PATTERN MATCH OPERATOR -1-
 ;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1984-1996
 W !!,"19---V2PAT1: Pattern match operator -1-",!
148 W !,"II-148  expr ? .intlit2 patcode"
 S ^ABSN="20164",^ITEM="II-148  expr ? .intlit2 patcode",^NEXT="149^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S ^VCOMP="",X="ABC"
 S ^VCOMP=X?.0A_(X?.00001U)_(X?.2A)_(X?.03A)_(X?.4U)_(X?.99999999AE)
 S ^VCORR="000111" D ^VEXAMINE
 ;
149 W !,"II-149  expr ? intlit1.patcode"
 S ^ABSN="20165",^ITEM="II-149  expr ? intlit1.patcode",^NEXT="150^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S ^VCOMP="",X="ABC"
 S ^VCOMP=(X?0.A)_(X?1.U)_(X?00002.A)_(X?03.A)_(X?4.U)_(X?0099900.U)
 S ^VCORR="111100" D ^VEXAMINE
 ;
150 W !,"II-150  expr ? intlit1.intlit2 patcode"
 S ^ABSN="20166",^ITEM="II-150  expr ? intlit1.intlit2 patcode",^NEXT="151^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S VCOMP="",X="ABC"
 S VCOMP=VCOMP_(X?000.00000000AA)_(X?0.0001U)_(X?0.2A)_(X?000000.00003U)_(X?0.4A)_(X?00.0000999A)_" "
 S VCOMP=VCOMP_(X?1.1A)_(X?1.2U)_(X?1.3UA)_(X?1.4PU)_(X?1.999CPA)_" "
 S VCOMP=VCOMP_(X?2.2AU)_(X?2.3UP)_(X?2.4UUU)_(X?2.999AP)_" "
 S VCOMP=VCOMP_(X?3.3AUL)_(X?3.4AAA)_(X?3.999AU)_" "
 S VCOMP=VCOMP_(X?4.4A)_(X?4.999A)_(X?999.9999A)
 S ^VCOMP=VCOMP,^VCORR="000111 00111 0111 111 000" D ^VEXAMINE
 ;
151 W !,"II-151  '?"
1511 S ^ABSN="20167",^ITEM="II-151.1  X'?patcode",^NEXT="15111^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S X="ABC" ;Number changed in V7.4;16/9/89
 S ^VCOMP=X'?1.2A_(X'?0.999A)_(X'?4.5A),^VCORR="101" D ^VEXAMINE
 ;
15111 S ^ABSN="20168",^ITEM="II-151.1.1  '(X?patcode)",^NEXT="152^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S X="ABC" ;Test added in V7.4;16/9/89
 S ^VCOMP='(X?1.2A)_'(X?0.999A)_'(X?4.5A),^VCORR="101" D ^VEXAMINE
 ;
152 W !,"II-152  Multi patatom"
 S ^ABSN="20169",^ITEM="II-152  Multi patatom",^NEXT="153^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S VCOMP="",X="ABC"
 S VCOMP=(X?1.CAULPN.1CAULPN)_(X?1.3AN2.4APC)_(X?3.4A1.U)_(X'?0.AAAAAAAA.5ANNN)
 ;
 S X="12AB12AB"
 S VCOMP=VCOMP_(X?1."12"3.4A."2"2.U)_(X?.2"12AB".E)_(X?.2N1."AB"4.CNPALUECNPALUE)_(X?.2E.2E.2E8.8AN)
 S VCOMP=VCOMP_("ABCDEFGHIJKLMNOPQRSTUVWXYZ"?1.E3.5A.3CC2.5NU0.5P4.5UUU1"Z")
 S VCOMP=VCOMP_("0123456789..000..123456789"?3.15N2N.2N1.10".".N."."4.N)
 S ^VCOMP=VCOMP,^VCORR="1100011111" D ^VEXAMINE
 ;
153 W !,"II-153  expr ? repcount patcode when expr is an empty string"
 S ^ABSN="20170",^ITEM="II-153  expr ? repcount patcode when expr is an empty string",^NEXT="154^V2PAT1,V2PAT2^VV2" D ^V2PRESET
 S VCOMP="",X=""_""
 S VCOMP=VCOMP_(""?.0A)_(""?.1A)_(X?.2P)_(" ")_(X?0.A)_(""?1.A)_(""?00002.A)_" "
 S VCOMP=VCOMP_(""?0.0E)_(""?0.1E)_(""?0.2E)_(X?000000.0009999A)_" "
 S VCOMP=VCOMP_(""?1.1EA)_(""?1.2CPA)_(""?2.2E)
 S ^VCOMP=VCOMP,^VCORR="111 100 1111 000" D ^VEXAMINE
 ;
154 W !,"II-154  expr contains control characters"
 S ^ABSN="20171",^ITEM="II-154  expr contains control characters",^NEXT="V2PAT2^VV2" D ^V2PRESET
 S VCOMP=""
 F I=1:1:10 S VCOMP=VCOMP_($C(I,I*2,I+100,I*I)?1.5CAULPN1.4CAULPN1.3CAULPNCAULPN1.CAULPN)
 S ^VCOMP=VCOMP,^VCORR="1111111111" D ^VEXAMINE
 ;
END W !!,"End of 19---V2PAT1",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
