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
	sd s1, 80(sp)
	sd s6, 72(sp)
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s4, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s3, a0
	jal getint
	mv s2, a0
	jal getint
	mv s1, a0
pcrel535:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel535)
	mv s0, a0
	jal getarray
pcrel536:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel536)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a0, s3, a0
	sraiw s3, a0, 1
	li a0, 109
	jal _sysy_starttime
	ble s5, zero, label2
	mulw a1, s2, s1
pcrel537:
	auipc a0, %pcrel_hi(b)
	mv a2, zero
	addi a0, a0, %pcrel_lo(pcrel537)
	sh2add a3, zero, s4
	mv a4, zero
	lw a3, 0(a3)
	subw a5, zero, s3
	addw t0, s3, zero
	mulw t1, s1, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti a6, a5, 0
	xori t6, t6, 1
	or t6, t6, a6
	mv a6, t3
	j label13
label8:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti a6, a5, 0
	xori t6, t6, 1
	or t6, t6, a6
	mv a6, t3
label13:
	slti s6, a6, 0
	slt s7, a6, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label62
	j label101
label449:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
label455:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label455
label62:
	mulw s6, s1, t5
	addw s6, a6, s6
	sh2add s6, s6, s0
	lw s6, 0(s6)
	bne a3, zero, label37
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label449
label448:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label449
label457:
	mv a4, zero
	addiw a3, zero, 4
	ble a1, a3, label155
	j label33
label129:
	mv a7, s8
	slti s6, a6, 0
	slt s7, a6, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label62
	mv s6, zero
	bne a3, zero, label37
	addw a7, s8, zero
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label448
label33:
	sh2add a5, a4, a0
	sh2add a4, a4, s0
	lw t0, 0(a5)
	sw t0, 0(a4)
	lw t0, 4(a5)
	sw t0, 4(a4)
	lw t0, 8(a5)
	sw t0, 8(a4)
	lw a5, 12(a5)
	sw a5, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble a1, a3, label155
	j label33
label330:
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label372
label411:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label448
label25:
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s8, 0(t3)
	bgt s1, t2, label8
	j label382
label134:
	mv a7, s8
	slt t6, t5, s2
	slti a6, t5, 0
	xori t6, t6, 1
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	slt s7, t3, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label62
	mv s6, zero
	bne a3, zero, label37
	addw a7, s8, zero
	lui s6, 262144
	ble a7, s6, label19
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label411
label37:
	li s7, 1
	bne a3, s7, label44
	mv s8, zero
	lui s9, 262144
	bge s7, s9, label25
	j label41
label44:
	li s7, 2
	bne a3, s7, label45
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s8, 0(t3)
	bgt s1, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	j label420
label372:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label19
	j label411
label19:
	bge a7, zero, label114
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label119
	addw a7, a7, s6
	bge a7, zero, label119
	addw a7, a7, s6
	bge a7, zero, label119
	addw a7, a7, s6
	bge a7, zero, label119
	addw a7, a7, s6
	bge a7, zero, label119
	j label453
label114:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw a7, 0(t3)
	bgt s1, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label36
	j label457
label453:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label119
	j label453
label119:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw a7, 0(t3)
	bgt s1, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label36
	j label457
label41:
	divw s9, a7, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s10, s10, -2
	subw s9, s9, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label43
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label25
	j label41
label43:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	j label41
label382:
	addiw a4, a4, 1
	bgt s2, a4, label6
label420:
	ble a1, zero, label36
	j label457
label45:
	li s7, 3
	bne a3, s7, label46
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	slliw s8, zero, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	j label364
label46:
	li s7, 4
	bne a3, s7, label214
	mv s7, zero
	li s8, 1
	lui s9, 262144
	bge s8, s9, label218
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	slliw s7, zero, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label218
	j label217
label214:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw zero, 0(t3)
	bgt s1, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label36
	j label457
label217:
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	j label358
label218:
	mv s8, s7
	addiw a6, a6, 1
	bgt t4, a6, label129
	addiw t5, t5, 1
	bgt t0, t5, label134
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s7, 0(t3)
	bgt s1, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label36
	j label457
label364:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
label439:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	j label477
label59:
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label60
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	j label439
label60:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label59
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	j label439
label155:
	mv a3, a4
	sh2add a4, a4, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
label464:
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label36
	j label464
label477:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label25
	j label439
label101:
	mv s6, zero
	bne a3, zero, label37
	j label330
label36:
	addiw a2, a2, 1
	ble s5, a2, label2
	sh2add a3, a2, s4
	mv a4, zero
	lw a3, 0(a3)
	subw a5, zero, s3
	addw t0, s3, zero
	mulw t1, s1, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti a6, a5, 0
	xori t6, t6, 1
	or t6, t6, a6
	mv a6, t3
	slti s6, t3, 0
	slt s7, t3, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label62
	j label101
label358:
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	slliw s7, s7, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label218
	j label470
label51:
	slliw s7, s7, 1
	slliw s8, s8, 1
	lui s9, 262144
	bge s8, s9, label218
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	slliw s7, s7, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label218
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	j label358
label470:
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label51
	j label358
label6:
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s1, a4
	mv t2, zero
	j label8
label2:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s0
	mulw a0, s2, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	ld s2, 88(sp)
	ld s3, 96(sp)
	addi sp, sp, 104
	ret
