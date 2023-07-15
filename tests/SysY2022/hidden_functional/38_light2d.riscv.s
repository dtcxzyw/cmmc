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
my_sin_impl:
	addi sp, sp, -16
	fabs.s f11, f10
pcrel58:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fsw f8, 8(sp)
	addi a0, a1, %pcrel_lo(pcrel58)
	sd ra, 0(sp)
	flw f12, 0(a0)
	fle.s a1, f11, f12
	beq a1, zero, label4
	j label2
label56:
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label4:
	lui a0, 263168
	fmv.w.x f12, a0
pcrel59:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f10, f10, f12
	addi a1, a0, %pcrel_lo(pcrel59)
	flw f12, 0(a1)
	fabs.s f11, f10
	fle.s a0, f11, f12
	beq a0, zero, label7
	j label56
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
.globl main
main:
	addi sp, sp, -40
	li a0, 80
	sd s2, 32(sp)
	sd s0, 24(sp)
	fsw f8, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
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
	mv s0, zero
	mv s2, zero
	li a0, 192
	bge zero, a0, label87
	j label89
label87:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	flw f8, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label89:
	fcvt.s.w f10, s0
	lui a0, 275456
	mv s1, zero
	fmv.w.x f11, a0
	fdiv.s f8, f10, f11
	fcvt.s.w f10, zero
	fmv.w.x f15, zero
	mv a2, zero
	fdiv.s f14, f10, f11
	j label68
label84:
	li a0, 10
	jal putch
	addiw s0, s0, 1
	li a0, 192
	bge s0, a0, label87
	j label89
label65:
	fcvt.s.w f10, s1
	lui a0, 275456
	fmv.w.x f15, zero
	mv a2, zero
	fmv.w.x f11, a0
	fdiv.s f14, f10, f11
label68:
	li a0, 19980130
	li a3, 23333
	li a4, 360287945
	mulw a1, s2, a0
	addw a0, a1, a3
	mul a1, a0, a4
	srli a5, a1, 63
	srai a3, a1, 55
	li a1, 100000007
	add a4, a5, a3
	mulw a3, a4, a1
	subw a0, a0, a3
	addw a1, a0, a1
	mv s2, a1
	blt a0, zero, label369
	mv s2, a0
label369:
	fcvt.s.w f10, s2
pcrel402:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f13, a2
	addi a0, a1, %pcrel_lo(pcrel402)
	lui a1, 269312
	flw f11, 4(a0)
	fdiv.s f10, f10, f11
	flw f11, 8(a0)
	fadd.s f12, f13, f10
	fmv.w.x f13, a1
	fmul.s f10, f12, f11
	flw f12, 12(a0)
	fdiv.s f1, f10, f13
	fadd.s f10, f1, f12
	flt.s a1, f11, f10
	flw f11, 16(a0)
	flt.s a3, f10, f11
	or a0, a1, a3
	beq a0, zero, label72
pcrel403:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel403)
	flw f11, 8(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel404:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a0, %pcrel_lo(pcrel404)
	flw f11, 20(a3)
	flw f2, 8(a3)
	flt.s a0, f11, f10
	fsub.s f12, f10, f2
	fmv.s f11, f12
	bne a0, zero, label371
	fmv.s f11, f10
	flw f10, 24(a3)
	fadd.s f12, f11, f2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label373
	j label397
label83:
	lui a0, 269312
	li a1, 255
	fmv.w.x f11, a0
	lui a0, 276464
	fdiv.s f10, f15, f11
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	fcvt.w.s a0, f10, rtz
	min a0, a0, a1
	jal putint
	li a0, 32
	jal putch
	li a0, 192
	addiw s1, s1, 1
	bge s1, a0, label84
	j label65
label72:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a0, %pcrel_lo(label72)
	flw f11, 20(a3)
	flw f2, 8(a3)
	flt.s a0, f11, f10
	fsub.s f12, f10, f2
	fmv.s f11, f12
	bne a0, zero, label371
	fmv.s f11, f10
label371:
	flw f10, 24(a3)
	fadd.s f12, f11, f2
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label373
label397:
	fmv.s f10, f11
label373:
	jal my_sin_impl
	flt.s a0, f2, f1
	fmv.s f0, f10
	flw f10, 16(a3)
	flt.s a1, f1, f10
	or a0, a0, a1
	beq a0, zero, label74
pcrel405:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel405)
	flw f10, 8(a0)
	fdiv.s f12, f1, f10
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f11, a0
	fmul.s f10, f11, f10
	fsub.s f1, f1, f10
pcrel406:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel406)
	flw f10, 20(a0)
	flw f11, 8(a0)
	flt.s a1, f10, f1
	fsub.s f12, f1, f11
	fmv.s f10, f12
	bne a1, zero, label375
	fmv.s f10, f1
	flw f13, 24(a0)
	fadd.s f12, f1, f11
	flt.s a0, f1, f13
	fmv.s f11, f12
	bne a0, zero, label377
label398:
	fmv.s f11, f10
	j label377
