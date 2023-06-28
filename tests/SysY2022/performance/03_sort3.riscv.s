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
	j label1370
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
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label636
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1324
label178:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label182
label183:
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
label1324:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1391
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
	j label68
label463:
	mv a5, a3
	slliw a3, a3, 2
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
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label636
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1324
label68:
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
	ble a0, zero, label474
	mv a4, a3
	mv t1, zero
	li a5, 4096
	addw a5, zero, a5
	bge a5, a0, label589
	mv a4, zero
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	j label1418
label474:
	mv a4, a3
label69:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label125
	ble a0, zero, label482
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label487
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	j label1396
label125:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
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
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label636
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1324
label1396:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
label1397:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	j label1398
label1391:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1428
label487:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	j label1399
label1407:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	j label1397
label540:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
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
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label636
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1391
label1428:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1428
label1399:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label79
	j label1399
label1398:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	j label1398
label79:
	addiw a5, a4, 256
	bge a5, a0, label497
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	j label1400
label497:
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	j label1401
label85:
	addiw a4, a5, 256
	bge a4, a0, label88
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	j label1402
label88:
	addiw a4, a5, 16
	bge a4, a0, label512
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	j label1403
label512:
	mv a4, t1
	addiw t1, a5, 16
	bge t1, a0, label94
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	j label1404
label94:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
label1405:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label97
	j label1405
label1403:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label512
	j label1403
label1402:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 256
	bge a4, a0, label88
	j label1402
label1404:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label94
	j label1404
label1401:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label85
	j label1401
label1400:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label497
	j label1400
label482:
	mv a4, a3
label97:
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
	ble a0, zero, label535
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label545
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	j label1408
label535:
	mv a3, a4
label99:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label540
	mv a3, a4
	ble a0, zero, label482
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label487
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label487
	j label1407
label1408:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label545
	j label1408
label545:
	mv t1, a3
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	j label1409
label550:
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
	j label1410
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
label1411:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 16
	bge t1, a0, label113
	j label1411
label113:
	addiw t1, a3, 256
	bge t1, a0, label565
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	j label1412
label565:
	mv t1, a5
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	j label1413
label570:
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
	j label1414
label122:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
label1415:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	j label1415
label1410:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label110
	j label1410
label1412:
	mv a5, zero
	mv a3, t1
	addiw t1, t1, 256
	bge t1, a0, label565
	j label1412
label1413:
	mv t1, zero
	mv a5, a3
	addiw a3, a3, 16
	bge a3, a0, label570
	j label1413
label1409:
	mv t1, zero
	mv a3, a5
	addiw a5, a5, 256
	bge a5, a0, label550
	j label1409
label1414:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label122
	j label1414
label636:
	mv t2, a5
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
label1429:
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label641
	j label1429
label641:
	mv t1, t2
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
label1430:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label163
	j label1430
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
	j label1431
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
	j label1432
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
	j label1433
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
label1434:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label666
	j label1434
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
label1435:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label66
	j label1435
label1432:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label169
	j label1432
label1431:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label166
	j label1431
label1433:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 16
	bge t2, a0, label661
	j label1433
label1418:
	mv a4, zero
	mv t1, a5
	li a5, 4096
	addw a5, t1, a5
	bge a5, a0, label589
	j label1418
label589:
	mv a5, a4
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
label1419:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label133
	j label1419
label133:
	addiw t1, a4, 256
	bge t1, a0, label599
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	j label1420
label599:
	mv t1, a5
	addiw a5, a4, 16
	bge a5, a0, label139
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	j label1421
label139:
	addiw a5, a4, 256
	bge a5, a0, label609
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	j label1422
label609:
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	j label1423
label614:
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
	j label1424
label148:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
label1425:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label69
	j label1425
label1424:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label148
	j label1424
label1422:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label609
	j label1422
label1423:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label614
	j label1423
label1421:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 16
	bge a5, a0, label139
	j label1421
label1420:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label599
	j label1420
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
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label636
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label636
	j label1324
label1370:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1371
label256:
	mv a4, a1
	j label30
label261:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	j label1373
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
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1382
label304:
	mv a4, a1
	j label32
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
	j label1383
label1382:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label321
	j label1382
label1373:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label12
	j label1373
label12:
	addiw t1, a1, 256
	bge t1, a0, label15
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	j label1374
label15:
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
label1375:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label18
	j label1375
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
label1376:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label21
	j label1376
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
	j label1377
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
	j label1378
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
label1379:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label30
	j label1379
label1377:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label24
	j label1377
label1378:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label27
	j label1378
label1383:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label40
	j label1383
label1371:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
label1372:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label261
	j label1372
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
	j label1371
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
label1384:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	j label1384
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
label1385:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	j label1385
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
	j label1386
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
	j label1387
label1386:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1386
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
	j label1388
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
label1389:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label32
	j label1389
label1387:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1387
label1388:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1388
label1374:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label15
	j label1374
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
	bge s5, a0, label2
	ble s5, zero, label182
	j label183
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1815:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1815)
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
	ble s1, zero, label1558
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1545
	j label1552
label1558:
	mv s0, zero
	j label1540
label1561:
	subw s0, zero, s0
	j label1540
label1545:
	addiw a2, a0, 16
	bge a2, s1, label1549
	j label1548
label1549:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	j label1811
label1682:
	mv s0, a1
	bge a1, zero, label1540
	j label1561
label1811:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1682
	j label1811
label1548:
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
	addw t1, a4, t1
	lw t2, 24(a3)
	addiw a4, a0, 8
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t2, 28(a3)
	addiw t1, a0, 9
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a5, a1, a5
	lw t2, 32(a3)
	addiw a1, a0, 10
	remw t2, t2, a1
	mulw a4, a4, t2
	addw a5, a5, a4
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
	bge a2, s1, label1549
	j label1548
label1552:
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
	addw a5, t1, a5
	lw t2, 24(a3)
	addiw t1, a0, 8
	remw t2, t2, t1
	mulw a1, a1, t2
	addw a1, a5, a1
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
	bge a2, s1, label1545
	j label1552
label1540:
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
