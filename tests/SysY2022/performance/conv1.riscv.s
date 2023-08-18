.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable1448:
	.word	label1423-__cmmc_jumptable1448
	.word	label1421-__cmmc_jumptable1448
	.word	label1422-__cmmc_jumptable1448
	.word	label1420-__cmmc_jumptable1448
	.word	label1419-__cmmc_jumptable1448
.bss
.p2align 3
a:
	.zero	40000000
.p2align 3
b:
	.zero	40000000
.p2align 3
kernelid:
	.zero	40000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_4:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_5:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_6:
	.zero	16
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[48] CalleeSaved[104]
	addi sp, sp, -152
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	sd a0, 112(sp)
	mv a1, a0
	jal getint
pcrel1571:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1571)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1572:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel1572)
	mv a0, s0
	jal getarray
	sd a0, 136(sp)
	li a0, 109
	jal _sysy_starttime
	mv a2, s1
	ld a0, 104(sp)
	ld a1, 112(sp)
	mulw a1, a1, a0
	sd a1, 128(sp)
	bge s1, zero, label1542
	addiw a2, s1, 1
label1542:
	sraiw s1, a2, 1
pcrel1573:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1574:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1575:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1576:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1577:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_6)
	mv s11, zero
	addi s2, s3, %pcrel_lo(pcrel1573)
	addi s4, s5, %pcrel_lo(pcrel1574)
	addi s6, s7, %pcrel_lo(pcrel1575)
	addi s8, s9, %pcrel_lo(pcrel1576)
	addi s10, a0, %pcrel_lo(pcrel1577)
pcrel1578:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
	addi a2, a0, %pcrel_lo(pcrel1578)
	sd a2, 144(sp)
	lw a1, 0(s0)
	li a3, 5
	mv a0, a1
	bltu a1, a3, label1452
.p2align 2
label1413:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1579:
	auipc a5, %pcrel_hi(cmmc_parallel_body_4)
	sw zero, %pcrel_lo(label1413)(a0)
	ld a2, 144(sp)
	sw s1, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1579)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1415
	j label1416
.p2align 2
label1422:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
	sw zero, %pcrel_lo(label1422)(s9)
pcrel1580:
	auipc a4, %pcrel_hi(cmmc_parallel_body_5)
	sw s1, 4(s8)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1580)
	sd a3, 8(s8)
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1416
.p2align 2
label1415:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1581:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	ld a1, 128(sp)
	addi a2, a3, %pcrel_lo(pcrel1581)
	sw a1, %pcrel_lo(label1415)(a0)
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1416:
	addiw s11, s11, 1
	ld a0, 136(sp)
	ble a0, s11, label1417
	addi s0, s0, 4
	li a3, 5
	lw a1, 0(s0)
	mv a0, a1
	bgeu a1, a3, label1413
.p2align 2
label1452:
	auipc a5, %pcrel_hi(__cmmc_jumptable1448)
	addi a2, a5, %pcrel_lo(label1452)
	sh2add a1, a0, a2
	lw a4, 0(a1)
	add a3, a2, a4
	jr a3
.p2align 2
label1419:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1582:
	auipc a4, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1419)(a0)
	sw s1, 4(s10)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1582)
	sd a3, 8(s10)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1415
	j label1416
label1417:
	li a0, 116
	jal _sysy_stoptime
	ld a2, 120(sp)
	ld a1, 128(sp)
	mv a0, a1
	mv a1, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label1423:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1423)(s3)
pcrel1583:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	sw s1, 4(s2)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1583)
	sd a3, 8(s2)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1415
	j label1416
.p2align 2
label1420:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1420)(s7)
	slli a2, s1, 32
pcrel1584:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	ld a1, 112(sp)
	sw a1, 4(s6)
	ld a0, 104(sp)
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1584)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1415
	j label1416
.p2align 2
label1421:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw zero, %pcrel_lo(label1421)(s5)
pcrel1585:
	auipc a4, %pcrel_hi(cmmc_parallel_body_2)
	sw s1, 4(s4)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1585)
	sd a3, 8(s4)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1415
	j label1416
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -72
	mv t1, a1
