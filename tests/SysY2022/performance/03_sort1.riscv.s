.data
.section .rodata
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s0, 208(sp)
	sd s5, 240(sp)
	sd s2, 136(sp)
	sd s3, 232(sp)
	sd s4, 64(sp)
	sd s1, 224(sp)
	sd ra, 216(sp)
	mv s0, a1
	mv a5, a3
	addi s2, sp, 0
	addi s3, sp, 72
	addi s4, sp, 144
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a3, a0, -1
	sltiu a3, a3, 1
	or a1, a3, a1
	sw zero, 144(sp)
	sw zero, 4(s4)
	sw zero, 8(s4)
	sw zero, 12(s4)
	sw zero, 16(s4)
	sw zero, 20(s4)
	sw zero, 24(s4)
	sw zero, 28(s4)
	sw zero, 32(s4)
	sw zero, 36(s4)
	sw zero, 40(s4)
	sw zero, 44(s4)
	sw zero, 48(s4)
	sw zero, 52(s4)
	sw zero, 56(s4)
	sw zero, 60(s4)
	sw zero, 72(sp)
	sw zero, 4(s3)
	sw zero, 8(s3)
	sw zero, 12(s3)
	sw zero, 16(s3)
	sw zero, 20(s3)
	sw zero, 24(s3)
	sw zero, 28(s3)
	sw zero, 32(s3)
	sw zero, 36(s3)
	sw zero, 40(s3)
	sw zero, 44(s3)
	sw zero, 48(s3)
	sw zero, 52(s3)
	sw zero, 56(s3)
	sw zero, 60(s3)
	sw zero, 0(sp)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	sw zero, 16(s2)
	sw zero, 20(s2)
	sw zero, 24(s2)
	sw zero, 28(s2)
	sw zero, 32(s2)
	sw zero, 36(s2)
	sw zero, 40(s2)
	sw zero, 44(s2)
	sw zero, 48(s2)
	sw zero, 52(s2)
	sw zero, 56(s2)
	sw zero, 60(s2)
	beq a1, zero, label3
	j label2
label3:
	addiw s1, a0, -1
	bge a2, a5, label58
	mv a3, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label321
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1361
label256:
	mv a4, a1
label6:
	slli a1, a4, 1
	srli a1, a1, 60
	add a1, a4, a1
	sraiw a1, a1, 4
	li t1, 16
	mulw a1, a1, t1
	subw t2, a4, a1
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label263
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label268
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	j label1364
label263:
	mv a4, a1
	j label32
