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
pcrel656:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel656)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel657:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel657)
pcrel658:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel658)
	mv a1, zero
	ble s0, zero, label75
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
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label60
	j label544
label75:
	mv a5, zero
	slt a1, zero, s0
	xori a1, a1, 1
	slti a2, zero, 0
	or a2, a1, a2
	mulw a3, s0, zero
	ble s0, zero, label6
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, zero, t2
	or t4, a1, t4
	ble s0, zero, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	j label576
label6:
	mulw s0, s0, s0
	ble s0, zero, label21
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label93
	j label9
label408:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	j label437
label56:
	addiw a5, a5, 1
	slt a1, a5, s0
	xori a1, a1, 1
	slti a2, a5, 0
	or a2, a1, a2
	mulw a3, s0, a5
	ble s0, a5, label6
	mv t1, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t2, zero, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, zero
	addw t3, a5, t2
	or t4, a1, t4
	ble s0, zero, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, zero
	beq a4, zero, label42
	j label408
label26:
	addiw t1, t1, 1
	slti a1, t1, 0
	or a4, a2, a1
	slt t2, t1, s0
	xori t4, t2, 1
	or a4, a4, t4
	mulw t2, s0, t1
	addw t3, a5, t2
	or t4, a1, t4
	ble s0, t1, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, zero, 0
	or t5, a2, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, zero, 0
	or t5, t4, t5
	slt t6, zero, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, zero
	beq a4, zero, label42
	li t6, -1
	slti a6, zero, 0
	or a6, a2, a6
	slt a7, zero, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	j label437
label197:
	mv t5, zero
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	j label588
label437:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	j label494
label588:
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
label494:
	beq a4, zero, label55
	j label525
label576:
	addw t5, t2, a1
	beq a4, zero, label42
	j label408
label525:
	li t5, -1
	blt t5, zero, label197
label556:
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	j label587
label36:
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	j label438
label31:
	addw t5, a3, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	j label408
label587:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
label466:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label495
label526:
	addw t5, t2, a1
	beq a4, zero, label42
	j label557
label38:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	j label526
label48:
	addw t5, t2, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	beq a4, zero, label49
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label52
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label36
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	j label595
label49:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label52
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label36
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	j label596
label52:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label36
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	j label597
label55:
	sh2add t5, t3, a0
	lw t5, 0(t5)
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	j label556
label495:
	li t5, -1
	bge t5, zero, label48
	j label526
label557:
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	j label588
label595:
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
label596:
	li t5, -1
	bge t5, zero, label48
label597:
	addw t5, t2, a1
	beq a4, zero, label42
	j label557
label42:
	sh2add t6, t3, a0
	lw t6, 0(t6)
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	j label588
label45:
	addw a6, a3, a1
	sh2add a6, a6, a0
	lw a6, 0(a6)
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t5, -1
	blt t5, zero, label197
	slti t5, a1, 0
	or t5, a2, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label31
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	slti t5, a1, 0
	or t5, t4, t5
	slt t6, a1, s0
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label38
	li t5, -1
	bge t5, zero, label48
	addw t5, t2, a1
	beq a4, zero, label42
	li t6, -1
	slti a6, a1, 0
	or a6, a2, a6
	slt a7, a1, s0
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	sh2add t5, t5, a0
	sw t6, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label26
	j label494
label438:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label36
	j label466
label575:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
label603:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
label604:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	j label603
label63:
	addiw a1, a1, 1
	ble s0, a1, label75
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
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	j label575
label544:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	j label575
label60:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
	j label604
label9:
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
	ble s0, a1, label93
	j label9
label93:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label13
	j label12
label13:
	addiw a2, a1, 4
	ble s0, a2, label15
	j label20
label15:
	addiw a2, a1, 4
	ble s0, a2, label17
label19:
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
	ble s0, a2, label17
	j label19
label17:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
label577:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label21
	j label577
label12:
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
	ble s0, a2, label13
	j label12
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
	ble s0, a2, label15
	j label20
label21:
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