label74:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label74)
	flw f10, 20(a0)
	flw f11, 8(a0)
	flt.s a1, f10, f1
	fsub.s f12, f1, f11
	fmv.s f10, f12
	bne a1, zero, label375
	fmv.s f10, f1
label375:
	flw f13, 24(a0)
	fadd.s f12, f10, f11
	flt.s a0, f10, f13
	fmv.s f11, f12
	bne a0, zero, label377
	j label398
label377:
	fmv.s f10, f11
	jal my_sin_impl
	mv a0, zero
	fmv.w.x f11, zero
	li a1, 1
	lui a3, 262144
	fmv.w.x f12, a3
	flt.s a4, f11, f12
	and a1, a1, a4
	beq a1, zero, label182
	j label79
label182:
	fmv.w.x f1, zero
	fadd.s f15, f15, f1
	addiw a2, a2, 1
	li a0, 24
	bge a2, a0, label83
	j label68
label79:
	fmul.s f12, f0, f11
pcrel407:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	fmul.s f3, f10, f11
	addi a1, a3, %pcrel_lo(pcrel407)
	lui a3, 264192
	fadd.s f13, f14, f12
	flw f12, 28(a1)
	fsub.s f1, f13, f12
	fmul.s f2, f1, f1
	fadd.s f1, f8, f3
	fsub.s f12, f1, f12
	fmul.s f3, f12, f12
	fadd.s f4, f2, f3
	fmv.w.x f2, a3
	lui a3, 253952
	fadd.s f3, f4, f2
	fadd.s f12, f4, f4
	fdiv.s f5, f12, f3
	fmv.w.x f3, a3
	lui a3, 258048
	fmul.s f6, f4, f3
	fmv.w.x f12, a3
	fadd.s f7, f6, f12
	fadd.s f5, f7, f5
	fdiv.s f6, f4, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f28, f4, f5
	fadd.s f6, f5, f28
	fmul.s f5, f6, f12
	fdiv.s f7, f4, f5
	fadd.s f28, f5, f7
	fmul.s f5, f28, f12
	fdiv.s f6, f4, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f28, f4, f5
	fadd.s f6, f5, f28
	fmul.s f5, f6, f12
	fdiv.s f28, f4, f5
	fadd.s f7, f5, f28
	fmul.s f5, f7, f12
	fdiv.s f6, f4, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f6, f4, f5
	fadd.s f7, f5, f6
	fmul.s f5, f7, f12
	fdiv.s f28, f4, f5
	fadd.s f6, f5, f28
	fmul.s f5, f6, f12
	flw f6, 32(a1)
	fdiv.s f4, f4, f5
	fadd.s f7, f5, f4
	fmul.s f5, f7, f12
	fsub.s f4, f5, f6
	flw f5, 36(a1)
	fsub.s f1, f1, f5
	fsub.s f6, f13, f5
	fmul.s f13, f6, f6
	fmul.s f6, f1, f1
	fadd.s f13, f13, f6
	fadd.s f5, f13, f13
	fadd.s f6, f13, f2
	fmul.s f2, f13, f3
	fdiv.s f1, f5, f6
	fadd.s f3, f2, f12
	fadd.s f1, f3, f1
	fdiv.s f2, f13, f1
	fadd.s f3, f1, f2
	fmul.s f1, f3, f12
	fdiv.s f2, f13, f1
	fadd.s f3, f1, f2
	fmul.s f1, f3, f12
	fdiv.s f2, f13, f1
	fadd.s f5, f1, f2
	fmul.s f1, f5, f12
	fdiv.s f3, f13, f1
	fadd.s f2, f1, f3
	fmul.s f1, f2, f12
	fdiv.s f5, f13, f1
	fadd.s f3, f1, f5
	fmul.s f1, f3, f12
	fdiv.s f2, f13, f1
	fadd.s f3, f1, f2
	fmul.s f1, f3, f12
	fdiv.s f5, f13, f1
	fadd.s f2, f1, f5
	fmul.s f1, f2, f12
	fdiv.s f3, f13, f1
	fadd.s f2, f1, f3
	fmul.s f1, f2, f12
	fdiv.s f5, f13, f1
	fadd.s f3, f1, f5
	fmul.s f1, f3, f12
	fdiv.s f2, f13, f1
	fadd.s f13, f1, f2
	flw f1, 40(a1)
	fmul.s f12, f13, f12
	fsub.s f13, f12, f1
	fmv.s f12, f4
	flt.s a3, f4, f13
	bne a3, zero, label379
	fmv.s f12, f13
label379:
	flw f13, 0(a1)
	fmv.w.x f2, zero
	lui a1, 263168
	fmv.w.x f3, a1
	fmv.s f1, f3
	bne a3, zero, label381
	fmv.s f1, f2
label381:
	flt.s a1, f12, f13
	beq a1, zero, label80
	fadd.s f15, f15, f1
	addiw a2, a2, 1
	li a0, 24
	bge a2, a0, label83
	j label68
label80:
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	slti a1, a0, 10
	lui a3, 262144
	fmv.w.x f12, a3
	flt.s a4, f11, f12
	and a1, a1, a4
	beq a1, zero, label182
	j label79
