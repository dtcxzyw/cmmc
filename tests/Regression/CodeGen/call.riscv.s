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
.p2align 2
	ret
.globl caller_cmmc_noinline
caller_cmmc_noinline:
.p2align 2
	addi sp, sp, -8
	sd ra, 0(sp)
	jal callee_cmmc_noinline
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
.globl ret_forwarding
ret_forwarding:
.p2align 2
	addi sp, sp, -8
	sd ra, 0(sp)
	jal getint
	jal putint
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
.globl callee1_cmmc_noinline
callee1_cmmc_noinline:
.p2align 2
	li a0, 1
pcrel9:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel9)(a1)
	ret
.globl callee2_cmmc_noinline
callee2_cmmc_noinline:
.p2align 2
pcrel16:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel16)(a1)
	ret
.globl callee3_cmmc_noinline
callee3_cmmc_noinline:
.p2align 2
	lw a1, 80(a0)
pcrel25:
	auipc a2, %pcrel_hi(touch)
	sw a1, %pcrel_lo(pcrel25)(a2)
	ret
.globl callee4_cmmc_noinline
callee4_cmmc_noinline:
.p2align 2
	fcvt.w.s a0, f10, rtz
pcrel33:
	auipc a1, %pcrel_hi(touch)
	sw a0, %pcrel_lo(pcrel33)(a1)
	ret
.globl callee5_cmmc_noinline
callee5_cmmc_noinline:
.p2align 2
	fcvt.s.w f11, a0
pcrel44:
	auipc a1, %pcrel_hi(touch)
	fadd.s f12, f11, f10
	fcvt.w.s a0, f12, rtz
	sw a0, %pcrel_lo(pcrel44)(a1)
	ret
.globl callee6_cmmc_noinline
callee6_cmmc_noinline:
.p2align 2
	fcvt.s.w f11, a0
pcrel55:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	sw a0, %pcrel_lo(pcrel55)(a1)
	ret
.globl callee7_cmmc_noinline
callee7_cmmc_noinline:
.p2align 2
	addw a2, a0, a1
pcrel64:
	auipc a0, %pcrel_hi(touch)
	sw a2, %pcrel_lo(pcrel64)(a0)
	ret
.globl callee8_cmmc_noinline
callee8_cmmc_noinline:
.p2align 2
	fadd.s f12, f10, f11
pcrel74:
	auipc a1, %pcrel_hi(touch)
	fcvt.w.s a0, f12, rtz
	sw a0, %pcrel_lo(pcrel74)(a1)
	ret
.globl callee9_cmmc_noinline
callee9_cmmc_noinline:
.p2align 2
	fadd.s f10, f10, f11
pcrel86:
	auipc a1, %pcrel_hi(touch)
	fadd.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	sw a0, %pcrel_lo(pcrel86)(a1)
	ret
.globl callee10_cmmc_noinline
callee10_cmmc_noinline:
.p2align 2
	fadd.s f10, f10, f11
pcrel99:
	auipc a1, %pcrel_hi(touch)
	fcvt.s.w f11, a0
	fadd.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	sw a0, %pcrel_lo(pcrel99)(a1)
	ret
.globl callee11_cmmc_noinline
callee11_cmmc_noinline:
.p2align 2
	fcvt.s.w f12, a0
pcrel112:
	auipc a1, %pcrel_hi(touch)
	fadd.s f10, f12, f10
	fadd.s f11, f10, f11
	fcvt.w.s a0, f11, rtz
	sw a0, %pcrel_lo(pcrel112)(a1)
	ret
.globl callee12_cmmc_noinline
callee12_cmmc_noinline:
.p2align 2
	addw a3, a0, a1
pcrel123:
	auipc a1, %pcrel_hi(touch)
	addw a0, a2, a3
	sw a0, %pcrel_lo(pcrel123)(a1)
	ret
.globl callee15_cmmc_noinline
callee15_cmmc_noinline:
.p2align 2
	mv a0, zero
	ret
.globl callee16_cmmc_noinline
callee16_cmmc_noinline:
.p2align 2
	lui a0, 260096
	fmv.w.x f10, a0
	ret
.globl calling_convention
calling_convention:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	addi a2, sp, 16
	fsw f8, 8(sp)
	jal callee1_cmmc_noinline
	li a0, 1
	jal callee2_cmmc_noinline
	mv a0, a2
	jal callee3_cmmc_noinline
	lui a1, 260096
	fmv.w.x f8, a1
	fmv.s f10, f8
	jal callee4_cmmc_noinline
	fmv.s f10, f8
	li a0, 1
	jal callee5_cmmc_noinline
	li a0, 1
	fmv.s f10, f8
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
	mv a0, zero
	jal putint
	fmv.s f10, f8
	jal putfloat
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 56
	ret
