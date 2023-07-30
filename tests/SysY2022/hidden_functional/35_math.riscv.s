.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	981668463
	.4byte	1076754516
	.4byte	841731191
.text
my_sqrt:
.p2align 2
	addi sp, sp, -8
	lui a0, 273536
	sd ra, 0(sp)
	fmv.w.x f11, a0
	flt.s a1, f11, f10
	beq a1, zero, label7
	fdiv.s f10, f10, f11
	flt.s a0, f11, f10
	beq a0, zero, label4
	lui a0, 273536
	fmv.w.x f11, a0
	fdiv.s f10, f10, f11
	jal my_sqrt
	lui a0, 266752
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmul.s f10, f12, f11
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
asr5:
.p2align 2
	addi sp, sp, -64
	fsub.s f14, f11, f10
	lui a0, 258048
	fsw f18, 4(sp)
	fmv.s f18, f10
	fsw f8, 0(sp)
	fmv.w.x f10, a0
	fsw f21, 60(sp)
	lui a0, 260096
	fmul.s f14, f14, f10
	fsw f9, 56(sp)
	fsw f22, 52(sp)
	fsw f20, 48(sp)
	fsw f23, 44(sp)
	fsw f19, 40(sp)
	fadd.s f8, f18, f14
	fsw f26, 36(sp)
	fsw f25, 32(sp)
	fsw f24, 28(sp)
	fsw f27, 24(sp)
	sd ra, 16(sp)
	fsub.s f0, f11, f8
	fsw f11, 8(sp)
	fmul.s f14, f0, f10
	fadd.s f9, f8, f14
	fmv.w.x f14, a0
	lui a0, 264192
	fdiv.s f21, f14, f11
	fmv.w.x f15, a0
	lui a0, 265216
	fdiv.s f20, f14, f9
	fdiv.s f23, f14, f8
	fmul.s f1, f20, f15
	fadd.s f2, f23, f1
	fadd.s f1, f2, f21
	fmul.s f11, f1, f0
	fsub.s f1, f8, f18
	fmv.w.x f0, a0
	lui a0, 268032
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
	fmv.w.x f1, a0
	fmul.s f2, f12, f1
	fadd.s f15, f14, f22
	fsub.s f13, f15, f13
	fabs.s f0, f13
	fle.s a0, f0, f2
	bne a0, zero, label119
	fsub.s f13, f8, f19
	lui a0, 258048
	fmv.w.x f15, a0
	lui a0, 260096
	fmul.s f12, f12, f15
	fmul.s f0, f13, f15
	fmul.s f24, f12, f15
	fadd.s f1, f19, f0
	fmv.w.x f0, a0
	lui a0, 264192
	fdiv.s f2, f0, f1
	fmv.w.x f1, a0
	lui a0, 265216
	fmul.s f3, f2, f1
	fadd.s f4, f10, f3
	fsub.s f3, f19, f18
	fadd.s f2, f4, f23
	fmul.s f4, f3, f15
	fmul.s f13, f2, f13
	fadd.s f5, f18, f4
	fmv.w.x f2, a0
	lui a0, 268032
	fdiv.s f13, f13, f2
	fdiv.s f6, f0, f5
	fmul.s f1, f6, f1
	fadd.s f0, f11, f1
	fadd.s f10, f0, f10
	fmv.w.x f0, a0
	fmul.s f25, f12, f0
	fmul.s f11, f10, f3
	fdiv.s f26, f11, f2
	fadd.s f10, f26, f13
	fsub.s f11, f10, f14
	fabs.s f14, f11
	fle.s a0, f14, f25
	bne a0, zero, label123
	j label128
label124:
	fsub.s f11, f9, f8
	lui a0, 258048
	fmv.w.x f10, a0
	lui a0, 260096
	fmul.s f12, f11, f10
	fadd.s f13, f8, f12
	fmv.w.x f12, a0
	lui a0, 264192
	fmv.w.x f14, a0
	lui a0, 265216
	fdiv.s f13, f12, f13
	fmul.s f0, f13, f14
	fadd.s f15, f23, f0
	fadd.s f13, f15, f20
	fmv.w.x f15, a0
	fmul.s f11, f13, f11
	fdiv.s f13, f11, f15
	flw f11, 8(sp)
	fsub.s f0, f11, f9
	fmul.s f10, f0, f10
	fadd.s f11, f9, f10
	fdiv.s f12, f12, f11
	fmul.s f10, f12, f14
	fadd.s f11, f20, f10
	fadd.s f12, f11, f21
	fmul.s f14, f12, f0
	fdiv.s f19, f14, f15
	fadd.s f10, f13, f19
	fsub.s f11, f10, f22
	fabs.s f12, f11
	fle.s a0, f12, f25
	bne a0, zero, label126
	fmv.s f10, f8
	li a0, 1
	fmv.s f11, f9
	fmv.s f12, f24
	jal asr5
	li a0, 1
	fmv.s f8, f10
	flw f11, 8(sp)
	fmv.s f10, f9
	fmv.s f12, f24
	fmv.s f13, f19
	jal asr5
	fadd.s f11, f8, f10
	fadd.s f10, f18, f11
	j label120
