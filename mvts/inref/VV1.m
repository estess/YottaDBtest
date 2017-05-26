VV1 ;IW-YS-TS,VV1,MVTS V9.10;15/6/96;PART-77   MAIN DRIVER
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
START ;
 I $D(^VENVIRON("INTEGRITY"))=0 D ^VINT9
 I ^VENVIRON("INTEGRITY")="OK" G START1
 I ^VENVIRON("INTEGRITY")="NOT OK" G START1
 D ^VINT9
START1 ;
 I $D(^VENVIRON("COMPLETE"))=1 D EDIT^VENVIRON
 I $D(^VENVIRON("COMPLETE"))=0 D ^VENVIRON
 S ^VREPORT="Part-77"
 K ^VREPORT("Part-77")
 I $D(^VENVIRON("OUTPUT USE"))=1 U ^VENVIRON("OUTPUT USE")
 W #,"*** Standard MUMPS Validation Test Suite Version 9.10, Part-77 (DRIVER)***"
 W !,"    ( The last Test ID number for Part-77 is I-855. )",!!
 ;
V1WR W !!,"1---V1WR" D ^V1WR
V1CMT W !!,"2---V1CMT" D ^V1CMT
V1LL0 W !!,"3---V1LL0" D ^V1LL0
V1LL1 W !!,"4---V1LL1" D ^V1LL1
V1LL2 W !!,"5---V1LL2" D ^V1LL2
V1LL3 W !!,"6---V1LL3" D ^V1LL3
V1PRGD W !!,"7---V1PRGD" D ^V1PRGD
V1RN W !!,"8---V1RN" D ^V1RN
V1PRSET W !!,"9---V1PRSET" D ^V1PRSET
V1PRIE W !!,"10---V1PRIE" D ^V1PRIE
V1PRFOR W !!,"11---V1PRFOR" D ^V1PRFOR
V1NUM W !!,"11.1---V1NUM" D ^V1NUM
V1FC W !!,"17.1---V1FC" D ^V1FC
V1UO W !!,"20.1---V1UO" D ^V1UO
V1BOA W !!,"35.1---V1BOA" D ^V1BOA
V1BOR W !!,"47.1---V1BOR" D ^V1BOR ;routine name changed, V7.4;16/9/89
V1BOL W !!,"84.1---V1BOL" D ^V1BOL ;routine name changed, V7.4;16/9/89
V1BOC W !!,"91---V1BOC" D ^V1BOC
V1FN W !!,"91.1---V1FN" D ^V1FN
V1AC W !!,"103.1---V1AC" D ^V1AC
V1LVN W !!,"107---V1LVN" D ^V1LVN
V1GVN W !!,"108---V1GVN" D ^V1GVN
V1DLA W !!,"109---V1DLA" D ^V1DLA
V1DLB W !!,"109.1---V1DLB" D ^V1DLB
V1DLC W !!,"112---V1DLC" D ^V1DLC
V1DGA W !!,"113---V1DGA" D ^V1DGA
V1DGB W !!,"113.1---V1DGB" D ^V1DGB
V1NR W !!,"115.1---V1NR" D ^V1NR
V1NX W !!,"118.1---V1NX" D ^V1NX
V1SET W !!,"120.1---V1SET" D ^V1SET
V1GO W !!,"122.1---V1GO" D ^V1GO
V1OV W !!,"125.1---V1OV" D ^V1OV
V1DO W !!,"127.1---V1DO" D ^V1DO
V1CALL W !!,"131.1---V1CALL" D ^V1CALL
V1IE W !!,"133.1---V1IE" D ^V1IE
V1PC W !!,"135.1---V1PC" D ^V1PC
V1FORA W !!,"138.1---V1FORA" D ^V1FORA
V1FORB W !!,"141.1---V1FORB" D ^V1FORB
V1FORC W !!,"143.1---V1FORC" D ^V1FORC
V1IDNM W !!,"145.1---V1IDNM" D ^V1IDNM
V1IDGO W !!,"149.1---V1IDGO" D ^V1IDGO
V1IDDO W !!,"150.1---V1IDDO" D ^V1IDDO
V1IDARG W !!,"152.1---V1IDARG" D ^V1IDARG
V1XECA W !!,"158.1---V1XECA" D ^V1XECA
V1XECB W !!,"161---V1XECB" D ^V1XECB
V1SEQ W !!,"162---V1SEQ" D ^V1SEQ
V1PAT W !!,"162.1---V1PAT" D ^V1PAT
V1NST1 W !!,"167---V1NST1" D ^V1NST1
V1NST2 W !!,"168---V1NST2" D ^V1NST2
V1NST3 W !!,"169---V1NST3" D ^V1NST3
V1JST W !!,"169.1---V1JST" D ^V1JST
V1SVH W !!,"176---V1SVH" D ^V1SVH
V1SVS W !!,"177---V1SVS" D ^V1SVS
V1MAX W !!,"177.1---V1MAX" D ^V1MAX
V1BR W !!,"181---V1BR" D ^V1BR
;V1READA W !!,"181.1---V1READA" D ^V1READA
;V1READB W !!,"184.1---V1READB" D ^V1READB
V1HANG W !!,"188.1---V1HANG" D ^V1HANG
V1PO W !!,"191---V1PO" D ^V1PO
V1RANDA W !!,"192---V1RANDA" D ^V1RANDA
V1RANDB W !!,"193---V1RANDB" D ^V1RANDB
;V1IO W !!,"194---V1IO" D ^V1IO
;V1MJA W !!,"194.1---V1MJA" D ^V1MJA
END W !!,"*** Standard MUMPS Validation Test Suite Version 9.10, Part-77 END ***",!!
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
