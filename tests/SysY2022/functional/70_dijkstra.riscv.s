.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
e:
	.zero	1024
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[128] RegSpill[0] CalleeSaved[104]
	addi sp, sp, -232
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 104
	sd s6, 16(sp)
	sd s3, 24(sp)
	addi s3, sp, 168
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s7, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s8, 72(sp)
	sd s4, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	jal getint
	addiw s7, a0, -2
	addiw s9, a0, -17
	addiw s0, a0, 1
	mv s5, a0
	jal getint
	li a3, 16
	li s8, 4
	li s4, 1
pcrel626:
	auipc a1, %pcrel_hi(e)
	mv a2, a0
	addi s6, a1, %pcrel_lo(pcrel626)
	lui a0, 16
	addiw s2, a0, -1
	ble s5, zero, label29
	addi a1, s6, 64
	mv a0, s4
	bgt s0, s8, label6
	mv a5, s4
	bgt s0, s4, label22
	j label231
.p2align 2
label240:
	addiw a0, a0, 1
	ble s0, a0, label29
.p2align 2
label28:
	addi a1, a1, 64
	ble s0, s8, label561
.p2align 2
label6:
	ble s7, a3, label132
	addi a4, a1, 4
	mv a5, s4
	mv t0, zero
	beq a0, s4, label485
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label485:
	sw t0, 0(a4)
	addiw t2, a5, 1
	mv t1, zero
	beq a0, t2, label488
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label488:
	sw t1, 4(a4)
	addiw t2, a5, 2
	mv t0, zero
	beq a0, t2, label491
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label491:
	sw t0, 8(a4)
	addiw t2, a5, 3
	mv t1, zero
	beq a0, t2, label494
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label494:
	sw t1, 12(a4)
	addiw t2, a5, 4
	mv t0, zero
	beq a0, t2, label497
.p2align 2
label496:
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label497:
	sw t0, 16(a4)
	addiw t2, a5, 5
	mv t1, zero
	bne a0, t2, label499
.p2align 2
label500:
	sw t1, 20(a4)
	addiw t2, a5, 6
	mv t0, zero
	bne a0, t2, label502
.p2align 2
label503:
	sw t0, 24(a4)
	addiw t1, a5, 7
	mv t2, zero
	beq a0, t1, label506
	lui t0, 16
	addiw t2, t0, -1
.p2align 2
label506:
	sw t2, 28(a4)
	addiw t0, a5, 8
	mv t1, zero
	bne a0, t0, label508
.p2align 2
label509:
	sw t1, 32(a4)
	addiw t2, a5, 9
	mv t0, zero
	bne a0, t2, label511
.p2align 2
label512:
	sw t0, 36(a4)
	addiw t2, a5, 10
	mv t1, zero
	bne a0, t2, label514
.p2align 2
label515:
	sw t1, 40(a4)
	addiw t2, a5, 11
	mv t0, zero
	bne a0, t2, label517
.p2align 2
label518:
	sw t0, 44(a4)
	addiw t2, a5, 12
	mv t1, zero
	beq a0, t2, label521
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label521:
	sw t1, 48(a4)
	addiw t2, a5, 13
	mv t0, zero
	bne a0, t2, label523
.p2align 2
label524:
	sw t0, 52(a4)
	addiw t2, a5, 14
	mv t1, zero
	beq a0, t2, label527
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label527:
	sw t1, 56(a4)
	addiw t2, a5, 15
	mv t0, zero
	bne a0, t2, label529
.p2align 2
label530:
	sw t0, 60(a4)
	addiw a5, a5, 16
	ble s9, a5, label226
	addi a4, a4, 64
	mv t0, zero
	beq a0, a5, label485
	lui t1, 16
	addiw t2, a5, 1
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 0(a4)
	beq a0, t2, label488
	lui t0, 16
	addiw t2, a5, 2
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 4(a4)
	beq a0, t2, label491
	lui t1, 16
	addiw t2, a5, 3
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 8(a4)
	beq a0, t2, label494
	lui t0, 16
	addiw t2, a5, 4
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 12(a4)
	beq a0, t2, label497
	j label496
