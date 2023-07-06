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
pcrel537:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel537)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a1, zero
pcrel538:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel538)
pcrel539:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel539)
	ble s0, zero, label69
	slt a2, zero, s0
	slti a3, zero, 0
	xori a2, a2, 1
	or a2, a2, a3
	ble s0, zero, label57
	mv a3, zero
	slti a4, zero, 0
	slt a5, zero, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, zero, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, zero, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	j label436
label69:
	mv a4, zero
	slt a1, zero, s0
	slti a2, zero, 0
	mulw a3, s0, zero
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, zero, label35
	mv a5, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or t0, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or t0, t0, t3
	addw t2, zero, t1
	or t3, a1, t3
	ble s0, zero, label34
	mv a1, zero
	ble s0, zero, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, zero, 0
	slt t6, zero, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	j label437
label35:
	mulw s0, s0, s0
	ble s0, zero, label36
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label180
label39:
	sh2add a3, a2, a0
	sh2add a2, a2, s1
	lw a4, 0(a3)
	sw a4, 0(a2)
	lw a4, 4(a3)
	sw a4, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label180
	j label39
label437:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	j label117
label21:
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	j label391
label34:
	addiw a4, a4, 1
	slt a1, a4, s0
	slti a2, a4, 0
	mulw a3, s0, a4
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, a4, label35
	mv a5, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or t0, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or t0, t0, t3
	addw t2, a4, t1
	or t3, a1, t3
	ble s0, zero, label34
	mv a1, zero
	ble s0, zero, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, zero, 0
	slt t6, zero, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	j label117
label10:
	addiw a5, a5, 1
	slti a1, a5, 0
	slt t1, a5, s0
	or t0, a2, a1
	xori t3, t1, 1
	mulw t1, s0, a5
	or t0, t0, t3
	addw t2, a4, t1
	or t3, a1, t3
	ble s0, a5, label34
	mv a1, zero
	ble s0, zero, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, zero, 0
	slt t6, zero, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	slti t5, zero, 0
	slt t6, zero, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
label326:
	li t5, -1
	bge t5, zero, label30
	j label362
label12:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	li t5, -1
	bge t5, zero, label30
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	beq t6, zero, label29
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label445
label103:
	mv t5, zero
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	j label475
label390:
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
label445:
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
label391:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
label446:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	j label475
label23:
	addw t5, t1, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	bge t5, zero, label30
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	beq t6, zero, label29
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	j label446
label16:
	addw t5, a3, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
label117:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	j label326
label475:
	li t5, -1
	bge t5, zero, label30
	j label362
label482:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	j label483
label31:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t6, t4, t6
	ble t5, t6, label21
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	beq t6, zero, label29
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
label483:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	j label475
label362:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	beq t6, zero, label29
	j label390
label29:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label21
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, t3, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label23
	li t5, -1
	bge t5, zero, label30
	j label362
label30:
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	sh2add t5, t5, a0
	lw t5, 0(t5)
	beq t6, zero, label31
	li t6, -1
	addw t6, t4, t6
	ble t5, t6, label21
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t6, t5, t6
	addw t5, t1, a1
	beq t6, zero, label29
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq t0, zero, label12
	li t4, -1
	blt t4, zero, label103
	slti t5, a1, 0
	slt t6, a1, s0
	or t5, a2, t5
	xori t6, t6, 1
	or t5, t5, t6
	beq t5, zero, label16
	j label482
label464:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
label490:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
label491:
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	j label490
label57:
	addiw a1, a1, 1
	ble s0, a1, label69
	slt a2, a1, s0
	slti a3, a1, 0
	xori a2, a2, 1
	or a2, a2, a3
	ble s0, zero, label57
	mv a3, zero
	slti a4, zero, 0
	slt a5, zero, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, zero
	addw a4, a1, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, zero, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	j label464
label436:
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	j label464
label54:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label54
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label57
	j label491
label180:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label43
	j label42
label43:
	addiw a2, a1, 4
	ble s0, a2, label46
	j label45
label46:
	addiw a2, a1, 4
	ble s0, a2, label49
	j label48
label49:
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
label487:
	sh2add a2, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a2)
	addiw a1, a1, 1
	sw a2, 0(a3)
	ble s0, a1, label36
	j label487
label45:
	sh2add a3, a1, a0
	sh2add a1, a1, s1
	lw a4, 0(a3)
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label46
	j label45
label48:
	sh2add a3, a1, a0
	sh2add a1, a1, s1
	lw a4, 0(a3)
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
	sh2add a3, a1, a0
	sh2add a1, a1, s1
	lw a4, 0(a3)
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label43
	j label42
label36:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
