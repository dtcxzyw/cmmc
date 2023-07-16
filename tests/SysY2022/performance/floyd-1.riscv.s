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
pcrel406:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel406)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel407:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel407)
pcrel408:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel408)
	mv a1, zero
	ble s0, zero, label52
	mv a2, zero
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	mv a4, zero
	xori t1, t0, 1
	mv t0, zero
	mv a5, t1
	beq t1, zero, label7
	li a5, -1
	li a3, 1
	mv a4, a0
	sw a5, 0(a0)
	ble s0, a3, label10
	slti a5, a3, 0
	slt t0, a3, s0
	mv a4, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a5, t1
	sext.w a4, t0
	beq a5, zero, label7
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
	j label311
label52:
	mv a3, zero
	slt a4, zero, s0
	mv a5, zero
	xori a2, a4, 1
	mv a1, a2
	mv a2, zero
	ble s0, zero, label13
	mv a4, zero
	mv t2, zero
	slt t0, zero, s0
	mv a5, a1
	xori t3, t0, 1
	mv t2, t3
	mv t0, zero
	or a5, a1, t3
	mv t1, zero
	mv t3, zero
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	mv t6, zero
	mv a6, a1
	beq a1, zero, label36
	li t5, -1
	blt t5, zero, label37
label346:
	or a6, t2, t6
	beq a6, zero, label31
	j label348
label13:
	mulw s0, s0, s0
	ble s0, zero, label14
	mv a2, zero
	li a1, 4
	ble s0, a1, label18
	j label17
label348:
	li t6, -1
	bge t6, zero, label34
	j label376
label39:
	addiw a4, a4, 1
	slti t2, a4, 0
	slt t0, a4, s0
	or a5, a1, t2
	xori t3, t0, 1
	or t2, t2, t3
	mulw t0, s0, a4
	or a5, a5, t3
	addw t1, a3, t0
	ble s0, a4, label40
	mv t3, zero
	ble s0, zero, label39
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	mv t6, zero
	mv a6, a1
	beq a1, zero, label36
	li t5, -1
	blt t5, zero, label37
	mv a6, t2
	beq t2, zero, label31
	j label348
label40:
	addiw a3, a3, 1
	slt a4, a3, s0
	slti a5, a3, 0
	xori a2, a4, 1
	or a1, a2, a5
	mulw a2, s0, a3
	ble s0, a3, label13
	mv a4, zero
	mv t2, zero
	slt t0, zero, s0
	mv a5, a1
	xori t3, t0, 1
	mv t2, t3
	mv t0, zero
	or a5, a1, t3
	sext.w t1, a3
	ble s0, zero, label40
	mv t3, zero
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	mv t6, zero
	mv a6, a1
	beq a1, zero, label36
	li t5, -1
	blt t5, zero, label37
	j label346
label376:
	addw a6, t0, t3
	addw t4, t4, t5
	sh2add t6, a6, a0
	sw t4, 0(t6)
	j label37
label31:
	addw a6, t0, t3
	sh2add a7, a6, a0
	lw t6, 0(a7)
	bge t6, zero, label34
	addw t4, t4, t5
	sh2add t6, a6, a0
	sw t4, 0(t6)
	addiw t3, t3, 1
	ble s0, t3, label39
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	slti t6, t3, 0
	or a6, a1, t6
	beq a6, zero, label36
	li t5, -1
	blt t5, zero, label37
	or a6, t2, t6
	beq a6, zero, label31
	j label363
label34:
	addw a6, t0, t3
	sh2add a7, a6, a0
	addw a6, t4, t5
	lw t6, 0(a7)
	ble t6, a6, label37
	addw a6, t0, t3
	addw t4, t4, t5
	sh2add t6, a6, a0
	sw t4, 0(t6)
	addiw t3, t3, 1
	ble s0, t3, label39
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	slti t6, t3, 0
	or a6, a1, t6
	beq a6, zero, label36
	li t5, -1
	blt t5, zero, label37
	or a6, t2, t6
	beq a6, zero, label31
	j label363
label36:
	addw a6, a2, t3
	sh2add a7, a6, a0
	lw t5, 0(a7)
	blt t5, zero, label37
	or a6, t2, t6
	beq a6, zero, label31
	li t6, -1
	bge t6, zero, label34
	addw a6, t0, t3
	addw t4, t4, t5
	sh2add t6, a6, a0
	sw t4, 0(t6)
	addiw t3, t3, 1
	ble s0, t3, label39
	beq a5, zero, label38
	li t4, -1
	blt t4, zero, label37
	slti t6, t3, 0
	or a6, a1, t6
	beq a6, zero, label36
	j label307
label37:
	addiw t3, t3, 1
	ble s0, t3, label39
	j label223
label307:
	li t5, -1
	blt t5, zero, label37
	j label335
label363:
	li t6, -1
	bge t6, zero, label34
	j label376
label38:
	sh2add t5, t1, a0
	lw t4, 0(t5)
	blt t4, zero, label37
	slti t6, t3, 0
	or a6, a1, t6
	beq a6, zero, label36
	li t5, -1
	blt t5, zero, label37
	or a6, t2, t6
	beq a6, zero, label31
	li t6, -1
	bge t6, zero, label34
	addw a6, t0, t3
	addw t4, t4, t5
	sh2add t6, a6, a0
	sw t4, 0(t6)
	addiw t3, t3, 1
	ble s0, t3, label39
	beq a5, zero, label38
label251:
	li t4, -1
	blt t4, zero, label37
	j label279
label223:
	beq a5, zero, label38
	j label251
label279:
	slti t6, t3, 0
	or a6, a1, t6
	beq a6, zero, label36
	j label307
label335:
	or a6, t2, t6
	beq a6, zero, label31
	j label363
label339:
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
label343:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label10
label344:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	j label343
label10:
	addiw a1, a1, 1
	ble s0, a1, label52
	slti a2, a1, 0
	ble s0, zero, label10
	mv a3, zero
	mv a5, zero
	slt t0, zero, s0
	mv a4, a2
	xori t1, t0, 1
	mv t0, zero
	or a5, a2, t1
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
	j label339
label311:
	slti a5, a3, 0
	slt t0, a3, s0
	or a4, a2, a5
	xori t1, t0, 1
	mulw t0, s0, a3
	or a5, a4, t1
	addw a4, a1, t0
	beq a5, zero, label7
	j label339
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
	j label344
label17:
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
	ble s0, a1, label18
	j label17
label18:
	sh2add a4, a2, a0
	sh2add a3, a2, s1
	lw a1, 0(a4)
	addiw a2, a2, 1
	sw a1, 0(a3)
	ble s0, a2, label14
	j label18
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
