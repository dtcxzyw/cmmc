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
pcrel541:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel541)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel542:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel542)
pcrel543:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel543)
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
	j label434
label75:
	mv a5, zero
	slt a1, zero, s0
	xori a1, a1, 1
	slti a2, zero, 0
	or a2, a1, a2
	mulw a3, s0, zero
	ble s0, zero, label41
	mv t0, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t1, zero, s0
	xori t3, t1, 1
	or a4, a4, t3
	mulw t1, s0, zero
	addw t2, zero, t1
	or t3, a1, t3
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label466
label41:
	mulw s0, s0, s0
	ble s0, zero, label56
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label198
	j label44
label198:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	j label47
label10:
	addiw t0, t0, 1
	slti a1, t0, 0
	or a4, a2, a1
	slt t1, t0, s0
	xori t3, t1, 1
	or a4, a4, t3
	mulw t1, s0, t0
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, t0, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label120
label20:
	addiw a1, a1, 1
	ble s0, a1, label10
	j label345
label466:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	j label18
label40:
	addiw a5, a5, 1
	slt a1, a5, s0
	xori a1, a1, 1
	slti a2, a5, 0
	or a2, a1, a2
	mulw a3, s0, a5
	ble s0, a5, label41
	mv t0, zero
	slti a1, zero, 0
	or a4, a2, a1
	slt t1, zero, s0
	xori t3, t1, 1
	or a4, a4, t3
	mulw t1, s0, zero
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, zero, label40
	mv a1, zero
	ble s0, zero, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label466
label444:
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
	j label414
label31:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	beq a4, zero, label32
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label35
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label30
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	j label483
label38:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	bge t4, zero, label31
	addw t4, t1, a1
	beq a4, zero, label30
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	j label414
label483:
	beq a4, zero, label39
	j label484
label32:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label35
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label30
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
label484:
	li t4, -1
	blt t4, zero, label106
label485:
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label445
label106:
	mv t4, zero
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label475
label382:
	addw t4, t1, a1
	beq a4, zero, label30
	j label413
label344:
	li t4, -1
	bge t4, zero, label31
	j label382
label413:
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
	j label444
label27:
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
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label344
label30:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
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
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label475
label39:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	blt t4, zero, label106
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	li t4, -1
	bge t4, zero, label31
	addw t4, t1, a1
	beq a4, zero, label30
	j label413
label15:
	addw t4, a3, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	li t5, -1
	slt t4, t5, t4
label18:
	beq t4, zero, label20
label120:
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label344
label414:
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label15
	j label445
label475:
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label344
label445:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label20
	j label475
label35:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	ble t4, t5, label20
	addw t4, t1, a1
	beq a4, zero, label30
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label27
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label10
	beq a4, zero, label39
	li t4, -1
	blt t4, zero, label106
	j label485
label465:
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
label493:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label60
label494:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	j label493
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
	j label465
label434:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label63
	j label465
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
	j label494
label47:
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
	j label47
label44:
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
	j label44
label48:
	addiw a2, a1, 4
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
	ble s0, a1, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
label490:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label56
	j label490
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
label56:
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
