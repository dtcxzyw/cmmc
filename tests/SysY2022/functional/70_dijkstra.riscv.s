.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	addiw s9, a0, -17
	addiw s7, a0, -2
	addiw s0, a0, 1
	mv s5, a0
	jal getint
	li a3, 16
	li s4, 1
	li s8, 4
pcrel619:
	auipc a1, %pcrel_hi(e)
	mv a2, a0
	addi s6, a1, %pcrel_lo(pcrel619)
	lui a0, 16
	addiw s2, a0, -1
	ble s5, zero, label29
	addi a1, s6, 64
	mv a0, s4
	bgt s0, s8, label15
	mv a5, s4
	bgt s0, s4, label8
	j label132
.p2align 2
label246:
	mv t0, a5
	ble s7, a5, label559
.p2align 2
label19:
	sh2add a4, t0, a1
	mv a5, t0
	mv t1, zero
	beq a0, t0, label476
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label476:
	sw t1, 0(a4)
	addiw t2, a5, 1
	mv t0, zero
	beq a0, t2, label479
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label479:
	sw t0, 4(a4)
	addiw t2, a5, 2
	mv t1, zero
	beq a0, t2, label482
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label482:
	sw t1, 8(a4)
	addiw t2, a5, 3
	mv t0, zero
	beq a0, t2, label485
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label485:
	sw t0, 12(a4)
	addiw a5, a5, 4
	ble s7, a5, label177
.p2align 2
label23:
	addi a4, a4, 16
	mv t1, zero
	beq a0, a5, label476
	lui t0, 16
	addiw t2, a5, 1
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 0(a4)
	beq a0, t2, label479
	lui t1, 16
	addiw t2, a5, 2
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 4(a4)
	beq a0, t2, label482
	lui t0, 16
	addiw t2, a5, 3
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 8(a4)
	beq a0, t2, label485
	lui t1, 16
	addiw a5, a5, 4
	addiw t0, t1, -1
	sw t0, 12(a4)
	bgt s7, a5, label23
	ble s0, a5, label557
.p2align 2
label8:
	sh2add a4, a5, a1
	mv t0, zero
	beq a0, a5, label473
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label473:
	sw t0, 0(a4)
	addiw a5, a5, 1
	ble s0, a5, label141
.p2align 2
label12:
	addi a4, a4, 4
	mv t0, zero
	beq a0, a5, label473
	lui t1, 16
	addiw a5, a5, 1
	addiw t0, t1, -1
	sw t0, 0(a4)
	bgt s0, a5, label12
	addiw a0, a0, 1
	ble s0, a0, label29
.p2align 2
label14:
	addi a1, a1, 64
	ble s0, s8, label555
.p2align 2
label15:
	ble s7, a3, label152
	addi a4, a1, 4
	mv a5, s4
	mv t0, zero
	beq a0, s4, label488
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label488:
	sw t0, 0(a4)
	addiw t2, a5, 1
	mv t1, zero
	beq a0, t2, label491
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label491:
	sw t1, 4(a4)
	addiw t2, a5, 2
	mv t0, zero
	beq a0, t2, label494
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label494:
	sw t0, 8(a4)
	addiw t2, a5, 3
	mv t1, zero
	beq a0, t2, label497
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label497:
	sw t1, 12(a4)
	addiw t0, a5, 4
	mv t2, zero
	beq a0, t0, label500
.p2align 2
label499:
	lui t1, 16
	addiw t2, t1, -1
.p2align 2
label500:
	sw t2, 16(a4)
	addiw t1, a5, 5
	mv t0, zero
	beq a0, t1, label503
	lui t2, 16
	addiw t0, t2, -1
.p2align 2
label503:
	sw t0, 20(a4)
	addiw t2, a5, 6
	mv t1, zero
	beq a0, t2, label506
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label506:
	sw t1, 24(a4)
	addiw t2, a5, 7
	mv t0, zero
	beq a0, t2, label509
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label509:
	sw t0, 28(a4)
	addiw t2, a5, 8
	mv t1, zero
	beq a0, t2, label512
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label512:
	sw t1, 32(a4)
	addiw t2, a5, 9
	mv t0, zero
	beq a0, t2, label515
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label515:
	sw t0, 36(a4)
	addiw t2, a5, 10
	mv t1, zero
	beq a0, t2, label518
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label518:
	sw t1, 40(a4)
	addiw t2, a5, 11
	mv t0, zero
	beq a0, t2, label521
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label521:
	sw t0, 44(a4)
	addiw t2, a5, 12
	mv t1, zero
	beq a0, t2, label524
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label524:
	sw t1, 48(a4)
	addiw t2, a5, 13
	mv t0, zero
	beq a0, t2, label527
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label527:
	sw t0, 52(a4)
	addiw t2, a5, 14
	mv t1, zero
	beq a0, t2, label530
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label530:
	sw t1, 56(a4)
	addiw t2, a5, 15
	mv t0, zero
	beq a0, t2, label533
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label533:
	sw t0, 60(a4)
	addiw a5, a5, 16
	ble s9, a5, label246
	addi a4, a4, 64
	mv t0, zero
	beq a0, a5, label488
	lui t1, 16
	addiw t2, a5, 1
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 0(a4)
	beq a0, t2, label491
	lui t0, 16
	addiw t2, a5, 2
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 4(a4)
	beq a0, t2, label494
	lui t1, 16
	addiw t2, a5, 3
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 8(a4)
	beq a0, t2, label497
	lui t0, 16
	mv t2, zero
	addiw t1, t0, -1
	addiw t0, a5, 4
	sw t1, 12(a4)
	beq a0, t0, label500
	j label499
