.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -104
	sd s4, 96(sp)
	sd s3, 88(sp)
	sd s2, 80(sp)
	sd s1, 72(sp)
	sd s6, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, a0
	jal getint
	mv s3, a0
	jal getint
	mv s2, a0
	mulw s1, s3, a0
pcrel585:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel585)
	mv s0, a0
	jal getarray
pcrel586:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel586)
	mv s5, a0
	jal getarray
	mv s6, a0
	srliw a0, s4, 31
	add a0, s4, a0
	sraiw s4, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel587:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel587)
	ble s6, zero, label2
	mv a1, zero
	sh2add a2, zero, s5
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s4
	addw a5, s4, zero
	mulw t0, s2, zero
	mv t1, zero
	subw t2, zero, s4
	addw t3, s4, zero
	mv t4, a4
	mv a6, zero
	slt t5, a4, s3
	xori t5, t5, 1
	slti t6, a4, 0
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	or a7, t5, a7
	slt s7, t2, s2
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label75
	j label113
label7:
	subw t2, t1, s4
	addw t3, s4, t1
	mv t4, a4
	mv a6, zero
	slt t5, a4, s3
	xori t5, t5, 1
	slti t6, a4, 0
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	or a7, t5, a7
	slt s7, t2, s2
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label75
	j label113
label496:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
label497:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
label503:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label503
label141:
	mv a6, s8
	slti a7, t6, 0
	or a7, t5, a7
	slt s7, t6, s2
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label75
	mv a7, zero
	bne a2, zero, label44
	addw a6, s8, zero
	li a7, 1073741824
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label496
label75:
	mulw a7, s2, t4
	addw a7, t6, a7
	sh2add a7, a7, s0
	lw a7, 0(a7)
	bne a2, zero, label44
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label497
label379:
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label18
	j label421
label459:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label496
label468:
	ble s1, zero, label43
	j label505
label146:
	mv a6, s8
	slt t5, t4, s3
	xori t5, t5, 1
	slti t6, t4, 0
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	or a7, t5, a7
	slt s7, t2, s2
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label75
	mv a7, zero
	bne a2, zero, label44
	addw a6, s8, zero
	li a7, 1073741824
	ble a6, a7, label18
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label459
label44:
	li s7, 1
	bne a2, s7, label53
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label26
	j label48
label53:
	li s7, 2
	bne a2, s7, label54
	max s8, a6, a7
	addiw t6, t6, 1
	bgt t3, t6, label141
	addiw t4, t4, 1
	bgt a5, t4, label146
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw s8, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label7
	addiw a3, a3, 1
	bgt s3, a3, label5
	j label468
label421:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label18
	j label459
label18:
	bge a6, zero, label22
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label22
	addw a6, a6, a7
	bge a6, zero, label22
	addw a6, a6, a7
	bge a6, zero, label22
	addw a6, a6, a7
	bge a6, zero, label22
	addw a6, a6, a7
	bge a6, zero, label22
label501:
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label22
	j label501
label26:
	addiw t6, t6, 1
	bgt t3, t6, label141
	addiw t4, t4, 1
	bgt a5, t4, label146
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw s8, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label7
	addiw a3, a3, 1
	bgt s3, a3, label5
	j label468
label48:
	divw s9, a6, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s10, s10, -2
	subw s9, s9, s10
	divw s10, a7, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label49
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	j label48
label49:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	j label48
label54:
	li s7, 3
	bne a2, s7, label55
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
label491:
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	j label529
label73:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	j label491
label113:
	mv a7, zero
	bne a2, zero, label44
	j label379
label511:
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	j label511
label43:
	addiw a1, a1, 1
	ble s6, a1, label2
	sh2add a2, a1, s5
	lw a2, 0(a2)
	mv a3, zero
	subw a4, zero, s4
	addw a5, s4, zero
	mulw t0, s2, zero
	mv t1, zero
	subw t2, zero, s4
	addw t3, s4, zero
	mv t4, a4
	mv a6, zero
	slt t5, a4, s3
	xori t5, t5, 1
	slti t6, a4, 0
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	or a7, t5, a7
	slt s7, t2, s2
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label75
	j label113
label529:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	j label491
label72:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label73
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label72
	j label529
label505:
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label167
	j label42
label55:
	li s7, 4
	bne a2, s7, label263
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	j label410
label263:
	mv s8, zero
	addiw t6, t6, 1
	bgt t3, t6, label141
	addiw t4, t4, 1
	bgt a5, t4, label146
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw zero, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label7
	addiw a3, a3, 1
	bgt s3, a3, label5
	ble s1, zero, label43
	j label505
label410:
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
label447:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	j label482
label62:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	j label447
label5:
	subw a4, a3, s4
	addw a5, s4, a3
	mulw t0, s2, a3
	mv t1, zero
	j label7
label167:
	mv a3, a4
	addiw a2, a4, 4
	ble s1, a2, label36
	j label41
label36:
	addiw a2, a3, 4
	ble s1, a2, label177
	j label40
label177:
	mv a2, a3
	sh2add a3, a3, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label43
	j label511
label22:
	mv s8, a6
	addiw t6, t6, 1
	bgt t3, t6, label141
	addiw t4, t4, 1
	bgt a5, t4, label146
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw a6, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label7
	addiw a3, a3, 1
	bgt s3, a3, label5
	ble s1, zero, label43
	j label505
label482:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label26
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	j label447
label42:
	sh2add a3, a4, a0
	lw a5, 0(a3)
	sh2add a4, a4, s0
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a5, 8(a3)
	sw a5, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	mv a4, a2
	addiw a2, a2, 4
	ble s1, a2, label167
	j label42
label41:
	sh2add a4, a3, a0
	lw a5, 0(a4)
	sh2add a3, a3, s0
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s1, a2, label36
	j label41
label40:
	sh2add a4, a3, a0
	lw a5, 0(a4)
	sh2add a3, a3, s0
	sw a5, 0(a3)
	lw a5, 4(a4)
	sw a5, 4(a3)
	lw a5, 8(a4)
	sw a5, 8(a3)
	lw a4, 12(a4)
	sw a4, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s1, a2, label177
	j label40
label2:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	ld s2, 80(sp)
	ld s3, 88(sp)
	ld s4, 96(sp)
	addi sp, sp, 104
	ret
