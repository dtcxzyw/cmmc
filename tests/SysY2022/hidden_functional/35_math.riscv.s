.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
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
	fdiv.s f10, f10, f11
	flt.s a1, f11, f10
	beq a1, zero, label4
	fdiv.s f10, f10, f11
	jal my_sqrt
	lui a0, 266752
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmul.s f10, f12, f11
label5:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label7:
	fadd.s f11, f10, f10
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 253952
	fadd.s f14, f10, f13
	fdiv.s f12, f11, f14
	fmv.w.x f11, a0
	lui a0, 258048
	fmul.s f13, f10, f11
	fmv.w.x f11, a0
	fadd.s f13, f13, f11
	fadd.s f12, f13, f12
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f10, f13, f11
	j label5
label4:
	fadd.s f11, f10, f10
	lui a0, 264192
	fmv.w.x f14, a0
	lui a0, 253952
	fadd.s f13, f10, f14
	fdiv.s f12, f11, f13
	fmv.w.x f11, a0
	lui a0, 258048
	fmul.s f13, f10, f11
	fmv.w.x f11, a0
	lui a0, 266752
	fadd.s f14, f13, f11
	fadd.s f12, f14, f12
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f12, f14, f11
	fdiv.s f13, f10, f12
	fadd.s f15, f12, f13
	fmul.s f12, f15, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f13, f12, f14
	fmul.s f12, f13, f11
	fdiv.s f14, f10, f12
	fadd.s f15, f12, f14
	fmul.s f12, f15, f11
	fdiv.s f13, f10, f12
	fadd.s f14, f12, f13
	fmul.s f10, f14, f11
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	j label5
.p2align 2
asr5:
	addi sp, sp, -112
	fsub.s f14, f11, f10
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
	fmv.w.x f15, s2
	sd s1, 56(sp)
	lui s1, 260096
	fsw f22, 64(sp)
	fsw f9, 68(sp)
	fsw f21, 72(sp)
	fsw f8, 76(sp)
	sd s0, 80(sp)
	lui s0, 258048
	fsw f18, 88(sp)
	fmv.s f18, f10
	fsw f26, 92(sp)
	fmv.w.x f10, s0
	fsw f25, 96(sp)
	fmul.s f14, f14, f10
	fsw f24, 100(sp)
	fsw f27, 104(sp)
	fsw f11, 108(sp)
	fadd.s f8, f18, f14
	fsub.s f0, f11, f8
	fmul.s f14, f0, f10
	fadd.s f9, f8, f14
	fmv.w.x f14, s1
	fdiv.s f21, f14, f11
	fdiv.s f23, f14, f8
	fdiv.s f20, f14, f9
	fmul.s f2, f20, f15
	fadd.s f1, f23, f2
	fadd.s f2, f1, f21
	fsub.s f1, f8, f18
	fmul.s f11, f2, f0
	fmv.w.x f0, s3
	fdiv.s f22, f11, f0
	fmul.s f11, f1, f10
	fadd.s f19, f18, f11
	fdiv.s f11, f14, f18
	fdiv.s f10, f14, f19
	fmul.s f15, f10, f15
	fadd.s f14, f11, f15
	fadd.s f15, f14, f23
	fmul.s f1, f15, f1
	fdiv.s f14, f1, f0
	fmv.w.x f1, s4
	fmul.s f2, f12, f1
	fadd.s f15, f14, f22
	fsub.s f13, f15, f13
	fabs.s f0, f13
	fle.s a0, f0, f2
	beq a0, zero, label124
	fmv.w.x f12, s4
	fdiv.s f11, f13, f12
	fadd.s f10, f15, f11
label122:
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
	fsub.s f13, f8, f19
	fmv.w.x f15, s0
	fmv.w.x f0, s1
	fmul.s f12, f12, f15
	fmul.s f2, f13, f15
	fmul.s f24, f12, f15
	fadd.s f1, f19, f2
	fdiv.s f2, f0, f1
	fmv.w.x f1, s2
	fmul.s f3, f2, f1
	fadd.s f2, f10, f3
	fadd.s f4, f2, f23
	fmv.w.x f2, s3
	fmul.s f3, f4, f13
	fdiv.s f13, f3, f2
	fsub.s f3, f19, f18
	fmul.s f5, f3, f15
	fadd.s f4, f18, f5
	fdiv.s f0, f0, f4
	fmul.s f1, f0, f1
	fadd.s f11, f11, f1
	fadd.s f10, f11, f10
	fmul.s f0, f10, f3
	fdiv.s f26, f0, f2
	fmv.w.x f0, s4
	fmul.s f25, f12, f0
	fadd.s f10, f26, f13
	fsub.s f11, f10, f14
	fabs.s f14, f11
	fle.s a0, f14, f25
	bne a0, zero, label129
	j label130