.p2align 2
label557:
	addiw a0, a0, 1
	bgt s0, a0, label14
	j label29
label152:
	mv t0, s4
	mv a5, zero
	bgt s7, s4, label19
	bgt s0, zero, label8
	addiw a0, a0, 1
	bgt s0, a0, label14
	j label29
.p2align 2
label559:
	bgt s0, a5, label8
	addiw a0, a0, 1
	bgt s0, a0, label14
label29:
	ble a2, zero, label33
	addiw s9, a2, 1
	mv s10, s4
.p2align 2
label31:
	jal getint
	slli a1, a0, 6
	add s11, s6, a1
	jal getint
	sh2add s11, a0, s11
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s11)
	bgt s9, s10, label31
label33:
	ble s5, zero, label47
	addi a1, s6, 64
	ble s0, s8, label271
	addi a0, s1, 4
	mv a2, s4
	j label36
.p2align 2
label39:
	addi a0, a0, 16
.p2align 2
label36:
	sh2add a3, a2, a1
	sh2add a4, a2, s3
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a0)
	sw zero, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a0)
	sw zero, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a0)
	sw zero, 8(a4)
	lw t0, 12(a3)
	sw t0, 12(a0)
	sw zero, 12(a4)
	bgt s7, a2, label39
label40:
	ble s0, a2, label47
	sh2add a0, a2, a1
label43:
	sh2add a1, a2, s1
	lw a3, 0(a0)
	sh2add a4, a2, s3
	addiw a2, a2, 1
	sw a3, 0(a1)
	sw zero, 0(a4)
	ble s0, a2, label47
	addi a0, a0, 4
	j label43
label47:
	addiw a1, s5, -1
	sw s4, 172(sp)
	ble a1, zero, label48
	mv a0, s4
	j label55
.p2align 2
label356:
	addiw a3, a3, 1
	ble s0, a3, label562
.p2align 2
label66:
	addi a2, a2, 4
	lw a4, 0(a2)
	blt a4, s2, label63
	addiw a3, a3, 1
	bgt s0, a3, label66
	addiw a0, a0, 1
	ble s5, a0, label48
.p2align 2
label55:
	ble s5, zero, label332
	addi a1, s1, 4
	mv a2, s4
	mv a3, zero
	mv a4, s2
	lw a5, 0(a1)
	ble s2, a5, label74
.p2align 2
label78:
	sh2add t2, a2, s3
	mv t0, a5
	lw t3, 0(t2)
	sltiu t1, t3, 1
	bne t1, zero, label536
	mv t0, a4
label536:
	mv a5, a2
	bne t1, zero, label538
	mv a5, a3
label538:
	mv a4, t0
	mv a3, a5
	addiw a2, a2, 1
	ble s0, a2, label567
.p2align 2
label77:
	addi a1, a1, 4
	lw a5, 0(a1)
	bgt a4, a5, label78
	addiw a2, a2, 1
	bgt s0, a2, label77
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	bgt s5, zero, label59
	j label67
.p2align 2
label567:
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	ble s5, zero, label67
.p2align 2
label59:
	addi a2, a2, 4
	mv a3, s4
	lw a4, 0(a2)
	bge a4, s2, label345
.p2align 2
label63:
	sh2add t0, a3, s1
	sh2add t1, a1, s1
	lw a5, 0(t0)
	lw t2, 0(t1)
	addw t0, a4, t2
	ble a5, t0, label356
	sh2add a4, a3, s1
	sw t0, 0(a4)
	addiw a3, a3, 1
	bgt s0, a3, label66
	addiw a0, a0, 1
	bgt s5, a0, label55
label48:
	ble s5, zero, label54
.p2align 2
label49:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bgt s0, s4, label49
label54:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
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
label74:
	addiw a2, a2, 1
	bgt s0, a2, label77
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	bgt s5, zero, label59
	j label67
label332:
	mv a1, zero
	mv a4, s3
	mv a3, zero
	sw s4, 0(s3)
	mv a2, s6
	bgt s5, zero, label59
	j label67
label555:
	mv a5, s4
	bgt s0, s4, label8
label132:
	addiw a0, a0, 1
	bgt s0, a0, label14
	j label29
.p2align 2
label345:
	addiw a3, a3, 1
	bgt s0, a3, label66
	addiw a0, a0, 1
	bgt s5, a0, label55
	j label48
label67:
	addiw a0, a0, 1
	bgt s5, a0, label55
	j label48
.p2align 2
label562:
	addiw a0, a0, 1
	bgt s5, a0, label55
	j label48
.p2align 2
label141:
	addiw a0, a0, 1
	bgt s0, a0, label14
	j label29
label271:
	mv a2, s4
	j label40
.p2align 2
label177:
	bgt s0, a5, label8
	j label557
