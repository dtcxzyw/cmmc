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
	addi sp, sp, -64
	fsub.s f14, f11, f10
	lui a0, 258048
	sd ra, 0(sp)
	fsw f18, 8(sp)
	fmv.s f18, f10
	fsw f8, 12(sp)
	fmv.w.x f10, a0
	fsw f21, 16(sp)
	lui a0, 260096
	fmul.s f14, f14, f10
	fsw f9, 20(sp)
	fsw f22, 24(sp)
	fsw f20, 28(sp)
	fsw f23, 32(sp)
	fsw f19, 36(sp)
	fadd.s f8, f18, f14
	fsw f26, 40(sp)
	fsw f25, 44(sp)
	fsw f24, 48(sp)
	fsw f27, 52(sp)
	fsw f11, 56(sp)
	fsub.s f0, f11, f8
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
	beq a0, zero, label124
	lui a0, 268032
	fmv.w.x f11, a0
	fdiv.s f12, f13, f11
	fadd.s f10, f15, f12
label122:
	ld ra, 0(sp)
	flw f18, 8(sp)
	flw f8, 12(sp)
	flw f21, 16(sp)
	flw f9, 20(sp)
	flw f22, 24(sp)
	flw f20, 28(sp)
	flw f23, 32(sp)
	flw f19, 36(sp)
	flw f26, 40(sp)
	flw f25, 44(sp)
	flw f24, 48(sp)
	flw f27, 52(sp)
	addi sp, sp, 64
	ret
label124:
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
	beq a0, zero, label130
	lui a0, 268032
	fmv.w.x f12, a0
	fdiv.s f11, f11, f12
	fadd.s f18, f10, f11
label126:
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
	flw f11, 56(sp)
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
	beq a0, zero, label129
	lui a0, 268032
	fmv.w.x f12, a0
	fdiv.s f13, f11, f12
	fadd.s f11, f10, f13
	fadd.s f10, f18, f11
	j label122
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
	flw f11, 56(sp)
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
pcrel492:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel492)
	flw f11, 0(a0)
	flt.s a1, f11, f10
	bne a1, zero, label289
	j label307
label287:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label307:
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
	bne a1, zero, label471
	fmv.s f13, f14
.p2align 2
label471:
	srliw a1, a0, 31
	fmul.s f12, f12, f12
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label414
label413:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f12, a0
	fmv.w.x f14, a1
	li a0, 4
	fdiv.s f13, f13, f12
	fmv.s f12, f10
	fadd.s f11, f11, f13
	j label313
.p2align 2
label414:
	fmv.s f14, f13
	fmul.s f15, f13, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label471
	fmv.s f13, f14
	srliw a1, a0, 31
	fmul.s f12, f12, f12
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label414
	j label413
label313:
	fmul.s f15, f14, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label473
	fmv.s f13, f14
.p2align 2
label473:
	srliw a2, a0, 31
	fmul.s f12, f12, f12
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label429
label428:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f12, a0
	li a0, 5
	fdiv.s f13, f13, f12
	fadd.s f11, f11, f13
	fmv.w.x f13, a1
	j label318
.p2align 2
label429:
	fmv.s f14, f13
	fmul.s f15, f13, f12
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label473
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f12, f12, f12
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label429
	j label428
label318:
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label475
	fmv.s f12, f13
.p2align 2
label475:
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label444
label443:
	lui a0, 274176
	fmv.w.x f13, a0
	fdiv.s f12, f12, f13
	fadd.s f10, f11, f12
	j label287
.p2align 2
label444:
	fmv.s f13, f12
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label475
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f10, f10, f10
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label444
	j label443
label289:
	lui a0, 258048
	fmv.w.x f11, a0
pcrel493:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fmul.s f10, f10, f11
	addi a1, a0, %pcrel_lo(pcrel493)
	flw f11, 0(a1)
	flt.s a0, f11, f10
	beq a0, zero, label290
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	jal eee
	fmul.s f11, f10, f10
	fmul.s f10, f11, f11
	j label287
label290:
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
	bne a1, zero, label465
	fmv.s f13, f14
.p2align 2
label465:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label356
label355:
	lui a0, 265216
	lui a1, 260096
	fmv.w.x f11, a0
	fmv.w.x f14, a1
	li a0, 4
	fdiv.s f13, f13, f11
	fmv.s f11, f10
	fadd.s f12, f12, f13
	j label296
.p2align 2
label356:
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label465
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label356
	j label355
label296:
	fmul.s f15, f14, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label467
	fmv.s f13, f14
.p2align 2
label467:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label371
label370:
	lui a0, 269312
	lui a1, 260096
	fmv.w.x f14, a0
	li a0, 5
	fdiv.s f13, f13, f14
	fadd.s f11, f12, f13
	fmv.w.x f13, a1
	j label301
