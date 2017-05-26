MINDR2;
 ; Written by: Mir Layek Ali.
 ; Original design from MVTS
 ; Date 02/02/2001
 NEW $ZTRAP
 SET $ZTRAP="GOTO errcont^errcont"
 ;
 W !!,"GT.M Tests for MERGE Start of 2 --- Indirection"
 ;
 W !!,"MERGE lvn1 or @lvn1=lvn2 or @lvn2"
 ;
1 S ^ABSN="2",^ITEM="MERGE-INDR-1"
 S ^NEXT="" D ^V4PRESET K
 set LHS4567890123456789012345678901="^A(1)"  set RHS4567890123456789012345678901="^B(1)"
 set LHS456789012345678901234567890="This is a different variable"  set RHS456789012345678901234567890="This is a different variable"
 MERGE @LHS4567890123456789012345678901=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="/" D ^VEXAMINE  K ^A,^B
 ;
2 S ^ABSN="2",^ITEM="MERGE-INDR-2"
 S ^NEXT="" D ^V4PRESET K
 S ^A(1,1)="V11 ",^B(1)="VV2 "
 set LHS4567890123456789012345678901="^A(1)"  set RHS4567890123456789012345678901="^B(1)"
 set LHS456789012345678901234567890="This is a different variable"  set RHS456789012345678901234567890="This is a different variable"
 MERGE @LHS4567890123456789012345678901=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="1:VV2 11:V11 /1:VV2 " D ^VEXAMINE  K ^A,^B
 ;
3 S ^ABSN="2",^ITEM="MERGE-INDR-3"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 "
 set LHS4567890123456789012345678901="^A(1)"  set RHS4567890123456789012345678901="^B(1)"
 set LHS456789012345678901234567890="This is a different variable"  set RHS456789012345678901234567890="This is a different variable"
 MERGE @LHS4567890123456789012345678901=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="1:VV2 21:V11 /1:VV2 " D ^VEXAMINE  K ^A,^B
 ;
4 S ^ABSN="2",^ITEM="MERGE-INDR-4"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set LHS4567890123456789012345678901="^A(1)"
 set LHS456789012345678901234567890="This is a different variable"
 MERGE @LHS4567890123456789012345678901=^B
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="11:VV2 111:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
5 S ^ABSN="2",^ITEM="MERGE-INDR-5"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set RHS4567890123456789012345678901="^B"
 set RHS456789012345678901234567890="This is a different variable"
 MERGE ^A(1)=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="11:VV2 111:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
6 S ^ABSN="2",^ITEM="MERGE-INDR-6"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set LHS4567890123456789012345678901="@LHS1",RHS4567890123456789012345678901="@RHS1"
 set LHS456789012345678901234567890="Indirection to nowhere",RHS456789012345678901234567890="Indirection to nowhere"
 S LHS1="^A",RHS1="^B"
 MERGE @LHS4567890123456789012345678901=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="1:VV2 11:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
7 S ^ABSN="2",^ITEM="MERGE-INDR-7"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set LHS4567890123456789012345678901="@LHS1",RHS4567890123456789012345678901="@RHS1"
 set LHS456789012345678901234567890="Indirection to nowhere",RHS456789012345678901234567890="Indirection to nowhere"
 S LHS1="^A(1,1)",RHS1="^B"
 MERGE @LHS4567890123456789012345678901=@RHS4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="111:VV2 1111:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
8 S ^ABSN="2",^ITEM="MERGE-INDR-8"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set CMD4567890123456789012345678901="^A(1,1)=^B"
 set CMD456789012345678901234567890="This is a wrong command"
 MERGE @CMD4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="111:VV2 1111:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
9 S ^ABSN="2",^ITEM="MERGE-INDR-9"
 S ^NEXT="" D ^V4PRESET K
 S ^A(2,1)="V11 ",^B(1)="VV2 ",^B(1,1)="VVV11 "
 set CMD4567890123456789012345678901="M ^A(1,1)=^B"
 set CMD456789012345678901234567890="This is a wrong command"
 X CMD4567890123456789012345678901
 S X=$$^V4MERE("^A"),Y=$$^V4MERE("^B"),^VCOMP=X_"/"_Y
 S ^VCORR="111:VV2 1111:VVV11 21:V11 /1:VV2 11:VVV11 " D ^VEXAMINE  K ^A,^B
 ;
 ;
END W !!,"End of 2 --- Indirection",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
