.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	981668463
	.4byte	1076754516
	.4byte	841731191
.text
.p2align 2
my_sqrt:
	addi sp, sp, -8
	lui a0, 273536
	sd ra, 0(sp)
	fmv.w.x f11, a0
	flt.s a1, f11, f10
	beq a1, zero, label7
	fmv.w.x f12, a0
	fdiv.s f11, f10, f12
	flt.s a1, f12, f11
	beq a1, zero, label4
	fdiv.s f10, f11, f12
	jal my_sqrt
	lui a0, 266752
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmul.s f10, f12, f11
	j label5
label7:
	fadd.s f11, f10, f10
	lui a0, 264192
	lui a1, 253952
	fmv.w.x f13, a0
	fmv.w.x f15, a1
	lui a0, 258048
	fadd.s f14, f10, f13
	fmul.s f13, f10, f15
	fdiv.s f12, f11, f14
	fmv.w.x f11, a0
	fadd.s f15, f13, f11
	fadd.s f14, f15, f12
	fdiv.s f0, f10, f14
	fadd.s f13, f14, f0
	fmul.s f12, f13, f11
	fdiv.s f15, f10, f12
	fadd.s f14, f12, f15
	fmul.s f13, f14, f11
	fdiv.s f0, f10, f13
	fadd.s f15, f13, f0
	fmul.s f12, f15, f11
	fdiv.s f14, f10, f12
	fadd.s f0, f12, f14
	fmul.s f13, f0, f11
	fdiv.s f15, f10, f13
	fadd.s f14, f13, f15
	fmul.s f12, f14, f11
	fdiv.s f0, f10, f12
	fadd.s f13, f12, f0
	fmul.s f14, f13, f11
	fdiv.s f15, f10, f14
	fadd.s f12, f14, f15
	fmul.s f13, f12, f11
	fdiv.s f0, f10, f13
	fadd.s f15, f13, f0
	fmul.s f12, f15, f11
	fdiv.s f1, f10, f12
	fadd.s f14, f12, f1
	fmul.s f13, f14, f11
	fdiv.s f15, f10, f13
	fadd.s f12, f13, f15
	fmul.s f10, f12, f11
label5:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label4:
	fadd.s f13, f11, f11
	lui a0, 264192
	lui a1, 258048
	fmv.w.x f14, a0
	lui a0, 253952
	fadd.s f10, f11, f14
	fmv.w.x f14, a0
	lui a0, 266752
	fdiv.s f12, f13, f10
	fmv.w.x f10, a1
	fmul.s f13, f11, f14
	fadd.s f1, f13, f10
	fadd.s f14, f1, f12
	fdiv.s f15, f11, f14
	fadd.s f0, f14, f15
	fmul.s f13, f0, f10
	fdiv.s f1, f11, f13
	fadd.s f15, f13, f1
	fmul.s f12, f15, f10
	fdiv.s f14, f11, f12
	fadd.s f1, f12, f14
	fmul.s f13, f1, f10
	fdiv.s f0, f11, f13
	fadd.s f15, f13, f0
	fmul.s f12, f15, f10
	fdiv.s f14, f11, f12
	fadd.s f0, f12, f14
	fmul.s f13, f0, f10
	fdiv.s f15, f11, f13
	fadd.s f14, f13, f15
	fmul.s f12, f14, f10
	fdiv.s f0, f11, f12
	fadd.s f15, f12, f0
	fmul.s f13, f15, f10
	fdiv.s f1, f11, f13
	fadd.s f14, f13, f1
	fmul.s f12, f14, f10
	fdiv.s f15, f11, f12
	fadd.s f0, f12, f15
	fmul.s f13, f0, f10
	fdiv.s f14, f11, f13
	fmv.w.x f11, a0
	fadd.s f15, f13, f14
	fmul.s f12, f15, f10
	fmul.s f10, f12, f11
	j label5
