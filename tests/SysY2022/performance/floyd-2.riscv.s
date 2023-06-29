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
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel824:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel824)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel825:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel825)
pcrel826:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel826)
	mv a1, zero
	bge zero, s1, label75
	slt a2, zero, s1
	xori a2, a2, 1
	slti a3, zero, 0
	or a4, a2, a3
	ble s1, zero, label63
	mv a2, zero
	or a3, a4, a3
	slt a5, zero, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, zero
	addw a5, zero, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, zero, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label60
	j label705
label75:
	mv a1, zero
	slti a2, zero, 0
	slt a3, zero, s1
	xori a3, a3, 1
	or a3, a2, a3
	mulw a4, s1, zero
	bge zero, s1, label6
	mv a2, zero
	slti t1, zero, 0
	or a5, a3, t1
	slt t2, zero, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, zero
	addw t3, zero, t2
	bge zero, s1, label56
	mv t4, zero
	bge zero, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	j label740
label6:
	mulw s1, s1, s1
	ble s1, zero, label7
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label11
	j label10
label11:
	addiw a2, a1, 16
	bge a2, s1, label14
label13:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label14
	j label13
label557:
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	j label588
label52:
	slliw t6, t3, 2
	add t6, a0, t6
	lw t6, 0(t6)
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	j label752
label56:
	addiw a1, a1, 1
	slti a2, a1, 0
	slt a3, a1, s1
	xori a3, a3, 1
	or a3, a2, a3
	mulw a4, s1, a1
	bge a1, s1, label6
	mv a2, zero
	slti t1, zero, 0
	or a5, a3, t1
	slt t2, zero, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, zero
	addw t3, a1, t2
	bge zero, s1, label56
	mv t4, zero
	bge zero, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, zero, t2
	beq a5, zero, label52
	j label557
label649:
	beq a5, zero, label54
	j label683
label49:
	addw a6, t4, a4
	slliw a6, a6, 2
	add a6, a0, a6
	lw a6, 0(a6)
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	j label649
label588:
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	j label649
label55:
	addiw a2, a2, 1
	slti t1, a2, 0
	or a5, a3, t1
	slt t2, a2, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, a2
	addw t3, a1, t2
	bge a2, s1, label56
	mv t4, zero
	bge zero, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, zero, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, zero, 0
	or a6, a3, a6
	slt a7, zero, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	j label588
label683:
	li t5, -1
	blt t5, zero, label340
label717:
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	j label751
label340:
	mv t5, zero
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
label752:
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	j label649
label35:
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	j label589
label740:
	addw t5, t4, t2
	beq a5, zero, label52
	j label557
label54:
	slliw t5, t3, 2
	add t5, a0, t5
	lw t5, 0(t5)
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	j label717
label684:
	addw t5, t4, t2
	beq a5, zero, label52
	j label718
label619:
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	j label650
label718:
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	j label752
label39:
	addw t5, t4, t2
	slli t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	beq a5, zero, label40
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label35
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	j label619
label650:
	li t5, -1
	bge t5, zero, label39
	j label684
label40:
	slliw t6, t3, 2
	add t6, a0, t6
	lw t6, 0(t6)
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label45
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label35
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	j label650
label45:
	addw a6, t4, a4
	slliw a6, a6, 2
	add a6, a0, a6
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label35
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	j label684
label53:
	addw t5, t4, t2
	slliw t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label49
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label55
	beq a5, zero, label54
	li t5, -1
	blt t5, zero, label340
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label30
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	j label684
label30:
	addw t5, t4, a4
	slliw t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label53
	li t5, -1
	bge t5, zero, label39
	addw t5, t4, t2
	beq a5, zero, label52
	j label557
label589:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	j label619
label751:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label35
	j label619
label739:
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
label770:
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
label771:
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	j label770
label63:
	addiw a1, a1, 1
	bge a1, s1, label75
	slt a2, a1, s1
	xori a2, a2, 1
	slti a3, a1, 0
	or a4, a2, a3
	ble s1, zero, label63
	mv a2, zero
	slti a3, zero, 0
	or a3, a4, a3
	slt a5, zero, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, zero
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, zero, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	j label739
label705:
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	j label739
label60:
	slliw a3, a5, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label63
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label60
	j label771
label10:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label11
	j label10
label14:
	addiw a2, a1, 16
	bge a2, s1, label16
label21:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label16
	j label21
label16:
	addiw a2, a1, 16
	bge a2, s1, label18
	j label20
label18:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
label741:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label7
	j label741
label20:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label18
	j label20
label7:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
