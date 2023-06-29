.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
	beq a1, zero, label2
	j label183
label2:
	addiw s1, a0, -1
	bge a2, a5, label57
	mv a3, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label261
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1346
label261:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	j label1348
label57:
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
	bge zero, a3, label60
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label69
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label487
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label665
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1302
label60:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label183
	j label64
label1302:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1366
label69:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label60
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label69
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label487
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label665
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1302
label1366:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1401
label492:
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
	bge a3, a4, label69
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label487
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label665
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1366
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
	ble a0, zero, label509
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label514
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	j label1372
label509:
	mv a4, a3
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a3, a5
	beq a4, a1, label103
	ble a0, zero, label561
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label138
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1380
label1372:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label514
	j label1372
label514:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	j label1373
label1380:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1381
label561:
	mv a4, a3
label107:
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
	ble a0, zero, label573
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label114
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	j label1384
label573:
	mv a3, a4
label109:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label578
	mv a3, a4
	ble a0, zero, label561
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label138
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1383
label114:
	addiw t1, a5, 256
	bge t1, a0, label117
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	j label1385
label117:
	addiw t1, a5, 256
	bge t1, a0, label120
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	j label1386
label1385:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label117
	j label1385
label1384:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label114
	j label1384
label1381:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1393
label1383:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1381
label578:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label73
label1393:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1393
label1386:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label120
	j label1386
label138:
	addiw t1, a5, 256
	bge t1, a0, label141
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
label1394:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label141
	j label1394
label120:
	addiw t1, a5, 16
	bge t1, a0, label123
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	j label1387
label123:
	addiw t1, a5, 256
	bge t1, a0, label126
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
label1388:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label126
	j label1388
label126:
	addiw t1, a5, 16
	bge t1, a0, label129
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	j label1389
label1387:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label123
	j label1387
label1389:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label129
	j label1389
label141:
	addiw t1, a5, 256
	bge t1, a0, label144
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	j label1395
label144:
	addiw t1, a5, 16
	bge t1, a0, label147
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	j label1396
label147:
	addiw t1, a5, 256
	bge t1, a0, label150
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
label1397:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label150
	j label1397
label150:
	addiw t1, a5, 16
	bge t1, a0, label153
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
label1398:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label153
	j label1398
label153:
	addiw t1, a5, 16
	bge t1, a0, label156
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	j label1399
label156:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
label1400:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label107
	j label1400
label1399:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label156
	j label1399
label1396:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	j label1396
label1395:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label144
	j label1395
label129:
	addiw t1, a5, 16
	bge t1, a0, label132
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	j label1390
label132:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
label1391:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label109
	j label1391
label1390:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label132
	j label1390
label1401:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label665
	j label1401
label487:
	mv a5, a4
label71:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label492
	j label76
label665:
	mv t2, a5
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	j label1402
label670:
	mv t1, t2
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
label1403:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label168
	j label1403
label1402:
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label670
	j label1402
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
label1404:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label171
	j label1404
label171:
	addiw t2, a5, 256
	bge t2, a0, label174
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	j label1405
label174:
	addiw t2, a5, 16
	bge t2, a0, label690
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	j label1406
label690:
	mv t2, t1
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
label1407:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label695
	j label1407
label695:
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
label1408:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label71
	j label1408
label1406:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label690
	j label1406
label1405:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label174
	j label1405
label1373:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label83
	j label1373
label83:
	addiw a5, a4, 256
	bge a5, a0, label524
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
label1374:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label524
	j label1374
label524:
	mv a5, t1
	addiw t1, a4, 16
	bge t1, a0, label89
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	j label1375
label89:
	addiw t1, a4, 256
	bge t1, a0, label92
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	j label1376
label92:
	addiw t1, a4, 16
	bge t1, a0, label539
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	j label1377
label539:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	j label1378
label544:
	mv a4, t1
	addiw a5, a5, 1
	slli t1, t1, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	j label1379
label101:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label103
	ble a0, zero, label561
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label138
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label138
	j label1380
label1379:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label101
	j label1379
label1376:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label92
	j label1376
