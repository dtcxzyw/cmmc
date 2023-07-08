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
pcrel517:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel517)
	mv s0, a0
	jal getarray
pcrel518:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel518)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a0, s3, a0
	sraiw s3, a0, 1
	li a0, 109
	jal _sysy_starttime
	ble s5, zero, label62
	mulw a1, s2, s1
pcrel519:
	auipc a0, %pcrel_hi(b)
	mv a2, zero
	addi a0, a0, %pcrel_lo(pcrel519)
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
	j label12
label7:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti a6, a5, 0
	xori t6, t6, 1
	or t6, t6, a6
	mv a6, t3
label12:
	slti s6, a6, 0
	slt s7, a6, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label61
	j label100
label32:
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
	ble a1, a3, label154
	j label32
label404:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
label437:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
label438:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
label22:
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	j label22
label128:
	mv a7, s8
	slti s6, a6, 0
	slt s7, a6, s1
	or s6, t6, s6
	xori s7, s7, 1
	or s6, s6, s7
	beq s6, zero, label61
	mv s6, zero
	bne a3, zero, label36
	addw a7, s8, zero
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	j label437
label133:
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
	beq s6, zero, label61
	mv s6, zero
	bne a3, zero, label36
	addw a7, s8, zero
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	j label404
label199:
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	j label351
label200:
	mv s8, s7
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s7, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label61:
	mulw s6, s1, t5
	addw s6, a6, s6
	sh2add s6, s6, s0
	lw s6, 0(s6)
	bne a3, zero, label36
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	j label438
label440:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label118
	j label20
label113:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw a7, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label20:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label118
	j label20
label118:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw a7, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
label444:
	mv a4, zero
	addiw a3, zero, 4
	ble a1, a3, label154
	j label32
label18:
	bge a7, zero, label113
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label118
	addw a7, a7, s6
	bge a7, zero, label118
	addw a7, a7, s6
	bge a7, zero, label118
	addw a7, a7, s6
	bge a7, zero, label118
	j label440
label36:
	li s7, 1
	bne a3, s7, label37
	mv s8, zero
	lui s9, 262144
	bge s7, s9, label24
label58:
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
	bne s9, s10, label60
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label24
	j label58
label60:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	j label58
label24:
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s8, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
label411:
	ble a1, zero, label35
	j label444
label5:
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s1, a4
	mv t2, zero
	j label7
label37:
	li s7, 2
	bne a3, s7, label38
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw s8, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	j label411
label38:
	li s7, 3
	bne a3, s7, label39
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, zero, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	j label357
label39:
	li s7, 4
	bne a3, s7, label196
	mv s7, zero
	li s8, 1
	lui s9, 262144
	bge s8, s9, label200
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	slliw s7, zero, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label200
	j label199
label196:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t3, t1, t2
	addiw t2, t2, 1
	sh2add t3, t3, a0
	sw zero, 0(t3)
	bgt s1, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label357:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	j label427
label52:
	divw s9, s6, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label53
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	j label466
label53:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
label427:
	divw s9, a7, s7
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label52
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	j label427
label154:
	mv a3, a4
	sh2add a4, a4, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
label33:
	sh2add a4, a3, a0
	sh2add a5, a3, s0
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble a1, a3, label35
	j label33
label466:
	slliw s8, s8, 1
	slliw s7, s7, 1
	addiw s8, s8, 1
	lui s9, 262144
	bge s7, s9, label24
	j label427
label100:
	mv s6, zero
	bne a3, zero, label36
	j label330
label35:
	addiw a2, a2, 1
	ble s5, a2, label62
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
	beq s6, zero, label61
	j label100
label44:
	slliw s7, s7, 1
	slliw s8, s8, 1
	lui s9, 262144
	bge s8, s9, label200
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	slliw s7, s7, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label200
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	j label351
label330:
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	lui s6, 786432
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label18
	j label404
label351:
	divw s9, s6, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	slliw s7, s7, 1
	slliw s8, s8, 1
	addiw s7, s7, 1
	lui s9, 262144
	bge s8, s9, label200
	divw s9, a7, s8
	li s10, -2147483647
	and s9, s9, s10
	li s10, 1
	bne s9, s10, label44
	j label351
label62:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s0
	mulw a0, s2, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
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
