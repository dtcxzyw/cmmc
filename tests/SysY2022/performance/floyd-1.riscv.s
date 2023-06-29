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
pcrel661:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel661)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel662:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel662)
pcrel663:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel663)
	mv a1, zero
	bge zero, s1, label75
	slt a2, zero, s1
	xori a2, a2, 1
	slti a3, zero, 0
	or a4, a2, a3
	ble s1, zero, label5
	mv a2, zero
	or a3, a4, a3
	slt a5, zero, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, zero
	addw a5, zero, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, zero, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, zero, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	j label583
label75:
	mv a1, zero
	slti a2, zero, 0
	slt a3, zero, s1
	xori a3, a3, 1
	or a3, a2, a3
	mulw a4, s1, zero
	bge zero, s1, label48
	mv a2, zero
	slti t1, zero, 0
	or a5, a3, t1
	slt t2, zero, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, zero
	addw t3, zero, t2
	bge zero, s1, label47
	mv t4, zero
	bge zero, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	j label389
label8:
	slliw a3, a5, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	j label588
label389:
	addw t5, t4, t2
	beq a5, zero, label45
	j label419
label537:
	addw t5, t4, t2
	beq a5, zero, label45
	j label569
label29:
	addw t5, t4, t2
	slliw t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	bge t5, zero, label32
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	j label537
label48:
	mulw s1, s1, s1
	ble s1, zero, label63
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label52
	j label51
label17:
	addiw a2, a2, 1
	slti t1, a2, 0
	or a5, a3, t1
	slt t2, a2, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, a2
	addw t3, a1, t2
	bge a2, s1, label47
	mv t4, zero
	bge zero, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, zero, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, zero, 0
	or a6, a3, a6
	slt a7, zero, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	j label448
label47:
	addiw a1, a1, 1
	slti a2, a1, 0
	slt a3, a1, s1
	xori a3, a3, 1
	or a3, a2, a3
	mulw a4, s1, a1
	bge a1, s1, label48
	mv a2, zero
	slti t1, zero, 0
	or a5, a3, t1
	slt t2, zero, s1
	xori t2, t2, 1
	or a5, a5, t2
	or t1, t1, t2
	mulw t2, s1, zero
	addw t3, a1, t2
	bge zero, s1, label47
	mv t4, zero
	bge zero, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, zero, 0
	or t5, a3, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, zero, 0
	or t5, t1, t5
	slt t6, zero, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, zero, t2
	beq a5, zero, label45
label419:
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	j label448
label27:
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	j label449
label448:
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
label505:
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	j label568
label132:
	mv t5, zero
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	j label601
label22:
	addw t5, t4, a4
	slliw t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	j label389
label449:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	j label477
label32:
	addw t5, t4, t2
	slli t5, t5, 2
	add t5, a0, t5
	lw t5, 0(t5)
	beq a5, zero, label33
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label27
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	j label477
label46:
	slliw t5, t3, 2
	add t5, a0, t5
	lw t5, 0(t5)
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
label568:
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
label477:
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	j label506
label569:
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
label601:
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	j label505
label45:
	slliw t6, t3, 2
	add t6, a0, t6
	lw t6, 0(t6)
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	j label601
label506:
	li t5, -1
	bge t5, zero, label32
	j label537
label33:
	slliw t6, t3, 2
	add t6, a0, t6
	lw t6, 0(t6)
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label36
	li a6, -1
	addw t6, t6, a6
	ble t5, t6, label27
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	j label506
label36:
	addw a6, t4, a4
	slliw a6, a6, 2
	add a6, a0, a6
	lw a6, 0(a6)
	addw t6, t6, a6
	ble t5, t6, label27
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	j label537
label42:
	addw a6, t4, a4
	slliw a6, a6, 2
	add a6, a0, a6
	lw a6, 0(a6)
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	beq a5, zero, label46
	li t5, -1
	blt t5, zero, label132
	slti t5, t4, 0
	or t5, a3, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label22
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label27
	slti t5, t4, 0
	or t5, t1, t5
	slt t6, t4, s1
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label29
	li t5, -1
	bge t5, zero, label32
	addw t5, t4, t2
	beq a5, zero, label45
	li t6, -1
	slti a6, t4, 0
	or a6, a3, a6
	slt a7, t4, s1
	xori a7, a7, 1
	or a6, a6, a7
	beq a6, zero, label42
	li a6, -1
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a0, t5
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s1, label17
	j label505
label583:
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
label587:
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
label588:
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	j label587
label5:
	addiw a1, a1, 1
	bge a1, s1, label75
	slt a2, a1, s1
	xori a2, a2, 1
	slti a3, a1, 0
	or a4, a2, a3
	ble s1, zero, label5
	mv a2, zero
	slti a3, zero, 0
	or a3, a4, a3
	slt a5, zero, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, zero
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, zero, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	slti a3, a2, 0
	or a3, a4, a3
	slt a5, a2, s1
	xori a5, a5, 1
	or a3, a3, a5
	mulw a5, s1, a2
	addw a5, a1, a5
	beq a3, zero, label8
	li a3, -1
	slli a5, a5, 2
	add a5, a0, a5
	sw a3, 0(a5)
	addiw a2, a2, 1
	bge a2, s1, label5
	j label583
label51:
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
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label52
	j label51
label52:
	addiw a2, a1, 4
	bge a2, s1, label55
label54:
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
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label55
	j label54
label55:
	addiw a2, a1, 4
	bge a2, s1, label58
label57:
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
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label58
	j label57
label58:
	addiw a2, a1, 4
	bge a2, s1, label60
	j label62
label60:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
label614:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label63
	j label614
label62:
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
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label60
	j label62
label63:
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