label1377:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label539
	j label1377
label1378:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label544
	j label1378
label1375:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label89
	j label1375
label103:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label73
label1346:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1347
label256:
	mv a4, a1
label29:
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
	ble a0, zero, label304
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label309
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	j label1356
label304:
	mv a4, a1
	j label55
label1356:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label309
	j label1356
label309:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	j label1357
label55:
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
	bge a3, a5, label57
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label261
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1346
label37:
	addiw t1, a1, 256
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
	j label1358
label1347:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1347
label1358:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	j label1358
label40:
	addiw t1, a1, 16
	bge t1, a0, label43
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	j label1359
label1357:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label37
	j label1357
label1348:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	j label1348
label11:
	addiw t1, a1, 256
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
label1349:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	j label1349
label14:
	addiw t1, a1, 16
	bge t1, a0, label17
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	j label1350
label43:
	addiw t1, a1, 256
	bge t1, a0, label46
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	j label1360
label46:
	addiw t1, a1, 16
	bge t1, a0, label49
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	j label1361
label1360:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
	j label1360
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
	j label1362
label52:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
label1363:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	j label1363
label1361:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	j label1361
label1359:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	j label1359
label1362:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1362
label1350:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	j label1350
label17:
	addiw t1, a1, 256
	bge t1, a0, label20
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
label1351:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	j label1351
label20:
	addiw t1, a1, 16
	bge t1, a0, label23
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
label1352:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	j label1352
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
	j label1353
label26:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
label1354:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	j label1354
label1353:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	j label1353
label64:
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
	bge s5, a0, label183
	ble s5, zero, label64
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
	j label64
label183:
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
pcrel1779:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1779)
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
	ble s1, zero, label1522
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1507
	j label1514
label1522:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1748
label1754:
	mv a0, s0
label1748:
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
label1507:
	addiw a2, a0, 16
	bge a2, s1, label1511
	j label1510
label1511:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	j label1775
label1641:
	mv s0, a1
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1748
	j label1754
label1775:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1641
	j label1775
label1514:
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
	lw t2, 16(a3)
	addiw t1, a0, 6
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a5, a4, a5
	lw t2, 20(a3)
	addiw a4, a0, 7
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, a5, a1
	lw t2, 24(a3)
	addiw a5, a0, 8
	remw t2, t2, a5
	mulw t1, t1, t2
	addw t1, a1, t1
	lw t2, 28(a3)
	addiw a1, a0, 9
	remw t2, t2, a1
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 32(a3)
	addiw a4, a0, 10
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 36(a3)
	addiw a5, a0, 11
	remw t2, t2, a5
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 40(a3)
	addiw a1, a0, 12
	remw t2, t2, a1
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 44(a3)
	addiw a4, a0, 13
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 48(a3)
	addiw a5, a0, 14
	remw t2, t2, a5
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 52(a3)
	addiw a1, a0, 15
	remw t2, t2, a1
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a4, a4, a5
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a1, a0
	addw a1, a4, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1507
	j label1514
label1510:
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
	addw a1, a1, t1
	lw t2, 12(a3)
	addiw t1, a0, 5
	remw t2, t2, t1
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 16(a3)
	addiw a1, a0, 6
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a4, a4, a5
	lw t2, 20(a3)
	addiw a5, a0, 7
	remw t2, t2, a5
	mulw t1, t1, t2
	addw a4, a4, t1
	lw t2, 24(a3)
	addiw t1, a0, 8
	remw t2, t2, t1
	mulw a1, a1, t2
	addw a1, a4, a1
	lw t2, 28(a3)
	addiw a4, a0, 9
	remw t2, t2, a4
	mulw a5, a5, t2
	addw a5, a1, a5
	lw t2, 32(a3)
	addiw a1, a0, 10
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a5, t1
	lw t2, 36(a3)
	addiw a5, a0, 11
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 40(a3)
	addiw a4, a0, 12
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 44(a3)
	addiw a1, a0, 13
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 48(a3)
	addiw a5, a0, 14
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 52(a3)
	addiw a4, a0, 15
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a1, a1, a5
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1511
	j label1510