label128:
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
	j label124
label119:
	lui a0, 268032
	fmv.w.x f11, a0
	fdiv.s f12, f13, f11
	fadd.s f10, f15, f12
label120:
	ld ra, 16(sp)
	flw f27, 24(sp)
	flw f24, 28(sp)
	flw f25, 32(sp)
	flw f26, 36(sp)
	flw f19, 40(sp)
	flw f23, 44(sp)
	flw f20, 48(sp)
	flw f22, 52(sp)
	flw f9, 56(sp)
	flw f21, 60(sp)
	flw f8, 0(sp)
	flw f18, 4(sp)
	addi sp, sp, 64
	ret
label126:
	lui a0, 268032
	fmv.w.x f12, a0
	fdiv.s f13, f11, f12
	fadd.s f11, f10, f13
	fadd.s f10, f18, f11
	j label120
label123:
	lui a0, 268032
	fmv.w.x f12, a0
	fdiv.s f11, f11, f12
	fadd.s f18, f10, f11
	j label124
eee:
.p2align 2
	addi sp, sp, -8
pcrel481:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel481)
	flw f11, 0(a0)
	flt.s a1, f11, f10
	bne a1, zero, label284
	j label302
label282:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label284:
	lui a0, 258048
	fmv.w.x f11, a0
pcrel482:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fmul.s f10, f10, f11
	addi a1, a0, %pcrel_lo(pcrel482)
	flw f11, 0(a1)
	flt.s a0, f11, f10
	bne a0, zero, label301
	fmul.s f11, f10, f10
	lui a0, 258048
	fmv.w.x f12, a0
	lui a0, 260096
	fmv.w.x f13, a0
	li a0, 3
	fmul.s f11, f11, f12
	fadd.s f12, f10, f13
	fadd.s f14, f12, f11
	fmv.s f11, f10
.p2align 2
label286:
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f12, f15
	bne a1, zero, label460
	fmv.s f12, f13
.p2align 2
label460:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label351
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f11, a0
	fmv.w.x f13, a1
	li a0, 4
	fdiv.s f12, f12, f11
	fmv.s f11, f10
	fadd.s f14, f14, f12
	fmul.s f15, f13, f10
	andi a1, a0, 1
	fmv.s f12, f15
	bne a1, zero, label462
label472:
	fmv.s f12, f13
	j label462
label351:
	fmv.s f13, f12
	j label286
.p2align 2
label462:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label366
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f15, a0
	li a0, 5
	fdiv.s f11, f12, f15
	fmv.w.x f12, a1
	fadd.s f13, f14, f11
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f11, f14
	bne a1, zero, label464
	j label473
label366:
	fmv.s f13, f12
	j label291
label301:
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	jal eee
	fmul.s f11, f10, f10
	fmul.s f10, f11, f11
	j label282
label302:
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
.p2align 2
label303:
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label466
	fmv.s f13, f14
.p2align 2
label466:
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label409
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f11, a0
	fmv.w.x f14, a1
	li a0, 4
	fdiv.s f13, f13, f11
	fmv.s f11, f10
	fadd.s f12, f12, f13
	fmul.s f15, f14, f10
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label468
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label424
	j label423
label409:
	fmv.s f14, f13
	j label303
.p2align 2
label423:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 5
	fdiv.s f13, f13, f14
	fadd.s f11, f12, f13
	fmv.w.x f13, a1
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label470
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label439
.p2align 2
label477:
	lui a0, 274176
	fmv.w.x f13, a0
	fdiv.s f12, f12, f13
	fadd.s f10, f11, f12
	j label282
.p2align 2
label470:
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label477
label439:
	fmv.s f13, f12
	j label313
.p2align 2
label308:
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label468
	fmv.s f13, f14
.p2align 2
label468:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	beq a0, zero, label423
label424:
	fmv.s f14, f13
	j label308
.p2align 2
label313:
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label470
	fmv.s f12, f13
	j label470
label473:
	fmv.s f11, f12
	j label464
.p2align 2
label296:
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f11, f14
	beq a1, zero, label473
.p2align 2
label464:
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label380
	fmv.s f12, f11
	j label296
.p2align 2
label291:
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f12, f15
	bne a1, zero, label462
	j label472
.p2align 2
label380:
	lui a0, 274176
	fmv.w.x f10, a0
	fdiv.s f12, f11, f10
	fadd.s f11, f13, f12
	fmul.s f10, f11, f11
	j label282