.p2align 2
asr5:
	# stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[96]
	addi sp, sp, -112
	fsub.s f15, f11, f10
	sd ra, 0(sp)
	sd s4, 8(sp)
	lui s4, 268032
	fsw f19, 16(sp)
	sd s3, 24(sp)
	lui s3, 265216
	fsw f23, 32(sp)
	sd s2, 40(sp)
	lui s2, 264192
	fsw f20, 48(sp)
	sd s1, 56(sp)
	lui s1, 260096
	fsw f22, 64(sp)
	fsw f9, 68(sp)
	fsw f21, 72(sp)
	fsw f8, 76(sp)
	sd s0, 80(sp)
	lui s0, 258048
	fsw f18, 88(sp)
	fmv.w.x f14, s0
	fmv.s f18, f10
	fsw f26, 92(sp)
	fmul.s f0, f15, f14
	fsw f25, 96(sp)
	fmv.w.x f15, s1
	fsw f24, 100(sp)
	fdiv.s f21, f15, f11
	fsw f27, 104(sp)
	fsw f11, 108(sp)
	fadd.s f8, f10, f0
	fmv.w.x f0, s2
	fsub.s f10, f11, f8
	fmul.s f1, f10, f14
	fadd.s f9, f8, f1
	fdiv.s f23, f15, f8
	fdiv.s f20, f15, f9
	fmul.s f2, f20, f0
	fadd.s f1, f23, f2
	fsub.s f2, f8, f18
	fadd.s f4, f1, f21
	fmul.s f11, f2, f14
	fmv.w.x f1, s3
	fmul.s f3, f4, f10
	fadd.s f19, f18, f11
	fdiv.s f11, f15, f18
	fdiv.s f10, f15, f19
	fdiv.s f22, f3, f1
	fmul.s f14, f10, f0
	fadd.s f3, f11, f14
	fadd.s f0, f3, f23
	fmul.s f4, f0, f2
	fdiv.s f14, f4, f1
	fadd.s f15, f14, f22
	fsub.s f0, f15, f13
	fmv.w.x f13, s4
	fmul.s f2, f12, f13
	fabs.s f1, f0
	fle.s a0, f1, f2
	beq a0, zero, label124
	fmv.w.x f12, s4
	fdiv.s f11, f0, f12
	fadd.s f10, f15, f11
label121:
	ld ra, 0(sp)
	ld s4, 8(sp)
	flw f19, 16(sp)
	ld s3, 24(sp)
	flw f23, 32(sp)
	ld s2, 40(sp)
	flw f20, 48(sp)
	ld s1, 56(sp)
	flw f22, 64(sp)
	flw f9, 68(sp)
	flw f21, 72(sp)
	flw f8, 76(sp)
	ld s0, 80(sp)
	flw f18, 88(sp)
	flw f26, 92(sp)
	flw f25, 96(sp)
	flw f24, 100(sp)
	flw f27, 104(sp)
	addi sp, sp, 112
	ret
label124:
	fsub.s f2, f8, f19
	fmv.w.x f15, s0
	fmv.w.x f0, s1
	fmul.s f1, f2, f15
	fadd.s f13, f19, f1
	fmv.w.x f1, s2
	fdiv.s f3, f0, f13
	fmul.s f6, f3, f1
	fmv.w.x f3, s3
	fadd.s f13, f10, f6
	fadd.s f5, f13, f23
	fmul.s f4, f5, f2
	fsub.s f2, f19, f18
	fdiv.s f13, f4, f3
	fmul.s f5, f2, f15
	fadd.s f4, f18, f5
	fdiv.s f6, f0, f4
	fmul.s f7, f6, f1
	fmul.s f1, f12, f15
	fadd.s f5, f11, f7
	fmul.s f24, f1, f15
	fadd.s f4, f5, f10
	fmul.s f0, f4, f2
	fdiv.s f26, f0, f3
	fadd.s f10, f26, f13
	fsub.s f11, f10, f14
	fmv.w.x f14, s4
	fmul.s f25, f1, f14
	fabs.s f0, f11
	fle.s a0, f0, f25
	beq a0, zero, label130
	fmv.w.x f12, s4
	fdiv.s f13, f11, f12
	fadd.s f18, f10, f13
label126:
	fsub.s f11, f9, f8
	fmv.w.x f10, s0
	fmv.w.x f12, s1
	fmul.s f14, f11, f10
	fadd.s f15, f8, f14
	fmv.w.x f14, s2
	fdiv.s f13, f12, f15
	fmv.w.x f15, s3
	fmul.s f3, f13, f14
	fadd.s f2, f23, f3
	fadd.s f0, f2, f20
	fmul.s f1, f0, f11
	flw f11, 108(sp)
	fsub.s f0, f11, f9
	fdiv.s f13, f1, f15
	fmul.s f4, f0, f10
	fadd.s f3, f9, f4
	fdiv.s f1, f12, f3
	fmul.s f2, f1, f14
	fadd.s f10, f20, f2
	fadd.s f11, f10, f21
	fmul.s f12, f11, f0
	fdiv.s f19, f12, f15
	fadd.s f10, f13, f19
	fsub.s f11, f10, f22
	fabs.s f12, f11
	fle.s a0, f12, f25
	beq a0, zero, label129
	fmv.w.x f13, s4
	fdiv.s f14, f11, f13
	fadd.s f12, f10, f14
	fadd.s f10, f18, f12
	j label121
