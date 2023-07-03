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
pcrel536:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel536)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a1, zero
pcrel537:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel537)
pcrel538:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel538)
	ble s0, zero, label75
	slt a2, zero, s0
	slti a3, zero, 0
	xori a2, a2, 1
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	slt a5, zero, s0
	or a4, a2, a4
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
	slt a5, a3, s0
	or a4, a2, a4
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
	j label461
label75:
	mv a5, zero
	slt a1, zero, s0
	slti a2, zero, 0
	mulw a3, s0, zero
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, zero, label41
	mv t0, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or a4, a4, t3
	addw t2, zero, t1
	or t3, a1, t3
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	slt t5, zero, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label462
label41:
	mulw s0, s0, s0
	ble s0, zero, label42
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label198
	j label45
label462:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	j label18
label10:
	addiw t0, t0, 1
	slti a1, t0, 0
	slt t1, t0, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, t0
	or a4, a4, t3
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, t0, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	slt t5, zero, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
label120:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label344
label40:
	addiw a5, a5, 1
	slt a1, a5, s0
	slti a2, a5, 0
	mulw a3, s0, a5
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, a5, label41
	mv t0, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or a4, a4, t3
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	slt t5, zero, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label462
label20:
	addiw a1, a1, 1
	ble s0, a1, label10
	j label345
label441:
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
label345:
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	j label412
label106:
	mv t4, zero
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label471
label15:
	addw t4, a3, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	li t5, -1
	slt t4, t5, t4
label18:
	beq t4, zero, label20
	j label120
label381:
	addw t4, t1, a1
	beq a4, zero, label25
	j label411
label471:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
label344:
	li t4, -1
	bge t4, zero, label31
	j label381
label25:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label471
label28:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label344
label31:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	beq a4, zero, label32
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label35
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label25
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label478
label32:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label35
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label25
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	j label479
label38:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	bge t4, zero, label31
	addw t4, t1, a1
	beq a4, zero, label25
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	j label412
label442:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label471
label478:
	beq a4, zero, label39
label479:
	li t4, -1
	blt t4, zero, label106
label480:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label442
label412:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label442
label39:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	blt t4, zero, label106
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	li t4, -1
	bge t4, zero, label31
	addw t4, t1, a1
	beq a4, zero, label25
label411:
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	j label441
label35:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label25
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label28
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	j label480
label461:
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
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
label488:
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
label489:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label488
label61:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
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
	slt a5, a3, s0
	or a4, a2, a4
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
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	j label489
label58:
	addiw a1, a1, 1
	ble s0, a1, label75
	slt a2, a1, s0
	slti a3, a1, 0
	xori a2, a2, 1
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	slt a5, zero, s0
	or a4, a2, a4
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
	slt a5, a3, s0
	or a4, a2, a4
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
	j label461
label198:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
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
	ble s0, a2, label48
	j label56
label48:
	addiw a2, a1, 4
	ble s0, a2, label50
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
	ble s0, a2, label50
	j label55
label50:
	addiw a2, a1, 4
	ble s0, a2, label52
label54:
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
	ble s0, a2, label52
	j label54
label52:
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
label485:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	j label485
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
label42:
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
