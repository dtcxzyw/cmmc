.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl fmadd1
fmadd1:
	fmul.s f13, f10, f11
	fadd.s f10, f13, f12
	ret
.p2align 2
.globl fmadd2
fmadd2:
	fmul.s f13, f10, f11
	fadd.s f10, f12, f13
	ret
.p2align 2
.globl fmsub
fmsub:
	fmul.s f13, f10, f11
	fsub.s f10, f13, f12
	ret
.p2align 2
.globl fnmadd
fnmadd:
	fmul.s f13, f10, f11
	fneg.s f14, f13
	fsub.s f10, f14, f12
	ret
.p2align 2
.globl fnmsub
fnmsub:
	fmul.s f13, f10, f11
	fneg.s f14, f13
	fadd.s f10, f14, f12
	ret
