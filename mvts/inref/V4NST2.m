V4NST2 ;IW-KO-YS-TS,VV4,MVTS V9.10;15/6/96;NESTING LEVEL
 ;
 W !!,"136---V4NST2: Nesting ( FOR, XECUTE, DO ) -2-"
 ;
2 S ^ABSN="40860",^ITEM="IV-860  Termination by QUIT"
 S ^NEXT="V4NST3^VV4" D ^V4PRESET K
 S X="(OK QUIT)",^VCOMP="",F=0
 F A(1)=1:1:2 Q:F  F A(2)=1:1:2 Q:F  F A(3)=1:1:2 Q:F  F A(4)=1:1:2 Q:F  F A(5)=1:1:2 Q:F  F A(6)=1:1:2 Q:F  F A(7)=1:1:2 Q:F  F A(8)=1:1:2 Q:F  F A(9)=1:1:2 D FORQ1 Q:F  D FORQ1 Q:F
 S ^VCORR="(OK QUIT)" D ^VEXAMINE
 ;
END W !!,"End of 136 --- V4NST2",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
 ;
FORQ1 F A(11)=1:1:2 Q:F  F A(12)=1:1:2 Q:F  F A(13)=1:1:2 Q:F  F A(14)=1:1:2 Q:F  F A(15)=1:1:2 Q:F  F A(16)=1:1:2 Q:F  F A(17)=1:1:2 Q:F  F A(18)=1:1:2 Q:F  F A(19)=1:1:2 D FORQ2 Q:F
 Q
FORQ2 F A(21)=1:1:2 Q:F  F A(22)=1:1:2 Q:F  F A(23)=1:1:2 Q:F  F A(24)=1:1:2 Q:F  F A(25)=1:1:2 Q:F  F A(26)=1:1:2 Q:F  F A(27)=1:1:2 Q:F  F A(28)=1:1:2 Q:F  F A(29)=1:1:2 D FORQ3 Q:F
 Q
FORQ3 F A(31)=1:1:2 Q:F  F A(32)=1:1:2 Q:F  F A(33)=1:1:2 Q:F  F A(34)=1:1:2 Q:F  F A(35)=1:1:2 Q:F  F A(36)=1:1:2 Q:F  F A(37)=1:1:2 Q:F  F A(38)=1:1:2 Q:F  F A(39)=1:1:2 D FORQ4 Q:F
 Q
FORQ4 F A(41)=1:1:2 Q:F  F A(42)=1:1:2 Q:F  F A(43)=1:1:2 Q:F  F A(44)=1:1:2 Q:F  F A(45)=1:1:2 Q:F  F A(46)=1:1:2 Q:F  F A(47)=1:1:2 Q:F  F A(48)=1:1:2 Q:F  F A(49)=1:1:2 D FORQ5 Q:F
 Q
FORQ5 F A(51)=1:1:2 Q:F  F A(52)=1:1:2 Q:F  F A(53)=1:1:2 Q:F  F A(54)=1:1:2 Q:F  F A(55)=1:1:2 Q:F  F A(56)=1:1:2 Q:F  F A(57)=1:1:2 Q:F  F A(58)=1:1:2 Q:F  F A(59)=1:1:2 D FORQ6 Q:F
 Q
FORQ6 F A(61)=1:1:2 Q:F  F A(62)=1:1:2 Q:F  F A(63)=1:1:2 Q:F  F A(64)=1:1:2 Q:F  F A(65)=1:1:2 Q:F  F A(66)=1:1:2 Q:F  F A(67)=1:1:2 Q:F  F A(68)=1:1:2 Q:F  F A(69)=1:1:2 D FORQ7 Q:F
 Q
FORQ7 F A(71)=1:1:2 Q:F  F A(72)=1:1:2 Q:F  F A(73)=1:1:2 Q:F  F A(74)=1:1:2 Q:F  F A(75)=1:1:2 Q:F  F A(76)=1:1:2 Q:F  F A(77)=1:1:2 Q:F  F A(78)=1:1:2 Q:F  F A(79)=1:1:2 D FORQ8 Q:F
 Q
FORQ8 F A(81)=1:1:2 Q:F  F A(82)=1:1:2 Q:F  F A(83)=1:1:2 Q:F  F A(84)=1:1:2 Q:F  F A(85)=1:1:2 Q:F  F A(86)=1:1:2 Q:F  F A(87)=1:1:2 Q:F  F A(88)=1:1:2 Q:F  F A(89)=1:1:2 D FORQ9 Q:F
 Q
FORQ9 F A(91)=1:1:2 Q:F  F A(92)=1:1:2 Q:F  F A(93)=1:1:2 Q:F  F A(94)=1:1:2 Q:F  F A(95)=1:1:2 Q:F  F A(96)=1:1:2 Q:F  F A(97)=1:1:2 Q:F  F A(98)=1:1:2 Q:F  F A(99)=1:1:2 D FORQ10 Q:F
 Q
FORQ10 F A(101)=1:1:2 Q:F  F A(102)=1:1:2 Q:F  F A(103)=1:1:2 Q:F  F A(104)=1:1:2 Q:F  F A(105)=1:1:2 Q:F  F A(106)=1:1:2 Q:F  F A(107)=1:1:2 Q:F  F A(108)=1:1:2 Q:F  F A(109)=1:1:2 D FORQ11 Q:F
 Q
FORQ11 F A(111)=1:1:2 Q:F  F A(112)=1:1:2 Q:F  F A(113)=1:1:2 Q:F  F A(114)=1:1:2 Q:F  F A(115)=1:1:2 Q:F  F A(116)=1:1:2 Q:F  F A(117)=1:1:2 Q:F  F A(118)=1:1:2 Q:F  F A(119)=1:1:2 D FORQ12 Q:F
 Q
FORQ12 F A(121)=1:1:2 Q:F  F A(122)=1:1:2 Q:F  F A(123)=1:1:2 Q:F  F A(124)=1:1:2 Q:F  F A(125)=1:1:2 Q:F  F A(126)=1:1:2 I A(122)=2 S ^VCOMP=^VCOMP_X,F=1 Q
 Q