label58:
	sw a2, 144(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 72(sp)
	sw a1, 4(s4)
	lw a3, 4(s2)
	addw a1, a1, a3
	sw a1, 4(s3)
	sw a1, 8(s4)
	lw a3, 8(s2)
	addw a1, a1, a3
	sw a1, 8(s3)
	sw a1, 12(s4)
	lw a3, 12(s2)
	addw a1, a1, a3
	sw a1, 12(s3)
	sw a1, 16(s4)
	lw a3, 16(s2)
	addw a1, a1, a3
	sw a1, 16(s3)
	sw a1, 20(s4)
	lw a3, 20(s2)
	addw a1, a1, a3
	sw a1, 20(s3)
	sw a1, 24(s4)
	lw a3, 24(s2)
	addw a1, a1, a3
	sw a1, 24(s3)
	sw a1, 28(s4)
	lw a3, 28(s2)
	addw a1, a1, a3
	sw a1, 28(s3)
	sw a1, 32(s4)
	lw a3, 32(s2)
	addw a1, a1, a3
	sw a1, 32(s3)
	sw a1, 36(s4)
	lw a3, 36(s2)
	addw a1, a1, a3
	sw a1, 36(s3)
	sw a1, 40(s4)
	lw a3, 40(s2)
	addw a1, a1, a3
	sw a1, 40(s3)
	sw a1, 44(s4)
	lw a3, 44(s2)
	addw a1, a1, a3
	sw a1, 44(s3)
	sw a1, 48(s4)
	lw a3, 48(s2)
	addw a1, a1, a3
	sw a1, 48(s3)
	sw a1, 52(s4)
	lw a3, 52(s2)
	addw a1, a1, a3
	sw a1, 52(s3)
	sw a1, 56(s4)
	lw a3, 56(s2)
	addw a1, a1, a3
	sw a1, 56(s3)
	sw a1, 60(s4)
	lw a3, 60(s2)
	addw a1, a1, a3
	sw a1, 60(s3)
	mv a1, zero
	li a3, 16
	bge zero, a3, label61
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label183
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label486
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label664
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1381
label61:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label65
label1381:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
label1316:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1382
label486:
	mv a5, a4
label71:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label491
	j label76
label664:
	mv t1, a5
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	j label1418
label183:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label61
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label183
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label486
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label664
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1316
label1382:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1417
label491:
	mv a5, a3
label73:
	slliw a3, a5, 2
	add a3, s0, a3
	sw a4, 0(a3)
	slli a3, a1, 2
	add a4, s4, a3
	lw a3, 0(a4)
	addiw a3, a3, 1
	sw a3, 0(a4)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label183
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label486
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label664
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1382
label76:
	slli a3, a5, 2
	add a5, s4, a3
	lw a3, 0(a5)
	slliw a3, a3, 2
	add t1, s0, a3
	lw a3, 0(t1)
	sw a4, 0(t1)
	lw a4, 0(a5)
	addiw a4, a4, 1
	sw a4, 0(a5)
	ble a0, zero, label508
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label623
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	j label1408
label508:
	mv a4, a3
label77:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label513
	ble a0, zero, label516
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label521
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1387
label1408:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label623
	j label1408
label1417:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label664
	j label1417
label1388:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1389
label516:
	mv a4, a3
	j label105
label1398:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1388
label574:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label73
label521:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	j label1390
label1389:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1389
label1390:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label87
	j label1390
label1387:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1388
label105:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	slli a4, a4, 2
	add a5, s4, a4
	lw a4, 0(a5)
	slliw a4, a4, 2
	add t1, s0, a4
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label569
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label579
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	j label1399
label569:
	mv a3, a4
label107:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label574
	mv a3, a4
	ble a0, zero, label516
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label521
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label521
	j label1398
label579:
	mv t1, a3
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	j label1400
label1399:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label579
	j label1399
label1400:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label115
	j label1400
label115:
	addiw a5, a3, 256
	bge a5, a0, label589
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	j label1401
label589:
	mv a5, t1
	addiw t1, a3, 16
	bge t1, a0, label121
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	j label1402
label121:
	addiw t1, a3, 256
	bge t1, a0, label599
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	j label1403
label599:
	mv t1, a5
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	j label1404
label604:
	mv a3, t1
	addiw t1, a5, 16
	bge t1, a0, label130
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	j label1405
label130:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
label1406:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label107
	j label1406
label1404:
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label604
	j label1404
label1403:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	j label1403
label1401:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label589
	j label1401
label1402:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	j label1402
label87:
	addiw a5, a4, 256
	bge a5, a0, label531
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	j label1391
label531:
	mv a5, t1
	addiw t1, a4, 16
	bge t1, a0, label93
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	j label1392
label93:
	addiw t1, a4, 256
	bge t1, a0, label541
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	j label1393
label541:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	j label1394
label546:
	mv a4, t1
	addiw t1, a5, 16
	bge t1, a0, label102
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	j label1395
label102:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
label1396:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label105
	j label1396
label1394:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label546
	j label1394
label1393:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label541
	j label1393
label1395:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label102
	j label1395
label1391:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label531
	j label1391
label1392:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label93
	j label1392
label1405:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label130
	j label1405
label165:
	addiw t2, a5, 256
	bge t2, a0, label168
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
label1419:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	j label1419
label1418:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label165
	j label1418
label168:
	addiw t2, a5, 16
	bge t2, a0, label171
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	j label1420
label171:
	addiw t2, a5, 256
	bge t2, a0, label684
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	j label1421
label684:
	mv t2, t1
	addiw t1, a5, 16
	bge t1, a0, label689
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	j label1422
label689:
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	j label1423
label694:
	mv a5, t2
	addiw t1, t1, 1
	slli t2, t2, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
label1424:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	j label1424
label1421:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label684
	j label1421
label1420:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	j label1420
label1422:
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label689
	j label1422
label1423:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label694
	j label1423
label623:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	j label1409
label628:
	mv a5, t1
	addiw t1, a4, 256
	bge t1, a0, label144
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	j label1410
label1409:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label628
	j label1409
label1410:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	j label1410
label144:
	addiw t1, a4, 16
	bge t1, a0, label147
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	j label1411
label147:
	addiw t1, a4, 256
	bge t1, a0, label150
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	j label1412
label150:
	addiw t1, a4, 16
	bge t1, a0, label648
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	j label1413
label648:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	j label1414
label653:
	mv a4, t1
	addiw a5, a5, 1
	slli t1, t1, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
label1415:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label77
	j label1415
label1414:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label653
	j label1414
label1412:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	j label1412
label1413:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label648
	j label1413
label1411:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	j label1411
label513:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label73
label1362:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1373
label32:
	slli a1, a4, 1
	srli a1, a1, 60
	add a1, a4, a1
	sraiw a1, a1, 4
	li t1, 16
	mulw a1, a1, t1
	subw a1, a4, a1
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	addiw a1, a1, 1
	slli a4, t2, 2
	add a4, s2, a4
	sw a1, 0(a4)
	addiw a3, a3, 1
	bge a3, a5, label58
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label321
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1362
label1373:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1373
label1364:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label268
	j label1364
label268:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	j label1365
label14:
	addiw t1, a1, 256
	bge t1, a0, label17
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	j label1366
label321:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
label1374:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	j label1374
label40:
	addiw t1, a1, 256
	bge t1, a0, label43
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	j label1375
label17:
	addiw t1, a1, 16
	bge t1, a0, label20
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
label1367:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label20
	j label1367
label1366:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label17
	j label1366
label20:
	addiw t1, a1, 256
	bge t1, a0, label23
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
label1368:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label23
	j label1368
label23:
	addiw t1, a1, 16
	bge t1, a0, label26
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	j label1369
label26:
	addiw t1, a1, 16
	bge t1, a0, label29
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	j label1370
label29:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
label1371:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	j label1371
label1370:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label29
	j label1370
label1375:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	j label1375
label43:
	addiw t1, a1, 16
	bge t1, a0, label46
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	j label1376
label46:
	addiw t1, a1, 256
	bge t1, a0, label49
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1377
label1376:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	j label1376
label1377:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1377
label1361:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1362
label49:
	addiw t1, a1, 16
	bge t1, a0, label52
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1378
label52:
	addiw t1, a1, 16
	bge t1, a0, label55
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1379
label55:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
label1380:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	j label1380
label1379:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1379
label1378:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1378
label1369:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	j label1369
label1365:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	j label1365
label65:
	slli a0, s5, 2
	add a0, s4, a0
	lw a2, 0(a0)
	slli a0, s5, 2
	add a0, s3, a0
	lw a3, 0(a0)
	mv a0, s1
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label65
	addiw a0, s5, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s5, 2
	add a1, s4, a1
	sw a0, 0(a1)
	slli a1, s5, 2
	add a1, s2, a1
	lw a1, 0(a1)
	addw a0, a0, a1
	slli a1, s5, 2
	add a1, s3, a1
	sw a0, 0(a1)
	j label65
label2:
	ld ra, 216(sp)
	ld s1, 224(sp)
	ld s4, 64(sp)
	ld s3, 232(sp)
	ld s2, 136(sp)
	ld s5, 240(sp)
	ld s0, 208(sp)
	addi sp, sp, 248
	ret
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1814:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1814)
	mv s2, s0
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s0
	mv a2, zero
	mv a3, s1
	jal radixSort
	ble s1, zero, label1555
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1543
	j label1542
