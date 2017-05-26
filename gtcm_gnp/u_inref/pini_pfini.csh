#!/usr/local/bin/tcsh -f
@ max = 20
@ count = 0
while ($count < $max)
	$GTM << \GTM_EOF
	lock ^apinpfn  set ^apinpfn=+$GET(^apinpfn)+1  lock
	if ^apinpfn=5 do ^sincetm("time1.txt")
	set cnt=^apinpfn
	if $r(4)>0 s ^bpinpfn(cnt)=$j
	if $r(4)>0 s ^cpinpfn(cnt)=$j
	if $r(4)>0 s ^dpinpfn(cnt)=$j
	if $r(4)>0 s ^epinpfn(cnt)=$j
	if ^apinpfn<4 zsystem "$gtm_tst/$tst/u_inref/pini_pfini.csh"
	if $r(4)>0 s ^fpinpfn(cnt)=$j
	if $r(4)>0 s ^gpinpfn(cnt)=$j
	if $r(4)>0 s ^hpinpfn(cnt)=$j
	if $r(4)>0 s ^ipinpfn(cnt)=$j
	; let's keep it light:
	;if ^apinpfn<8 zsystem "$gtm_tst/$tst/u_inref/pini_pfini.csh"
	h
\GTM_EOF
	@ count = $count + 1
end