pcrel172:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel173:
	auipc t4, %pcrel_hi(b)
pcrel174:
	auipc t5, %pcrel_hi(a)
	addi t0, a5, %pcrel_lo(pcrel172)
	addi t3, t4, %pcrel_lo(pcrel173)
	sd s0, 0(sp)
	sd s5, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	lw a3, 4(t0)
	ld a1, 8(t0)
	lw t2, %pcrel_lo(pcrel172)(a5)
	srai a2, a1, 32
	sext.w a4, a1
	addi a5, t5, %pcrel_lo(pcrel174)
	mulw t0, a0, a2
	addw a1, t0, t2
	mv t2, a0
	sh2add t0, a1, t3
	lui a0, 262144
	lui a1, 786432
	subw t3, t2, a3
	addw t4, a3, t2
	mv t5, t0
	mv t6, zero
	subw a6, zero, a3
	mv a7, a3
	mv s0, t3
	mv s4, zero
	j label8
.p2align 2
label150:
	addiw s3, s3, 1
	ble a7, s3, label155
.p2align 2
label28:
	addi s2, s2, 4
	or s7, s0, s3
	srliw s8, s7, 31
	slt s7, s3, a2
	andi s6, s8, 1
	xori s8, s7, 1
	or s5, s1, s6
	or s6, s5, s8
	beq s6, zero, label148
.p2align 2
label67:
	mv s5, zero
	sext.w s4, s4
	ble s4, a0, label146
.p2align 2
label31:
	addw s4, s4, a1
	bgt s4, a0, label31
	bge s4, zero, label150
.p2align 2
label29:
	addw s4, s4, a0
	blt s4, zero, label29
	addiw s3, s3, 1
	bgt a7, s3, label28
	addiw s0, s0, 1
	ble t4, s0, label154
.p2align 2
label8:
	slt s3, s0, a4
	sh2add s2, a6, a5
	xori s1, s3, 1
	mv s3, a6
	or s7, s0, a6
	srliw s8, s7, 31
	slt s7, a6, a2
	andi s6, s8, 1
	xori s8, s7, 1
	or s5, s1, s6
	or s6, s5, s8
	bne s6, zero, label67
	mulw s6, a2, s0
	sh2add s7, s6, s2
	lw s5, 0(s7)
	addw s4, s4, s5
	bgt s4, a0, label31
label151:
	blt s4, zero, label29
	j label20
.p2align 2
label154:
	addiw t6, t6, 1
	sw s4, 0(t5)
	ble a2, t6, label159
.p2align 2
label24:
	addi t5, t5, 4
	subw a6, t6, a3
	addw a7, a3, t6
	mv s0, t3
	mv s4, zero
	slt s3, t3, a4
	or s7, t3, a6
	sh2add s2, a6, a5
	xori s1, s3, 1
	srliw s8, s7, 31
	mv s3, a6
	slt s7, a6, a2
	andi s6, s8, 1
	xori s8, s7, 1
	or s5, s1, s6
	or s6, s5, s8
	bne s6, zero, label67
	mulw s6, a2, t3
	sh2add s7, s6, s2
	lw s5, 0(s7)
	mv s4, s5
	bgt s5, a0, label31
	j label151
.p2align 2
label159:
	addiw t2, t2, 1
	ble t1, t2, label26
.p2align 2
label27:
	sh2add t0, a2, t0
	subw t3, t2, a3
	addw t4, a3, t2
	mv t6, zero
	subw a6, zero, a3
	sext.w a7, a3
	mv s4, zero
	mv t5, t0
	slt s3, t3, a4
	mv s0, t3
	or s7, t3, a6
	sh2add s2, a6, a5
	xori s1, s3, 1
	srliw s8, s7, 31
	mv s3, a6
	slt s7, a6, a2
	andi s6, s8, 1
	xori s8, s7, 1
	or s5, s1, s6
	or s6, s5, s8
	bne s6, zero, label67
	mulw s6, a2, t3
	sh2add s7, s6, s2
	lw s5, 0(s7)
	mv s4, s5
	bgt s5, a0, label31
	j label151
