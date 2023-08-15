.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.align 8
cmmc_parallel_body_payload_0:
	.zero	27
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s7, 40(sp)
	sd s4, 48(sp)
	sd s1, 56(sp)
	sd s6, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, a0
	jal getint
pcrel545:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi s3, a1, %pcrel_lo(pcrel545)
	mv a0, s3
	jal getarray
pcrel546:
	auipc a1, %pcrel_hi(kernelid)
	addi s7, a1, %pcrel_lo(pcrel546)
	mv a0, s7
	jal getarray
	mv s4, a0
	li a0, 109
	jal _sysy_starttime
pcrel547:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	srliw a1, s0, 31
	mv s11, zero
pcrel548:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	add a2, s0, a1
	ld a0, 104(sp)
pcrel549:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	addi s0, s9, %pcrel_lo(pcrel547)
	sraiw s8, a2, 1
	addi s5, a1, %pcrel_lo(pcrel549)
	mulw s1, s2, a0
pcrel550:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
	addi s6, a0, %pcrel_lo(pcrel550)
.p2align 2
label464:
	lw a1, 0(s7)
	slli a2, s2, 32
	xori a4, a1, 1
	add.uw a3, s8, a2
pcrel551:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(pcrel551)(s9)
	xori a2, a1, 2
	ld a0, 104(sp)
	sw a0, 4(s0)
	sltiu a0, a4, 1
	sd a3, 8(s0)
	sltiu a4, a2, 1
	sb a0, 16(s0)
	sltiu a2, a1, 1
	xori a0, a1, 3
	sw a1, 20(s0)
	sltiu a3, a0, 1
	sb a4, 24(s0)
	mv a0, zero
	sb a3, 25(s0)
	sb a2, 26(s0)
	mv a1, s2
	mv a2, s5
	jal cmmcParallelFor
	ble s1, zero, label468
pcrel552:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s1, %pcrel_lo(pcrel552)(s10)
	mv a0, zero
	mv a1, s1
	mv a2, s6
	jal cmmcParallelFor
.p2align 2
label468:
	addiw s11, s11, 1
	ble s4, s11, label470
	addi s7, s7, 4
	j label464
label470:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
cmmc_parallel_body_0:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel393:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel394:
	auipc t4, %pcrel_hi(b)
	lui t5, 524288
	sd s8, 0(sp)
	sd s7, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s9, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	sd a1, 120(sp)
	addi a1, a2, %pcrel_lo(pcrel393)
	lw a3, 4(a1)
	lw a5, 8(a1)
	lw t0, 12(a1)
	mulw t1, a0, a3
	lb s8, 16(a1)
	sd s8, 128(sp)
	lw s8, 20(a1)
	sd s8, 96(sp)
	lb s7, 24(a1)
	sd s7, 112(sp)
	lb s8, 25(a1)
	sd s8, 104(sp)
	lb a4, 26(a1)
	addi a1, t4, %pcrel_lo(pcrel394)
	lw t2, %pcrel_lo(pcrel393)(a2)
pcrel395:
	auipc a2, %pcrel_hi(a)
	addw t3, t1, t2
	addi t1, a2, %pcrel_lo(pcrel395)
	sh2add t2, t3, a1
	addiw a2, t5, 1
	lui a1, 786432
	mv t3, a0
	lui a0, 262144
	subw t4, t3, a5
	addw t5, a5, t3
	mv t6, t2
	mv a6, zero
	subw a7, zero, a5
	mv s0, a5
	mv s1, t4
	mv s5, zero
	j label8
.p2align 2
label297:
	addiw s1, s1, 1
	ble t5, s1, label314
.p2align 2
label8:
	slt s4, s1, t0
	sh2add s3, a7, t1
	xori s2, s4, 1
	mv s4, a7
	or s7, s1, a7
	srliw s8, s7, 31
	slt s7, a7, a3
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a3, s1
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a4, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	li s7, 4
	ld s8, 96(sp)
	beq s8, s7, label129
.p2align 2
label360:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	j label352
.p2align 2
label300:
	mulw s7, a3, s1
	sh2add s8, s7, s3
	lw s6, 0(s8)
	beq a4, zero, label317
.p2align 2
label37:
	addw s6, s5, s6
	ble s6, a0, label167
.p2align 2
label42:
	addw s6, s6, a1
	bgt s6, a0, label42
	mv s5, s6
	bge s6, zero, label298
.p2align 2
label40:
	addw s5, s5, a0
	blt s5, zero, label40
	addiw s4, s4, 1
	ble s0, s4, label297
.p2align 2
label46:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s8, s7, 31
	slt s7, s4, a3
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	beq s9, zero, label300
.p2align 2
label98:
	mv s6, zero
	bne a4, zero, label37
	ld s8, 128(sp)
	beq s8, zero, label103
