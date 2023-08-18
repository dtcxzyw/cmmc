.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
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
pcrel101:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel101)
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
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label7
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label7:
	lui a1, 263168
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f10, f11, f13
	fabs.s f12, f10
	fle.s a1, f12, f14
	beq a1, zero, label10
label8:
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f14, f10, f11
	fmul.s f13, f14, f10
	fmv.w.x f14, a0
	lui a0, 264192
	fmul.s f12, f13, f10
	fmul.s f13, f10, f14
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label10:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label13
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
label13:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f15, f10, f8
	fmul.s f13, f10, f11
	fmul.s f14, f13, f10
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f12, f14, f10
	fsub.s f11, f15, f12
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
.p2align 2
.globl main
main:
	addi sp, sp, -104
	li a0, 80
	sd ra, 0(sp)
	sd s10, 8(sp)
	sd s8, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s7, 80(sp)
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
	lui s6, 269312
	lui s5, 263168
	lui s4, 258048
pcrel454:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	lui s1, 262144
	lui s2, 264192
	mv s8, zero
	lui s3, 253952
	mv s10, zero
	addi s0, a0, %pcrel_lo(pcrel454)
	lui a0, 4878
	addiw s7, a0, -158
	j label103
.p2align 2
label127:
	li a0, 10
	jal putch
	li a0, 192
	addiw s8, s8, 1
	bge s8, a0, label128
.p2align 2
label103:
	fcvt.s.w f10, s8
	lui a0, 275456
	mv s9, zero
	fmv.w.x f11, a0
	fdiv.s f8, f10, f11
	j label106
.p2align 2
label126:
	fmv.w.x f11, s6
	lui a0, 276464
	li a2, 255
	fmv.w.x f12, a0
	fdiv.s f10, f1, f11
	fmul.s f11, f10, f12
	fcvt.w.s a1, f11, rtz
	min a0, a1, a2
	jal putint
	li a0, 32
	jal putch
	li a0, 192
	addiw s9, s9, 1
	bge s9, a0, label127
.p2align 2
label106:
	fcvt.s.w f10, s9
	lui a0, 275456
	fmv.w.x f1, zero
	mv a3, zero
	fmv.w.x f11, a0
	fdiv.s f0, f10, f11
	j label109
.p2align 2
label113:
	flw f12, 8(s0)
	fdiv.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f13, a0
	fmul.s f14, f13, f12
	fsub.s f11, f10, f14
	flw f10, 20(s0)
	flw f4, 8(s0)
	flt.s a0, f10, f11
	fsub.s f12, f11, f4
	fmv.s f10, f12
	bne a0, zero, label415
	fmv.s f10, f11
label415:
	flw f13, 24(s0)
	fadd.s f12, f10, f4
	flt.s a0, f10, f13
	fmv.s f11, f12
	bne a0, zero, label417
.p2align 2
label444:
	fmv.s f11, f10
.p2align 2
label417:
	fmv.s f10, f11
	jal my_sin_impl
	flw f11, 16(s0)
	flt.s a0, f4, f3
	fmv.s f2, f10
	flt.s a2, f3, f11
	or a1, a0, a2
	beq a1, zero, label201
	flw f10, 8(s0)
	fdiv.s f11, f3, f10
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f13, a0
	fmul.s f12, f13, f10
	fsub.s f3, f3, f12
	flw f10, 20(s0)
	flw f11, 8(s0)
	flt.s a0, f10, f3
	fsub.s f12, f3, f11
	fmv.s f10, f12
	bne a0, zero, label419
	fmv.s f10, f3
label419:
	flw f14, 24(s0)
	fadd.s f13, f10, f11
	flt.s a0, f10, f14
	fmv.s f12, f13
	bne a0, zero, label421
.p2align 2
label445:
	fmv.s f12, f10
.p2align 2
label421:
	fmv.s f10, f12
	jal my_sin_impl
	mv a0, zero
	fmv.w.x f11, zero
	li a1, 1
	fmv.w.x f12, s1
	flt.s a4, f11, f12
	and a2, a1, a4
	beq a2, zero, label234
