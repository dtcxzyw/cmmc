.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530011
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	li a0, 111
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd s3, 64(sp)
	sd s2, 56(sp)
	sd s4, 48(sp)
	sd ra, 40(sp)
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	lui a1, 260096
	lui a0, 262144
	fmv.w.x f10, a1
	fmv.w.x f11, a0
	fsw f10, 0(sp)
	fmv.w.x f10, zero
	fsw f11, 4(sp)
	fsw f10, 8(sp)
	fsw f10, 12(sp)
	fsw f10, 16(sp)
	fsw f10, 20(sp)
	fsw f10, 24(sp)
	fsw f10, 28(sp)
	fsw f10, 32(sp)
	fsw f10, 36(sp)
	mv a0, s0
	jal getfarray
	mv s2, zero
	li s3, 1
	mv s1, a0
label2:
.p2align 2
	jal getfloat
	fcvt.w.s a0, f10, rtz
pcrel64:
.p2align 2
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a1, %pcrel_lo(pcrel64)
	flw f11, 0(a2)
	fcvt.s.w f12, a0
	mulw a0, a0, a0
	fmul.s f13, f12, f11
	fmul.s f12, f13, f12
	fcvt.s.w f13, a0
	lui a0, 258048
	fmul.s f14, f13, f11
	fmv.w.x f13, a0
	sh2add a0, s2, s0
	fadd.s f12, f12, f14
	fmul.s f12, f12, f13
	fmul.s f13, f10, f11
	fcvt.w.s s4, f12, rtz
	fmul.s f11, f13, f10
	flw f13, 0(a0)
	fadd.s f12, f13, f10
	fsw f12, 0(a0)
	fmv.s f10, f11
	jal putfloat
	li a0, 32
	jal putch
	mv a0, s4
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, 1
	lui a0, 266752
	fcvt.s.w f10, s3
	fmv.w.x f11, a0
	li a0, 1000000000
	fmul.s f10, f10, f11
	fcvt.w.s s3, f10, rtz
	blt s3, a0, label2
	mv a0, s1
	mv a1, s0
	jal putfarray
	ld ra, 40(sp)
	mv a0, zero
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