.p2align 2
label148:
	mulw s6, a2, s0
	sh2add s7, s6, s2
	lw s5, 0(s7)
	addw s4, s4, s5
	bgt s4, a0, label31
	blt s4, zero, label29
	j label20
label155:
	addiw s0, s0, 1
	bgt t4, s0, label8
label23:
	addiw t6, t6, 1
	sw s4, 0(t5)
	bgt a2, t6, label24
	addiw t2, t2, 1
	bgt t1, t2, label27
label26:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label146:
	blt s4, zero, label29
label20:
	addiw s3, s3, 1
	bgt a7, s3, label28
	addiw s0, s0, 1
	bgt t4, s0, label8
	j label23
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel334:
	auipc a5, %pcrel_hi(b)
pcrel335:
	auipc a0, %pcrel_hi(a)
	addi a3, a5, %pcrel_lo(pcrel334)
	addi a2, a0, %pcrel_lo(pcrel335)
	ble a1, a4, label176
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label228
	sh2add a0, t0, a2
.p2align 2
label194:
	sh2add t1, t0, a3
	addiw t0, t0, 16
	ld t3, 0(t1)
	sd t3, 0(a0)
	ld t2, 8(t1)
	sd t2, 8(a0)
	ld t3, 16(t1)
	sd t3, 16(a0)
	ld t2, 24(t1)
	sd t2, 24(a0)
	ld t3, 32(t1)
	sd t3, 32(a0)
	ld t2, 40(t1)
	sd t2, 40(a0)
	ld t3, 48(t1)
	sd t3, 48(a0)
	ld t2, 56(t1)
	sd t2, 56(a0)
	ble a5, t0, label307
	addi a0, a0, 64
	j label194
label307:
	mv a0, t0
label185:
	ble a4, a0, label176
	sh2add a5, a0, a3
	j label189
label192:
	addi a5, a5, 16
label189:
	sh2add t0, a0, a2
	ld t2, 0(a5)
	addiw a0, a0, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a0, label192
	mv t0, a0
label176:
	ble a1, t0, label183
	sh2add a0, t0, a3
	j label179
label182:
	addi a0, a0, 4
label179:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label182
label183:
	ret
label228:
	mv a0, t0
	mv t0, zero
	j label185
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -96
	mv t1, a1
pcrel517:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel518:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel517)
	addi t2, t4, %pcrel_lo(pcrel518)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s10, 72(sp)
	sd s11, 80(sp)
	sd s8, 88(sp)
	lw a3, 4(t0)
	ld a1, 8(t0)
	lw t3, %pcrel_lo(pcrel517)(a5)
	srai a2, a1, 32
	sext.w a4, a1
	mulw t0, a0, a2
	addw a1, t0, t3
pcrel519:
	auipc t3, %pcrel_hi(a)
	sh2add t0, a1, t2
	addi a5, t3, %pcrel_lo(pcrel519)
	mv t2, a0
	lui a0, 262144
	subw t3, t2, a3
	addw t4, a3, t2
	mv t5, t0
	mv t6, zero
	subw a6, zero, a3
	mv a7, a3
	mv s0, t3
	mv a1, zero
	slt s2, t3, a4
	sh2add s3, a6, a5
	mv s4, a6
	xori s1, s2, 1
	or s6, t3, a6
	srliw s7, s6, 31
	slt s6, a6, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	bne s5, zero, label398
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, zero, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	j label499
.p2align 2
label483:
	addiw t6, t6, 1
	sw s6, 0(t5)
	ble a2, t6, label488
	addi t5, t5, 4
	subw a6, t6, a3
	addw a7, a3, t6
	mv s0, t3
	mv a1, zero
	slt s2, t3, a4
	or s6, t3, a6
	mv s4, a6
	sh2add s3, a6, a5
	xori s1, s2, 1
	srliw s7, s6, 31
	slt s6, a6, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	beq s5, zero, label495