.p2align 2
label226:
	mv t0, a5
	ble s7, a5, label556
.p2align 2
label10:
	sh2add a4, t0, a1
	mv a5, t0
	mv t0, zero
	bne a0, a5, label472
.p2align 2
label473:
	sw t0, 0(a4)
	addiw t2, a5, 1
	mv t1, zero
	bne a0, t2, label475
.p2align 2
label476:
	sw t1, 4(a4)
	addiw t2, a5, 2
	mv t0, zero
	beq a0, t2, label479
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label479:
	sw t0, 8(a4)
	addiw t2, a5, 3
	mv t1, zero
	beq a0, t2, label482
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label482:
	sw t1, 12(a4)
	addiw a5, a5, 4
	ble s7, a5, label157
.p2align 2
label14:
	addi a4, a4, 16
	mv t0, zero
	beq a0, a5, label473
	lui t1, 16
	addiw t2, a5, 1
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 0(a4)
	beq a0, t2, label476
	lui t0, 16
	addiw t2, a5, 2
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 4(a4)
	beq a0, t2, label479
	lui t1, 16
	addiw t2, a5, 3
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 8(a4)
	beq a0, t2, label482
	lui t0, 16
	addiw a5, a5, 4
	addiw t1, t0, -1
	sw t1, 12(a4)
	bgt s7, a5, label14
	bgt s0, a5, label22
.p2align 2
label554:
	addiw a0, a0, 1
	bgt s0, a0, label28
	j label29
.p2align 2
label157:
	ble s0, a5, label554
.p2align 2
label22:
	sh2add a4, a5, a1
	mv t0, zero
	bne a0, a5, label532
.p2align 2
label533:
	sw t0, 0(a4)
	addiw a5, a5, 1
	ble s0, a5, label240
.p2align 2
label26:
	addi a4, a4, 4
	mv t0, zero
	beq a0, a5, label533
	lui t1, 16
	addiw a5, a5, 1
	addiw t0, t1, -1
	sw t0, 0(a4)
	bgt s0, a5, label26
	addiw a0, a0, 1
	bgt s0, a0, label28
	j label29
label132:
	mv t0, s4
	mv a5, zero
	bgt s7, s4, label10
	bgt s0, zero, label22
	addiw a0, a0, 1
	bgt s0, a0, label28
	j label29
.p2align 2
label556:
	bgt s0, a5, label22
	addiw a0, a0, 1
	bgt s0, a0, label28
label29:
	ble a2, zero, label30
	addiw s9, a2, 1
	mv s10, s4
.p2align 2
label77:
	jal getint
	slli a1, a0, 6
	add s11, s6, a1
	jal getint
	sh2add s11, a0, s11
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s11)
	bgt s9, s10, label77
label30:
	ble s5, zero, label31
	addi a1, s6, 64
	ble s0, s8, label333
	addi a0, s3, 4
	mv a2, s4
	j label65
.p2align 2
label68:
	addi a0, a0, 16
.p2align 2
label65:
	sh2add a3, a2, a1
	sh2add a4, a2, s1
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	sw zero, 0(a0)
	lw t0, 4(a3)
	sw t0, 4(a4)
	sw zero, 4(a0)
	lw a5, 8(a3)
	sw a5, 8(a4)
	sw zero, 8(a0)
	lw t0, 12(a3)
	sw t0, 12(a4)
	sw zero, 12(a0)
	bgt s7, a2, label68
label69:
	ble s0, a2, label31
	sh2add a0, a2, a1
label72:
	sh2add a1, a2, s1
	lw a3, 0(a0)
	sh2add a4, a2, s3
	addiw a2, a2, 1
	sw a3, 0(a1)
	sw zero, 0(a4)
	ble s0, a2, label31
	addi a0, a0, 4
	j label72
label31:
	addiw a1, s5, -1
	sw s4, 172(sp)
	ble a1, zero, label32
	mv a0, s4
	j label39
.p2align 2
label573:
	addiw a0, a0, 1
	ble s5, a0, label32
