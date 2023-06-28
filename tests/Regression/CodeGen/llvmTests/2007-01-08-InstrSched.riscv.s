.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	lui a0, 263168
	fmv.w.x f11, a0
	fmul.s f11, f10, f11
	lui a0, 264704
	fmv.w.x f12, a0
	fmul.s f12, f10, f12
	fadd.s f11, f11, f12
	lui a0, 265728
	fmv.w.x f12, a0
	fmul.s f12, f10, f12
	fadd.s f11, f11, f12
	lui a0, 267008
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fadd.s f10, f11, f10
	ret
