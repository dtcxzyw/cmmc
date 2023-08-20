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
	li s4, 1
	li a3, 16
pcrel616:
	auipc a1, %pcrel_hi(e)
	li s8, 4
	mv a2, a0
	addi s6, a1, %pcrel_lo(pcrel616)
	lui a0, 16
	addiw s2, a0, -1
	ble s5, zero, label2
	addi a1, s6, 64
	mv a0, s4
	bgt s0, s8, label65
	mv a5, s4
	bgt s0, s4, label58
	j label272
.p2align 2
label386:
	mv t0, a5
	ble s7, a5, label566
.p2align 2
label69:
	sh2add a4, t0, a1
	mv a5, t0
	mv t1, zero
	beq a0, t0, label480
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label480:
	sw t1, 0(a4)
	addiw t2, a5, 1
	mv t0, zero
	beq a0, t2, label483
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label483:
	sw t0, 4(a4)
	addiw t2, a5, 2
	mv t1, zero
	beq a0, t2, label486
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label486:
	sw t1, 8(a4)
	addiw t2, a5, 3
	mv t0, zero
	beq a0, t2, label489
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label489:
	sw t0, 12(a4)
	addiw a5, a5, 4
	ble s7, a5, label317
.p2align 2
label73:
	addi a4, a4, 16
	mv t1, zero
	beq a0, a5, label480
	lui t0, 16
	addiw t2, a5, 1
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 0(a4)
	beq a0, t2, label483
	lui t1, 16
	addiw t2, a5, 2
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 4(a4)
	beq a0, t2, label486
	lui t0, 16
	addiw t2, a5, 3
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 8(a4)
	beq a0, t2, label489
	lui t1, 16
	addiw a5, a5, 4
	addiw t0, t1, -1
	sw t0, 12(a4)
	bgt s7, a5, label73
	ble s0, a5, label564
.p2align 2
label58:
	sh2add a4, a5, a1
	mv t0, zero
	beq a0, a5, label477
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label477:
	sw t0, 0(a4)
	addiw a5, a5, 1
	ble s0, a5, label281
.p2align 2
label62:
	addi a4, a4, 4
	mv t0, zero
	beq a0, a5, label477
	lui t1, 16
	addiw a5, a5, 1
	addiw t0, t1, -1
	sw t0, 0(a4)
	bgt s0, a5, label62
	addiw a0, a0, 1
	ble s0, a0, label2
.p2align 2
label64:
	addi a1, a1, 64
	ble s0, s8, label562
.p2align 2
label65:
	ble s7, a3, label292
	addi a4, a1, 4
	mv a5, s4
	mv t0, zero
	beq a0, s4, label492
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label492:
	sw t0, 0(a4)
	addiw t2, a5, 1
	mv t1, zero
	beq a0, t2, label495
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label495:
	sw t1, 4(a4)
	addiw t2, a5, 2
	mv t0, zero
	beq a0, t2, label498
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label498:
	sw t0, 8(a4)
	addiw t2, a5, 3
	mv t1, zero
	beq a0, t2, label501
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label501:
	sw t1, 12(a4)
	addiw t0, a5, 4
	mv t2, zero
	beq a0, t0, label504
.p2align 2
label503:
	lui t1, 16
	addiw t2, t1, -1
.p2align 2
label504:
	sw t2, 16(a4)
	addiw t1, a5, 5
	mv t0, zero
	beq a0, t1, label507
	lui t2, 16
	addiw t0, t2, -1
.p2align 2
label507:
	sw t0, 20(a4)
	addiw t2, a5, 6
	mv t1, zero
	beq a0, t2, label510
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label510:
	sw t1, 24(a4)
	addiw t2, a5, 7
	mv t0, zero
	beq a0, t2, label513
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label513:
	sw t0, 28(a4)
	addiw t2, a5, 8
	mv t1, zero
	beq a0, t2, label516
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label516:
	sw t1, 32(a4)
	addiw t2, a5, 9
	mv t0, zero
	beq a0, t2, label519
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label519:
	sw t0, 36(a4)
	addiw t2, a5, 10
	mv t1, zero
	beq a0, t2, label522
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label522:
	sw t1, 40(a4)
	addiw t2, a5, 11
	mv t0, zero
	beq a0, t2, label525
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label525:
	sw t0, 44(a4)
	addiw t1, a5, 12
	mv t2, zero
	beq a0, t1, label528
	lui t0, 16
	addiw t2, t0, -1
.p2align 2
label528:
	sw t2, 48(a4)
	addiw t0, a5, 13
	mv t1, zero
	beq a0, t0, label531
	lui t2, 16
	addiw t1, t2, -1
.p2align 2
label531:
	sw t1, 52(a4)
	addiw t2, a5, 14
	mv t0, zero
	beq a0, t2, label534
	lui t1, 16
	addiw t0, t1, -1
.p2align 2
label534:
	sw t0, 56(a4)
	addiw t2, a5, 15
	mv t1, zero
	beq a0, t2, label537
	lui t0, 16
	addiw t1, t0, -1