.p2align 2
label398:
	mv s2, zero
	li s5, 1
	mv s6, zero
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, zero, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	addiw s10, s8, 1
	andi s9, s10, -2
	subw s11, s8, s9
	mv s8, zero
	xor s10, s7, s11
	slliw s7, s5, 1
	li s11, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	bge s7, a0, label504
.p2align 2
label353:
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
label468:
	andi s11, s10, -2
	divw s8, s2, s5
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	addiw s10, s8, 1
label470:
	andi s9, s10, -2
	subw s11, s8, s9
	slliw s8, s6, 1
	xor s10, s7, s11
	slliw s7, s5, 1
	addi s11, s8, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label353
.p2align 2
label356:
	addiw s4, s4, 1
	bgt a7, s4, label357
.p2align 2
label420:
	addiw s0, s0, 1
	ble t4, s0, label483
	mv a1, s6
	slt s2, s0, a4
	sh2add s3, a6, a5
	mv s4, a6
	or s6, s0, a6
	xori s1, s2, 1
	srliw s7, s6, 31
	slt s6, a6, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	bne s5, zero, label398
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	addiw s10, s8, 1
	andi s9, s10, -2
	subw s11, s8, s9
	mv s8, zero
	xor s10, s7, s11
	slliw s7, s5, 1
	li s11, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label353
	j label356
.p2align 2
label357:
	addi s3, s3, 4
	mv a1, s6
	or s6, s0, s4
	srliw s7, s6, 31
	slt s6, s4, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	bne s5, zero, label398
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	addiw s10, s8, 1
	andi s9, s10, -2
	subw s11, s8, s9
	mv s8, zero
	xor s10, s7, s11
	slliw s7, s5, 1
	li s11, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label353
	j label356
.p2align 2
label488:
	addiw t2, t2, 1
	ble t1, t2, label363
	sh2add t0, a2, t0
	subw t3, t2, a3
	addw t4, a3, t2
	mv t6, zero
	subw a6, zero, a3
	sext.w a7, a3
	mv a1, zero
	mv t5, t0
	slt s2, t3, a4
	mv s0, t3
	or s6, t3, a6
	mv s4, a6
	sh2add s3, a6, a5
	xori s1, s2, 1
	srliw s7, s6, 31
	slt s6, a6, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	bne s5, zero, label398
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, zero, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
.p2align 2
label499:
	addiw s10, s10, 1
	andi s9, s10, -2
	subw s11, s8, s9
	slliw s8, s6, 1
	xor s10, s7, s11
	slliw s7, s5, 1
	addi s11, s8, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label353
	j label356
.p2align 2
label495:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label468
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label470
	addiw s10, s8, 1
	andi s9, s10, -2
	subw s11, s8, s9
	mv s8, zero
	xor s10, s7, s11
	slliw s7, s5, 1
	li s11, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label353
	j label356
label504:
	addiw s4, s4, 1
	bgt a7, s4, label357
	j label420
label363:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s10, 72(sp)
	ld s11, 80(sp)
	ld s8, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t3, a1
pcrel706:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel707:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel706)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	lw t0, 4(a3)
	ld a1, 8(a3)
	lw t2, %pcrel_lo(pcrel706)(a2)
	srai a5, a1, 32
	sext.w a4, a1
pcrel708:
	auipc a2, %pcrel_hi(a)
	addi a1, t4, %pcrel_lo(pcrel707)
	mv t4, a0
	mulw t1, a0, a4
	li a0, 1
	addw a3, t1, t2
	addi t1, a2, %pcrel_lo(pcrel708)
	sh2add t2, a3, a1
	lui a2, 262144
	lui a3, 524288
	addiw a1, a3, 1
	subw t5, t4, a5
	addw t6, a5, t4
	mv a6, t2
	mv a7, zero
	subw s0, zero, a5
	mv s1, a5
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	sh2add s4, s0, t1
	xori s3, s5, 1
	mv s5, s0
	or s7, t5, s0
	srliw s9, s7, 31
	slt s7, s0, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	bne s8, zero, label585
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label537
	j label674