label125:
	fsub.s f11, f9, f8
	fmv.w.x f10, s0
	fmv.w.x f12, s1
	fmul.s f13, f11, f10
	fadd.s f14, f8, f13
	fdiv.s f13, f12, f14
	fmv.w.x f14, s2
	fmul.s f0, f13, f14
	fadd.s f15, f23, f0
	fadd.s f13, f15, f20
	fmv.w.x f15, s3
	fmul.s f11, f13, f11
	fdiv.s f13, f11, f15
	flw f11, 108(sp)
	fsub.s f0, f11, f9
	fmul.s f10, f0, f10
	fadd.s f2, f9, f10
	fdiv.s f1, f12, f2
	fmul.s f11, f1, f14
	fadd.s f12, f20, f11
	fadd.s f10, f12, f21
	fmul.s f11, f10, f0
	fdiv.s f19, f11, f15
	fadd.s f10, f13, f19
	fsub.s f11, f10, f22
	fabs.s f12, f11
	fle.s a0, f12, f25
	beq a0, zero, label128
	fmv.w.x f13, s4
	fdiv.s f11, f11, f13
	fadd.s f12, f10, f11
	fadd.s f10, f18, f12
	j label122
label129:
	fmv.w.x f12, s4
	fdiv.s f11, f11, f12
	fadd.s f18, f10, f11
	j label125
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
	j label125
label128:
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
	j label122
.p2align 2
eee:
	addi sp, sp, -8
pcrel496:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel496)
	flw f11, 0(a0)
	flt.s a1, f11, f10
	bne a1, zero, label292
	fmul.s f11, f10, f10
	lui a0, 258048
	fmv.w.x f12, a0
	lui a0, 260096
	fmv.w.x f14, a0
	li a0, 3
	fmul.s f11, f11, f12
	fadd.s f12, f10, f14
	fadd.s f11, f12, f11
	fmv.s f12, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label475
	fmv.s f13, f14
.p2align 2
label475:
	srliw a1, a0, 31
	fmul.s f12, f12, f12
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label419
label418:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f12, a0
	fmv.w.x f14, a1
	li a0, 4
	fdiv.s f13, f13, f12
	fmv.s f12, f10
	fadd.s f11, f11, f13
	j label316
.p2align 2
label419:
	fmv.s f14, f13
	fmul.s f15, f13, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label475
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f12, f12, f12
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label419
	j label418
label316:
	fmul.s f15, f14, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label477
	fmv.s f13, f14
.p2align 2
label477:
	srliw a2, a0, 31
	fmul.s f12, f12, f12
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label434
label433:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 5
	fdiv.s f12, f13, f14
	fmv.w.x f13, a1
	fadd.s f11, f11, f12
	j label321
.p2align 2
label434:
	fmv.s f14, f13
	fmul.s f15, f13, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label477
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f12, f12, f12
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label434
	j label433
label321:
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label479
	fmv.s f12, f13
.p2align 2
label479:
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label449
label448:
	lui a0, 274176
	fmv.w.x f13, a0
	fdiv.s f12, f12, f13
	fadd.s f10, f11, f12
	j label326
.p2align 2
label449:
	fmv.s f13, f12
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label479
	fmv.s f12, f13
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label449
	j label448
label326:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label292:
	lui a1, 258048
	flw f11, 0(a0)
	fmv.w.x f12, a1
	fmul.s f10, f10, f12
	flt.s a0, f11, f10
	beq a0, zero, label293
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	jal eee
	fmul.s f11, f10, f10
	fmul.s f10, f11, f11
	j label326
label293:
	fmul.s f11, f10, f10
	lui a0, 258048
	fmv.w.x f12, a0
	lui a0, 260096
	fmv.w.x f14, a0
	li a0, 3
	fadd.s f13, f10, f14
	fmul.s f11, f11, f12
	fadd.s f12, f13, f11
	fmv.s f11, f10
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label469
	fmv.s f13, f14
.p2align 2
label469:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label361
label360:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 4
	fdiv.s f11, f13, f14
	fmv.w.x f14, a1
	fadd.s f12, f12, f11
	fmv.s f11, f10
	j label299
.p2align 2
label361:
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label469
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label361
	j label360
label299:
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label471
	fmv.s f13, f14
.p2align 2
label471:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label376
label375:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 5
	fdiv.s f13, f13, f14
	fadd.s f11, f12, f13
	fmv.w.x f13, a1
	j label304
.p2align 2
label376:
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label471
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label376
	j label375
label304:
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label473
	fmv.s f12, f13
.p2align 2
label473:
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label391
label390:
	lui a0, 274176
	fmv.w.x f10, a0
	fdiv.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f10, f11, f11
	j label326
.p2align 2
label391:
	fmv.s f13, f12
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label473
	fmv.s f12, f13
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label391
	j label390
