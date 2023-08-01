.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	1287568417
	.4byte	1086918619
	.4byte	1070141403
	.4byte	3234402267
	.4byte	1078530011
	.4byte	3226013659
	.4byte	1053609165
	.4byte	1036831949
	.4byte	1058642330
	.4byte	1028443341
.text
.p2align 2
my_sin_impl:
	addi sp, sp, -16
	fabs.s f11, f10
pcrel53:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel53)
	fsw f8, 8(sp)
	flw f12, 0(a0)
	fle.s a1, f11, f12
	beq a1, zero, label4
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label4:
	lui a1, 263168
	fmv.w.x f12, a1
	fdiv.s f10, f10, f12
	flw f12, 0(a0)
	fabs.s f11, f10
	fle.s a0, f11, f12
	beq a0, zero, label7
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
	j label2
label7:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f10, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmul.s f13, f12, f10
	fmul.s f12, f10, f8
	fmul.s f11, f13, f10
	fsub.s f10, f12, f11
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -112
	li a0, 80
	sd ra, 0(sp)
	sd s10, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	fsw f8, 88(sp)
	sd s9, 96(sp)
	jal putch
	li a0, 50
	jal putch
	li a0, 10
	jal putch
	li a0, 192
	jal putint
	li a0, 32
	jal putch
	li a0, 192
	jal putint
	li a0, 32
	jal putch
	li a0, 255
	jal putint
	li a0, 10
	jal putch
	mv s10, zero
	mv a1, zero
	lui s3, 258048
	lui s1, 264192
	li s8, 23333
pcrel408:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	lui s5, 269312
	lui s2, 253952
	li s6, 24
	lui s4, 263168
	li s7, 19980130
	sd zero, 104(sp)
	addi s0, a0, %pcrel_lo(pcrel408)
	lui a0, 275456
	fmv.w.x f11, a0
	li a0, 192
	fcvt.s.w f10, zero
	fdiv.s f8, f10, f11
	bge zero, a0, label58
.p2align 2
label87:
	mv s9, zero
	fcvt.s.w f10, zero
	lui a0, 275456
	fmv.w.x f15, zero
	mv a2, zero
	fmv.w.x f11, a0
	fdiv.s f14, f10, f11
	j label62
label58:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	flw f8, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label59:
	fcvt.s.w f10, s9
	lui a0, 275456
	fmv.w.x f15, zero
	mv a2, zero
	fmv.w.x f11, a0
	fdiv.s f14, f10, f11
.p2align 2
label62:
	mulw a1, s10, s7
	li a3, 360287945
	addw a0, a1, s8
	mul a1, a0, a3
	srli a5, a1, 63
	srai a4, a1, 55
	li a1, 100000007
	add a3, a5, a4
	mulw a4, a3, a1
	subw a0, a0, a4
	mv s10, a0
	bge a0, zero, label369
	j label368
.p2align 2
label76:
	fadd.s f15, f15, f1
	addiw a2, a2, 1
	blt a2, s6, label62
.p2align 2
label78:
	fmv.w.x f11, s5
	lui a0, 276464
	li a1, 255
	fdiv.s f10, f15, f11
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	min a0, a0, a1
	jal putint
	li a0, 32
	jal putch
	li a0, 192
	addiw s9, s9, 1
	blt s9, a0, label59
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw a1, a1, 1
	sd a1, 104(sp)
	lui a0, 275456
	fmv.w.x f11, a0
	li a0, 192
	fcvt.s.w f10, a1
	fdiv.s f8, f10, f11
	blt a1, a0, label87
	j label58
.p2align 2
label368:
	addw s10, s10, a1
.p2align 2
label369:
	fcvt.s.w f11, s10
	flw f12, 4(s0)
	fcvt.s.w f13, a2
	fdiv.s f10, f11, f12
	flw f11, 8(s0)
	fadd.s f12, f13, f10
	flw f13, 12(s0)
	fmul.s f10, f12, f11
	fmv.w.x f12, s5
	fdiv.s f1, f10, f12
	fadd.s f10, f1, f13
	flt.s a0, f11, f10
	flw f11, 16(s0)
	flt.s a1, f10, f11
	or a0, a0, a1
	bne a0, zero, label66
	flw f11, 20(s0)
	flw f2, 8(s0)
	flt.s a0, f11, f10
	fsub.s f12, f10, f2
	fmv.s f11, f12
	bne a0, zero, label371
	fmv.s f11, f10
	flw f10, 24(s0)
	fadd.s f12, f11, f2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label373
	fmv.s f10, f11
	j label373