.p2align 2
label104:
	li s7, 1
	mv s8, zero
.p2align 2
label18:
	divw s11, s5, s7
	srliw s10, s11, 31
	add s9, s11, s10
	andi s10, s9, -2
	subw s9, s11, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s9, s9, s10
	sltiu s11, s9, 1
	slliw s9, s8, 1
	addi s10, s9, 1
	slliw s9, s7, 1
	subw s8, s10, s11
	mv s7, s9
	blt s9, a0, label18
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label103:
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	beq s8, zero, label303
.p2align 2
label125:
	li s7, 1
	mv s8, zero
	li s11, 1
	divw s10, s5, s7
	and s9, s10, a2
	beq s9, s11, label152
	divw s9, s6, s7
	and s10, s9, a2
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a0, label31
	mv s5, s10
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s10, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label152:
	li s10, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	bge s9, a0, label294
.p2align 2
label31:
	divw s10, s5, s7
	li s11, 1
	and s9, s10, a2
	beq s9, s11, label152
	divw s9, s6, s7
	and s10, s9, a2
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	blt s9, a0, label31
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label331:
	addiw t3, t3, 1
	ld t4, 120(sp)
	ble t4, t3, label51
.p2align 2
label50:
	sh2add t2, a3, t2
	subw t4, t3, a5
	addw t5, a5, t3
	mv a6, zero
	subw a7, zero, a5
	sext.w s0, a5
	mv s5, zero
	mv t6, t2
	slt s4, t4, t0
	mv s1, t4
	or s7, t4, a7
	sh2add s3, a7, t1
	xori s2, s4, 1
	srliw s8, s7, 31
	mv s4, a7
	slt s7, a7, a3
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a3, t4
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a4, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	beq s7, zero, label370
.p2align 2
label22:
	max s5, s5, s6
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label317:
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	li s7, 4
	ld s8, 96(sp)
	bne s8, s7, label364
.p2align 2
label129:
	li s7, 1
	mv s8, zero
	j label25
.p2align 2
label134:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a0, label292
.p2align 2
label25:
	divw s10, s5, s7
	li s11, 1
	and s9, s10, a2
	bne s9, s11, label134
	divw s10, s6, s7
	and s9, s10, a2
	xori s11, s9, 1
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label25
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a3, a6, label52
	j label327
.p2align 2
label314:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ble a3, a6, label331
.p2align 2
label52:
	addi t6, t6, 4
	subw a7, a6, a5
	addw s0, a5, a6
	mv s1, t4
	mv s5, zero
	slt s4, t4, t0
	or s7, t4, a7
	sh2add s3, a7, t1
	xori s2, s4, 1
	srliw s8, s7, 31
	mv s4, a7
	slt s7, a7, a3
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a3, t4
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a4, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	li s7, 4
	ld s8, 96(sp)
	beq s8, s7, label129
	j label360
.p2align 2
label294:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label303:
	li s7, 4
	ld s8, 96(sp)
	beq s8, s7, label129
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
.p2align 2
label352:
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
.p2align 2
label292:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a3, a6, label52
label327:
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
	j label51
label167:
	mv s5, s6
	blt s6, zero, label40
	addiw s4, s4, 1
	bgt s0, s4, label46
	j label186
.p2align 2
label364:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	j label352
label370:
	ld s8, 104(sp)
	bne s8, zero, label125
	li s7, 4
	ld s8, 96(sp)
	beq s8, s7, label129
	j label360
label298:
	addiw s4, s4, 1
	bgt s0, s4, label46
label186:
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a3, a6, label52
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label50
label51:
	ld s8, 0(sp)
	ld s7, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s9, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 136
	ret
.p2align 2
cmmc_parallel_body_1:
	mv a5, a0
	addiw t0, a0, 1
pcrel461:
	auipc t1, %pcrel_hi(b)
	addiw a3, a1, -1
pcrel462:
	auipc a0, %pcrel_hi(a)
	addi a4, t1, %pcrel_lo(pcrel461)
	addi a2, a0, %pcrel_lo(pcrel462)
	ble a1, t0, label397
	sh2add a0, a5, a4
.p2align 2
label406:
	sh2add t0, a5, a2
	lw t1, 0(a0)
	addiw a5, a5, 2
	sw t1, 0(t0)
	lw t2, 4(a0)
	sw t2, 4(t0)
	ble a3, a5, label397
	addi a0, a0, 8
	j label406
label397:
	ble a1, a5, label404
	sh2add a0, a5, a4
label400:
	sh2add a3, a5, a2
	lw a4, 0(a0)
	addiw a5, a5, 1
	sw a4, 0(a3)
	ble a1, a5, label404
	addi a0, a0, 4
	j label400
label404:
	ret
