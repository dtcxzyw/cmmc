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
label3:
	addiw s1, a0, -1
	bge a2, a5, label58
	mv a3, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv a4, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label261
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	j label1356
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
	bge zero, a3, label178
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label64
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
	bge t1, a0, label636
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1312
label178:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label183
label182:
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
	j label183
label1312:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
label1377:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1379
label64:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label178
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label64
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
	bge t1, a0, label636
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1312
label1379:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1412
label458:
	mv a5, a4
label66:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label463
	j label71
label463:
	mv a5, a3
label68:
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
	bge a3, a4, label64
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
	bge t1, a0, label636
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1377
label1412:
	mv a5, zero
	mv t2, t1
	li t1, 4096
	addw t1, t2, t1
	bge t1, a0, label636
	j label1412
label636:
	mv t1, a5
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	j label1413
label71:
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
	ble a0, zero, label480
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label485
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	j label1383
label480:
	mv a4, a3
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a3, a5
	beq a4, a1, label526
	ble a0, zero, label529
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label534
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1391
label485:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	j label1384
label490:
	mv a5, t1
	addiw t1, a4, 256
	bge t1, a0, label81
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	j label1385
label1391:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
label1392:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
label1393:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1393
label534:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
label1394:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label106
	j label1394
label106:
	addiw a5, a4, 256
	bge a5, a0, label544
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
label1395:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label544
	j label1395
label544:
	mv a5, t1
	addiw t1, a4, 16
	bge t1, a0, label112
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	j label1396
label112:
	addiw t1, a4, 256
	bge t1, a0, label554
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	j label1397
label554:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
label1398:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label559
	j label1398
label559:
	mv a4, t1
	addiw t1, a5, 16
	bge t1, a0, label121
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	j label1399
label121:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
label1400:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label124
	j label1400
label1397:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label554
	j label1397
label1399:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label121
	j label1399
label124:
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
	ble a0, zero, label582
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label587
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	j label1403
label582:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a4, a5
	beq a3, a1, label628
	mv a3, a4
	ble a0, zero, label529
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label534
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1411
label1403:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label587
	j label1403
label587:
	mv t1, a3
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	j label1404
label1411:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1392
label1404:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label132
	j label1404
label132:
	addiw a5, a3, 256
	bge a5, a0, label597
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
label1405:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label597
	j label1405
label597:
	mv a5, t1
	addiw t1, a3, 16
	bge t1, a0, label138
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	j label1406
label138:
	addiw t1, a3, 256
	bge t1, a0, label607
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	j label1407
label607:
	mv t1, a5
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	j label1408
label612:
	mv a3, t1
	addiw t1, a5, 16
	bge t1, a0, label147
	mv a3, zero
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
	j label1409
label147:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
label1410:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label150
	j label1410
label1407:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label607
	j label1407
label1406:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label138
	j label1406
label1408:
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label612
	j label1408
label1396:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label112
	j label1396
label1409:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label147
	j label1409
label150:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label628
	mv a3, a4
	ble a0, zero, label529
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label534
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1411
label628:
	mv a3, a4
	j label526
label96:
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
	bge t1, a0, label534
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label534
	j label1391
label529:
	mv a4, a3
	j label124
label160:
	addiw t2, a5, 256
	bge t2, a0, label163
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
label1414:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	j label1414
label1413:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label160
	j label1413
label163:
	addiw t2, a5, 16
	bge t2, a0, label166
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
label1415:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	j label1415
label166:
	addiw t2, a5, 256
	bge t2, a0, label169
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	j label1416
label169:
	addiw t2, a5, 16
	bge t2, a0, label661
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
label1417:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	j label1417
label661:
	mv t2, t1
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
label1418:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	j label1418
label666:
	mv a5, t2
	addiw t1, t1, 1
	slli t2, t2, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
label1419:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	j label1419
label1416:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	j label1416
label1383:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label485
	j label1383
label1384:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label490
	j label1384
label1385:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label81
	j label1385
label81:
	addiw t1, a4, 16
	bge t1, a0, label84
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	j label1386
label84:
	addiw t1, a4, 256
	bge t1, a0, label87
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	j label1387
label87:
	addiw t1, a4, 16
	bge t1, a0, label510
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	j label1388
label510:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	j label1389
label515:
	mv a4, t1
	addiw a5, a5, 1
	slli t1, t1, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
label1390:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label96
	j label1390
label1388:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label510
	j label1388
label1389:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label515
	j label1389
label1387:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label87
	j label1387
label1386:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label84
	j label1386
label526:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label68
label1356:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
label1357:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	j label1358
label256:
	mv a4, a1
	j label30
label1358:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	j label1358
label261:
	mv t1, a1
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	j label1359
label30:
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
	bge t1, a0, label321
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1368
label304:
	mv a4, a1
	j label32
label1368:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1368
label321:
	mv t1, a1
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	j label1369
label12:
	addiw a4, a1, 256
	bge a4, a0, label271
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	j label1360
label271:
	mv a4, t1
	addiw t1, a1, 16
	bge t1, a0, label18
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	j label1361
label1360:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label271
	j label1360
label1359:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label12
	j label1359
label40:
	addiw a4, a1, 256
	bge a4, a0, label43
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	j label1370
label43:
	addiw a4, a1, 16
	bge a4, a0, label336
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	j label1371
label336:
	mv a4, t1
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
	j label1372
label1371:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 16
	bge a4, a0, label336
	j label1371
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
	j label1373
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
	j label1374
label55:
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
label1375:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	j label1375
label1374:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1374
label1373:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1373
label1372:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1372
label1361:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	j label1361
label1369:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label40
	j label1369
label1370:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label43
	j label1370
label18:
	addiw t1, a1, 256
	bge t1, a0, label21
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
label1362:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	j label1362
label21:
	addiw t1, a1, 16
	bge t1, a0, label24
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
label1363:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	j label1363
label24:
	addiw t1, a1, 16
	bge t1, a0, label27
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	j label1364
label27:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
label1365:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	j label1365
label1364:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	j label1364
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
	mv a4, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label261
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label261
	j label1357
label183:
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
	ble s5, zero, label183
	j label182
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1796:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1796)
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
	ble s1, zero, label1538
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1520
	j label1527
label1538:
	mv a1, zero
	mv s0, zero
	j label1531
label1520:
	addiw a2, a0, 16
	bge a2, s1, label1524
label1523:
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
	addw t1, t1, a4
	lw t2, 16(a3)
	addiw a4, a0, 6
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 20(a3)
	addiw a1, a0, 7
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a5, t1, a5
	lw t2, 24(a3)
	addiw t1, a0, 8
	remw t2, t2, t1
	mulw a4, a4, t2
	addw a4, a5, a4
	lw t2, 28(a3)
	addiw a5, a0, 9
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a4, a4, a1
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
	bge a2, s1, label1524
	j label1523
label1524:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	j label1792
label1528:
	bge a1, zero, label1758
	j label1771
label1758:
	mv s0, a1
label1531:
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
label1792:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1528
	j label1792
label1527:
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
	addw t1, t1, a4
	lw t2, 16(a3)
	addiw a4, a0, 6
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 20(a3)
	addiw a5, a0, 7
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t2, 24(a3)
	addiw t1, a0, 8
	remw t2, t2, t1
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 28(a3)
	addiw a1, a0, 9
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a5, a4, a5
	lw t2, 32(a3)
	addiw a4, a0, 10
	remw t2, t2, a4
	mulw t1, t1, t2
	addw t1, a5, t1
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
	bge a2, s1, label1520
	j label1527
label1771:
	subw s0, zero, a1
	j label1531