.p2align 2
my_exp:
	addi sp, sp, -8
	fmv.w.x f11, zero
	sd ra, 0(sp)
	flt.s a0, f10, f11
	bne a0, zero, label512
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fsub.s f10, f10, f11
	blt a0, zero, label501
	j label507
label499:
	jal eee
	fmul.s f10, f0, f10
	j label513
label501:
	subw a0, zero, a0
	lui a1, 260096
pcrel591:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a1
	addi a1, a2, %pcrel_lo(pcrel591)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label580
	fmv.s f12, f13
.p2align 2
label580:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label543
label542:
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f0, f11, f12
	j label499
.p2align 2
label543:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label580
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label543
	j label542
label507:
	beq a0, zero, label549
	lui a1, 260096
pcrel592:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a1
	addi a1, a2, %pcrel_lo(pcrel592)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label582
	fmv.s f12, f13
.p2align 2
label582:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label566
label565:
	fmv.s f0, f12
	j label499
.p2align 2
label566:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label582
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label566
	j label565
label512:
	fneg.s f10, f10
	jal my_exp
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f10, f11, f10
label513:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label549:
	lui a0, 260096
	fmv.w.x f0, a0
	j label499
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	fsw f8, 64(sp)
	fsw f18, 68(sp)
	fsw f9, 72(sp)
	jal getint
	lui s3, 264192
	lui s2, 258048
	lui s4, 265216
	lui s0, 260096
	mv s1, a0
pcrel740:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s5, a0, %pcrel_lo(pcrel740)
	bne s1, zero, label597
label596:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	flw f8, 64(sp)
	flw f18, 68(sp)
	flw f9, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label597:
	jal getfloat
	fabs.s f18, f10
	fmv.s f8, f10
	jal getfloat
	fmv.s f9, f10
	fmv.s f10, f18
	jal putfloat
	li a0, 32
	jal putch
	fmv.s f11, f8
	li a0, 2
	fmv.w.x f12, s0
	fmul.s f13, f12, f8
	andi a1, a0, 1
	fmv.s f10, f13
	bne a1, zero, label721
	j label720
.p2align 2
label606:
	li a0, 45
	jal putch
.p2align 2
label608:
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label597
	j label596
.p2align 2
label720:
	fmv.s f10, f12
.p2align 2
label721:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label602
.p2align 2
label629:
	fmv.s f12, f10
	fmul.s f13, f10, f11
	andi a1, a0, 1
	fmv.s f10, f13
	bne a1, zero, label721
	fmv.s f10, f12
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label629
.p2align 2
label602:
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
	fmv.w.x f12, s2
	fsub.s f10, f8, f11
	fmul.s f13, f10, f12
	fadd.s f14, f13, f11
	fmv.w.x f13, s3
	fdiv.s f12, f11, f14
	fmul.s f14, f12, f13
	fdiv.s f13, f11, f8
	fadd.s f12, f14, f11
	fadd.s f11, f12, f13
	fmv.w.x f12, s4
	fmul.s f10, f11, f10
	fdiv.s f18, f10, f12
	fmv.w.x f10, zero
	flt.s s6, f10, f8
	bne s6, zero, label611
	li a0, 45
	jal putch
.p2align 2
label604:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f9
	and a1, s6, a0
	bne a1, zero, label610
	j label609
.p2align 2
label611:
	fmv.w.x f10, s0
	flw f12, 8(s5)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	jal putfloat
	j label604
.p2align 2
label605:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	bne a0, zero, label607
	j label606
.p2align 2
label609:
	li a0, 45
	jal putch
	j label605
.p2align 2
label610:
	fmv.w.x f6, s0
	flw f7, 8(s5)
	li a0, 1
	fmv.w.x f11, s2
	fsub.s f10, f9, f6
	fmul.s f13, f10, f11
	fadd.s f12, f13, f6
	fmv.w.x f13, s3
	fdiv.s f11, f6, f12
	fdiv.s f12, f6, f9
	fmul.s f14, f11, f13
	fadd.s f11, f14, f6
	fadd.s f13, f11, f12
	fmv.w.x f11, s4
	fmul.s f10, f13, f10
	fdiv.s f13, f10, f11
	fmv.s f10, f6
	fmv.s f11, f9
	fmv.s f12, f7
	jal asr5
	li a0, 1
	fmv.s f28, f10
	fmv.s f10, f6
	fmv.s f11, f8
	fmv.s f12, f7
	fmv.s f13, f18
	jal asr5
	fdiv.s f10, f28, f10
	jal putfloat
	j label605
.p2align 2
label607:
	fmv.w.x f10, s0
	flw f12, 8(s5)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	fmul.s f10, f9, f10
	jal my_exp
	jal putfloat
	j label608
