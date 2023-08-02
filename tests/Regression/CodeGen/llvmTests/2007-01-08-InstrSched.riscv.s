.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	lui a0, 263168
	lui a1, 264704
	fmv.w.x f12, a0
	fmv.w.x f13, a1
	lui a0, 265728
	fmul.s f11, f10, f12
	fmul.s f14, f10, f13
	fmv.w.x f13, a0
	lui a0, 267008
	fadd.s f12, f11, f14
	fmul.s f14, f10, f13
	fmv.w.x f13, a0
	fadd.s f11, f12, f14
	fmul.s f12, f10, f13
	fadd.s f10, f11, f12
	ret
