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
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel53)
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
	fmv.w.x f10, a0
	lui a0, 263168
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
	j label2
label7:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f13, f10, f8
	fmul.s f14, f10, f11
	fmul.s f15, f14, f10
	fmul.s f12, f15, f10
	fmv.w.x f10, a0
	lui a0, 263168
	fsub.s f11, f13, f12
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
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
	lui s2, 253952
	li s6, 24
	lui a0, 6
pcrel412:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	lui s1, 264192
	lui s3, 258048
	lui s5, 269312
	lui s4, 263168
	addiw s8, a0, -1243
	addi s0, a1, %pcrel_lo(pcrel412)
	sd zero, 104(sp)
	lui a1, 4878
	addiw s7, a1, -158
	li a1, 192
	mv a0, zero
	blt zero, a1, label59
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
	ld a0, 104(sp)
	mv s9, zero
	fcvt.s.w f10, a0
	lui a0, 275456
	fmv.w.x f11, a0
	fdiv.s f8, f10, f11
.p2align 2
label60:
	fcvt.s.w f10, s9
	lui a0, 275456
	fmv.w.x f1, zero
	mv a3, zero
	fmv.w.x f11, a0
	fdiv.s f0, f10, f11
.p2align 2
label63:
	mulw a1, s10, s7
	lui a5, 87961
	lui t0, 24414
	addw a0, a1, s8
	addiw a2, a5, -311
	mul a1, a0, a2
	srli a5, a1, 63
	srai a4, a1, 55
	addiw a1, t0, 263
	add a2, a5, a4
	mulw a4, a2, a1
	subw a5, a0, a4
	mv s10, a5
	bge a5, zero, label374
	addw s10, a5, a1
.p2align 2
label374:
	fcvt.s.w f11, s10
	flw f12, 4(s0)
	fcvt.s.w f14, a3
	fdiv.s f10, f11, f12
	flw f11, 8(s0)
	fadd.s f13, f14, f10
	fmv.w.x f14, s5
	fmul.s f12, f13, f11
	flw f13, 12(s0)
	fdiv.s f3, f12, f14
	flw f12, 16(s0)
	fadd.s f10, f3, f13
	flt.s a1, f10, f12
	flt.s a0, f11, f10
	or a2, a0, a1
	bne a2, zero, label81
	flw f11, 20(s0)
	flw f4, 8(s0)
	flt.s a0, f11, f10
	fsub.s f12, f10, f4
	fmv.s f11, f12
	bne a0, zero, label376
	fmv.s f11, f10
	j label376
.p2align 2
label76:
	fmv.w.x f12, s5
	lui a0, 276464
	li a2, 255
	fmv.w.x f11, a0
	fdiv.s f10, f1, f12
	fmul.s f12, f10, f11
	fcvt.w.s a1, f12, rtz
	min a0, a1, a2
	jal putint
	li a0, 32
	jal putch
	li a0, 192
	addiw s9, s9, 1
	blt s9, a0, label60
	li a0, 10
	jal putch
	li a1, 192
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	blt a0, a1, label59
	j label58
.p2align 2
label376:
	flw f12, 24(s0)
	fadd.s f13, f11, f4
	flt.s a0, f11, f12
	fmv.s f10, f13
	bne a0, zero, label378
.p2align 2
label377:
	fmv.s f10, f11
.p2align 2
label378:
	jal my_sin_impl
	flw f11, 16(s0)
	flt.s a0, f4, f3
	fmv.s f2, f10
	flt.s a1, f3, f11
	or a2, a0, a1
	bne a2, zero, label80
	flw f10, 20(s0)
	flw f11, 8(s0)
	flt.s a0, f10, f3
	fsub.s f12, f3, f11
	fmv.s f10, f12
	bne a0, zero, label380
	j label379
