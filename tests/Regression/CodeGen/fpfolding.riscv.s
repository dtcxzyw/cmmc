.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl my_fabs
my_fabs:
	fabs.s f10, f10
	ret
.globl my_fmin
my_fmin:
	flt.s a0, f10, f11
	bne a0, zero, label10
	fmv.s f10, f11
label10:
	ret
.globl my_fmax
my_fmax:
	flt.s a0, f11, f10
	bne a0, zero, label17
	fmv.s f10, f11
label17:
	ret
.globl my_trunc
my_trunc:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
