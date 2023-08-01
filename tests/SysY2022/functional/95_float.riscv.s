.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530011
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	li a0, 111
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 80
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s7, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
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
	fsw f10, 80(sp)
	fmv.w.x f10, zero
	fsw f11, 84(sp)
	fsw f10, 88(sp)
	fsw f10, 92(sp)
	fsw f10, 96(sp)
	fsw f10, 100(sp)
	fsw f10, 104(sp)
	fsw f10, 108(sp)
	fsw f10, 112(sp)
	fsw f10, 116(sp)
	mv a0, s0
	jal getfarray
	li s5, 1000000000
	lui s4, 266752
	lui s3, 258048
	mv s6, zero
	li s7, 1
	mv s1, a0
pcrel73:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s2, a0, %pcrel_lo(pcrel73)
.p2align 2
label2:
	jal getfloat
	fcvt.w.s a0, f10, rtz
	flw f11, 0(s2)
	fmv.w.x f14, s3
	fcvt.s.w f12, a0
	mulw a0, a0, a0
	fmul.s f13, f12, f11
	fmul.s f12, f13, f12
	fcvt.s.w f13, a0
	sh2add a0, s6, s0
	fmul.s f15, f13, f11
	fadd.s f12, f12, f15
	fmul.s f13, f12, f14
	fmul.s f12, f10, f11
	fcvt.w.s s8, f13, rtz
	fmul.s f11, f12, f10
	flw f13, 0(a0)
	fadd.s f12, f13, f10
	fsw f12, 0(a0)
	fmv.s f10, f11
	jal putfloat
	li a0, 32
	jal putch
	mv a0, s8
	jal putint
	li a0, 10
	jal putch
	addiw s6, s6, 1
	fmv.w.x f11, s4
	fcvt.s.w f10, s7
	fmul.s f12, f10, f11
	fcvt.w.s s7, f12, rtz
	blt s7, s5, label2
	mv a0, s1
	mv a1, s0
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s7, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 120
	ret
