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
pcrel530:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel530)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel531:
	auipc a0, %pcrel_hi(dst)
	addi s1, a0, %pcrel_lo(pcrel531)
pcrel532:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel532)
	mv a1, zero
	ble s0, zero, label75
	slt a2, zero, s0
	xori a2, a2, 1
	slti a3, zero, 0
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
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
	or a4, a2, a4
	slt a5, a3, s0
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
	j label459
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
	ble s0, zero, label8
	mv a1, zero
	ble s0, zero, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	j label460
label41:
	mulw s0, s0, s0
	ble s0, zero, label42
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label198
	j label45
label345:
	li t4, -1
	bge t4, zero, label32
	j label382
label32:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	beq a4, zero, label33
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label36
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label21
	addw t4, t1, a1
	beq a4, zero, label26
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	j label476
label40:
	sh2add t4, t2, a0
	lw t4, 0(t4)
	blt t4, zero, label107
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label39
	li t4, -1
	bge t4, zero, label32
	addw t4, t1, a1
	beq a4, zero, label26
	j label411
label476:
	beq a4, zero, label40
	j label477
label33:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label36
	li t6, -1
	addw t5, t5, t6
	ble t4, t5, label21
	addw t4, t1, a1
	beq a4, zero, label26
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
label477:
	li t4, -1
	blt t4, zero, label107
label478:
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	j label441
label21:
	addiw a1, a1, 1
	ble s0, a1, label11
	j label346
label440:
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
label346:
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	j label412
label11:
	addiw t0, t0, 1
	slti a1, t0, 0
	or a4, a2, a1
	slt t1, t0, s0
	xori t3, t1, 1
	or a4, a4, t3
	mulw t1, s0, t0
	addw t2, a5, t1
	or t3, a1, t3
	ble s0, t0, label8
	mv a1, zero
	ble s0, zero, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	j label121
label107:
	mv t4, zero
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	j label469
label16:
	addw t4, a3, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	li t5, -1
	slt t4, t5, t4
label19:
	beq t4, zero, label21
label121:
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label39
	j label345
label469:
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label39
	j label345
label26:
	sh2add t5, t2, a0
	lw t5, 0(t5)
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	j label469
label39:
	addw t4, t1, a1
	sh2add t4, t4, a0
	lw t4, 0(t4)
	bge t4, zero, label32
	addw t4, t1, a1
	beq a4, zero, label26
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	j label412
label460:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	j label19
label8:
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
	ble s0, zero, label8
	mv a1, zero
	ble s0, zero, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, zero, 0
	or t4, a2, t4
	slt t5, zero, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	j label460
label382:
	addw t4, t1, a1
	beq a4, zero, label26
	j label411
label441:
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	j label469
label412:
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	j label441
label411:
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	j label440
label29:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	slti t4, a1, 0
	or t4, a2, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label16
	li t4, -1
	li t5, -1
	slt t4, t5, t4
	beq t4, zero, label21
	slti t4, a1, 0
	or t4, t3, t4
	slt t5, a1, s0
	xori t5, t5, 1
	or t4, t4, t5
	beq t4, zero, label39
	j label345
label36:
	addw t6, a3, a1
	sh2add t6, t6, a0
	lw t6, 0(t6)
	addw t5, t5, t6
	ble t4, t5, label21
	addw t4, t1, a1
	beq a4, zero, label26
	li t5, -1
	slti t6, a1, 0
	or t6, a2, t6
	slt a6, a1, s0
	xori a6, a6, 1
	or t6, t6, a6
	beq t6, zero, label29
	li t6, -1
	addw t5, t5, t6
	sh2add t4, t4, a0
	sw t5, 0(t4)
	addiw a1, a1, 1
	ble s0, a1, label11
	beq a4, zero, label40
	li t4, -1
	blt t4, zero, label107
	j label478
label459:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
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
	j label485
label58:
	addiw a1, a1, 1
	ble s0, a1, label75
	slt a2, a1, s0
	xori a2, a2, 1
	slti a3, a1, 0
	or a2, a2, a3
	ble s0, zero, label58
	mv a3, zero
	slti a4, zero, 0
	or a4, a2, a4
	slt a5, zero, s0
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
	or a4, a2, a4
	slt a5, a3, s0
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
	j label459
label485:
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
label486:
	li a5, -1
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	j label485
label61:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	addiw a3, a3, 1
	sh2add a4, a4, a0
	sw a5, 0(a4)
	ble s0, a3, label58
	slti a4, a3, 0
	or a4, a2, a4
	slt a5, a3, s0
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
	or a4, a2, a4
	slt a5, a3, s0
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
	or a4, a2, a4
	slt a5, a3, s0
	xori a5, a5, 1
	or a5, a4, a5
	mulw a4, s0, a3
	addw a4, a1, a4
	beq a5, zero, label61
	j label486
label198:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label49
	j label48
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
label48:
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
	ble s0, a2, label49
	j label48
label49:
	addiw a2, a1, 4
	ble s0, a2, label51
	j label56
label51:
	addiw a2, a1, 4
	ble s0, a2, label53
	j label55
label53:
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
label482:
	sh2add a2, a1, a0
	lw a2, 0(a2)
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a1, a1, 1
	ble s0, a1, label42
	j label482
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
	ble s0, a2, label51
	j label56
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
	ble s0, a2, label53
	j label55
label42:
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
