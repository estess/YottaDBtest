V3GET1 ;IW-KO-YS-TS,V3GET,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
 W !!,"1---V3GET1: $GET function -1-"
 W !!,"$D(lvn)=0"
 ;
1 S ^ABSN="30001",^ITEM="III-1  unsubscripted lvn"
 S ^NEXT="2^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET KILL
 S ^VCOMP=$GET(Z)
 S ^VCORR="" D ^VEXAMINE
 ;
2 S ^ABSN="30002",^ITEM="III-2  1 subscript"
 S ^NEXT="3^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ^VCOMP=$G(A8900("DJI"))
 S ^VCORR="" D ^VEXAMINE
 ;
3 S ^ABSN="30003",^ITEM="III-3  2 subscripts"
 S ^NEXT="4^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ^VCOMP=$get(GET(1,"#$)$)"))
 S ^VCORR="" D ^VEXAMINE
 ;
4 S ^ABSN="30004",^ITEM="III-4  5 subscripts"
 S ^NEXT="5^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ZP("A","788","9999","DddfJIRNL",000000,212)="DATA"
 S ^VCOMP=$g(ZP("A","788","9999","DddfJIRNL",000000))
 S ^VCORR="" D ^VEXAMINE
 ;
5 S ^ABSN="30005",^ITEM="III-5  lvn has subscript and ancestors have values"
 S ^NEXT="6^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S V3GET(2.4,"ABCD")="ANS"
 S ^VCOMP=$G(V3GET(2.4,"ABCD",100))
 S ^VCORR="" D ^VEXAMINE
 ;
6 S ^ABSN="30006",^ITEM="III-6  lvn has subscript and siblings have values"
 S ^NEXT="7^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S QD03("ADFE",43)="EXIST"
 S ^VCOMP=$G(QD03("ADFE",22343))
 S ^VCORR="" D ^VEXAMINE
 ;
7 S ^ABSN="30007",^ITEM="III-7  lvn has subscript and ancestors have no values"
 S ^NEXT="8^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ^VCOMP=$G(V3GET(23,45,23))
 S ^VCORR="" D ^VEXAMINE
 ;
8 S ^ABSN="30008",^ITEM="III-8  lvn has subscript and siblings have no values"
 S ^NEXT="9^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ^VCOMP=$G(V3GET(123,445))
 S ^VCORR="" D ^VEXAMINE
 ;
 W !!,"$D(lvn)=1"
 ;
9 S ^ABSN="30009",^ITEM="III-9  unsubscripted lvn"
 S ^NEXT="10^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S A="123456"
 S ^VCOMP=$G(A)
 S ^VCORR="123456" D ^VEXAMINE
 ;
10 S ^ABSN="30010",^ITEM="III-10  1 subscript"
 S ^NEXT="11^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S A000("SUB")="#1234"
 S ^VCOMP=$Get(A000("SUB"))
 S ^VCORR="#1234" D ^VEXAMINE
 ;
11 S ^ABSN="30011",^ITEM="III-11  2 subscripts"
 S ^NEXT="12^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S ZZZZ01(123.45,89)=0.00009,ZZZZ01(123.45)=23
 S ^VCOMP=$G(ZZZZ01(123.45,89)) K
 S ^VCORR=".00009" D ^VEXAMINE
 ;
12 S ^ABSN="30012",^ITEM="III-12  5 subscripts"
 S ^NEXT="13^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S P00P="ERROR"
 S P00P(000.2,"POP","DSD",0009)="ERROR"
 S P00P(000.2,"POP","DSD",0009," IOP")="OK"
 S ^VCOMP=$G(P00P(.2,"POP","DSD",9," IOP"))
 S ^VCORR="OK" D ^VEXAMINE
 ;
13 S ^ABSN="30013",^ITEM="III-13  lvn has subscript and ancestors have values"
 S ^NEXT="14^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S P43="DSA",P43("HIKOE",30.89)="93403940"
 S ^VCOMP=$G(P43("HIKOE",30.89))
 S ^VCORR="93403940" D ^VEXAMINE
 ;
14 S ^ABSN="30014",^ITEM="III-14  lvn has subscript and siblings have values"
 S ^NEXT="15^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S P43("HIKOE",20)=20,P43("HIKOE",30)="30",P43("HIKOE",40)=40
 S ^VCOMP=$G(P43("HIKOE",30))
 S ^VCORR="30" D ^VEXAMINE
 ;
15 S ^ABSN="30015",^ITEM="III-15  lvn has subscript and ancestors have no values"
 S ^NEXT="16^V3GET1,V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S P43("HIKOE",30.89)="89"
 S ^VCOMP=$G(P43("HIKOE",30.89))
 S ^VCORR="89" D ^VEXAMINE
 ;
16 S ^ABSN="30016",^ITEM="III-16  lvn has subscript and siblings have no values"
 S ^NEXT="V3GET2^V3GET,V3TR^VV3" D ^V3PRESET K
 S P43("HIKOE",30)="30"
 S ^VCOMP=$G(P43("HIKOE",30))
 S ^VCORR="30" D ^VEXAMINE
 ;
END W !!,"End of 1 --- V3GET1",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