label1555:
	mv s0, zero
	j label1537
label1543:
	addiw a2, a0, 16
	bge a2, s1, label1547
label1546:
	slli a3, a0, 2
	add a3, s2, a3
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t2, a0, 1
	mulw t2, t2, a5
	addiw a5, a0, 2
	remw t1, t1, a5
	mulw t1, a0, t1
	addw a1, a1, t1
	addw t1, a1, t2
	lw t2, 8(a3)
	addiw a1, a0, 4
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 12(a3)
	addiw a5, a0, 5
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t2, 16(a3)
	addiw t1, a0, 6
	remw t2, t2, t1
	mulw a1, a1, t2
	addw a1, a4, a1
	lw t2, 20(a3)
	addiw a4, a0, 7
	remw t2, t2, a4
	mulw a5, a5, t2
	addw a5, a1, a5
	lw t2, 24(a3)
	addiw a1, a0, 8
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a5, t1
	lw t2, 28(a3)
	addiw a5, a0, 9
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 32(a3)
	addiw a4, a0, 10
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t2, 36(a3)
	addiw t1, a0, 11
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a1, a1, a5
	lw t2, 40(a3)
	addiw a5, a0, 12
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 44(a3)
	addiw a1, a0, 13
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a4, t1
	lw t2, 48(a3)
	addiw a4, a0, 14
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 52(a3)
	addiw a5, a0, 15
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a4, a4, t1
	addw a1, a1, a4
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a5, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1547
	j label1546