.p2align 2
label537:
	sw t1, 60(a4)
	addiw a5, a5, 16
	ble s9, a5, label386
	addi a4, a4, 64
	mv t0, zero
	beq a0, a5, label492
	lui t1, 16
	addiw t2, a5, 1
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 0(a4)
	beq a0, t2, label495
	lui t0, 16
	addiw t2, a5, 2
	addiw t1, t0, -1
	mv t0, zero
	sw t1, 4(a4)
	beq a0, t2, label498
	lui t1, 16
	addiw t2, a5, 3
	addiw t0, t1, -1
	mv t1, zero
	sw t0, 8(a4)
	beq a0, t2, label501
	lui t0, 16
	mv t2, zero
	addiw t1, t0, -1
	addiw t0, a5, 4
	sw t1, 12(a4)
	beq a0, t0, label504
	j label503
label2:
	ble a2, zero, label3
	addiw s9, a2, 1
	mv s10, s4
.p2align 2
label50:
	jal getint
	slli a1, a0, 6
	add s11, s6, a1
	jal getint
	sh2add s11, a0, s11
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s11)
	bgt s9, s10, label50
label3:
	ble s5, zero, label4
	addi a1, s6, 64
	ble s0, s8, label210
	addi a0, s1, 4
	mv a2, s4
.p2align 2
label45:
	sh2add a3, a2, a1
	sh2add a4, a2, s3
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a0)
	sw zero, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a0)
	sw zero, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a0)
	sw zero, 8(a4)
	lw a5, 12(a3)
	sw a5, 12(a0)
	sw zero, 12(a4)
	ble s7, a2, label37
	addi a0, a0, 16
	j label45
.p2align 2
label564:
	addiw a0, a0, 1
	bgt s0, a0, label64
	j label2
label292:
	mv t0, s4
	mv a5, zero
	bgt s7, s4, label69
	bgt s0, zero, label58
	addiw a0, a0, 1
	bgt s0, a0, label64
	j label2
.p2align 2
label566:
	bgt s0, a5, label58
	addiw a0, a0, 1
	bgt s0, a0, label64
	j label2
label562:
	mv a5, s4
	bgt s0, s4, label58
label272:
	addiw a0, a0, 1
	bgt s0, a0, label64
	j label2
label37:
	ble s0, a2, label4
	sh2add a0, a2, a1
	j label40
label43:
	addi a0, a0, 4
label40:
	sh2add a1, a2, s1
	lw a3, 0(a0)
	sh2add a4, a2, s3
	addiw a2, a2, 1
	sw a3, 0(a1)
	sw zero, 0(a4)
	bgt s0, a2, label43
label4:
	addiw a1, s5, -1
	sw s4, 172(sp)
	ble a1, zero, label5
	mv a0, s4
	j label12
.p2align 2
label32:
	sh2add t0, a3, s1
	sh2add t2, a1, s1
	lw a5, 0(t0)
	lw t1, 0(t2)
	addw t0, a4, t1
	ble a5, t0, label198
	sh2add a4, a3, s1
	sw t0, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label205
.p2align 2
label35:
	addi a2, a2, 4
	lw a4, 0(a2)
	blt a4, s2, label32
	addiw a3, a3, 1
	bgt s0, a3, label35
	addiw a0, a0, 1
	ble s5, a0, label5
.p2align 2
label12:
	ble s5, zero, label151
	addi a1, s1, 4
	mv a2, s4
	mv a3, zero
	mv a4, s2
	lw a5, 0(a1)
	ble s2, a5, label20
.p2align 2
label24:
	sh2add t1, a2, s3
	lw t2, 0(t1)
	sltiu t0, t2, 1
	bne t0, zero, label473
	mv a5, a4
label473:
	mv t1, a2
	bne t0, zero, label475
	mv t1, a3
label475:
	mv a4, a5
	mv a3, t1
	addiw a2, a2, 1
	ble s0, a2, label554
.p2align 2
label23:
	addi a1, a1, 4
	lw a5, 0(a1)
	bgt a4, a5, label24
	addiw a2, a2, 1
	bgt s0, a2, label23
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	bgt s5, zero, label28
	j label27
label5:
	ble s5, zero, label6
.p2align 2
label7:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bgt s0, s4, label7
label6:
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
label554:
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	ble s5, zero, label27
.p2align 2
label28:
	addi a2, a2, 4
	mv a3, s4
	lw a4, 0(a2)
	blt a4, s2, label32
	addiw a3, s4, 1
	bgt s0, a3, label35
	addiw a0, a0, 1
	bgt s5, a0, label12
	j label5
.p2align 2
label20:
	addiw a2, a2, 1
	bgt s0, a2, label23
	mv a1, a3
	sh2add a4, a3, s3
	slli a3, a3, 6
	sw s4, 0(a4)
	add a2, s6, a3
	bgt s5, zero, label28
	j label27
.p2align 2
label198:
	addiw a3, a3, 1
	bgt s0, a3, label35
	addiw a0, a0, 1
	bgt s5, a0, label12
	j label5
label151:
	mv a1, zero
	mv a4, s3
	mv a3, zero
	sw s4, 0(s3)
	mv a2, s6
	bgt s5, zero, label28
label27:
	addiw a0, a0, 1
	bgt s5, a0, label12
	j label5
.p2align 2
label205:
	addiw a0, a0, 1
	bgt s5, a0, label12
	j label5
.p2align 2
label281:
	addiw a0, a0, 1
	bgt s0, a0, label64
	j label2
.p2align 2
label317:
	bgt s0, a5, label58
	j label564
label210:
	mv a2, s4
	j label37
