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
	mulw s1, s3, a0
	mv s2, a0
pcrel588:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel588)
	mv s0, a0
	jal getarray
pcrel589:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel589)
	mv s5, a0
	jal getarray
	mv s6, a0
	srliw a0, s4, 31
	add a0, s4, a0
	sraiw s4, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel590:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel590)
	ble s6, zero, label75
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
	slti t6, a4, 0
	xori t5, t5, 1
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	slt s7, t2, s2
	or a7, t5, a7
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label74
	j label113
label6:
	subw t2, t1, s4
	addw t3, s4, t1
	mv t4, a4
	mv a6, zero
	slt t5, a4, s3
	slti t6, a4, 0
	xori t5, t5, 1
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	slt s7, t2, s2
	or a7, t5, a7
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label74
	j label113
label498:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
label499:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label528
label122:
	mv a6, s8
	slti a7, t6, 0
	slt s7, t6, s2
	or a7, t5, a7
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label74
	mv a7, zero
	bne a2, zero, label34
	addw a6, s8, zero
	li a7, 1073741824
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label498
label528:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label530
label74:
	mulw a7, s2, t4
	addw a7, t6, a7
	sh2add a7, a7, s0
	lw a7, 0(a7)
	bne a2, zero, label34
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label499
label530:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label530
label4:
	subw a4, a3, s4
	addw a5, s4, a3
	mulw t0, s2, a3
	mv t1, zero
	j label6
label422:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label461
label463:
	ble s1, zero, label22
label500:
	mv a4, zero
	addiw a2, zero, 4
	ble s1, a2, label153
	j label25
label34:
	li s7, 1
	bne a2, s7, label43
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label16
	j label38
label43:
	li s7, 2
	bne a2, s7, label44
	max s8, a6, a7
	addiw t6, t6, 1
	bgt t3, t6, label122
	addiw t4, t4, 1
	bgt a5, t4, label127
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw s8, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label6
	addiw a3, a3, 1
	bgt s3, a3, label4
	j label463
label44:
	li s7, 3
	bne a2, s7, label45
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	j label448
label45:
	li s7, 4
	bne a2, s7, label244
	li s7, 1
	mv s8, zero
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, zero, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label404
label244:
	mv s8, zero
	addiw t6, t6, 1
	bgt t3, t6, label122
	addiw t4, t4, 1
	bgt a5, t4, label127
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw zero, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label6
	addiw a3, a3, 1
	bgt s3, a3, label4
	ble s1, zero, label22
	j label500
label404:
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
label441:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label515
label52:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	j label441
label448:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label485
label523:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label485
label61:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label62
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	j label523
label461:
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label498
label127:
	mv a6, s8
	slt t5, t4, s3
	slti t6, t4, 0
	xori t5, t5, 1
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	slt s7, t2, s2
	or a7, t5, a7
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label74
	mv a7, zero
	bne a2, zero, label34
	addw a6, s8, zero
	li a7, 1073741824
	ble a6, a7, label68
	li a7, -1073741824
	addw a6, a6, a7
	sub a7, zero, a7
	ble a6, a7, label68
	j label461
label68:
	bge a6, zero, label72
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label72
	addw a6, a6, a7
	bge a6, zero, label72
	addw a6, a6, a7
	bge a6, zero, label72
	addw a6, a6, a7
	bge a6, zero, label72
	addw a6, a6, a7
	bge a6, zero, label72
label533:
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label72
	j label533
label38:
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
	bne s9, s10, label39
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label38
label16:
	addiw t6, t6, 1
	bgt t3, t6, label122
	addiw t4, t4, 1
	bgt a5, t4, label127
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw s8, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label6
	addiw a3, a3, 1
	bgt s3, a3, label4
	j label463
label39:
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label38
label485:
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	j label523
label62:
	slliw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label61
	slliw s8, s8, 1
	addiw s8, s8, 1
	slliw s7, s7, 1
	li s9, 1073741824
	bge s7, s9, label16
	j label485
label113:
	mv a7, zero
	bne a2, zero, label34
	j label379
label22:
	addiw a1, a1, 1
	ble s6, a1, label75
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
	slti t6, a4, 0
	xori t5, t5, 1
	or t5, t5, t6
	mv t6, t2
	slti a7, t2, 0
	slt s7, t2, s2
	or a7, t5, a7
	xori s7, s7, 1
	or a7, a7, s7
	beq a7, zero, label74
	j label113
label515:
	divw s9, a6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	j label441
label72:
	mv s8, a6
	addiw t6, t6, 1
	bgt t3, t6, label122
	addiw t4, t4, 1
	bgt a5, t4, label127
	addw t2, t0, t1
	sh2add t2, t2, a0
	sw a6, 0(t2)
	addiw t1, t1, 1
	bgt s2, t1, label6
	addiw a3, a3, 1
	bgt s3, a3, label4
	ble s1, zero, label22
	j label500
label379:
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label68
	j label422
label25:
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
	ble s1, a2, label153
	j label25
label153:
	mv a3, a4
	addiw a2, a4, 4
	ble s1, a2, label28
label33:
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
	ble s1, a2, label28
	j label33
label28:
	addiw a2, a3, 4
	ble s1, a2, label177
	j label32
label177:
	mv a2, a3
	sh2add a3, a3, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
label506:
	sh2add a3, a2, a0
	lw a3, 0(a3)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	ble s1, a2, label22
	j label506
label32:
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
	j label32
label75:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
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