my_exp:
.p2align 2
	addi sp, sp, -8
	fmv.w.x f11, zero
	sd ra, 0(sp)
	flt.s a0, f10, f11
	bne a0, zero, label484
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fsub.s f10, f10, f11
	blt a0, zero, label517
	bne a0, zero, label541
	lui a0, 260096
	fmv.w.x f0, a0
	j label488
label541:
	lui a2, 260096
pcrel570:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a2
	addi a2, a1, %pcrel_lo(pcrel570)
	flw f11, 4(a2)
.p2align 2
label497:
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label568
	fmv.s f12, f13
.p2align 2
label568:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label557
	fmv.s f0, f12
	j label488
label557:
	fmv.s f13, f12
	j label497
label485:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label517:
	subw a0, zero, a0
	lui a2, 260096
pcrel571:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a2
	addi a2, a1, %pcrel_lo(pcrel571)
	flw f11, 4(a2)
	j label491
label488:
	jal eee
	fmul.s f10, f0, f10
	j label485
.p2align 2
label491:
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label566
	fmv.s f12, f13
.p2align 2
label566:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label534
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f0, f11, f12
	j label488
label534:
	fmv.s f13, f12
	j label491
label484:
	fneg.s f10, f10
	jal my_exp
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f10, f11, f10
	j label485
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	fsw f8, 24(sp)
	fsw f18, 20(sp)
	fsw f9, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	beq a0, zero, label575
.p2align 2
label576:
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
	lui a1, 260096
	fmv.w.x f12, a1
	fmul.s f13, f12, f8
	andi a1, a0, 1
	fmv.s f10, f13
	bne a1, zero, label690
	fmv.s f10, f12
.p2align 2
label690:
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label581
.p2align 2
label608:
	fmv.s f12, f10
	fmul.s f13, f10, f11
	andi a1, a0, 1
	fmv.s f10, f13
	bne a1, zero, label690
	fmv.s f10, f12
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label608
.p2align 2
label581:
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
	lui a1, 260096
	lui a0, 258048
	fmv.w.x f11, a1
	fmv.w.x f12, a0
	fsub.s f10, f8, f11
	lui a0, 264192
	fmul.s f13, f10, f12
	fadd.s f14, f13, f11
	fmv.w.x f13, a0
	lui a0, 265216
	fdiv.s f12, f11, f14
	fmul.s f14, f12, f13
	fdiv.s f13, f11, f8
	fadd.s f12, f14, f11
	fadd.s f11, f12, f13
	fmul.s f10, f11, f10
	fmv.w.x f11, a0
	fdiv.s f18, f10, f11
	fmv.w.x f10, zero
	flt.s s1, f10, f8
	bne s1, zero, label589
	li a0, 45
	jal putch
	j label582
label575:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	flw f9, 16(sp)
	flw f18, 20(sp)
	flw f8, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label584:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	bne a0, zero, label585
	li a0, 45
	jal putch
.p2align 2
label587:
	li a0, 10
	jal putch
	addiw s0, s0, -1
	bne s0, zero, label576
	j label575
.p2align 2
label588:
	lui a0, 260096
	fmv.w.x f7, a0
	lui a0, 258048
	fsub.s f10, f9, f7
	fmv.w.x f11, a0
	lui a0, 264192
	fmul.s f13, f10, f11
	fadd.s f12, f13, f7
	fdiv.s f11, f7, f12
	fmv.w.x f12, a0
	lui a0, 265216
	fmul.s f13, f11, f12
	fdiv.s f12, f7, f9
	fadd.s f11, f13, f7
	fadd.s f13, f11, f12
	fmv.w.x f11, a0
pcrel700:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel700)
	li a0, 1
	flw f28, 8(a1)
	fmul.s f10, f13, f10
	fdiv.s f13, f10, f11
	fmv.s f10, f7
	fmv.s f11, f9
	fmv.s f12, f28
	jal asr5
	li a0, 1
	fmv.s f29, f10
	fmv.s f10, f7
	fmv.s f11, f8
	fmv.s f12, f28
	fmv.s f13, f18
	jal asr5
	fdiv.s f10, f29, f10
	jal putfloat
	j label584
.p2align 2
label582:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a1, f10, f9
	and a0, s1, a1
	bne a0, zero, label588
	li a0, 45
	jal putch
	j label584
.p2align 2
label589:
	lui a1, 260096
pcrel701:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f10, a1
	addi a1, a0, %pcrel_lo(pcrel701)
	li a0, 1
	flw f12, 8(a1)
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	jal putfloat
	j label582
.p2align 2
label585:
	lui a0, 260096
pcrel702:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f10, a0
	addi a0, a1, %pcrel_lo(pcrel702)
	flw f12, 8(a0)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	fmul.s f10, f9, f10
	jal my_exp
	jal putfloat
	j label587
