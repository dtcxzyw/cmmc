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
pcrel675:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel675)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel676:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel676)
pcrel677:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel677)
	mv a1, zero
	bge zero, s0, label75
	slt a2, zero, s0
	xori a2, a2, 1
	slti a3, zero, 0
	or a2, a2, a3
	ble s0, zero, label10
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, zero, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label7
	j label557
label75:
	mv a5, zero
	slt a1, zero, s0
	xori a1, a1, 1
	slti a2, zero, 0
	or a2, a1, a2
	mulw a3, s0, zero
	bge zero, s0, label13
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, zero, t2
	or t4, a1, t4
	bge zero, s0, label63
	mv a1, zero
	bge zero, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
label387:
	addw t5, t2, a1
	beq a4, zero, label48
	j label418
label33:
	addiw t1, t1, 1
	slti a1, t1, 0
	or a4, a2, a1
	slt t2, t1, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, t1
	addw t3, a5, t2
	or t4, a1, t4
	bge t1, s0, label63
	mv a1, zero
	bge zero, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, zero
	beq a4, zero, label48
	li t6, -1
	slti a6, zero, 0
	or a6, a2, a6
	slt a7, zero, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	j label449
label418:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
label449:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
label510:
	beq a4, zero, label62
	j label542
label63:
	addiw a5, a5, 1
	slt a1, a5, s0
	xori a1, a1, 1
	slti a2, a5, 0
	or a2, a1, a2
	mulw a3, s0, a5
	bge a5, s0, label13
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, a5, t2
	or t4, a1, t4
	bge zero, s0, label63
	mv a1, zero
	bge zero, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, zero
	beq a4, zero, label48
	j label418
label542:
	li t5, -1
	blt t5, zero, label223
label575:
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label608
label13:
	mulw s0, s0, s0
	ble s0, zero, label14
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label119
	j label17
label119:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	j label20
label21:
	addiw a2, a1, 4
	bge a2, s0, label23
	j label28
label223:
	mv t5, zero
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	j label609
label43:
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label450
label609:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	j label510
label62:
	sh2add t5, t3, a0
	lw t5, 0(t5)
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	j label575
label54:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	beq a4, zero, label55
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label58
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label43
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	j label616
label55:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label58
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label43
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	j label617
label576:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	j label609
label616:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
label617:
	li t5, -1
	bge t5, zero, label54
label618:
	addw t5, t2, a1
	beq a4, zero, label48
	j label576
label38:
	addw t5, a3, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	j label387
label608:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
label480:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	j label511
label58:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label43
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	j label618
label543:
	addw t5, t2, a1
	beq a4, zero, label48
	j label576
label48:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	j label609
label511:
	li t5, -1
	bge t5, zero, label54
	j label543
label51:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	j label510
label450:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	j label480
label61:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	bge t5, zero, label54
	addw t5, t2, a1
	beq a4, zero, label48
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label51
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	bge a1, s0, label33
	beq a4, zero, label62
	li t5, -1
	blt t5, zero, label223
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label43
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label61
	li t5, -1
	bge t5, zero, label54
	j label543
label590:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
label594:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
label595:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	j label594
label10:
	addiw a1, a1, 1
	bge a1, s0, label75
	slt a2, a1, s0
	xori a2, a2, 1
	slti a3, a1, 0
	or a2, a2, a3
	ble s0, zero, label10
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	j label590
label557:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	j label590
label7:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	bge a3, s0, label10
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label7
	j label595
label23:
	addiw a2, a1, 4
	bge a2, s0, label25
	j label27
label25:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
label598:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label598
label17:
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
	bge a1, s0, label119
	j label17
label27:
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
	bge a2, s0, label25
	j label27
label20:
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
	bge a2, s0, label21
	j label20
label28:
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
	bge a2, s0, label23
	j label28
label14:
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