.p2align 2
label673:
	divw s11, s6, s7
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a2, label537
	addiw s5, s5, 1
	bgt s1, s5, label550
.p2align 2
label680:
	addiw s2, s2, 1
	ble t6, s2, label687
.p2align 2
label616:
	mv a3, s8
	slt s5, s2, t0
	sh2add s4, s0, t1
	or s7, s2, s0
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	beq s8, zero, label677
.p2align 2
label585:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s9, a3, a0
	and s11, s9, a1
	bne s11, a0, label673
.p2align 2
label595:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label669
.p2align 2
label537:
	divw s9, a3, s7
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, s7
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a2, label537
.p2align 2
label674:
	addiw s5, s5, 1
	ble s1, s5, label680
.p2align 2
label550:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	srliw s9, s7, 31
	slt s7, s5, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	bne s8, zero, label585
	mulw s7, a4, s2
	divw s9, a3, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label537
	j label674
.p2align 2
label669:
	addiw s5, s5, 1
	bgt s1, s5, label550
	addiw s2, s2, 1
	bgt t6, s2, label616
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label688
.p2align 2
label546:
	addi a6, a6, 4
	subw s0, a7, a5
	addw s1, a5, a7
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	bne s8, zero, label585
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label537
	j label674
.p2align 2
label677:
	mulw s7, a4, s2
	divw s9, a3, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label537
	j label674
.p2align 2
label687:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label546
	addiw t4, t4, 1
	bgt t3, t4, label549
label548:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s8, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label688:
	addiw t4, t4, 1
	ble t3, t4, label548
.p2align 2
label549:
	sh2add t2, a4, t2
	subw t5, t4, a5
	addw t6, a5, t4
	mv a7, zero
	subw s0, zero, a5
	sext.w s1, a5
	mv a3, zero
	mv a6, t2
	slt s5, t5, t0
	mv s2, t5
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	bne s8, zero, label585
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label595
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label537
	j label674
.p2align 2
cmmc_parallel_body_4:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel1086:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1087:
	auipc a5, %pcrel_hi(b)
	mv t4, a0
	sd s4, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s10, 40(sp)
	sd s9, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd a1, 96(sp)
	addi a1, a2, %pcrel_lo(pcrel1086)
	lw s4, 4(a1)
	addi s10, s4, -1359
	addi s6, s4, -336
	addi t1, s4, -81
	addi t0, s4, -18
	sd s4, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel1086)(a2)
	sd s6, 128(sp)
	addi a2, a5, %pcrel_lo(pcrel1087)
	addw a1, a3, a4
	addi a5, s4, -3
	sd s10, 120(sp)
	lui a3, 1048571
	sh2add a4, a1, a2
	lui a2, 1048575
	addiw a1, a2, -1358
	addiw a2, a3, -1357
	addw t2, s4, a1
	lui a3, 32
	addw t3, s4, a2
	lui a1, 16
	addiw a0, a3, -1
	lui a2, 1
	lui a3, 4
	mv a6, a4
	mv a7, zero
	addw t6, s4, t4
	subw t5, t4, s4
	j label713
.p2align 2
label959:
	addiw s9, s9, 1
	bgt t6, s9, label726
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label1048
.p2align 2
label717:
	addi a6, a6, 4
.p2align 2
label713:
	ld s4, 104(sp)
	addw s2, a5, a7
	addw s3, t0, a7
	addw s8, t2, a7
	ld s6, 128(sp)
	addw s1, s4, a7
	subw s0, a7, s4
	addw s5, s6, a7
	ld s10, 120(sp)
	addw s4, t1, a7
	addiw s9, s0, 3
	addw s6, t3, a7
	addw s7, s10, a7
	blt s9, s1, label825
	mv s2, t5
	bge s0, s1, label1013
.p2align 2
label842:
	mv s3, s0
