V3GET3 ;IW-KO-YS-TS,V3GET,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
 W !!,"3---V3GET3: $GET function -3-"
 W !!,"$D(gvn)=0"
 ;
1 S ^ABSN="30033",^ITEM="III-33  unsubscripted lvn"
 S ^NEXT="2^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET KILL ^V3GET
 S ^VCOMP=$GET(^V3GET)
 S ^VCORR="" D ^VEXAMINE KILL ^V3GET
 ;
2 S ^ABSN="30034",^ITEM="III-34  1 subscript"
 S ^NEXT="3^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^VCOMP=$G(^V3GET("DJI"))
 S ^VCORR="" D ^VEXAMINE
 ;
3 S ^ABSN="30035",^ITEM="III-35  2 subscripts"
 S ^NEXT="4^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^VCOMP=$get(^V3GET(1,"#$)$)"))
 S ^VCORR="" D ^VEXAMINE KILL ^V3GET
 ;
4 S ^ABSN="30036",^ITEM="III-36  5 subscripts"
 S ^NEXT="5^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^VCOMP=$g(^V3GET("A","788","9999","DddfJIRNL",000000))
 S ^VCORR="" D ^VEXAMINE KILL ^V3GET
 ;
5 S ^ABSN="30037",^ITEM="III-37  naked refernce"
 S ^NEXT="6^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(1,2)=0 I ^V3GET(1,2) ;
 S ^VCOMP=$G(^(3))
 S ^VCORR="" D ^VEXAMINE KILL ^V3GET
 ;
6 S ^ABSN="30038",^ITEM="III-38  gvn has subscript and ancestors have values"
 S ^NEXT="7^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(123,456)=234
 S ^VCOMP=$G(^V3GET(123,456,789))
 S ^VCORR="" D ^VEXAMINE K ^V3GET
 ;
7 S ^ABSN="30039",^ITEM="III-39  gvn has subscript and siblings have values"
 S ^NEXT="8^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(123,456)=234
 S ^VCOMP=$G(^V3GET(123,457))
 S ^VCORR="" D ^VEXAMINE K ^V3GET
 ;
8 S ^ABSN="30040",^ITEM="III-40  gvn has subscript and ancestors have no values"
 S ^NEXT="9^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^VCOMP=$G(^V3GET("1234.0009","xyz"))
 S ^VCORR="" D ^VEXAMINE K ^V3GET
 ;
9 S ^ABSN="30041",^ITEM="III-41  gvn has subscript and siblings have no values"
 S ^NEXT="10^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET("ABCD")="ABCD"
 S ^VCOMP=$get(^V3GETA(2394.494,4940))
 S ^VCORR="" D ^VEXAMINE K ^V3GET
 ;
 W !!,"$D(gvn)=1"
 ;
10 S ^ABSN="30042",^ITEM="III-42  unsubscripted lvn"
 S ^NEXT="11^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET="123456"
 S ^VCOMP=$G(^V3GET)
 S ^VCORR="123456" D ^VEXAMINE
 ;
11 S ^ABSN="30043",^ITEM="III-43  1 subscript"
 S ^NEXT="12^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET("SUB")="#1234"
 S ^VCOMP=$Get(^V3GET("SUB"))
 S ^VCORR="#1234" D ^VEXAMINE
 ;
12 S ^ABSN="30044",^ITEM="III-44  2 subscripts"
 S ^NEXT="13^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(123.45,89)=0.00009,^V3GET(123.45)=23
 S ^VCOMP=$G(^V3GET(123.45,89))
 S ^VCORR=".00009" D ^VEXAMINE
 ;
13 S ^ABSN="30045",^ITEM="III-45  5 subscripts"
 S ^NEXT="14^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET="ERROR"
 S ^V3GET(000.2,"POP","DSD",0009)="ERROR"
 S ^V3GET(000.2,"POP","DSD",0009," IOP")="OK"
 S ^VCOMP=$G(^V3GET(.2,"POP","DSD",9," IOP"))
 S ^VCORR="OK" D ^VEXAMINE
 ;
14 S ^ABSN="30046",^ITEM="III-46  naked refernce"
 S ^NEXT="15^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(1,2)=0
 S ^V3GET(2,8)=12 I $D(^V3GET(1,8))
 S ^VCOMP=$G(^(2))
 S ^VCORR="0" D ^VEXAMINE
 ;
15 S ^ABSN="30047",^ITEM="III-47  gvn has subscript and ancestors have values"
 S ^NEXT="16^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET("0.+",234,"+++.0")=456
 S ^V3GET("0.+",234)=123
 S ^VCOMP=$GET(^V3GET("0.+",234,"+++.0"))
 S ^VCORR="456" D ^VEXAMINE K ^V3GET
 ;
16 S ^ABSN="30048",^ITEM="III-48  gvn has subscript and siblings have values"
 S ^NEXT="17^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET("0.+",234,"+++.0")=456
 S ^V3GET("0.+",234)=234
 S ^V3GET=123
 S ^V3GET("0.+",234,"+++.1")=890
 S ^VCOMP=$GET(^V3GET("0.+",234,"+++.0"))
 S ^VCORR="456" D ^VEXAMINE K ^V3GET
 ;
17 S ^ABSN="30049",^ITEM="III-49  gvn has subscript and ancestors have no values"
 S ^NEXT="18^V3GET3,V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET("0.+-",--234,"++.E0")=456
 S ^VCOMP=$G(^V3GET("0.+-",--234,"++.E0"))
 S ^VCORR="456" D ^VEXAMINE K ^V3GET
 ;
18 S ^ABSN="30050",^ITEM="III-50  gvn has subscript and siblings have no values"
 S ^NEXT="V3GET4^V3GET,V3TR^VV3" D ^V3PRESET K ^V3GET
 S ^V3GET(+"0.+",234,+"+++.0E+")=456
 S ^VCOMP=$GET(^V3GET(0,234,0))
 S ^VCORR="456" D ^VEXAMINE K ^V3GET
 ;
END W !!,"End of 3 --- V3GET3",!
 K  K ^V3GET Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
