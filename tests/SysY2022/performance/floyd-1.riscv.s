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
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel411:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel411)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel412:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel412)
pcrel413:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel413)
	mv a1, zero
	ble s0, zero, label52
	slt a5, zero, s0
	mv a3, zero
	xori a2, a5, 1
	mv a4, zero
	slt t0, zero, s0
	mv t1, zero
	xori t2, t0, 1
	mv a5, t2
	mv t2, a2
	or t0, a5, a2
	mv a5, zero
	beq t0, zero, label8
	li t0, -1
	li a4, 1
	mv a5, a0
	sw t0, 0(a0)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	mv a5, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	sext.w a5, t1
	beq t0, zero, label8
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	mv a5, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	sext.w a5, t1
	beq t0, zero, label8
	j label346
label52:
	mv a4, zero
	slt a2, zero, s0
	mv a3, zero
	xori a1, a2, 1
	mv a2, zero
	ble s0, zero, label34
	mv a5, zero
	slt t2, zero, s0
	mv t3, zero
	xori t1, t2, 1
	mv t5, zero
	mv t2, zero
	or t0, a1, t1
	mv t4, zero
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, zero, s0
	mv s2, zero
	xori a6, a7, 1
	mv s3, zero
	or a7, a1, a6
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	j label353
label8:
	sh2add t1, a5, s2
	lw t0, 0(t1)
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	j label351
label32:
	addiw a5, a5, 1
	slt t2, a5, s0
	mulw t3, s0, a5
	xori t1, t2, 1
	addw t5, a4, t3
	slti t2, a5, 0
	or t0, a1, t1
	or t4, a2, t2
	or t0, t0, t4
	ble s0, a5, label33
	mv t4, zero
	ble s0, zero, label32
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, zero, s0
	mv s2, zero
	xori a6, a7, 1
	mv s3, a2
	or a7, a1, a6
	or a7, a7, a2
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	mv s2, t2
	or a6, t1, a6
	or s3, t2, a6
	beq s3, zero, label24
	j label354
label381:
	addw s2, t3, t4
	addw t6, t6, a7
	sh2add a6, s2, a0
	sw t6, 0(a6)
	j label30
label27:
	addw a6, t3, t4
	addw s2, t6, a7
	sh2add s3, a6, a0
	lw a6, 0(s3)
	ble a6, s2, label30
	addw s2, t3, t4
	addw t6, t6, a7
	sh2add a6, s2, a0
	sw t6, 0(a6)
	addiw t4, t4, 1
	ble s0, t4, label32
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, t4, s0
	slti s2, t4, 0
	xori a6, a7, 1
	or s3, a2, s2
	or a7, a1, a6
	or a7, a7, s3
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
	j label369
label30:
	addiw t4, t4, 1
	ble s0, t4, label32
	j label231
label261:
	li t6, -1
	blt t6, zero, label30
	j label288
label369:
	li a6, -1
	bge a6, zero, label27
	j label381
label31:
	sh2add a6, t5, a0
	lw t6, 0(a6)
	blt t6, zero, label30
	slt a7, t4, s0
	slti s2, t4, 0
	xori a6, a7, 1
	or s3, a2, s2
	or a7, a1, a6
	or a7, a7, s3
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
	li a6, -1
	bge a6, zero, label27
	addw s2, t3, t4
	addw t6, t6, a7
	sh2add a6, s2, a0
	sw t6, 0(a6)
	addiw t4, t4, 1
	ble s0, t4, label32
	beq t0, zero, label31
	j label261
label34:
	mulw s0, s0, s0
	ble s0, zero, label35
	mv a2, zero
	li a1, 4
	ble s0, a1, label38
label40:
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
	ble s0, a1, label38
	j label40
label353:
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
label354:
	li a6, -1
	bge a6, zero, label27
	j label381
label33:
	addiw a4, a4, 1
	slt a2, a4, s0
	mulw a3, s0, a4
	xori a1, a2, 1
	slti a2, a4, 0
	ble s0, a4, label34
	mv a5, zero
	slt t2, zero, s0
	mv t3, zero
	xori t1, t2, 1
	sext.w t5, a4
	mv t2, zero
	or t0, a1, t1
	mv t4, a2
	or t0, t0, a2
	ble s0, zero, label33
	mv t4, zero
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, zero, s0
	mv s2, zero
	xori a6, a7, 1
	mv s3, a2
	or a7, a1, a6
	or a7, a7, a2
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	j label353
label231:
	beq t0, zero, label31
	j label261
label288:
	slt a7, t4, s0
	slti s2, t4, 0
	xori a6, a7, 1
	or s3, a2, s2
	or a7, a1, a6
	or a7, a7, s3
	beq a7, zero, label29
label315:
	li a7, -1
	blt a7, zero, label30
	j label342
label29:
	addw a7, a3, t4
	sh2add s3, a7, a0
	lw a7, 0(s3)
	blt a7, zero, label30
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
	li a6, -1
	bge a6, zero, label27
	addw s2, t3, t4
	addw t6, t6, a7
	sh2add a6, s2, a0
	sw t6, 0(a6)
	addiw t4, t4, 1
	ble s0, t4, label32
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, t4, s0
	slti s2, t4, 0
	xori a6, a7, 1
	or s3, a2, s2
	or a7, a1, a6
	or a7, a7, s3
	beq a7, zero, label29
	j label315
label24:
	addw a6, t3, t4
	sh2add s2, a6, a0
	lw a6, 0(s2)
	bge a6, zero, label27
	addw s2, t3, t4
	addw t6, t6, a7
	sh2add a6, s2, a0
	sw t6, 0(a6)
	addiw t4, t4, 1
	ble s0, t4, label32
	beq t0, zero, label31
	li t6, -1
	blt t6, zero, label30
	slt a7, t4, s0
	slti s2, t4, 0
	xori a6, a7, 1
	or s3, a2, s2
	or a7, a1, a6
	or a7, a7, s3
	beq a7, zero, label29
	li a7, -1
	blt a7, zero, label30
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
	j label369
label342:
	or s2, t2, s2
	or a6, t1, a6
	or s3, s2, a6
	beq s3, zero, label24
	j label369
label350:
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
label351:
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	j label350
label346:
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	j label350
label5:
	addiw a1, a1, 1
	ble s0, a1, label52
	slt a5, a1, s0
	slti a3, a1, 0
	xori a2, a5, 1
	ble s0, zero, label5
	mv a4, zero
	slt t0, zero, s0
	mv t1, zero
	xori t2, t0, 1
	or a5, a3, t2
	mv t2, a2
	or t0, a5, a2
	sext.w a5, a1
	beq t0, zero, label8
	li t0, -1
	li a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	li t0, -1
	addiw a4, a4, 1
	sh2add a5, a5, a0
	sw t0, 0(a5)
	ble s0, a4, label5
	slt t0, a4, s0
	slti t1, a4, 0
	xori t2, t0, 1
	or a5, a3, t2
	or t2, a2, t1
	mulw t1, s0, a4
	or t0, a5, t2
	addw a5, a1, t1
	beq t0, zero, label8
	j label346
label38:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	ble s0, a2, label35
	j label38
label35:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