.p2align 2
label371:
	fmv.s f14, f13
	fmul.s f15, f13, f11
	andi a1, a0, 1
	fmv.s f13, f15
	bne a1, zero, label467
	fmv.s f13, f14
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label371
	j label370
label301:
	fmul.s f14, f13, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label469
	fmv.s f12, f13
.p2align 2
label469:
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label386
label385:
	lui a0, 274176
	fmv.w.x f10, a0
	fdiv.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f10, f11, f11
	j label287
.p2align 2
label386:
	fmv.s f13, f12
	fmul.s f14, f12, f10
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label469
	fmv.s f12, f13
	srliw a1, a0, 31
	fmul.s f10, f10, f10
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label386
	j label385
.p2align 2
my_exp:
	addi sp, sp, -8
	fmv.w.x f11, zero
	sd ra, 0(sp)
	flt.s a0, f10, f11
	bne a0, zero, label495
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fsub.s f10, f10, f11
	blt a0, zero, label501
	j label507
label499:
	jal eee
	fmul.s f10, f0, f10
	j label496
label501:
	subw a0, zero, a0
	lui a1, 260096
pcrel589:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a1
	addi a1, a2, %pcrel_lo(pcrel589)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label577
	fmv.s f12, f13
.p2align 2
label577:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label545
label544:
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f0, f11, f12
	j label499
.p2align 2
label545:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label577
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label545
	j label544
label507:
	beq a0, zero, label551
	lui a1, 260096
pcrel590:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a1
	addi a1, a2, %pcrel_lo(pcrel590)
	flw f11, 4(a1)
	fmul.s f14, f13, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label579
	fmv.s f12, f13
.p2align 2
label579:
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label568
label567:
	fmv.s f0, f12
	j label499
.p2align 2
label568:
	fmv.s f13, f12
	fmul.s f14, f12, f11
	andi a1, a0, 1
	fmv.s f12, f14
	bne a1, zero, label579
	fmv.s f12, f13
	srliw a2, a0, 31
	fmul.s f11, f11, f11
	add a1, a0, a2
	sraiw a0, a1, 1
	bne a0, zero, label568
	j label567
label495:
	fneg.s f10, f10
	jal my_exp
	lui a0, 260096
	fmv.w.x f11, a0
	fdiv.s f10, f11, f10
label496:
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label551:
	lui a0, 260096
	fmv.w.x f0, a0
	j label499
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	fsw f8, 16(sp)
	fsw f18, 20(sp)
	fsw f9, 24(sp)
	sd s1, 32(sp)
	jal getint
	mv s0, a0
	bne a0, zero, label595
label594:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	flw f8, 16(sp)
	flw f18, 20(sp)
	flw f9, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label595:
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
	bne a1, zero, label709
	j label708
.p2align 2
label602:
	li a0, 45
	jal putch
.p2align 2
label603:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a0, f10, f8
	beq a0, zero, label605
	lui a0, 260096
pcrel723:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f10, a0
	addi a0, a1, %pcrel_lo(pcrel723)
	flw f12, 8(a0)
	li a0, 1
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	fmul.s f10, f9, f10
	jal my_exp
	jal putfloat
.p2align 2
label606:
	li a0, 10
	jal putch
	addiw s0, s0, -1
	bne s0, zero, label595
	j label594
.p2align 2
label708:
	fmv.s f10, f12
.p2align 2
label709:
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	beq a0, zero, label600
.p2align 2
label627:
	fmv.s f12, f10
	fmul.s f13, f10, f11
	andi a1, a0, 1
	fmv.s f10, f13
	bne a1, zero, label709
	fmv.s f10, f12
	srliw a1, a0, 31
	fmul.s f11, f11, f11
	add a2, a0, a1
	sraiw a0, a2, 1
	bne a0, zero, label627
.p2align 2
label600:
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
	lui a0, 258048
	lui a1, 260096
	fmv.w.x f12, a0
	fmv.w.x f11, a1
	lui a0, 264192
	fsub.s f10, f8, f11
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
	bne s1, zero, label608
	li a0, 45
	jal putch
.p2align 2
label601:
	li a0, 32
	jal putch
	fmv.w.x f10, zero
	flt.s a1, f10, f9
	and a0, s1, a1
	beq a0, zero, label602
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
pcrel724:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel724)
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
	j label603
.p2align 2
label608:
	lui a1, 260096
pcrel725:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f10, a1
	addi a1, a0, %pcrel_lo(pcrel725)
	li a0, 1
	flw f12, 8(a1)
	fmv.s f11, f8
	fmv.s f13, f18
	jal asr5
	jal putfloat
	j label601
.p2align 2
label605:
	li a0, 45
	jal putch
	j label606