.p2align 2
label39:
	ble s5, zero, label274
	addi a1, s1, 4
	mv a2, s4
	mv a4, zero
	mv a3, s2
	lw a5, 0(a1)
	bgt s2, a5, label62
	addiw a2, s4, 1
	bgt s0, a2, label61
	mv a1, zero
	mv a3, s3
	sw s4, 0(s3)
	mv a2, s6
	bgt s5, zero, label43
	j label51
.p2align 2
label62:
	sh2add t3, a2, s3
	mv t0, a5
	lw t2, 0(t3)
	sltiu t1, t2, 1
	bne t1, zero, label536
	mv t0, a3
.p2align 2
label536:
	mv a5, a2
	bne t1, zero, label538
	mv a5, a4
.p2align 2
label538:
	mv a3, t0
	mv a4, a5
	addiw a2, a2, 1
	ble s0, a2, label568
.p2align 2
label61:
	addi a1, a1, 4
	lw a5, 0(a1)
	bgt a3, a5, label62
	addiw a2, a2, 1
	bgt s0, a2, label61
	mv a1, a4
	sh2add a3, a4, s3
	slli a4, a4, 6
	sw s4, 0(a3)
	add a2, s6, a4
	bgt s5, zero, label43
	j label51
label32:
	ble s5, zero, label38
.p2align 2
label33:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bgt s0, s4, label33
label38:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s7, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	ld s4, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 232
	ret
.p2align 2
label568:
	mv a1, a4
	sh2add a3, a4, s3
	slli a4, a4, 6
	sw s4, 0(a3)
	add a2, s6, a4
	ble s5, zero, label51
.p2align 2
label43:
	addi a2, a2, 4
	mv a3, s4
	lw a4, 0(a2)
	blt a4, s2, label49
	addiw a3, s4, 1
	bgt s0, a3, label48
	addiw a0, a0, 1
	bgt s5, a0, label39
	j label32
.p2align 2
label563:
	addiw a3, a3, 1
	ble s0, a3, label573
.p2align 2
label48:
	addi a2, a2, 4
	lw a4, 0(a2)
	bge a4, s2, label563
.p2align 2
label49:
	sh2add t0, a3, s1
	sh2add t1, a1, s1
	lw a5, 0(t0)
	lw t2, 0(t1)
	addw t0, a4, t2
	ble a5, t0, label304
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw t0, 0(a4)
	bgt s0, a3, label48
	addiw a0, a0, 1
	bgt s5, a0, label39
	j label32
.p2align 2
label304:
	addiw a3, a3, 1
	bgt s0, a3, label48
	addiw a0, a0, 1
	bgt s5, a0, label39
	j label32
label274:
	mv a1, zero
	mv a3, s3
	mv a4, zero
	sw s4, 0(s3)
	mv a2, s6
	bgt s5, zero, label43
	j label51
label561:
	mv a5, s4
	bgt s0, s4, label22
label231:
	addiw a0, a0, 1
	bgt s0, a0, label28
	j label29
label51:
	addiw a0, a0, 1
	bgt s5, a0, label39
	j label32
.p2align 2
label472:
	lui t1, 16
	addiw t0, t1, -1
	j label473
.p2align 2
label475:
	lui t0, 16
	addiw t1, t0, -1
	j label476
label333:
	mv a2, s4
	j label69
.p2align 2
label529:
	lui t1, 16
	addiw t0, t1, -1
	j label530
.p2align 2
label523:
	lui t1, 16
	addiw t0, t1, -1
	j label524
.p2align 2
label514:
	lui t0, 16
	addiw t1, t0, -1
	j label515
.p2align 2
label532:
	lui t1, 16
	addiw t0, t1, -1
	j label533
.p2align 2
label502:
	lui t1, 16
	addiw t0, t1, -1
	j label503
.p2align 2
label499:
	lui t0, 16
	addiw t1, t0, -1
	j label500
.p2align 2
label511:
	lui t1, 16
	addiw t0, t1, -1
	j label512
.p2align 2
label517:
	lui t1, 16
	addiw t0, t1, -1
	j label518
.p2align 2
label508:
	lui t2, 16
	addiw t1, t2, -1
	j label509