.p2align 2
label723:
	addiw s3, s3, 1
	bgt s1, s3, label723
	addiw s2, s2, 1
	bgt t6, s2, label721
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label717
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label719
.p2align 2
label720:
	ld s0, 112(sp)
	mv a7, zero
	ld s4, 104(sp)
	sh2add a4, s0, a4
	addw t6, s4, t4
	subw t5, t4, s4
	mv a6, a4
	j label713
.p2align 2
label825:
	mv s9, t5
	addiw s11, s0, 15
	ble s2, s11, label1014
.p2align 2
label728:
	addiw s11, s0, 63
	ble s3, s11, label861
	addiw s11, s0, 255
	ble s4, s11, label866
	addiw s11, s0, 1023
	ble s5, s11, label871
	lui s10, 1
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s7, s10, label876
	lui s11, 4
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s8, s11, label890
	lui s10, 16
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s6, s10, label904
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label1026
.p2align 2
label755:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label755
	mv s11, s10
	ble s6, s10, label1028
.p2align 2
label909:
	mv s10, s11
.p2align 2
label751:
	addw s10, s10, a3
	bgt s6, s10, label751
	mv s11, s10
	ble s8, s10, label1027
.p2align 2
label745:
	addw s10, s10, a2
	bgt s8, s10, label745
	mv s11, s10
	ble s7, s10, label1024
.p2align 2
label735:
	addiw s10, s10, 1024
	bgt s7, s10, label735
	mv s11, s10
	ble s5, s10, label1022
.p2align 2
label760:
	addiw s10, s10, 256
	bgt s5, s10, label760
	mv s11, s10
.p2align 2
label1021:
	mv s10, s11
	ble s4, s11, label767
.p2align 2
label769:
	addiw s10, s10, 64
	bgt s4, s10, label769
	mv s11, s10
	ble s3, s10, label941
.p2align 2
label774:
	addiw s10, s10, 16
	bgt s3, s10, label774
	mv s11, s10
.p2align 2
label1019:
	mv s10, s11
	ble s2, s11, label950
.p2align 2
label781:
	addiw s10, s10, 4
	bgt s2, s10, label781
	ble s1, s10, label959
.p2align 2
label785:
	addiw s10, s10, 1
	bgt s1, s10, label785
	addiw s9, s9, 1
	bgt t6, s9, label726
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label717
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label720
	j label719
.p2align 2
label941:
	mv s10, s11
	bgt s2, s11, label781
	bgt s1, s11, label785
	j label1031
.p2align 2
label767:
	mv s10, s11
	bgt s3, s11, label774
.p2align 2
label1029:
	mv s10, s11
	bgt s2, s11, label781
.p2align 2
label950:
	mv s10, s11
	bgt s1, s11, label785
.p2align 2
label1031:
	addiw s9, s9, 1
	bgt t6, s9, label726
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label717
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label720
	j label719
.p2align 2
label1013:
	addiw s2, s2, 1
	ble t6, s2, label1034
.p2align 2
label721:
	blt s0, s1, label842
	addiw s2, s2, 1
	bgt t6, s2, label721
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label717
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label720
	j label719
.p2align 2
label876:
	mv s10, s0
	mv s11, zero
	bgt s7, s0, label735
	mv s10, zero
	bgt s5, zero, label760
	j label923
.p2align 2
label890:
	mv s10, s0
	mv s11, zero
.p2align 2
label740:
	bgt s8, s10, label745
	mv s10, s11
	bgt s7, s11, label735
	j label1023
.p2align 2
label1026:
	mv s11, s10
	bgt s6, s10, label909
.p2align 2
label1028:
	mv s11, s10
	bgt s8, s10, label745
	bgt s7, s10, label735
label1023:
	mv s10, s11
	bgt s5, s11, label760
	j label923
.p2align 2
label1022:
	mv s10, s11
	bgt s4, s11, label769
	bgt s3, s11, label774
	j label1029
.p2align 2
label1024:
	mv s10, s11
	bgt s5, s11, label760
	bgt s4, s11, label769
	j label767
.p2align 2
label1027:
	mv s10, s11
	bgt s7, s11, label735
	bgt s5, s11, label760
