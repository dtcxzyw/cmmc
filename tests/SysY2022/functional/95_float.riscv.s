.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1078530011
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[80]
	addi sp, sp, -120
	li a0, 111
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 80
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s7, 48(sp)
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
	lui s5, 266752
	lui s4, 258048
	li s7, 1
	mv s1, s0
	mv s2, a0
pcrel74:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s3, a0, %pcrel_lo(pcrel74)
	lui a0, 244141
	addiw s6, a0, -1536
.p2align 2
label2:
	jal getfloat
	fcvt.w.s a0, f10, rtz
	flw f11, 0(s3)
	mulw a1, a0, a0
	fcvt.s.w f13, a0
	fcvt.s.w f14, a1
	fmul.s f15, f13, f11
	fmul.s f0, f14, f11
	fmul.s f14, f10, f11
	fmul.s f12, f15, f13
	fmv.w.x f15, s4
	fadd.s f13, f12, f0
	fmul.s f12, f14, f10
	fmul.s f1, f13, f15
	flw f13, 0(s1)
	fadd.s f11, f13, f10
	fcvt.w.s s8, f1, rtz
	fsw f11, 0(s1)
	fmv.s f10, f12
	jal putfloat
	li a0, 32
	jal putch
	mv a0, s8
	jal putint
	li a0, 10
	jal putch
	fmv.w.x f11, s5
	fcvt.s.w f10, s7
	fmul.s f12, f10, f11
	fcvt.w.s s7, f12, rtz
	bge s7, s6, label6
	addi s1, s1, 4
	j label2
label6:
	mv a0, s2
	mv a1, s0
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 120
	ret
