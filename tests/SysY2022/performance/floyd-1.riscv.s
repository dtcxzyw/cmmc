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
pcrel540:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel540)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a1, zero
pcrel541:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel541)
pcrel542:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel542)
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
	j label464
label75:
	mv a5, zero
	slt a1, zero, s0
	slti a2, zero, 0
	mulw a3, s0, zero
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, zero, label6
	mv t0, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or a4, a4, t3
	addw t2, zero, t1
	or t3, a1, t3
	ble s0, zero, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	j label434
label6:
	mulw s0, s0, s0
	ble s0, zero, label7
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label93
label10:
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
	j label10
label26:
	addiw t0, t0, 1
	slti a1, t0, 0
	slt t1, t0, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, t0
	or a4, a4, t3
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, t0, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	slti t4, zero, 0
	slt t5, zero, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	j label211
label197:
	mv t4, zero
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	j label475
label211:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label351
label414:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	j label445
label475:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label351
label38:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	bge t4, zero, label48
	addw t4, t1, a1
	beq a4, zero, label42
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	j label414
label351:
	li t4, -1
	bge t4, zero, label48
	j label382
label48:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	beq a4, zero, label54
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label53
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label36
	addw t4, t1, a1
	beq a4, zero, label42
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	j label482
label483:
	li t4, -1
	blt t4, zero, label197
label484:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	j label445
label54:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label53
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label36
	addw t4, t1, a1
	beq a4, zero, label42
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	j label483
label36:
	addiw a1, a1, 1
	ble s0, a1, label26
	j label352
label444:
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
label352:
	beq a4, zero, label55
	j label383
label434:
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
label465:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	j label34
label56:
	addiw a5, a5, 1
	slt a1, a5, s0
	slti a2, a5, 0
	mulw a3, s0, a5
	xori a1, a1, 1
	or a2, a1, a2
	ble s0, a5, label6
	mv t0, zero
	slti a1, zero, 0
	slt t1, zero, s0
	or a4, a2, a1
	xori t3, t1, 1
	mulw t1, s0, zero
	or a4, a4, t3
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, zero, label56
	mv a1, zero
	ble s0, zero, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	slti t4, zero, 0
	slt t5, zero, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	j label465
label383:
	li t4, -1
	blt t4, zero, label197
	j label414
label482:
	beq a4, zero, label55
	j label483
label382:
	addw t4, t1, a1
	beq a4, zero, label42
	j label413
label55:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	blt t4, zero, label197
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	li t4, -1
	bge t4, zero, label48
	addw t4, t1, a1
	beq a4, zero, label42
label413:
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	j label444
label445:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	j label475
label45:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, t3, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label38
	j label351
label42:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	slti t4, a1, 0
	slt t5, a1, s0
	or t4, a2, t4
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label31
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label36
	j label475
label31:
	addw t4, a3, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	li t5, -1
	slt t4, t5, t4
label34:
	beq t4, zero, label36
	j label211
label53:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	ble t4, t5, label36
	addw t4, t1, a1
	beq a4, zero, label42
	li t5, -1
	slti t6, a1, 0
	slt a6, a1, s0
	or t6, a2, t6
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label45
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label26
	beq a4, zero, label55
	li t4, -1
	blt t4, zero, label197
	j label484
label464:
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
	j label492
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
	j label464
label492:
	slti a4, a3, 0
	slt a5, a3, s0
	or a4, a2, a4
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	j label493
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
label493:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label492
label93:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label14
label13:
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
	ble s0, a2, label14
	j label13
label14:
	addiw a2, a1, 4
	ble s0, a2, label16
label21:
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
	ble s0, a2, label16
	j label21
label16:
	addiw a2, a1, 4
	ble s0, a2, label18
	j label20
label18:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
label466:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label7
	j label466
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
	ble s0, a2, label18
	j label20
label7:
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