label923:
	mv s10, s11
	bgt s4, s11, label769
	j label767
.p2align 2
label1034:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label717
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label720
	j label719
.p2align 2
label726:
	addiw s11, s0, 15
	bgt s2, s11, label728
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label781
	j label950
.p2align 2
label866:
	mv s10, s0
	mv s11, zero
	bgt s4, s0, label769
	j label767
.p2align 2
label904:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label909
	mv s11, zero
	j label740
label1014:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label781
	j label950
label719:
	ld s4, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s10, 40(sp)
	ld s9, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 136
	ret
.p2align 2
label1048:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label720
	j label719
.p2align 2
label871:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label760
	j label1021
.p2align 2
label861:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label774
	j label1019
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -56
	mv t0, a0
	mv a5, a1
pcrel1222:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1223:
	auipc t5, %pcrel_hi(b)
	addi t1, a3, %pcrel_lo(pcrel1222)
	sd s2, 0(sp)
	addi t4, t5, %pcrel_lo(pcrel1223)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	lw a1, 4(t1)
	ld a4, 8(t1)
	lw t3, %pcrel_lo(pcrel1222)(a3)
	srai a0, a4, 32
	sext.w a2, a4
	mulw t2, t0, a0
	addw t1, t2, t3
pcrel1224:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t4
	addi a3, t2, %pcrel_lo(pcrel1224)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label1095
.p2align 2
label1104:
	addi s0, s0, 4
	or s6, a6, s1
	srliw s5, s6, 31
	slt s6, s1, a0
	andi s4, s5, 1
	xori s5, s6, 1
	or s3, a7, s4
	or s4, s3, s5
	bne s4, zero, label1146
	mulw s5, a0, a6
	addiw s1, s1, 1
	sh2add s4, s5, s0
	lw s3, 0(s4)
	max s2, s2, s3
	bgt t6, s1, label1104
	addiw a6, a6, 1
	ble t2, a6, label1203
.p2align 2
label1095:
	slt s1, a6, a2
	sh2add s0, t5, a3
	xori a7, s1, 1
	mv s1, t5
	or s6, a6, t5
	srliw s5, s6, 31
	slt s6, t5, a0
	andi s4, s5, 1
	xori s5, s6, 1
	or s3, a7, s4
	or s4, s3, s5
	beq s4, zero, label1145
.p2align 2
label1146:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label1104
	addiw a6, a6, 1
	bgt t2, a6, label1095
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1110
	addiw t0, t0, 1
	ble a5, t0, label1109
.p2align 2
label1108:
	sh2add a4, a0, a4
	subw t1, t0, a1
	addw t2, a1, t0
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv s2, zero
	mv t3, a4
	slt s1, t1, a2
	mv a6, t1
	or s6, t1, t5
	sh2add s0, t5, a3
	xori a7, s1, 1
	srliw s5, s6, 31
	mv s1, t5
	slt s6, t5, a0
	andi s4, s5, 1
	xori s5, s6, 1
	or s3, a7, s4
	or s4, s3, s5
	bne s4, zero, label1146
	mulw s5, a0, t1
	addiw s1, t5, 1
	sh2add s4, s5, s0
	lw s3, 0(s4)
	max s2, zero, s3
	bgt t6, s1, label1104
	addiw a6, t1, 1
	bgt t2, a6, label1095
	li t4, 1
	sw s2, 0(a4)
	bgt a0, t4, label1110
	addiw t0, t0, 1
	bgt a5, t0, label1108
	j label1109
.p2align 2
label1145:
	mulw s5, a0, a6
	addiw s1, s1, 1
	sh2add s4, s5, s0
	lw s3, 0(s4)
	max s2, s2, s3
	bgt t6, s1, label1104
	addiw a6, a6, 1
	bgt t2, a6, label1095
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1110
	addiw t0, t0, 1
	bgt a5, t0, label1108
	j label1109
