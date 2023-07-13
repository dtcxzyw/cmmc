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
pcrel430:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel430)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel431:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel431)
pcrel432:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel432)
	mv a1, zero
	ble s0, zero, label52
	slt a5, zero, s0
	mv a4, zero
	xori a3, a5, 1
	mv a2, a3
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	mv a4, a2
	xori t1, t0, 1
	mv t0, zero
	or a5, a2, t1
	mv a4, zero
	beq a5, zero, label37
	li a5, -1
	li a3, 1
	mv a4, a0
	sw a5, 0(a0)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	sext.w a4, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	sext.w a4, t0
	beq a5, zero, label37
	j label338
label52:
	mv a3, zero
	slt a1, zero, s0
	mv a4, zero
	xori a2, a1, 1
	mv a1, a2
	mv a2, zero
	ble s0, zero, label27
	mv t2, zero
	slt t0, zero, s0
	mv a5, a1
	xori t3, t0, 1
	mv t0, zero
	or a5, a1, t3
	mv t1, zero
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	mv t5, zero
	slt a7, zero, s0
	mv t6, a1
	xori a6, a7, 1
	or t6, a1, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	j label339
label27:
	mulw s0, s0, s0
	ble s0, zero, label28
	mv a2, zero
	li a1, 4
	ble s0, a1, label31
	j label33
label17:
	addw a7, t0, t2
	sh2add a6, a7, a0
	lw t5, 0(a6)
	bge t5, zero, label20
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	addiw t2, t2, 1
	ble s0, t2, label25
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	slti t5, t2, 0
	slt a7, t2, s0
	or t6, a1, t5
	xori a6, a7, 1
	or t6, t6, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	li t5, -1
	bge t5, zero, label20
	j label381
label22:
	addw a7, a2, t2
	sh2add s2, a7, a0
	lw t6, 0(s2)
	blt t6, zero, label23
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	li t5, -1
	bge t5, zero, label20
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	addiw t2, t2, 1
	ble s0, t2, label25
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	slti t5, t2, 0
	slt a7, t2, s0
	or t6, a1, t5
	xori a6, a7, 1
	or t6, t6, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	j label329
label223:
	beq a5, zero, label24
	j label251
label329:
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	j label355
label381:
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	addiw t2, t2, 1
	ble s0, t2, label25
	j label223
label25:
	addiw a4, a4, 1
	slti t2, a4, 0
	slt t0, a4, s0
	or a5, a1, t2
	xori t3, t0, 1
	mulw t0, s0, a4
	or a5, a5, t3
	addw t1, a3, t0
	or t3, t2, t3
	ble s0, a4, label26
	mv t2, zero
	ble s0, zero, label25
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	mv t5, zero
	slt a7, zero, s0
	mv t6, a1
	xori a6, a7, 1
	or t6, a1, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	mv t5, a6
	or a6, t3, a6
	beq a6, zero, label17
	li t5, -1
	bge t5, zero, label20
label391:
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	j label23
label339:
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	j label365
label23:
	addiw t2, t2, 1
	ble s0, t2, label25
	j label223
label251:
	li t4, -1
	blt t4, zero, label23
	j label277
label24:
	sh2add t5, t1, a0
	lw t4, 0(t5)
	blt t4, zero, label23
	slti t5, t2, 0
	slt a7, t2, s0
	or t6, a1, t5
	xori a6, a7, 1
	or t6, t6, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	li t5, -1
	bge t5, zero, label20
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	addiw t2, t2, 1
	ble s0, t2, label25
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	j label277
label365:
	li t5, -1
	bge t5, zero, label20
	j label391
label26:
	addiw a3, a3, 1
	slt a1, a3, s0
	slti a4, a3, 0
	xori a2, a1, 1
	or a1, a2, a4
	mulw a2, s0, a3
	ble s0, a3, label27
	mv a4, zero
	mv t2, zero
	slt t0, zero, s0
	mv a5, a1
	xori t3, t0, 1
	mv t0, zero
	or a5, a1, t3
	sext.w t1, a3
	ble s0, zero, label26
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	mv t5, zero
	slt a7, zero, s0
	mv t6, a1
	xori a6, a7, 1
	or t6, a1, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	mv t5, a6
	or a6, t3, a6
	beq a6, zero, label17
	j label365
label20:
	addw a6, t0, t2
	sh2add a7, a6, a0
	addw a6, t4, t6
	lw t5, 0(a7)
	ble t5, a6, label23
	addw a6, t0, t2
	addw t4, t4, t6
	sh2add t5, a6, a0
	sw t4, 0(t5)
	addiw t2, t2, 1
	ble s0, t2, label25
	beq a5, zero, label24
	li t4, -1
	blt t4, zero, label23
	slti t5, t2, 0
	slt a7, t2, s0
	or t6, a1, t5
	xori a6, a7, 1
	or t6, t6, a6
	beq t6, zero, label22
	li t6, -1
	blt t6, zero, label23
	or t5, t5, a6
	or a6, t3, t5
	beq a6, zero, label17
	li t5, -1
	bge t5, zero, label20
	j label381
label277:
	slti t5, t2, 0
	slt a7, t2, s0
	or t6, a1, t5
	xori a6, a7, 1
	or t6, t6, a6
	beq t6, zero, label22
	j label303
label355:
	li t5, -1
	bge t5, zero, label20
	j label381
label303:
	li t6, -1
	blt t6, zero, label23
	j label329
label364:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
label387:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
label388:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	j label387
label40:
	addiw a1, a1, 1
	ble s0, a1, label52
	slt a5, a1, s0
	slti a4, a1, 0
	xori a3, a5, 1
	or a2, a3, a4
	ble s0, zero, label40
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	mv a4, a2
	xori t1, t0, 1
	mv t0, zero
	or a5, a2, t1
	sext.w a4, a1
	beq a5, zero, label37
	li a5, -1
	li a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	j label364
label338:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	j label364
label37:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label40
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label37
	j label388
label33:
	sh2add a3, a2, a0
	sh2add a2, a2, s1
	lw a4, 0(a3)
	sw a4, 0(a2)
	lw a4, 4(a3)
	sw a4, 4(a2)
	lw a5, 8(a3)
	sw a5, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	j label33
label31:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	ble s0, a2, label28
	j label31
label28:
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
