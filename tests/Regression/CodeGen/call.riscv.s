.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl touch
touch:
	.4byte	0
.text
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	ret
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	addi sp, sp, -8
	sd ra, 0(sp)
	jal callee_cmmc_noinline
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
.globl ret_forwarding
ret_forwarding:
	addi sp, sp, -8
	sd ra, 0(sp)
	jal getint
	jal putint
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
.globl callee1_cmmc_noinline
callee1_cmmc_noinline:
	li a0, 1
pcrel9:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel9)(a1)
	ret
.globl callee2_cmmc_noinline
callee2_cmmc_noinline:
pcrel16:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel16)(a1)
	ret
.globl callee3_cmmc_noinline
callee3_cmmc_noinline:
	lw a0, 80(a0)
pcrel25:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
.globl callee4_cmmc_noinline
callee4_cmmc_noinline:
	fcvt.w.s a0, f10, rtz
pcrel33:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel33)(a1)
	ret
.globl callee5_cmmc_noinline
callee5_cmmc_noinline:
	fcvt.s.w f11, a0
pcrel44:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f11, f10
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel44)(a1)
	ret
.globl callee6_cmmc_noinline
callee6_cmmc_noinline:
	fcvt.s.w f11, a0
pcrel55:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel55)(a1)
	ret
.globl callee7_cmmc_noinline
callee7_cmmc_noinline:
	addw a0, a0, a1
pcrel64:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel64)(a1)
	ret
.globl callee8_cmmc_noinline
callee8_cmmc_noinline:
	fadd.s f10, f10, f11
pcrel74:
	auipc a1, %pcrel_hi(touch)
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel74)(a1)
	ret
.globl callee9_cmmc_noinline
callee9_cmmc_noinline:
	fadd.s f10, f10, f11
pcrel86:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f10, f12
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel86)(a1)
	ret
.globl callee10_cmmc_noinline
callee10_cmmc_noinline:
	fadd.s f10, f10, f11
pcrel99:
	auipc a1, %pcrel_hi(touch)
	fcvt.s.w f11, a0
	fadd.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel99)(a1)
	ret
.globl callee11_cmmc_noinline
callee11_cmmc_noinline:
	fcvt.s.w f12, a0
pcrel112:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f12, f10
	fadd.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel112)(a1)
	ret
.globl callee12_cmmc_noinline
callee12_cmmc_noinline:
	addw a0, a0, a1
pcrel123:
	auipc a1, %pcrel_hi(touch)
	addw a0, a2, a0
	sw a0, %pcrel_lo(pcrel123)(a1)
	ret
.globl callee13_cmmc_noinline
callee13_cmmc_noinline:
	li a0, 1
pcrel130:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel130)(a1)
	ret
.globl callee14_cmmc_noinline
callee14_cmmc_noinline:
	ld t0, 0(sp)
	addw a0, a0, a1
	flw f0, 8(sp)
pcrel176:
	auipc a1, %pcrel_hi(touch)
	addw a0, a2, a0
	addw a0, a3, a0
	addw a0, a4, a0
	addw a0, a5, a0
	addw a0, a6, a0
	addw a0, a7, a0
	fcvt.s.w f1, a0
	fadd.s f10, f1, f10
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	fadd.s f10, f10, f12
	fadd.s f10, f10, f13
	fadd.s f10, f10, f14
	fadd.s f10, f10, f15
	fadd.s f10, f10, f16
	fadd.s f10, f10, f17
	fadd.s f10, f10, f11
	fadd.s f10, f10, f0
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel176)(a1)
	ret
.globl callee15_cmmc_noinline
callee15_cmmc_noinline:
	mv a0, zero
	ret
.globl callee16_cmmc_noinline
callee16_cmmc_noinline:
	lui a0, 260096
	fmv.w.x f10, a0
	ret
.globl calling_convention
calling_convention:
	addi sp, sp, -72
	fsw f8, 64(sp)
	addi a2, sp, 16
	sd ra, 56(sp)
	jal callee1_cmmc_noinline
	li a0, 1
	jal callee2_cmmc_noinline
	mv a0, a2
	jal callee3_cmmc_noinline
	lui a0, 260096
	fmv.w.x f8, a0
	fmv.s f10, f8
	jal callee4_cmmc_noinline
	fmv.s f10, f8
	li a0, 1
	jal callee5_cmmc_noinline
	fmv.s f10, f8
	li a0, 1
	jal callee6_cmmc_noinline
	li a1, 1
	li a0, 1
	jal callee7_cmmc_noinline
	fmv.s f10, f8
	fmv.s f11, f8
	jal callee8_cmmc_noinline
	fmv.s f10, f8
	fmv.s f11, f8
	fmv.s f12, f8
	jal callee9_cmmc_noinline
	li a0, 1
	fmv.s f10, f8
	fmv.s f11, f8
	jal callee10_cmmc_noinline
	fmv.s f10, f8
	li a0, 1
	fmv.s f11, f8
	jal callee11_cmmc_noinline
	li a2, 1
	li a1, 1
	li a0, 1
	jal callee12_cmmc_noinline
	jal callee13_cmmc_noinline
	li a7, 1
	sd a7, 0(sp)
	fsw f8, 8(sp)
	mv a0, a7
	mv a1, a7
	mv a2, a7
	mv a3, a7
	mv a4, a7
	mv a5, a7
	mv a6, a7
	fmv.s f10, f8
	fmv.s f11, f8
	fmv.s f12, f8
	fmv.s f13, f8
	fmv.s f14, f8
	fmv.s f15, f8
	fmv.s f16, f8
	fmv.s f17, f8
	jal callee14_cmmc_noinline
	mv a0, zero
	jal putint
	fmv.s f10, f8
	jal putfloat
	ld ra, 56(sp)
	flw f8, 64(sp)
	addi sp, sp, 72
	ret