.p2align 2
label122:
	fmul.s f14, f2, f11
	flw f12, 28(s0)
	fmul.s f4, f10, f11
	fadd.s f13, f0, f14
	fadd.s f14, f8, f4
	fsub.s f15, f13, f12
	fmul.s f3, f15, f15
	fsub.s f15, f14, f12
	fmul.s f5, f15, f15
	fmv.w.x f15, s2
	fadd.s f4, f3, f5
	fmv.w.x f3, s3
	fadd.s f12, f4, f4
	fadd.s f7, f4, f15
	fmul.s f6, f4, f3
	fdiv.s f5, f12, f7
	fmv.w.x f12, s4
	fadd.s f29, f6, f12
	fadd.s f7, f29, f5
	fdiv.s f30, f4, f7
	fadd.s f28, f7, f30
	fmul.s f6, f28, f12
	fdiv.s f29, f4, f6
	fadd.s f7, f6, f29
	fmul.s f5, f7, f12
	fdiv.s f30, f4, f5
	fadd.s f28, f5, f30
	fmul.s f6, f28, f12
	fdiv.s f29, f4, f6
	fadd.s f7, f6, f29
	fmul.s f5, f7, f12
	fdiv.s f28, f4, f5
	fadd.s f29, f5, f28
	fmul.s f6, f29, f12
	fdiv.s f30, f4, f6
	fadd.s f7, f6, f30
	fmul.s f5, f7, f12
	fdiv.s f28, f4, f5
	fadd.s f6, f5, f28
	fmul.s f7, f6, f12
	fdiv.s f29, f4, f7
	fadd.s f5, f7, f29
	fmul.s f6, f5, f12
	fdiv.s f28, f4, f6
	fadd.s f30, f6, f28
	flw f28, 32(s0)
	fmul.s f5, f30, f12
	fdiv.s f29, f4, f5
	fadd.s f7, f5, f29
	flw f5, 36(s0)
	fmul.s f6, f7, f12
	fsub.s f7, f13, f5
	fsub.s f4, f6, f28
	fsub.s f28, f14, f5
	fmul.s f6, f7, f7
	fmul.s f29, f28, f28
	fadd.s f13, f6, f29
	fadd.s f5, f13, f13
	fmul.s f6, f13, f3
	fadd.s f28, f13, f15
	fadd.s f7, f6, f12
	fdiv.s f14, f5, f28
	fadd.s f15, f7, f14
	fdiv.s f5, f13, f15
	fadd.s f3, f15, f5
	fmul.s f14, f3, f12
	fdiv.s f6, f13, f14
	fadd.s f5, f14, f6
	fmul.s f15, f5, f12
	fdiv.s f3, f13, f15
	fadd.s f6, f15, f3
	fmul.s f14, f6, f12
	fdiv.s f5, f13, f14
	fadd.s f15, f14, f5
	fmul.s f3, f15, f12
	fdiv.s f7, f13, f3
	fadd.s f14, f3, f7
	fmul.s f15, f14, f12
	fdiv.s f6, f13, f15
	fadd.s f5, f15, f6
	fmul.s f14, f5, f12
	fdiv.s f3, f13, f14
	fadd.s f6, f14, f3
	fmul.s f15, f6, f12
	fdiv.s f5, f13, f15
	fadd.s f14, f15, f5
	fmul.s f3, f14, f12
	fdiv.s f6, f13, f3
	fadd.s f15, f3, f6
	flw f3, 40(s0)
	fmul.s f14, f15, f12
	fdiv.s f5, f13, f14
	fadd.s f6, f14, f5
	fmul.s f15, f6, f12
	fmv.s f12, f4
	fsub.s f13, f15, f3
	flt.s a1, f4, f13
	bne a1, zero, label423
	fmv.s f12, f13
label423:
	flw f13, 0(s0)
	fmv.w.x f3, s5
	fmv.w.x f15, zero
	fmv.s f14, f3
	bne a1, zero, label425
	fmv.s f14, f15
label425:
	flt.s a1, f12, f13
	beq a1, zero, label123
	fadd.s f1, f1, f14
	addiw a3, a3, 1
	li a0, 24
	bge a3, a0, label126
.p2align 2
label109:
	mulw a1, s10, s7
	lui a4, 6
	lui t0, 87961
	lui t1, 24414
	addiw a2, a4, -1243
	addiw a5, t0, -311
	addw a0, a1, a2
	mul a1, a0, a5
	srli t0, a1, 63
	srai a4, a1, 55
	addiw a1, t1, 263
	add a2, t0, a4
	mulw a4, a2, a1
	subw a5, a0, a4
	mv s10, a5
	bge a5, zero, label413
	addw s10, a5, a1
label413:
	fcvt.s.w f11, s10
	flw f12, 4(s0)
	fcvt.s.w f14, a3
	fdiv.s f10, f11, f12
	flw f11, 8(s0)
	fadd.s f13, f14, f10
	fmv.w.x f14, s6
	fmul.s f12, f13, f11
	flw f13, 12(s0)
	fdiv.s f3, f12, f14
	flw f12, 16(s0)
	fadd.s f10, f3, f13
	flt.s a2, f10, f12
	flt.s a0, f11, f10
	or a1, a0, a2
	bne a1, zero, label113
	fmv.s f11, f10
	flw f10, 20(s0)
	flw f4, 8(s0)
	flt.s a0, f10, f11
	fsub.s f12, f11, f4
	fmv.s f10, f12
	bne a0, zero, label415
	fmv.s f10, f11
	flw f13, 24(s0)
	fadd.s f12, f11, f4
	flt.s a0, f11, f13
	fmv.s f11, f12
	bne a0, zero, label417
	j label444
.p2align 2
label123:
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	fmv.w.x f12, s1
	slti a1, a0, 10
	flt.s a4, f11, f12
	and a2, a1, a4
	bne a2, zero, label122
	fmv.w.x f14, zero
	addiw a3, a3, 1
	li a0, 24
	fadd.s f1, f1, f14
	blt a3, a0, label109
	j label126
.p2align 2
label201:
	flw f10, 20(s0)
	flw f11, 8(s0)
	flt.s a0, f10, f3
	fsub.s f12, f3, f11
	fmv.s f10, f12
	bne a0, zero, label419
	fmv.s f10, f3
	flw f14, 24(s0)
	fadd.s f13, f3, f11
	flt.s a0, f3, f14
	fmv.s f12, f13
	bne a0, zero, label421
	j label445
.p2align 2
label234:
	fmv.w.x f14, zero
	addiw a3, a3, 1
	li a0, 24
	fadd.s f1, f1, f14
	blt a3, a0, label109
	j label126
label128:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s8, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	flw f8, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 104
	ret
