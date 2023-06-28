.data
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
label1348:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1349
label256:
	mv a4, a1
	j label29
label1349:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1349
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
	j label1350
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
	mv a4, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label309
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	j label1358
label304:
	mv a4, a1
	j label55
label309:
	mv t1, a1
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	j label1359
label314:
	mv a4, t1
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
	j label1360
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
	bge zero, a3, label177
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label63
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label458
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label463
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
label1304:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	j label1368
label177:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label183
	j label182
label1368:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	j label1371
label458:
	mv a5, a4
	slli t1, a4, 1
	srli t1, t1, 60
	add t1, a4, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a4, t1
	beq a5, a1, label504
	j label94
label1371:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	j label1371
label504:
	mv a5, a3
label91:
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
	bge a3, a4, label63
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label458
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label463
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	j label1368
label94:
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
	ble a0, zero, label521
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label636
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	j label1402
label521:
	mv a4, a3
label95:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label526
	ble a0, zero, label529
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label592
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	j label1382
label592:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	j label1395
label1382:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	j label1394
label529:
	mv a4, a3
label99:
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
	ble a0, zero, label541
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label546
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	j label1385
label541:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a4, a5
	beq a3, a1, label587
	mv a3, a4
	ble a0, zero, label529
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label592
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	j label1393
label125:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label587
	mv a3, a4
	ble a0, zero, label529
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label592
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
label1393:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	j label1382
label587:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label91
label1385:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label546
	j label1385
label546:
	mv t1, a3
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
label1386:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label551
	j label1386
label551:
	mv a5, t1
	addiw t1, a3, 256
	bge t1, a0, label110
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
label1387:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	j label1387
label1395:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label133
	j label1395
label1394:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label592
	j label1394
label110:
	addiw t1, a3, 16
	bge t1, a0, label113
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	j label1388
label113:
	addiw t1, a3, 256
	bge t1, a0, label566
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	j label1389
label566:
	mv t1, a5
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	j label1390
label571:
	mv a3, t1
	addiw t1, a5, 16
	bge t1, a0, label122
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	j label1391
label122:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
label1392:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label125
	j label1392
label1390:
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label571
	j label1390
label1388:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	j label1388
label1389:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label566
	j label1389
label133:
	addiw a5, a4, 256
	bge a5, a0, label602
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	j label1396
label602:
	mv a5, t1
	addiw t1, a4, 16
	bge t1, a0, label139
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	j label1397
label139:
	addiw t1, a4, 256
	bge t1, a0, label612
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	j label1398
label612:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	j label1399
label617:
	mv a4, t1
	addiw t1, a5, 16
	bge t1, a0, label148
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	j label1400
label148:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
label1401:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	j label1401
label1400:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	j label1400
label1399:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label617
	j label1399
label1398:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label612
	j label1398
label1397:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label139
	j label1397
label1396:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label602
	j label1396
label1391:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	j label1391
label463:
	mv t1, a5
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
label1372:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label71
	j label1372
label71:
	addiw t2, a5, 256
	bge t2, a0, label74
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
label1373:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label74
	j label1373
label74:
	addiw t2, a5, 16
	bge t2, a0, label77
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	j label1374
label77:
	addiw t2, a5, 256
	bge t2, a0, label483
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
label1375:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label483
	j label1375
label483:
	mv t2, t1
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	j label1376
label488:
	mv a5, t2
	addiw t2, t1, 16
	bge t2, a0, label86
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	j label1377
label86:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
label1378:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	j label1378
label1377:
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	j label1377
label1374:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label77
	j label1374
label1376:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label488
	j label1376
label1402:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label636
	j label1402
label636:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	j label1403
label641:
	mv a5, t1
	addiw t1, a4, 256
	bge t1, a0, label162
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
label1404:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	j label1404
label162:
	addiw t1, a4, 16
	bge t1, a0, label165
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	j label1405
label165:
	addiw t1, a4, 256
	bge t1, a0, label656
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	j label1406
label656:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	j label1407
label661:
	mv a4, t1
	addiw t1, a5, 16
	bge t1, a0, label174
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	j label1408
label174:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
label1409:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	j label1409
label1408:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label174
	j label1408
label1407:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label661
	j label1407
label1406:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label656
	j label1406
label1405:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	j label1405
label1403:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label641
	j label1403
label63:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label177
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label63
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label458
	mv a5, a4
	mv t2, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label463
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label463
	j label1304
label89:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label504
	j label94
label526:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label91
label1350:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label11
	j label1350
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
	j label1351
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
	j label1361
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
	j label1362
label1361:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label43
	j label1361
label1360:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	j label1360
label1351:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label14
	j label1351
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
label1352:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label17
	j label1352
label1359:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label314
	j label1359
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
label1353:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label20
	j label1353
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
	j label1354
label1358:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label309
	j label1358
label1354:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label23
	j label1354
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
	j label1355
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
label1356:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label29
	j label1356
label1355:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label26
	j label1355
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
label1363:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label49
	j label1363
label1362:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label46
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
	j label1364
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
label1365:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label55
	j label1365
label1364:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1364
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
	j label1348
label182:
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
	ble s5, zero, label182
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
	j label182
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
pcrel1775:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1775)
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
	ble s1, zero, label1527
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1515
	j label1514
label1527:
	mv s0, zero
	j label1509
label1515:
	addiw a2, a0, 16
	bge a2, s1, label1518
label1521:
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
	lw t1, 16(a3)
	addiw t2, a0, 6
	remw t1, t1, t2
	mulw a1, a1, t1
	addw a1, a4, a1
	lw a4, 20(a3)
	addiw t1, a0, 7
	remw a4, a4, t1
	mulw a4, a5, a4
	addw a1, a1, a4
	lw a5, 24(a3)
	addiw a4, a0, 8
	remw a5, a5, a4
	mulw a5, t2, a5
	addw a5, a1, a5
	lw t2, 28(a3)
	addiw a1, a0, 9
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a5, t1
	lw t2, 32(a3)
	addiw a5, a0, 10
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 36(a3)
	addiw a4, a0, 11
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 40(a3)
	addiw a1, a0, 12
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 44(a3)
	addiw a5, a0, 13
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 48(a3)
	addiw a4, a0, 14
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 52(a3)
	addiw a1, a0, 15
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a5, t1, a5
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a4, a4, t1
	addw a4, a5, a4
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a1, a0
	addw a1, a4, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1518
	j label1521
label1518:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
label1772:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1651
	j label1772
label1651:
	mv s0, a1
	bge a1, zero, label1509
	j label1530
label1514:
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
	addw a1, a1, t2
	lw t2, 8(a3)
	addiw t1, a0, 4
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a1, a1, a5
	lw t2, 12(a3)
	addiw a5, a0, 5
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 16(a3)
	addiw a1, a0, 6
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a4, t1
	lw t2, 20(a3)
	addiw a4, a0, 7
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 24(a3)
	addiw a5, a0, 8
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t2, 28(a3)
	addiw t1, a0, 9
	remw t2, t2, t1
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 32(a3)
	addiw a1, a0, 10
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a5, a4, a5
	lw t2, 36(a3)
	addiw a4, a0, 11
	remw t2, t2, a4
	mulw t1, t1, t2
	addw t1, a5, t1
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
	bge a2, s1, label1515
	j label1514
label1509:
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
label1530:
	subw s0, zero, s0
	j label1509