label1547:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	j label1809
label1776:
	mv s0, a1
	bge a1, zero, label1537
	j label1558
label1809:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1776
	j label1809
label1542:
	slli a3, a0, 2
	add a3, s2, a3
	lw a5, 0(a3)
	lw t1, 4(a3)
	addiw a4, a0, 3
	remw t1, t1, a4
	addiw t2, a0, 1
	mulw t2, t2, t1
	addiw t1, a0, 2
	remw a5, a5, t1
	mulw a5, a0, a5
	addw a1, a1, a5
	addw a1, a1, t2
	lw t2, 8(a3)
	addiw a5, a0, 4
	remw t2, t2, a5
	mulw t1, t1, t2
	addw t1, a1, t1
	lw t2, 12(a3)
	addiw a1, a0, 5
	remw t2, t2, a1
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t1, 16(a3)
	addiw t2, a0, 6
	remw t1, t1, t2
	mulw a5, a5, t1
	addw a5, a4, a5
	lw t1, 20(a3)
	addiw a4, a0, 7
	remw t1, t1, a4
	mulw a1, a1, t1
	addw a1, a5, a1
	lw a5, 24(a3)
	addiw t1, a0, 8
	remw a5, a5, t1
	mulw a5, t2, a5
	addw a1, a1, a5
	lw t2, 28(a3)
	addiw a5, a0, 9
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 32(a3)
	addiw a1, a0, 10
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a4, t1
	lw t2, 36(a3)
	addiw a4, a0, 11
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 40(a3)
	addiw a5, a0, 12
	remw t2, t2, a5
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 44(a3)
	addiw a1, a0, 13
	remw t2, t2, a1
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 48(a3)
	addiw a4, a0, 14
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 52(a3)
	addiw a5, a0, 15
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a4, a4, t1
	addw a1, a1, a4
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a5, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1543
	j label1542
label1537:
	li a0, 102
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label1558:
	subw s0, zero, s0
	j label1537