label130:
	fmv.s f10, f19
	li a0, 1
	fmv.s f11, f8
	fmv.s f12, f24
	jal asr5
	li a0, 1
	fmv.s f27, f10
	fmv.s f10, f18
	fmv.s f11, f19
	fmv.s f12, f24
	fmv.s f13, f26
	jal asr5
	fadd.s f18, f10, f27
	j label126
label129:
	fmv.s f10, f8
	li a0, 1
	fmv.s f11, f9
	fmv.s f12, f24
	jal asr5
	li a0, 1
	fmv.s f8, f10
	flw f11, 108(sp)
	fmv.s f10, f9
	fmv.s f12, f24
	fmv.s f13, f19
	jal asr5
	fadd.s f11, f8, f10
	fadd.s f10, f18, f11
	j label121
.p2align 2
eee:
	addi sp, sp, -8
pcrel512:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel512)
	flw f11, 0(a0)
	flt.s a1, f11, f10
	bne a1, zero, label292
	fmul.s f12, f10, f10
	lui a0, 258048
	lui a1, 260096
	fmv.w.x f13, a0
	fmv.w.x f14, a1
	li a0, 3
	fmul.s f11, f12, f13
	fadd.s f13, f10, f14
	fadd.s f12, f13, f11
	fmv.s f11, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label475
	fmv.s f13, f14
label475:
	mv a1, a0
	bge a0, zero, label477
	addiw a1, a0, 1
label477:
	sraiw a0, a1, 1
	fmul.s f11, f11, f11
	beq a0, zero, label418
.p2align 2
label419:
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label475
	fmv.s f13, f14
	mv a1, a0
	bge a0, zero, label477
	addiw a1, a0, 1
	fmul.s f11, f11, f11
	sraiw a0, a1, 1
	bne a0, zero, label419
label418:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 4
	fdiv.s f15, f13, f14
	fmv.w.x f14, a1
	fadd.s f11, f12, f15
	fmv.s f12, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label479
	fmv.s f13, f14
label479:
	mv a1, a0
	bge a0, zero, label481
	addiw a1, a0, 1
label481:
	sraiw a0, a1, 1
	fmul.s f12, f12, f12
	beq a0, zero, label433
.p2align 2
label434:
	fmv.s f14, f13
	fmul.s f15, f13, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label479
	fmv.s f13, f14
	mv a1, a0
	bge a0, zero, label481
	addiw a1, a0, 1
	fmul.s f12, f12, f12
	sraiw a0, a1, 1
	bne a0, zero, label434
label433:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f15, a0
	li a0, 5
	fdiv.s f14, f13, f15
	fmv.w.x f13, a1
	fadd.s f12, f11, f14
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f11, f14
	bne a1, zero, label483
	fmv.s f11, f13
label483:
	mv a1, a0
	bge a0, zero, label485
	addiw a1, a0, 1
label485:
	sraiw a0, a1, 1
	fmul.s f10, f10, f10
	beq a0, zero, label448
.p2align 2
label449:
	fmv.s f13, f11
	fmul.s f14, f11, f10
	andi a1, a0, 1
	fmv.s f11, f14
	bne a1, zero, label483
	fmv.s f11, f13
	mv a1, a0
	bge a0, zero, label485
	addiw a1, a0, 1
	fmul.s f10, f10, f10
	sraiw a0, a1, 1
	bne a0, zero, label449
label448:
	lui a0, 274176
	fmv.w.x f14, a0
	fdiv.s f13, f11, f14
	fadd.s f10, f12, f13
label326:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label292:
	lui a1, 258048
	flw f12, 0(a0)
	fmv.w.x f13, a1
	fmul.s f11, f10, f13
	flt.s a1, f12, f11
	beq a1, zero, label293
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f11, f12
	jal eee
	fmul.s f11, f10, f10
	fmul.s f10, f11, f11
	j label326
