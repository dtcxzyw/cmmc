.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	lui a0, 263168
	fmv.w.x f12, a0
	lui a0, 264704
	fmul.s f11, f10, f12
	fmv.w.x f12, a0
	lui a0, 265728
	fmul.s f13, f10, f12
	fmv.w.x f12, a0
	lui a0, 267008
	fadd.s f11, f11, f13
	fmul.s f13, f10, f12
	fmv.w.x f12, a0
	fadd.s f11, f11, f13
	fmul.s f13, f10, f12
	fadd.s f10, f11, f13
	ret