.p2align 2
label81:
	flw f11, 8(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f11
	flw f11, 20(s0)
	flw f4, 8(s0)
	fsub.s f10, f10, f13
	fsub.s f12, f10, f4
	flt.s a0, f11, f10
	fmv.s f11, f12
	bne a0, zero, label376
	fmv.s f11, f10
	flw f12, 24(s0)
	fadd.s f13, f10, f4
	flt.s a0, f10, f12
	fmv.s f10, f13
	bne a0, zero, label378
	j label377
.p2align 2
label380:
	flw f14, 24(s0)
	fadd.s f13, f10, f11
	flt.s a0, f10, f14
	fmv.s f12, f13
	bne a0, zero, label382
.p2align 2
label381:
	fmv.s f12, f10
.p2align 2
label382:
	fmv.s f10, f12
	jal my_sin_impl
	mv a0, zero
	fmv.w.x f11, zero
	li a1, 1
	lui a5, 262144
	fmv.w.x f12, a5
	flt.s a2, f11, f12
	and a4, a1, a2
	bne a4, zero, label78
	j label175
.p2align 2
label74:
	fadd.s f1, f1, f14
	addiw a3, a3, 1
	blt a3, s6, label63
	j label76
.p2align 2
label78:
	fmul.s f14, f2, f11
	flw f12, 28(s0)
	fmul.s f3, f10, f11
	fadd.s f13, f0, f14
	fadd.s f14, f8, f3
	fsub.s f15, f13, f12
	fmul.s f4, f15, f15
	fsub.s f15, f14, f12
	fmul.s f5, f15, f15
	fmv.w.x f15, s1
	fadd.s f3, f4, f5
	fmv.w.x f4, s2
	fadd.s f12, f3, f3
	fadd.s f6, f3, f15
	fmul.s f7, f3, f4
	fdiv.s f5, f12, f6
	fmv.w.x f12, s3
	fadd.s f28, f7, f12
	fadd.s f6, f28, f5
	fdiv.s f29, f3, f6
	fadd.s f7, f6, f29
	fmul.s f5, f7, f12
	fdiv.s f30, f3, f5
	fadd.s f28, f5, f30
	fmul.s f6, f28, f12
	fdiv.s f7, f3, f6
	fadd.s f29, f6, f7
	fmul.s f5, f29, f12
	fdiv.s f28, f3, f5
	fadd.s f30, f5, f28
	fmul.s f6, f30, f12
	fdiv.s f7, f3, f6
	fadd.s f29, f6, f7
	fmul.s f5, f29, f12
	fdiv.s f28, f3, f5
	fadd.s f6, f5, f28
	fmul.s f7, f6, f12
	fdiv.s f29, f3, f7
	fadd.s f5, f7, f29
	fmul.s f6, f5, f12
	fdiv.s f28, f3, f6
	fadd.s f7, f6, f28
	fmul.s f5, f7, f12
	fdiv.s f29, f3, f5
	fadd.s f30, f5, f29
	flw f29, 32(s0)
	fmul.s f6, f30, f12
	fdiv.s f28, f3, f6
	fadd.s f5, f6, f28
	fmul.s f7, f5, f12
	flw f5, 36(s0)
	fsub.s f28, f13, f5
	fsub.s f3, f7, f29
	fsub.s f7, f14, f5
	fmul.s f6, f28, f28
	fmul.s f29, f7, f7
	fadd.s f13, f6, f29
	fadd.s f5, f13, f13
	fmul.s f6, f13, f4
	fadd.s f7, f13, f15
	fadd.s f15, f6, f12
	fdiv.s f14, f5, f7
	fadd.s f5, f15, f14
	fdiv.s f4, f13, f5
	fadd.s f6, f5, f4
	fmul.s f15, f6, f12
	fdiv.s f7, f13, f15
	fadd.s f28, f15, f7
	fmul.s f14, f28, f12
	fdiv.s f5, f13, f14
	fadd.s f4, f14, f5
	fmul.s f15, f4, f12
	fdiv.s f6, f13, f15
	fadd.s f5, f15, f6
	fmul.s f14, f5, f12
	fdiv.s f7, f13, f14
	fadd.s f4, f14, f7
	fmul.s f15, f4, f12
	fdiv.s f28, f13, f15
	fadd.s f5, f15, f28
	fmul.s f14, f5, f12
	fdiv.s f6, f13, f14
	fadd.s f15, f14, f6
	fmul.s f4, f15, f12
	fdiv.s f5, f13, f4
	fadd.s f14, f4, f5
	fmul.s f15, f14, f12
	fdiv.s f7, f13, f15
	fadd.s f6, f15, f7
	fmul.s f14, f6, f12
	flw f6, 40(s0)
	fdiv.s f5, f13, f14
	fadd.s f4, f14, f5
	fmul.s f15, f4, f12
	fmv.s f12, f3
	fsub.s f13, f15, f6
	flt.s a1, f3, f13
	bne a1, zero, label384
	fmv.s f12, f13
.p2align 2
label384:
	flw f13, 0(s0)
	fmv.w.x f3, s4
	fmv.w.x f15, zero
	fmv.s f14, f3
	bne a1, zero, label386
	fmv.s f14, f15
.p2align 2
label386:
	flt.s a1, f12, f13
	bne a1, zero, label74
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	lui a5, 262144
	slti a1, a0, 10
	fmv.w.x f12, a5
	flt.s a2, f11, f12
	and a4, a1, a2
	bne a4, zero, label78
	j label402
.p2align 2
label80:
	flw f10, 8(s0)
	fdiv.s f13, f3, f10
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f11, a0
	fmul.s f12, f11, f10
	flw f10, 20(s0)
	flw f11, 8(s0)
	fsub.s f3, f3, f12
	fsub.s f12, f3, f11
	flt.s a0, f10, f3
	fmv.s f10, f12
	bne a0, zero, label380
	fmv.s f10, f3
	flw f14, 24(s0)
	fadd.s f13, f3, f11
	flt.s a0, f3, f14
	fmv.s f12, f13
	bne a0, zero, label382
	j label381
.p2align 2
label402:
	fmv.w.x f14, zero
	addiw a3, a3, 1
	fadd.s f1, f1, f14
	blt a3, s6, label63
	j label76
.p2align 2
label175:
	fmv.w.x f14, zero
	j label74
.p2align 2
label379:
	fmv.s f10, f3
	j label380
