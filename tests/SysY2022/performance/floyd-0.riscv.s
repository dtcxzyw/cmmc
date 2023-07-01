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
pcrel666:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel666)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel667:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel667)
pcrel668:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel668)
	mv a1, zero
	ble s0, zero, label75
	slt a2, zero, s0
	xori a2, a2, 1
	slti a3, zero, 0
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, zero, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label586
label75:
	mv a5, zero
	slt a1, zero, s0
	xori a1, a1, 1
	slti a2, zero, 0
	or a2, a1, a2
	mulw a3, s0, zero
	ble s0, zero, label41
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, zero, t2
	or t4, a1, t4
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	j label587
label40:
	addiw a5, a5, 1
	slt a1, a5, s0
	xori a1, a1, 1
	slti a2, a5, 0
	or a2, a1, a2
	mulw a3, s0, a5
	ble s0, a5, label41
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, a5, t2
	or t4, a1, t4
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, zero
	beq a4, zero, label25
	j label412
label41:
	mulw s0, s0, s0
	ble s0, zero, label42
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label198
	j label45
label198:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label49
	j label48
label49:
	addiw a2, a1, 4
	ble s0, a2, label51
label56:
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
	ble s0, a2, label51
	j label56
label10:
	addiw t1, t1, 1
	slti a1, t1, 0
	or a4, a2, a1
	slt t2, t1, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, t1
	addw t3, a5, t2
	or t4, a1, t4
	ble s0, t1, label40
	mv a1, zero
	ble s0, zero, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, zero
	beq a4, zero, label25
	li t6, -1
	slti a6, zero, 0
	or a6, a2, a6
	slt a7, zero, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
label442:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label501
label534:
	addw t5, t2, a1
	beq a4, zero, label25
	j label566
label38:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	j label534
label106:
	mv t5, zero
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	j label598
label501:
	beq a4, zero, label39
	j label533
label598:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label501
label587:
	addw t5, t2, a1
	beq a4, zero, label25
label412:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	j label442
label20:
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	j label443
label533:
	li t5, -1
	blt t5, zero, label106
label565:
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label15
	j label597
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t5, -1
	blt t5, zero, label106
	j label565
label28:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label501
label15:
	addw t5, a3, a1
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	j label412
label25:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	j label598
label31:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	beq a4, zero, label32
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label35
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	j label605
label35:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label31
	j label607
label597:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
label472:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label502
label605:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label606
label32:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label35
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label20
	addw t5, t2, a1
	beq a4, zero, label25
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
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
	beq t5, zero, label38
label606:
	li t5, -1
	bge t5, zero, label31
label607:
	addw t5, t2, a1
	beq a4, zero, label25
	j label566
label443:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label20
	j label472
label566:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label28
	j label598
label502:
	li t5, -1
	bge t5, zero, label31
	j label534
label586:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label615
label58:
	addiw a1, a1, 1
	ble s0, a1, label75
	slt a2, a1, s0
	xori a2, a2, 1
	slti a3, a1, 0
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label586
label615:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
label616:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label615
label61:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	j label616
label51:
	addiw a2, a1, 4
	ble s0, a2, label53
	j label55
label53:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
label612:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	j label612
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
	ble s0, a2, label53
	j label55
label45:
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
	ble s0, a1, label198
	j label45
label48:
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
	ble s0, a2, label49
	j label48
label42:
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
