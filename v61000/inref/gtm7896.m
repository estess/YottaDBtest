;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;								;
;	Copyright 2013 Fidelity Information Services, Inc	;
;								;
;	This source code contains the intellectual property	;
;	of its copyright holder(s), and is made available	;
;	under a license.  If you do not know the terms of	;
;	the license, please stop and do not read further.	;
;								;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; GTM-7896 - Check SET $ZPIECE() in UTF-8 mode doesn't give error with non-UTF8 source or separator chars and that
; 	     SET $PIECE() still does. Also verify same of $ZPIECE/$PIECE() reference functions.
;
; Test methodology:
;
;   - Generate fixed source strings with the following variations:
;       1. Contains no character substitutions (line(1) only).
;	2. Each possible non-standard character (see below) is substituted somewhere in the fixed string (random location). Note
;	   this generates concatenation opcodes which actually found several issues in the original fix.
;   - Generate separator strings with the following variations:
;     	1. Composed of single byte non-standard characters (same one as appears in corresponding source line).
;	2. Multi-byte string consisting of 1 fixed byte (0-255) and a second non-standard" byte which, since some of those chars
;	   are actually printable, covers printable and non-printable. And again generates a concat operation in the expression.
;   - Note some of the above strings cause failures in V60003 and some don't. But we test all the chars because the selection
;     of which chars cause failures and which don't can (may) vary over time or across platforms as unicode changes.
;   - For each of the source strings and separator strings above, attempt SET $ZPIECE, and $ZPIECE() references keeping track of
;     which fail. Failure summary is written to console at end. Note this routine generates a script (gtm7896a.m) that gets driven.
;     This is so the compiler routines can check the values at compile time *AND* run time.
;
; Note - Testing SET $PIECE() and $PIECE() references is also important but since we expect these to error out, the testing of
;        this is handled in the gtm7896b.m routine in this test suite.
;
; Note - We don't test $PIECE() references because the generated routine generates compilation errors which we prefer
;        to avoid.
;
; Note - The var name below "nonstdchrs" refers to the non-standard ascii chars - many of which are actually rather printable
;        in many character sets representing umlat'd and other forms of characters - but they are generally not UTF8 compliant hence
; 	 why we test them.
;
	set alphabet="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	set digits="0123456789"
	set specials="~`@#$%^&*()_-+=|\}]{[""':;?/>.<, "
	set printable=alphabet_digits_specials
	set printablelen=$zlength(printable)
	set nonstdchrs=$zchar(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
	for i=127:1:255 set nonstdchrs=nonstdchrs_$zchar(i)
	set nonstdchrslen=$zlength(nonstdchrs)
	set TAB=$zchar(9)
	;
	; First up, generate the source lines
	;
	set $zpiece(line(1),"-",10)=""						; Unmodified line
	set linelen=$zlength(line(1))
	for i=1:1:nonstdchrslen do
	. do:(1'=i)								; First pass, source line has no imbeds
	. . set line(i)=line(1)
	. . set $zextract(line(i),$random(linelen)+1)=$zextract(nonstdchrs,i)
	. set sseps(i)=$zextract(nonstdchrs,i)					; Single char separators
	. set mseps(i)=$zextract(printable,(i\printablelen)+1)_sseps(i)		; Multi-byte w/nonstdchrs char
	;
	; Now generate the gtroutine we'll drive for the actual test.
	;
	set rtn="gtm7896a.m"
	open rtn:newversion
	use rtn
	write ";",!
	write "; Generated by gtm7896.m",!
	write ";",!
	for i=1:1:nonstdchrslen do
	. write TAB,"set x=$zpiece(",$zwrite(line(i)),",",$zwrite(sseps(i)),",1)",!
	. write TAB,"set x=$zpiece(",$zwrite(line(i)),",",$zwrite(mseps(i)),",1)",!
	. write TAB,"set x=",$zwrite(line(i))," set $zpiece(x,",$zwrite(sseps(i)),",1)=""#""",!
	. write TAB,"set x=",$zwrite(line(i))," set $zpiece(x,",$zwrite(mseps(i)),",1)=""#""",!
	write TAB,"write ""PASS"",!",!
	close rtn
	use $p
	quit

