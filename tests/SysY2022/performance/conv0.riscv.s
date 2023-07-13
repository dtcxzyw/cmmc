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
	sd s3, 96(sp)
	sd s2, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s4, 48(sp)
	sd s8, 40(sp)
	sd s7, 32(sp)
	sd s9, 24(sp)
	sd s11, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s3, a0
	jal getint
	mv s2, a0
	jal getint
pcrel544:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel544)
	mv s1, a0
	jal getarray
pcrel545:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel545)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a1, s3, a0
	li a0, 109
	sraiw s3, a1, 1
	jal _sysy_starttime
	ble s5, zero, label62
	mulw a1, s2, s0
pcrel546:
	auipc a2, %pcrel_hi(b)
	addi a0, a2, %pcrel_lo(pcrel546)
	mv a2, zero
	mv a5, s4
	mv a4, zero
	lw a3, 0(s4)
	subw a5, zero, s3
	sext.w t0, s3
	mv t1, zero
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slt s8, t3, s0
	xori s7, s8, 1
	slti s8, t3, 0
	or s6, t6, s7
	or s7, s6, s8
	beq s7, zero, label15
label100:
	mv s6, zero
	bne a3, zero, label37
label330:
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label31
	j label364
label37:
	li s7, 1
	bne a3, s7, label38
	mv s8, zero
	lui s9, 262144
	bge s7, s9, label18
	j label59
label364:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
label431:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
	j label464
label119:
	mv a7, s8
	slt t6, t5, s2
	slti s6, t5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slt s8, t3, s0
	xori s7, s8, 1
	slti s8, t3, 0
	or s6, t6, s7
	or s7, s6, s8
	beq s7, zero, label15
	mv s6, zero
	bne a3, zero, label37
	sext.w a7, a7
	lui s6, 262144
	ble a7, s6, label31
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	j label431
label5:
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s0, a4
	mv t2, zero
	j label7
label464:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
label465:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
	j label473
label114:
	mv a7, s8
	slt s8, a6, s0
	xori s7, s8, 1
	slti s8, a6, 0
	or s6, t6, s7
	or s7, s6, s8
	beq s7, zero, label15
	mv s6, zero
	bne a3, zero, label37
	sext.w a7, a7
	lui s6, 262144
	ble a7, s6, label31
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	j label464
label473:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
	j label35
label474:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label183
	j label33
label178:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw a7, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
	mv a5, zero
	li a3, 4
	ble a1, a3, label27
	j label26
label33:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label183
	j label33
label183:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw a7, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
	mv a5, zero
	li a3, 4
	ble a1, a3, label27
	j label26
label35:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label31
	j label35
label7:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slt s8, t3, s0
	xori s7, s8, 1
	slti s8, t3, 0
	or s6, t6, s7
	or s7, s6, s8
	beq s7, zero, label15
	j label100
label15:
	mulw s6, s0, t5
	addw s8, a6, s6
	sh2add s7, s8, s1
	lw s6, 0(s7)
	bne a3, zero, label37
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label31
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	addw a7, a7, s7
	ble a7, s6, label31
	j label465
label31:
	bge a7, zero, label178
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label183
	addw a7, a7, s6
	bge a7, zero, label183
	addw a7, a7, s6
	bge a7, zero, label183
	addw a7, a7, s6
	bge a7, zero, label183
	addw a7, a7, s6
	bge a7, zero, label183
	j label474
label59:
	divw s9, a7, s7
	srliw s10, s9, 31
	add s11, s9, s10
	andi s10, s11, -2
	subw s9, s9, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label61
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label18
	j label59
label61:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label59
label18:
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s8, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
label433:
	mv a5, zero
	li a3, 4
	ble a1, a3, label27
	j label26
label38:
	li s7, 2
	bne a3, s7, label39
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s8, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
	j label433
label39:
	li s7, 3
	bne a3, s7, label40
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	mv s9, zero
	slliw s7, s7, 1
	li s8, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label423
label40:
	li s8, 4
	bne a3, s8, label201
	mv s7, zero
	li s8, 1
	lui s9, 262144
	bge s8, s9, label205
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label47
	divw s10, s6, s8
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
	mv s9, zero
	slliw s8, s8, 1
	li s7, 1
	lui s9, 262144
	bge s8, s9, label205
	divw s9, a7, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label47
	j label351
label201:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw zero, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
	mv a5, zero
	li a3, 4
	ble a1, a3, label27
	j label26
label351:
	divw s10, s6, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
label383:
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label205
	j label448
label423:
	divw s9, a7, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
label456:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
label490:
	divw s9, a7, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	j label456
label52:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label53
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label490
label53:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s9, a7, s7
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label52
	j label456
label448:
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label47
	j label482
label205:
	mv s8, s7
	addiw a6, a6, 1
	bgt t4, a6, label114
	addiw t5, t5, 1
	bgt t0, t5, label119
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s7, 0(t4)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label29
	mv a5, zero
	li a3, 4
	ble a1, a3, label27
	j label26
label47:
	slliw s7, s7, 1
	slliw s8, s8, 1
	lui s9, 262144
	bge s8, s9, label205
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label47
	divw s10, s6, s8
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label205
	divw s9, a7, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label47
	divw s10, s6, s8
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
	j label383
label482:
	divw s10, s6, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
	j label383
label29:
	addiw a2, a2, 1
	ble s5, a2, label62
	sh2add a5, a2, s4
	mv a4, zero
	lw a3, 0(a5)
	subw a5, zero, s3
	sext.w t0, s3
	mv t1, zero
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slt s8, t3, s0
	xori s7, s8, 1
	slti s8, t3, 0
	or s6, t6, s7
	or s7, s6, s8
	beq s7, zero, label15
	mv s6, zero
	bne a3, zero, label37
	j label330
label26:
	sh2add a4, a5, a0
	sh2add a5, a5, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	mv a5, a3
	addiw a3, a3, 4
	ble a1, a3, label27
	j label26
label27:
	sh2add t0, a5, a0
	sh2add a4, a5, s1
	lw a3, 0(t0)
	addiw a5, a5, 1
	sw a3, 0(a4)
	ble a1, a5, label29
	j label27
label62:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s1
	mulw a0, s2, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s10, 8(sp)
	ld s11, 16(sp)
	ld s9, 24(sp)
	ld s7, 32(sp)
	ld s8, 40(sp)
	ld s4, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s2, 88(sp)
	ld s3, 96(sp)
	addi sp, sp, 104
	ret