.p2align 2
label1203:
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label1206
.p2align 2
label1110:
	addi t3, t3, 4
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s2, zero
	slt s1, t1, a2
	or s6, t1, t5
	sh2add s0, t5, a3
	xori a7, s1, 1
	srliw s5, s6, 31
	mv s1, t5
	slt s6, t5, a0
	andi s4, s5, 1
	xori s5, s6, 1
	or s3, a7, s4
	or s4, s3, s5
	bne s4, zero, label1146
	mulw s5, a0, t1
	addiw s1, t5, 1
	sh2add s4, s5, s0
	lw s3, 0(s4)
	max s2, zero, s3
	bgt t6, s1, label1104
	addiw a6, t1, 1
	bgt t2, a6, label1095
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1110
	addiw t0, t0, 1
	bgt a5, t0, label1108
label1109:
	ld s2, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label1206:
	addiw t0, t0, 1
	bgt a5, t0, label1108
	j label1109
.p2align 2
cmmc_parallel_body_6:
	addi sp, sp, -96
	mv t3, a1
pcrel1406:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1407:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1406)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	lw a5, 4(a3)
	ld a1, 8(a3)
	lw t2, %pcrel_lo(pcrel1406)(a2)
	srai t0, a1, 32
	sext.w a4, a1
pcrel1408:
	auipc a2, %pcrel_hi(a)
	addi a1, t4, %pcrel_lo(pcrel1407)
	mv t4, a0
	mulw t1, a0, a4
	addw a3, t1, t2
	addi t1, a2, %pcrel_lo(pcrel1408)
	sh2add t2, a3, a1
	lui a2, 262144
	li a1, 1
	lui a3, 524288
	addiw a0, a3, 1
	subw t5, t4, a5
	addw t6, a5, t4
	mv a6, t2
	mv a7, zero
	subw s0, zero, a5
	mv s1, a5
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	sh2add s4, s0, t1
	xori s3, s5, 1
	mv s5, s0
	or s7, t5, s0
	srliw s8, s7, 31
	slt s7, s0, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label1290
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1242
	j label1247
.p2align 2
label1377:
	addiw s5, s5, 1
	ble s1, s5, label1381
.p2align 2
label1254:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	srliw s8, s7, 31
	slt s7, s5, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	beq s9, zero, label1376
.p2align 2
label1290:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s9, a3, a1
	and s11, s9, a0
	bne s11, a1, label1378
.p2align 2
label1255:
	divw s11, s6, s7
	and s9, s11, a0
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	bge s9, a2, label1377
.p2align 2
label1242:
	divw s9, a3, s7
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1242
.p2align 2
label1247:
	addiw s5, s5, 1
	bgt s1, s5, label1254
.p2align 2
label1248:
	addiw s2, s2, 1
	bgt t6, s2, label1318
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label1250
	addiw t4, t4, 1
	bgt t3, t4, label1253
	j label1252
.p2align 2
label1376:
	mulw s8, a4, s2
	divw s9, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1242
	j label1247
.p2align 2
label1381:
	addiw s2, s2, 1
	ble t6, s2, label1386
.p2align 2
label1318:
	mv a3, s8
	slt s5, s2, t0
	sh2add s4, s0, t1
	or s7, s2, s0
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label1290
	mulw s8, a4, s2
	divw s9, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1242
	j label1247
.p2align 2
label1386:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1390
.p2align 2
label1250:
	addi a6, a6, 4
	subw s0, a7, a5
	addw s1, a5, a7
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label1290
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1242
	j label1247
.p2align 2
label1390:
	addiw t4, t4, 1
	ble t3, t4, label1252
.p2align 2
label1253:
	sh2add t2, a4, t2
	subw t5, t4, a5
	addw t6, a5, t4
	mv a7, zero
	subw s0, zero, a5
	sext.w s1, a5
	mv a3, zero
	mv a6, t2
	slt s5, t5, t0
	mv s2, t5
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	slt s7, s0, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label1290
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	beq s11, a1, label1255
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1242
	j label1247
.p2align 2
label1378:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1242
	addiw s5, s5, 1
	bgt s1, s5, label1254
	j label1248
label1252:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
