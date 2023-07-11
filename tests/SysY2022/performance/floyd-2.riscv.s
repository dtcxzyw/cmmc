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
pcrel444:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel444)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel445:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel445)
pcrel446:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel446)
	mv a1, zero
	ble s0, zero, label60
	slt a2, zero, s0
	mv a4, zero
	xori a3, a2, 1
	or a2, a3, zero
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	or a4, a2, zero
	xori t1, t0, 1
	mv t0, zero
	or a5, a4, t1
	sext.w a4, zero
	beq a5, zero, label7
	li a5, -1
	li a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	sext.w a4, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	j label350
label60:
	mv a4, zero
	slt a2, zero, s0
	mv a5, zero
	mv a3, zero
	xori a1, a2, 1
	or a2, a1, zero
	ble s0, zero, label13
	mv a1, zero
	slt t1, zero, s0
	or t0, a2, zero
	xori t3, t1, 1
	mv t1, zero
	or t0, t0, t3
	sext.w t2, zero
	or t3, zero, t3
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	mv a6, zero
	slt a7, zero, s0
	or t5, a2, zero
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	j label29
label13:
	mulw s0, s0, s0
	ble s0, zero, label14
	mv a2, zero
	li a1, 4
	ble s0, a1, label17
label19:
	sh2add a3, a2, a0
	sh2add a2, a2, s1
	lw a4, 0(a3)
	sw a4, 0(a2)
	lw a5, 4(a3)
	sw a5, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label19
label156:
	slti a6, a1, 0
	slt t6, a1, s0
	or t5, t3, a6
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
label262:
	li t5, -1
	bge t5, zero, label36
	j label287
label22:
	addiw a4, a4, 1
	slt a2, a4, s0
	slti a5, a4, 0
	mulw a3, s0, a4
	xori a1, a2, 1
	or a2, a1, a5
	ble s0, a4, label13
	mv a5, zero
	mv a1, zero
	slt t1, zero, s0
	or t0, a2, zero
	xori t3, t1, 1
	mv t1, zero
	or t0, t0, t3
	sext.w t2, a4
	or t3, zero, t3
	ble s0, zero, label22
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	mv a6, zero
	slt a7, zero, s0
	or t5, a2, zero
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	j label156
label48:
	addiw a5, a5, 1
	slti a1, a5, 0
	slt t1, a5, s0
	or t0, a2, a1
	xori t3, t1, 1
	mulw t1, s0, a5
	or t0, t0, t3
	addw t2, a4, t1
	or t3, a1, t3
	ble s0, a5, label22
	mv a1, zero
	ble s0, zero, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	mv a6, zero
	slt a7, zero, s0
	or t5, a2, zero
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	mv a6, zero
	slt t6, zero, s0
	or t5, t3, zero
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
	j label262
label26:
	sh2add t5, t2, a0
	lw t4, 0(t5)
	blt t4, zero, label154
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	slti a6, a1, 0
	slt t6, a1, s0
	or t5, t3, a6
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
	li t5, -1
	bge t5, zero, label36
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	j label363
label154:
	mv t5, zero
label29:
	beq t5, zero, label31
	j label156
label287:
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	j label312
label363:
	beq t0, zero, label26
	j label390
label391:
	li t5, -1
	bge t5, zero, label36
	j label287
label36:
	slti t6, a1, 0
	slt a7, a1, s0
	or t5, a2, t6
	xori a6, a7, 1
	addw a7, t1, a1
	or t6, t5, a6
	sh2add a6, a7, a0
	lw t5, 0(a6)
	beq t6, zero, label39
	li t6, -1
	addw t6, t4, t6
	ble t5, t6, label31
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	j label337
label39:
	addw a7, a3, a1
	sh2add a6, a7, a0
	lw t6, 0(a6)
	addw t6, t4, t6
	ble t5, t6, label31
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	j label364
label43:
	addw a7, a3, a1
	sh2add a6, a7, a0
	lw t6, 0(a6)
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	slti a6, a1, 0
	slt t6, a1, s0
	or t5, t3, a6
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
	li t5, -1
	bge t5, zero, label36
	j label287
label390:
	li t4, -1
	blt t4, zero, label154
	j label313
label31:
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
label313:
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	j label337
label364:
	slti a6, a1, 0
	slt t6, a1, s0
	or t5, t3, a6
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
	j label391
label33:
	addw t6, t1, a1
	sh2add a6, t6, a0
	lw t5, 0(a6)
	bge t5, zero, label36
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	beq t6, zero, label45
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	j label364
label337:
	li t5, -1
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	j label364
label312:
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	j label363
label45:
	addw a6, a3, a1
	sh2add t6, a6, a0
	lw t5, 0(t6)
	li t6, -1
	slt t5, t6, t5
	beq t5, zero, label31
	slti a6, a1, 0
	slt t6, a1, s0
	or t5, t3, a6
	xori a7, t6, 1
	or a6, t5, a7
	beq a6, zero, label33
	li t5, -1
	bge t5, zero, label36
	slti a6, a1, 0
	slt a7, a1, s0
	or t5, a2, a6
	xori a6, a7, 1
	or t6, t5, a6
	addw t5, t1, a1
	beq t6, zero, label43
	li t6, -1
	addw t4, t4, t6
	sh2add t5, t5, a0
	sw t4, 0(t5)
	addiw a1, a1, 1
	ble s0, a1, label48
	beq t0, zero, label26
	li t4, -1
	blt t4, zero, label154
	j label313
label377:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
label381:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
label382:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	j label381
label10:
	addiw a1, a1, 1
	ble s0, a1, label60
	slt a2, a1, s0
	slti a4, a1, 0
	xori a3, a2, 1
	or a2, a3, a4
	ble s0, zero, label10
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	or a4, a2, zero
	xori t1, t0, 1
	mv t0, zero
	or a5, a4, t1
	sext.w a4, a1
	beq a5, zero, label7
	li a5, -1
	li a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	j label377
label350:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	j label377
label7:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	j label382
label17:
	sh2add a4, a2, a0
	sh2add a3, a2, s1
	lw a1, 0(a4)
	addiw a2, a2, 1
	sw a1, 0(a3)
	ble s0, a2, label14
	j label17
label14:
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