label293:
	fmul.s f12, f11, f11
	lui a0, 258048
	lui a1, 260096
	fmv.w.x f13, a0
	fmv.w.x f14, a1
	li a0, 3
	fmul.s f10, f12, f13
	fadd.s f12, f11, f14
	fadd.s f13, f12, f10
	fmv.s f10, f11
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f12, f15
	bne a1, zero, label463
	fmv.s f12, f14
label463:
	mv a1, a0
	bge a0, zero, label465
	addiw a1, a0, 1
label465:
	sraiw a0, a1, 1
	fmul.s f10, f10, f10
	beq a0, zero, label360
.p2align 2
label361:
	fmv.s f14, f12
	fmul.s f15, f12, f10
	andi a1, a0, 1
	fmv.s f12, f15
	bne a1, zero, label463
	fmv.s f12, f14
	mv a1, a0
	bge a0, zero, label465
	addiw a1, a0, 1
	fmul.s f10, f10, f10
	sraiw a0, a1, 1
	bne a0, zero, label361
label360:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 4
	fdiv.s f10, f12, f14
	fmv.w.x f14, a1
	fadd.s f12, f13, f10
	fmv.s f10, f11
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label467
	fmv.s f13, f14
label467:
	mv a1, a0
	bge a0, zero, label469
	addiw a1, a0, 1
label469:
	sraiw a0, a1, 1
	fmul.s f10, f10, f10
	beq a0, zero, label375
.p2align 2
label376:
	fmv.s f14, f13
	fmul.s f15, f13, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label467
	fmv.s f13, f14
	mv a1, a0
	bge a0, zero, label469
	addiw a1, a0, 1
	fmul.s f10, f10, f10
	sraiw a0, a1, 1
	bne a0, zero, label376
label375:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f15, a0
	li a0, 5
	fdiv.s f14, f13, f15
	fmv.w.x f13, a1
	fadd.s f10, f12, f14
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label471
	fmv.s f12, f13
label471:
	mv a1, a0
	bge a0, zero, label473
	addiw a1, a0, 1
label473:
	sraiw a0, a1, 1
	fmul.s f11, f11, f11
	beq a0, zero, label390
.p2align 2
label391:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label471
	fmv.s f12, f13
	mv a1, a0
	bge a0, zero, label473
	addiw a1, a0, 1
	fmul.s f11, f11, f11
	sraiw a0, a1, 1
	bne a0, zero, label391
label390:
	lui a0, 274176
	fmv.w.x f13, a0
	fdiv.s f14, f12, f13
	fadd.s f11, f10, f14
	fmul.s f10, f11, f11
	j label326
.p2align 2
my_exp:
	addi sp, sp, -8
	fmv.w.x f11, zero
	sd ra, 0(sp)
	flt.s a0, f10, f11
	bne a0, zero, label530
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fsub.s f10, f10, f11
	bge a0, zero, label525
	subw a0, zero, a0
	lui a3, 260096
pcrel612:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a3
	addi a1, a2, %pcrel_lo(pcrel612)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label594
	fmv.s f12, f13
label594:
	mv a1, a0
	bge a0, zero, label596
	addiw a1, a0, 1
label596:
	sraiw a0, a1, 1
	fmul.s f11, f11, f11
	beq a0, zero, label558
.p2align 2
label559:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label594
	fmv.s f12, f13
	mv a1, a0
	bge a0, zero, label596
	addiw a1, a0, 1
	fmul.s f11, f11, f11
	sraiw a0, a1, 1
	bne a0, zero, label559
label558:
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f0, f11, f12
label517:
	jal eee
	fmul.s f10, f0, f10
label514:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label525:
	beq a0, zero, label565
	lui a2, 260096
pcrel613:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a2
	addi a1, a3, %pcrel_lo(pcrel613)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label598
	fmv.s f12, f13
label598:
	mv a1, a0
	bge a0, zero, label600
	addiw a1, a0, 1
label600:
	sraiw a0, a1, 1
	fmul.s f11, f11, f11
	beq a0, zero, label581
.p2align 2
label582:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label598
	fmv.s f12, f13
	mv a1, a0
	bge a0, zero, label600
	addiw a1, a0, 1
	fmul.s f11, f11, f11
	sraiw a0, a1, 1
	bne a0, zero, label582
