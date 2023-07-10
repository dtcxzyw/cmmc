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
pcrel516:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel516)
	mv s1, a0
	jal getarray
pcrel517:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel517)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a1, s3, a0
	li a0, 109
	sraiw s3, a1, 1
	jal _sysy_starttime
	ble s5, zero, label2
	mulw a1, s2, s0
pcrel518:
	auipc a2, %pcrel_hi(b)
	addi a0, a2, %pcrel_lo(pcrel518)
	mv a2, zero
	sh2add a5, zero, s4
	mv a4, zero
	lw a3, 0(a5)
	subw a5, zero, s3
	addw t0, s3, zero
	mulw t1, s0, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	j label13
label8:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
label13:
	slti s8, a6, 0
	slt s7, a6, s0
	or s6, t6, s8
	xori s9, s7, 1
	or s8, s6, s9
	beq s8, zero, label62
	j label101
label437:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
label438:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
	j label465
label110:
	mv a7, s8
	slti s8, a6, 0
	slt s7, a6, s0
	or s6, t6, s8
	xori s9, s7, 1
	or s8, s6, s9
	beq s8, zero, label62
	mv s6, zero
	bne a3, zero, label30
	addw a7, a7, zero
	lui s6, 262144
	ble a7, s6, label56
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label56
	addw a7, a7, s7
	ble a7, s6, label56
	j label437
label33:
	li s8, 4
	bne a3, s8, label178
	mv s7, zero
	li s8, 1
	lui s9, 262144
	bge s8, s9, label182
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	divw s9, s6, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	slliw s9, zero, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label182
	j label181
label178:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw zero, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label29
	j label439
label181:
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	j label346
label182:
	mv s8, s7
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s7, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label29
	j label439
label465:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
	j label60
label62:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	bne a3, zero, label30
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label56
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label56
	addw a7, a7, s7
	ble a7, s6, label56
	addw a7, a7, s7
	ble a7, s6, label56
	j label438
label60:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
	j label60
label368:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
	j label404
label30:
	li s7, 1
	bne a3, s7, label31
	mv s8, zero
	lui s9, 262144
	bge s7, s9, label18
	j label52
label404:
	lui s7, 786432
	lui s6, 262144
	addw a7, a7, s7
	ble a7, s6, label56
	j label437
label439:
	mv a5, zero
	addiw a3, zero, 4
	ble a1, a3, label27
	j label26
label115:
	mv a7, s8
	slt t6, t5, s2
	slti s6, t5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s8, t3, 0
	slt s7, t3, s0
	or s6, t6, s8
	xori s9, s7, 1
	or s8, s6, s9
	beq s8, zero, label62
	mv s6, zero
	bne a3, zero, label30
	addw a7, a7, zero
	lui s6, 262144
	ble a7, s6, label56
	lui s7, 786432
	addw a7, a7, s7
	ble a7, s6, label56
	j label404
label466:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label252
	j label58
label247:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw a7, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label29
	j label439
label252:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw a7, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	ble a1, zero, label29
	j label439
label58:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label252
	j label58
label56:
	bge a7, zero, label247
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label252
	addw a7, a7, s6
	bge a7, zero, label252
	addw a7, a7, s6
	bge a7, zero, label252
	addw a7, a7, s6
	bge a7, zero, label252
	j label466
label52:
	divw s9, a7, s7
	srliw s11, s9, 31
	add s10, s9, s11
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label54
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label18
	j label52
label54:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label52
label18:
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s8, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
label406:
	ble a1, zero, label29
	j label439
label31:
	li s7, 2
	bne a3, s7, label32
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label110
	addiw t5, t5, 1
	bgt t0, t5, label115
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t4, t3, a0
	sw s8, 0(t4)
	bgt s0, t2, label8
	addiw a4, a4, 1
	bgt s2, a4, label6
	j label406
label32:
	li s7, 3
	bne a3, s7, label33
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	slliw s9, zero, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
label422:
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	j label456
label461:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label422
label456:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label422
label46:
	divw s10, s6, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label47
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	j label461
label47:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label46
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label18
	j label422
label101:
	mv s6, zero
	bne a3, zero, label30
	addw a7, a7, zero
	lui s6, 262144
	ble a7, s6, label56
	j label368
label29:
	addiw a2, a2, 1
	ble s5, a2, label2
	sh2add a5, a2, s4
	mv a4, zero
	lw a3, 0(a5)
	subw a5, zero, s3
	addw t0, s3, zero
	mulw t1, s0, zero
	mv t2, zero
	subw t3, zero, s3
	addw t4, s3, zero
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s8, t3, 0
	slt s7, t3, s0
	or s6, t6, s8
	xori s9, s7, 1
	or s8, s6, s9
	beq s8, zero, label62
	j label101
label38:
	slliw s7, s7, 1
	slliw s8, s8, 1
	lui s9, 262144
	bge s8, s9, label182
	divw s9, a7, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	divw s9, s6, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label182
	divw s9, a7, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
label346:
	divw s9, s6, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label182
	divw s9, a7, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label38
	j label346
label26:
	sh2add a4, a5, a0
	sh2add a5, a5, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t0, 8(a4)
	sw t0, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	mv a5, a3
	addiw a3, a3, 4
	ble a1, a3, label27
	j label26
label6:
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s0, a4
	mv t2, zero
	j label8
label27:
	sh2add a4, a5, a0
	sh2add t0, a5, s1
	lw a3, 0(a4)
	addiw a5, a5, 1
	sw a3, 0(t0)
	ble a1, a5, label29
	j label27
label2:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s1
	mulw a0, s2, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
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
