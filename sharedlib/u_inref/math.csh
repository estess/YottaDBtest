$gtm_dist/mumps $gtm_tst/$tst/inref/avg.m
#
$gt_cc_compiler $gt_cc_shl_options -I$gtm_tst/com -I$gtm_dist $gtm_tst/$tst/inref/{math_xcall.c}

$gt_ld_shl_linker ${gt_ld_option_output}libxmath$gt_ld_shl_suffix $gt_ld_shl_options math_xcall.o $gt_ld_syslibs >& math_ld.outx 
#
$gt_ld_m_shl_linker  ${gt_ld_option_output}libmix$gt_ld_shl_suffix math_xcall.o avg.o $gt_ld_m_shl_options -lm >>& math_ld.outx
#
rm *.o 
#
#
setenv GTMXC "gtmxc_math.tab"
echo "`pwd`/libxmath$gt_ld_shl_suffix" > $GTMXC
cat >> $GTMXC << xx
xsqrt: 	void xsqrt(I:xc_char_t *,I:xc_long_t,IO:xc_char_t *)
xx
