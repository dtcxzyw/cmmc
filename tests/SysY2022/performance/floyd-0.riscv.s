.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel639:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel639)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel640:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel640)
pcrel641:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel641)
	mv a1, zero
	bge zero, s0, label75
	slt a2, zero, s0
	xori a2, a2, 1
	slti a3, zero, 0
	or a2, a2, a3
	ble s0, zero, label63
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, zero, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, zero, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	j label537
label75:
	mv a5, zero
	slti a1, zero, 0
	slt a2, zero, s0
	xori a2, a2, 1
	or a2, a1, a2
	mulw a3, s0, zero
	bge zero, s0, label41
	mv t1, zero
	or a4, a2, a1
	slt t2, zero, s0
	xori t2, t2, 1
	or a4, a4, t2
	or t4, a1, t2
	mulw t2, s0, zero
	addw t3, zero, t2
	bge zero, s0, label40
	mv a1, zero
	bge zero, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	j label568
label41:
	mulw s0, s0, s0
	ble s0, zero, label56
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label198
	j label44
label568:
	addw t5, a1, t2
	beq a4, zero, label33
	j label408
label10:
	addiw t1, t1, 1
	slti a1, t1, 0
	or a4, a2, a1
	slt t2, t1, s0
	xori t2, t2, 1
	or a4, a4, t2
	or t4, a1, t2
	mulw t2, s0, t1
	addw t3, a5, t2
	bge t1, s0, label40
	mv a1, zero
	bge zero, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, zero, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, zero, 0
	or a6, a2, a6
	slt a7, zero, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	j label435
label408:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	j label435
label40:
	addiw a5, a5, 1
	slti a1, a5, 0
	slt a2, a5, s0
	xori a2, a2, 1
	or a2, a1, a2
	mulw a3, s0, a5
	bge a5, s0, label41
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t2, t2, 1
	or a4, a4, t2
	or t4, a1, t2
	mulw t2, s0, zero
	addw t3, a5, t2
	bge zero, s0, label40
	mv a1, zero
	bge zero, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, zero, t2
	beq a4, zero, label33
	j label408
label488:
	beq a4, zero, label39
	j label518
label579:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	j label488
label26:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label29
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	j label489
label33:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	j label579
label20:
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	j label436
label435:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	j label488
label36:
	addw a6, a1, a3
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	j label488
label518:
	li t5, -1
	blt t5, zero, label106
label548:
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	j label578
label106:
	mv t5, zero
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	j label579
label15:
	addw t5, a1, a3
	sh2add t5, t5, a0
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	j label408
label462:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
label489:
	li t5, -1
	bge t5, zero, label25
label519:
	addw t5, a1, t2
	beq a4, zero, label33
	j label549
label22:
	addw t5, a1, t2
	sh2add t5, t5, a0
	lw t5, 0(t5)
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	j label519
label25:
	addw t5, a1, t2
	sh2add t5, t5, a0
	lw t5, 0(t5)
	beq a4, zero, label26
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label29
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	j label462
label39:
	sh2add t5, t3, a0
	lw t5, 0(t5)
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	j label548
label29:
	addw a6, a1, a3
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, a1, t2
	beq a4, zero, label33
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	bge t5, zero, label25
	j label519
label436:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	j label462
label578:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	j label462
label549:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	j label579
label567:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
label594:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	j label595
label60:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
label595:
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	j label594
label63:
	addiw a1, a1, 1
	bge a1, s0, label75
	slt a2, a1, s0
	xori a2, a2, 1
	slti a3, a1, 0
	or a2, a2, a3
	ble s0, zero, label63
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, zero, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	j label567
label537:
	li a5, -1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label63
	j label567
label198:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label48
label47:
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label48
	j label47
label44:
	sh2add a3, a2, a0
	lw a4, 0(a3)
	sh2add a2, a2, s1
	sw a4, 0(a2)
	lw a4, 4(a3)
	sw a4, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label198
	j label44
label48:
	addiw a2, a1, 4
	bge a2, s0, label51
	j label50
label51:
	addiw a2, a1, 4
	bge a2, s0, label53
	j label55
label53:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
label591:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label56
	j label591
label55:
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	j label55
label50:
	sh2add a3, a1, a0
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label51
	j label50
label56:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