label581:
	fmv.s f0, f12
	j label517
label530:
	fneg.s f10, f10
	jal my_exp
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f10, f11, f10
	j label514
label565:
	lui a1, 260096
	fmv.w.x f0, a1
	j label517
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	fsw f8, 64(sp)
	fsw f18, 68(sp)
	fsw f9, 72(sp)
	jal getint
pcrel762:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	lui s3, 265216
	lui s1, 258048
	lui s2, 264192
	lui s0, 260096
	addi s4, a1, %pcrel_lo(pcrel762)
	beq a0, zero, label631
	mv s5, a0
	j label615
.p2align 2
label625:
	li a0, 45
	jal putch
.p2align 2
label624:
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label631
.p2align 2
label615:
	jal getfloat
	fabs.s f18, f10
	fmv.s f8, f10
	jal getfloat
	fmv.s f9, f10
	fmv.s f10, f18
	jal putfloat
	li a0, 32
	jal putch
	li a0, 2
	fmv.s f10, f8
	fmv.w.x f12, s0
	fmul.s f13, f12, f8
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label740
	fmv.s f11, f12
label740:
	mv a1, a0
	bge a0, zero, label742
	addiw a1, a0, 1
label742:
	sraiw a0, a1, 1
	fmul.s f10, f10, f10
	beq a0, zero, label621
.p2align 2
label649:
	fmv.s f12, f11
	fmul.s f13, f11, f10
	andi a1, a0, 1
	fmv.s f11, f13
	bne a1, zero, label740
	fmv.s f11, f12
	mv a1, a0
	bge a0, zero, label742
	addiw a1, a0, 1
	fmul.s f10, f10, f10
	sraiw a0, a1, 1
	bne a0, zero, label649
.p2align 2
label621:
	fmv.s f10, f11
	jal putfloat
	fmv.s f10, f8
	jal my_sqrt
	li a0, 32
	fmv.s f18, f10
	jal putch
	fmv.s f10, f18
	jal putfloat
	fmv.s f10, f8
	jal my_exp
	li a0, 32
	fmv.s f18, f10
	jal putch
	fmv.s f10, f18
	jal putfloat
	li a0, 32
	jal putch
	fmv.w.x f11, s0
	fmv.w.x f15, s1
	fdiv.s f1, f11, f8
	fsub.s f10, f8, f11
	fmul.s f14, f10, f15
	fmv.w.x f15, s2
	fadd.s f13, f14, f11
	fdiv.s f12, f11, f13
	fmul.s f0, f12, f15
	fadd.s f13, f0, f11
	fmv.w.x f11, s3
	fadd.s f14, f13, f1
	fmul.s f12, f14, f10
	fmv.w.x f10, zero
	flt.s s6, f10, f8
	fdiv.s f18, f12, f11
	bne s6, zero, label629
	li a0, 45
	jal putch
.p2align 2
label622:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a1, f10, f9
	and a0, s6, a1
	beq a0, zero, label627
	fmv.w.x f28, s0
	flw f29, 8(s4)
	li a0, 1
	fmv.w.x f12, s1
	fmv.w.x f15, s2
	fmv.w.x f0, s3
	fsub.s f10, f9, f28
	fmul.s f13, f10, f12
	fadd.s f14, f13, f28
	fdiv.s f11, f28, f14
	fdiv.s f14, f28, f9
	fmul.s f13, f11, f15
	fadd.s f12, f13, f28
	fadd.s f15, f12, f14
	fmul.s f11, f15, f10
	fmv.s f10, f28
	fdiv.s f13, f11, f0
	fmv.s f11, f9
	fmv.s f12, f29
	jal asr5
	li a0, 1
	fmv.s f30, f10
	fmv.s f10, f28
	fmv.s f11, f8
	fmv.s f12, f29
	fmv.s f13, f18
	jal asr5
	fdiv.s f10, f30, f10
	jal putfloat
	j label623
.p2align 2
label627:
	li a0, 45
	jal putch
.p2align 2
label623:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	beq a0, zero, label625
	fmv.w.x f10, s0
	flw f12, 8(s4)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	fmul.s f10, f9, f10
	jal my_exp
	jal putfloat
	j label624
label631:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	flw f8, 64(sp)
	flw f18, 68(sp)
	flw f9, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label629:
	fmv.w.x f10, s0
	flw f12, 8(s4)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	jal putfloat
	j label622
