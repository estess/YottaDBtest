V4TP17 ;IW-KO-YS-TS,VV4TP,MVTS V9.10;15/7/96;PART-94 Transaction
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"148---V4TP17: 1 Transaction tests  -7-"
 ;
 W !!,"TSTART without transparameters"
 W !,"   2 level nestting",!
 ;
1 S ^ABSN="40892",^ITEM="IV-892  TSTART .. TSTART .. TCOMMIT .. TCOMMIT"
 S ^NEXT="2^V4TP17,V4TP21^VV4TP" D ^V4PRETP1
 JOB 1^V4TPE17::60 S WAIT=$T
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^VA^VB(1)VAVB(1)10/#1^VA^va^VB(1)^vb(1)VAvaVB(1)vb(1)20/#1^VA^va^VA^VB(1)^vb(1)^VB(1)VAvaVAVB(1)vb(1)VB(1)10/#1^VA^va^VA^va^VB(1)^vb(1)^VB(1)^vb(1)VAvaVAvaVB(1)vb(1)VB(1)vb(1)00/*11/#M^VA^va^VA^va^VB(1)^vb(1)^VB(1)^vb(1)00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
2 S ^ABSN="40893",^ITEM="IV-893  TSTART .. TSTART .. TROLLBACK"
 S ^NEXT="3^V4TP17,V4TP21^VV4TP" D ^V4PRETP1
 JOB 2^V4TPE17::60 S WAIT=$T
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^VA^VB(1)VAVB(1)10/#1^VA^va^VB(1)^vb(1)VAvaVB(1)vb(1)20/#1^VA^VB(1)VAvaVAVB(1)vb(1)VB(1)00/*11/#M^VA^VB(1)00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
3 S ^ABSN="40894",^ITEM="IV-894  TSTART .. TSTART .. TRESTART .. TCOMMIT .. TCOMMIT"
 S ^NEXT="4^V4TP17,V4TP21^VV4TP" D ^V4PRETP1
 JOB 3^V4TPE17::60 S WAIT=$T
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^VA^va^VB(1)^vb(1)VAvaVB(1)vb(1)20/#1^VA^va^VB(1)^vb(1)VAvaVB(1)vb(1)vb(1)21/#1^VA^va^VA^VB(1)^vb(1)^VB(1)VAvaVAVB(1)vb(1)vb(1)VB(1)11/#1^VA^va^VA^va^VB(1)^vb(1)^VB(1)^vb(1)VAvaVAvaVB(1)vb(1)vb(1)VB(1)vb(1)00/*11/#M^VA^va^VA^va^VB(1)^vb(1)^VB(1)^vb(1)00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
4 S ^ABSN="40895",^ITEM="IV-895  TSTART .. TSTART .. TRESTART .. TROLLBACK"
 S ^NEXT="V4TP21^VV4TP" D ^V4PRETP1
 JOB 4^V4TPE17::60 S WAIT=$T
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^va^VA(1)^vb(1)^VB(1,2)^VC(2)^VD(1,2)vaVA(1)vb(1)VB(1,2)VC(2)VD(1,2)20/#1^va^VA(1)^vb(1)^VB(1,2)^VC(2)^VD(1,2)vaVA(1)vb(1)VB(1,2)VC(2)VD(1,2)21/#1^va^vb(1)vaVA(1)va(1)vb(1)VB(1,2)vb(2)vc(1,2)VC(2)VD(1,2)vd(2)00/*11/#M^va^vb(1)00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
END W !!,"End of 148 --- V4TP17",!
 Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