.p2align 2
label66:
	flw f11, 8(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
	flw f11, 20(s0)
	flw f2, 8(s0)
	flt.s a0, f11, f10
	fsub.s f12, f10, f2
	fmv.s f11, f12
	bne a0, zero, label371
	fmv.s f11, f10
.p2align 2
label371:
	flw f10, 24(s0)
	fadd.s f12, f11, f2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label373
	fmv.s f10, f11
.p2align 2
label373:
	jal my_sin_impl
	flt.s a0, f2, f1
	fmv.s f0, f10
	flw f10, 16(s0)
	flt.s a1, f1, f10
	or a0, a0, a1
	beq a0, zero, label69
	flw f10, 8(s0)
	fdiv.s f12, f1, f10
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f11, a0
	fmul.s f10, f11, f10
	fsub.s f1, f1, f10
	flw f10, 20(s0)
	flw f11, 8(s0)
	flt.s a0, f10, f1
	fsub.s f12, f1, f11
	fmv.s f10, f12
	bne a0, zero, label375
	fmv.s f10, f1
	flw f12, 24(s0)
	fadd.s f13, f1, f11
	flt.s a0, f1, f12
	fmv.s f11, f13
	bne a0, zero, label377
	j label376
.p2align 2
label69:
	flw f10, 20(s0)
	flw f11, 8(s0)
	flt.s a0, f10, f1
	fsub.s f12, f1, f11
	fmv.s f10, f12
	bne a0, zero, label375
	fmv.s f10, f1
.p2align 2
label375:
	flw f12, 24(s0)
	fadd.s f13, f10, f11
	flt.s a0, f10, f12
	fmv.s f11, f13
	bne a0, zero, label377
.p2align 2
label376:
	fmv.s f11, f10
.p2align 2
label377:
	fmv.s f10, f11
	jal my_sin_impl
	mv a0, zero
	fmv.w.x f11, zero
	li a1, 1
	lui a4, 262144
	fmv.w.x f12, a4
	flt.s a3, f11, f12
	and a1, a1, a3
	beq a1, zero, label182
.p2align 2
label74:
	fmul.s f1, f0, f11
	flw f12, 28(s0)
	fmul.s f3, f10, f11
	fadd.s f13, f14, f1
	fsub.s f1, f13, f12
	fmul.s f2, f1, f1
	fadd.s f1, f8, f3
	fsub.s f12, f1, f12
	fmul.s f4, f12, f12
	fadd.s f3, f2, f4
	fmv.w.x f4, s2
	fmv.w.x f2, s1
	fadd.s f12, f3, f3
	fadd.s f6, f3, f2
	fdiv.s f5, f12, f6
	fmv.w.x f12, s3
	fmul.s f6, f3, f4
	fadd.s f7, f6, f12
	fadd.s f5, f7, f5
	fdiv.s f28, f3, f5
	fadd.s f6, f5, f28
	fmul.s f5, f6, f12
	fdiv.s f7, f3, f5
	fadd.s f6, f5, f7
	fmul.s f5, f6, f12
	fdiv.s f7, f3, f5
	fadd.s f6, f5, f7
	fmul.s f5, f6, f12
	fdiv.s f7, f3, f5
	fadd.s f28, f5, f7
	fmul.s f5, f28, f12
	fdiv.s f6, f3, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f6, f3, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f6, f3, f5
	fadd.s f28, f5, f6
	fmul.s f5, f28, f12
	fdiv.s f7, f3, f5
	fadd.s f6, f5, f7
	fmul.s f5, f6, f12
	fdiv.s f7, f3, f5
	fadd.s f6, f5, f7
	fmul.s f5, f6, f12
	flw f6, 32(s0)
	fdiv.s f7, f3, f5
	fadd.s f3, f5, f7
	fmul.s f5, f3, f12
	fsub.s f3, f5, f6
	flw f5, 36(s0)
	fsub.s f1, f1, f5
	fsub.s f6, f13, f5
	fmul.s f13, f6, f6
	fmul.s f6, f1, f1
	fadd.s f13, f13, f6
	fadd.s f5, f13, f13
	fadd.s f2, f13, f2
	fdiv.s f1, f5, f2
	fmul.s f5, f13, f4
	fadd.s f4, f5, f12
	fadd.s f1, f4, f1
	fdiv.s f2, f13, f1
	fadd.s f5, f1, f2
	fmul.s f1, f5, f12
	fdiv.s f4, f13, f1
	fadd.s f2, f1, f4
	fmul.s f1, f2, f12
	fdiv.s f4, f13, f1
	fadd.s f2, f1, f4
	fmul.s f1, f2, f12
	fdiv.s f4, f13, f1
	fadd.s f2, f1, f4
	fmul.s f1, f2, f12
	fdiv.s f4, f13, f1
	fadd.s f2, f1, f4
	fmul.s f1, f2, f12
	fdiv.s f5, f13, f1
	fadd.s f4, f1, f5
	fmul.s f1, f4, f12
	fdiv.s f2, f13, f1
	fadd.s f4, f1, f2
	fmul.s f1, f4, f12
	fdiv.s f2, f13, f1
	fadd.s f4, f1, f2
	fmul.s f1, f4, f12
	fdiv.s f2, f13, f1
	fadd.s f4, f1, f2
	fmul.s f1, f4, f12
	fdiv.s f2, f13, f1
	fadd.s f13, f1, f2
	flw f1, 40(s0)
	fmul.s f12, f13, f12
	fsub.s f13, f12, f1
	fmv.s f12, f3
	flt.s a1, f3, f13
	bne a1, zero, label379
	fmv.s f12, f13
.p2align 2
label379:
	flw f13, 0(s0)
	fmv.w.x f3, s4
	fmv.w.x f2, zero
	fmv.s f1, f3
	bne a1, zero, label381
	fmv.s f1, f2
.p2align 2
label381:
	flt.s a1, f12, f13
	bne a1, zero, label76
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	slti a1, a0, 10
	lui a4, 262144
	fmv.w.x f12, a4
	flt.s a3, f11, f12
	and a1, a1, a3
	bne a1, zero, label74
	fmv.w.x f1, zero
	fadd.s f15, f15, f1
	addiw a2, a2, 1
	blt a2, s6, label62
	j label78
.p2align 2
label182:
	fmv.w.x f1, zero
	fadd.s f15, f15, f1
	addiw a2, a2, 1
	blt a2, s6, label62
	j label78
