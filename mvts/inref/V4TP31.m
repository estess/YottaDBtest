V4TP31 ;IW-KO-YS-TS,VV4TP,MVTS V9.10;15/7/96;PART-94 Transaction
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"3 Transactions tests"
 ;
 W !!,"153---V4TP31: 3 Transactions tests -1-"
 ;
1 S ^ABSN="40920",^ITEM="IV-920  1. TSTART :SERIAL  ... TCOMMIT!2. TSTART *:S  ... TROLLBACK!3. TSTART lname:S  ... TCOMMIT"
 S ^NEXT="2^V4TP31,V4TP32^VV4TP" D ^V4PRETP3
 JOB 11^V4TPE31::60 S WAIT=WAIT_$T
 JOB 12^V4TPE31::60 S WAIT=WAIT_$T
 JOB 13^V4TPE31::60 S WAIT=WAIT_$T
 LOCK -^V(1) HANG 1 LOCK -^V(2) HANG 1 LOCK -^V(3) HANG 1
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^VA^VB(1)^VC^VD(1)VAVB(1)VCVD(1)10/#1^VA^VB(1)^VC^VD(1)VAVB(1)VCVD(1)00/#2^VA^VB(1)^VC^VC^VD(1)^VD(1)VCVD(1)10/#2^VA^VB(1)^VC^VD(1)VCVD(1)00/#3^VA^VA^VB(1)^VB(1)10/#3^VA^VA^VB(1)^VB(1)00/*1111/#M^VA^VA^VB(1)^VB(1)00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
2 S ^ABSN="40921",^ITEM="IV-921  1. TSTART :S  ... TCOMMIT!2. TSTART :SERIAL  ... TCOMMIT!3. TSTART ()  ... TROLLBACK"
 S ^NEXT="V4TP32^VV4TP" D ^V4PRETP3
 JOB 21^V4TPE31::60 S WAIT=WAIT_$T
 JOB 22^V4TPE31::60 S WAIT=WAIT_$T
 JOB 23^V4TPE31::60 S WAIT=WAIT_$T
 LOCK -^V(1) HANG 1 LOCK -^V(2) HANG 1 LOCK -^V(3) HANG 1
 L  F  Q:$$^V4GETSM
 S ^VCORR="#1^va^vb(1)vavb(1)10/#1^va^vb(1)vavb(1)00/#2va10/#2va00/#3^VA^VB(1)VAVB(1)10/#3VAVB(1)00/*1111/#M00/"
 D ^V4TPCHKM D ^V4GETCOM D ^VEXAMINE
 ;
END W !!,"End of 153 --- V4TP31",!
 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
