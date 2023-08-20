.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable1454:
	.word	label1429-__cmmc_jumptable1454
	.word	label1427-__cmmc_jumptable1454
	.word	label1426-__cmmc_jumptable1454
	.word	label1419-__cmmc_jumptable1454
	.word	label1425-__cmmc_jumptable1454
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
	.zero	16
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
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
pcrel1577:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1577)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1578:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel1578)
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
	bge s1, zero, label1548
	addiw a2, s1, 1
label1548:
	sraiw s1, a2, 1
pcrel1579:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1580:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1581:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1582:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1583:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1584:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_5)
	mv s11, zero
	addi s2, s3, %pcrel_lo(pcrel1579)
	addi s4, s5, %pcrel_lo(pcrel1580)
	addi s6, s7, %pcrel_lo(pcrel1581)
	addi s8, s9, %pcrel_lo(pcrel1582)
	addi s10, a1, %pcrel_lo(pcrel1583)
	addi a2, a0, %pcrel_lo(pcrel1584)
	sd a2, 144(sp)
	lw a1, 0(s0)
	li a3, 5
	mv a0, a1
	bltu a1, a3, label1458
.p2align 2
label1428:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1585:
	auipc a5, %pcrel_hi(cmmc_parallel_body_5)
	sw zero, %pcrel_lo(label1428)(a0)
	ld a2, 144(sp)
	sw s1, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1585)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1421
	j label1422
.p2align 2
label1427:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1427)(s5)
	slli a2, s1, 32
pcrel1586:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	ld a1, 112(sp)
	sw a1, 4(s4)
	ld a0, 104(sp)
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1586)
	sd a3, 8(s4)
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1422
.p2align 2
label1421:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1587:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	ld a1, 128(sp)
	addi a2, a3, %pcrel_lo(pcrel1587)
	sw a1, %pcrel_lo(label1421)(a0)
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1422:
	addiw s11, s11, 1
	ld a0, 136(sp)
	ble a0, s11, label1424
	addi s0, s0, 4
	li a3, 5
	lw a1, 0(s0)
	mv a0, a1
	bgeu a1, a3, label1428
.p2align 2
label1458:
	auipc a5, %pcrel_hi(__cmmc_jumptable1454)
	addi a2, a5, %pcrel_lo(label1458)
	sh2add a3, a0, a2
	lw a4, 0(a3)
	add a1, a2, a4
	jr a1
.p2align 2
label1425:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1588:
	auipc a4, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1425)(a1)
	sw s1, 4(s10)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1588)
	sd a3, 8(s10)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1421
	j label1422
.p2align 2
label1419:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw zero, %pcrel_lo(label1419)(s9)
pcrel1589:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	ld a0, 104(sp)
	sw a0, 4(s8)
	ld a1, 112(sp)
	slli a2, a1, 32
	add.uw a0, s1, a2
	addi a2, a3, %pcrel_lo(pcrel1589)
	sd a0, 8(s8)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1421
	j label1422
label1424:
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
label1429:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1429)(s3)
pcrel1590:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	sw s1, 4(s2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1590)
	sd a3, 8(s2)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1421
	j label1422
.p2align 2
label1426:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	sw zero, %pcrel_lo(label1426)(s7)
pcrel1591:
	auipc a4, %pcrel_hi(cmmc_parallel_body_4)
	sw s1, 4(s6)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1591)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1421
	j label1422
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -72
	mv t1, a1
pcrel172:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel173:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a4, a5, %pcrel_lo(pcrel172)
	sd s5, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	lw a3, 4(a4)
	ld a1, 8(a4)
	lw t3, %pcrel_lo(pcrel172)(a5)
	srai a4, a1, 32
	sext.w a2, a1
	addi a1, t4, %pcrel_lo(pcrel173)
	mulw t0, a0, a2
	addw t2, t0, t3
pcrel174:
	auipc t3, %pcrel_hi(a)
	sh2add t0, t2, a1
	addi a5, t3, %pcrel_lo(pcrel174)
	lui a1, 786432
	mv t2, a0
	lui a0, 262144
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
	addi sp, sp, -96
	mv t3, a1
pcrel363:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
	mv t4, a0
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel363)
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
	lw a4, 4(a3)
	ld t1, 8(a3)
	lw t2, %pcrel_lo(pcrel363)(a2)
	srai t0, t1, 32
	mv a5, t1
	mulw a1, a0, a4
pcrel364:
	auipc t1, %pcrel_hi(b)
	li a0, 1
	addw a3, a1, t2
	addi a2, t1, %pcrel_lo(pcrel364)
pcrel365:
	auipc a1, %pcrel_hi(a)
	sh2add t2, a3, a2
	addi t1, a1, %pcrel_lo(pcrel365)
	lui a2, 262144
	lui a3, 524288
	addiw a1, a3, 1
	subw t5, t4, a5
	addw t6, a5, t4
	mv a6, t2
	mv a7, zero
	subw s0, zero, a5
	sext.w s1, a5
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
	bne s9, zero, label240
	mulw s8, a4, t5
	divw s9, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, a0
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, a0, 1
	sltiu s10, s11, 1
	mv s7, s9
	mv s8, s10
	blt s9, a2, label192
	j label330
.p2align 2
label202:
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
	beq s9, zero, label342
.p2align 2
label240:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s9, a3, a0
	and s11, s9, a1
	bne s11, a0, label329
.p2align 2
label250:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label324
.p2align 2
label192:
	divw s9, a3, s7
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, s7
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	blt s9, a2, label192
.p2align 2
label330:
	addiw s5, s5, 1
	ble s1, s5, label337
.p2align 2
label199:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	srliw s8, s7, 31
	slt s7, s5, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label240
	mulw s8, a4, s2
	divw s9, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, a0
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, a0, 1
	sltiu s10, s11, 1
	mv s7, s9
	mv s8, s10
	blt s9, a2, label192
	j label330
.p2align 2
label324:
	addiw s5, s5, 1
	bgt s1, s5, label199
	addiw s2, s2, 1
	ble t6, s2, label338
.p2align 2
label272:
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
	bne s9, zero, label240
	mulw s8, a4, s2
	divw s9, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, a0
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, a0, 1
	sltiu s10, s11, 1
	mv s7, s9
	mv s8, s10
	blt s9, a2, label192
	j label330
.p2align 2
label329:
	divw s11, s6, s7
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	blt s9, a2, label192
	addiw s5, s5, 1
	bgt s1, s5, label199
.p2align 2
label337:
	addiw s2, s2, 1
	bgt t6, s2, label272
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label202
	addiw t4, t4, 1
	bgt t3, t4, label205
	j label204
.p2align 2
label338:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label202
	addiw t4, t4, 1
	ble t3, t4, label204
.p2align 2
label205:
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
	bne s9, zero, label240
	mulw s8, a4, t5
	divw s9, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, a0
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, a0, 1
	sltiu s10, s11, 1
	mv s7, s9
	mv s8, s10
	blt s9, a2, label192
	j label330
.p2align 2
label342:
	mulw s8, a4, s2
	divw s9, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s11, s9, a1
	beq s11, a0, label250
	divw s11, s6, a0
	and s9, s11, a1
	xori s11, s9, 1
	slliw s9, a0, 1
	sltiu s10, s11, 1
	mv s7, s9
	mv s8, s10
	blt s9, a2, label192
	j label330
label204:
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
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	addiw a4, a0, 3
pcrel525:
	auipc a5, %pcrel_hi(b)
pcrel526:
	auipc a0, %pcrel_hi(a)
	addi a3, a5, %pcrel_lo(pcrel525)
	addi a2, a0, %pcrel_lo(pcrel526)
	ble a1, a4, label367
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label419
	sh2add a0, t0, a2
	j label377
.p2align 2
label380:
	addi a0, a0, 64
.p2align 2
label377:
	sh2add t1, t0, a3
	addiw t0, t0, 16
	ld t2, 0(t1)
	sd t2, 0(a0)
	ld t3, 8(t1)
	sd t3, 8(a0)
	ld t4, 16(t1)
	sd t4, 16(a0)
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
	bgt a5, t0, label380
	mv a0, t0
label381:
	ble a4, a0, label367
	sh2add a5, a0, a3
label385:
	sh2add t0, a0, a2
	ld t1, 0(a5)
	addiw a0, a0, 4
	sd t1, 0(t0)
	ld t2, 8(a5)
	sd t2, 8(t0)
	ble a4, a0, label498
	addi a5, a5, 16
	j label385
label498:
	mv t0, a0
label367:
	ble a1, t0, label374
	sh2add a0, t0, a3
	j label370
label373:
	addi a0, a0, 4
label370:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label373
label374:
	ret
label419:
	mv a0, t0
	mv t0, zero
	j label381
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t1, a1
pcrel707:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel708:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a3, a5, %pcrel_lo(pcrel707)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s10, 72(sp)
	sd s11, 80(sp)
	sd s9, 88(sp)
	lw a4, 4(a3)
	ld a1, 8(a3)
	lw t3, %pcrel_lo(pcrel707)(a5)
	srai a3, a1, 32
	sext.w a2, a1
	addi a1, t4, %pcrel_lo(pcrel708)
	mulw t0, a0, a2
	addw t2, t0, t3
pcrel709:
	auipc t3, %pcrel_hi(a)
	sh2add t0, t2, a1
	addi a5, t3, %pcrel_lo(pcrel709)
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
	srliw s5, s6, 31
	slt s6, a6, a2
	andi s7, s5, 1
	xori s5, s6, 1
	or s2, s1, s7
	or s7, s2, s5
	bne s7, zero, label589
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s8, zero, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	j label689
.p2align 2
label554:
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
	srliw s5, s6, 31
	slt s6, a6, a2
	andi s7, s5, 1
	xori s5, s6, 1
	or s2, s1, s7
	or s7, s2, s5
	beq s7, zero, label685
.p2align 2
label589:
	mv s2, zero
	li s5, 1
	mv s6, zero
	divw s8, a1, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, zero, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	addiw s10, s9, 1
	andi s11, s10, -2
	subw s8, s9, s11
	mv s9, zero
	xor s10, s7, s8
	li s11, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	bge s7, a0, label694
.p2align 2
label544:
	divw s8, a1, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
label659:
	andi s11, s10, -2
	divw s9, s2, s5
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	addiw s10, s9, 1
label661:
	andi s11, s10, -2
	subw s8, s9, s11
	slliw s9, s6, 1
	xor s10, s7, s8
	addi s11, s9, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	blt s7, a0, label544
.p2align 2
label547:
	addiw s4, s4, 1
	ble a7, s4, label611
.p2align 2
label548:
	addi s3, s3, 4
	mv a1, s6
	or s6, s0, s4
	srliw s5, s6, 31
	slt s6, s4, a2
	andi s7, s5, 1
	xori s5, s6, 1
	or s2, s1, s7
	or s7, s2, s5
	bne s7, zero, label589
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s8, a1, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	addiw s10, s9, 1
	andi s11, s10, -2
	subw s8, s9, s11
	mv s9, zero
	xor s10, s7, s8
	li s11, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	blt s7, a0, label544
	j label547
label694:
	addiw s4, s4, 1
	bgt a7, s4, label548
.p2align 2
label611:
	addiw s0, s0, 1
	ble t4, s0, label674
	mv a1, s6
	slt s2, s0, a4
	sh2add s3, a6, a5
	mv s4, a6
	or s6, s0, a6
	xori s1, s2, 1
	srliw s5, s6, 31
	slt s6, a6, a2
	andi s7, s5, 1
	xori s5, s6, 1
	or s2, s1, s7
	or s7, s2, s5
	bne s7, zero, label589
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s8, a1, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	addiw s10, s9, 1
	andi s11, s10, -2
	subw s8, s9, s11
	mv s9, zero
	xor s10, s7, s8
	li s11, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	blt s7, a0, label544
	j label547
.p2align 2
label674:
	addiw t6, t6, 1
	sw s6, 0(t5)
	bgt a2, t6, label554
	addiw t2, t2, 1
	ble t1, t2, label552
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
	srliw s5, s6, 31
	slt s6, a6, a2
	andi s7, s5, 1
	xori s5, s6, 1
	or s2, s1, s7
	or s7, s2, s5
	bne s7, zero, label589
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s8, zero, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
.p2align 2
label689:
	addiw s10, s10, 1
	andi s11, s10, -2
	subw s8, s9, s11
	slliw s9, s6, 1
	xor s10, s7, s8
	addi s11, s9, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	blt s7, a0, label544
	j label547
.p2align 2
label685:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s8, a1, s5
	mv s10, s8
	bge s8, zero, label659
	addiw s10, s8, 1
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	mv s10, s9
	bge s9, zero, label661
	addiw s10, s9, 1
	andi s11, s10, -2
	subw s8, s9, s11
	mv s9, zero
	xor s10, s7, s8
	li s11, 1
	slliw s7, s5, 1
	sltiu s8, s10, 1
	mv s5, s7
	subw s6, s11, s8
	blt s7, a0, label544
	j label547
label552:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s10, 72(sp)
	ld s11, 80(sp)
	ld s9, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -56
	mv t0, a0
	mv a5, a1
pcrel843:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel844:
	auipc t4, %pcrel_hi(b)
	addi a4, a3, %pcrel_lo(pcrel843)
	sd s2, 0(sp)
	addi t3, t4, %pcrel_lo(pcrel844)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	lw a1, 4(a4)
	ld t1, 8(a4)
	lw t2, %pcrel_lo(pcrel843)(a3)
	srai a0, t1, 32
	sext.w a2, t1
	mulw a4, t0, a0
	addw t1, a4, t2
pcrel845:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t3
	addi a3, t2, %pcrel_lo(pcrel845)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label717
.p2align 2
label821:
	addiw a6, a6, 1
	ble t2, a6, label824
.p2align 2
label717:
	slt s1, a6, a2
	sh2add s0, t5, a3
	xori a7, s1, 1
	mv s1, t5
	or s6, a6, t5
	srliw s4, s6, 31
	slt s6, t5, a0
	andi s5, s4, 1
	xori s4, s6, 1
	or s3, a7, s5
	or s5, s3, s4
	bne s5, zero, label768
	mulw s4, a0, a6
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label732
	addiw a6, a6, 1
	bgt t2, a6, label717
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label728
	addiw t0, t0, 1
	bgt a5, t0, label730
	j label731
.p2align 2
label818:
	mulw s4, a0, a6
	addiw s1, s1, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	ble t6, s1, label821
.p2align 2
label732:
	addi s0, s0, 4
	or s6, a6, s1
	srliw s4, s6, 31
	slt s6, s1, a0
	andi s5, s4, 1
	xori s4, s6, 1
	or s3, a7, s5
	or s5, s3, s4
	beq s5, zero, label818
.p2align 2
label768:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label732
	addiw a6, a6, 1
	bgt t2, a6, label717
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label783
.p2align 2
label728:
	addi t3, t3, 4
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s2, zero
	slt s1, t1, a2
	or s6, t1, t5
	sh2add s0, t5, a3
	xori a7, s1, 1
	srliw s4, s6, 31
	mv s1, t5
	slt s6, t5, a0
	andi s5, s4, 1
	xori s4, s6, 1
	or s3, a7, s5
	or s5, s3, s4
	bne s5, zero, label768
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label732
	addiw a6, t1, 1
	bgt t2, a6, label717
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label728
	addiw t0, t0, 1
	bgt a5, t0, label730
	j label731
.p2align 2
label783:
	addiw t0, t0, 1
	ble a5, t0, label731
.p2align 2
label730:
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
	srliw s4, s6, 31
	mv s1, t5
	slt s6, t5, a0
	andi s5, s4, 1
	xori s4, s6, 1
	or s3, a7, s5
	or s5, s3, s4
	bne s5, zero, label768
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label732
	addiw a6, t1, 1
	bgt t2, a6, label717
	li t4, 1
	sw s2, 0(a4)
	bgt a0, t4, label728
	addiw t0, t0, 1
	bgt a5, t0, label730
	j label731
.p2align 2
label824:
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label728
	addiw t0, t0, 1
	bgt a5, t0, label730
label731:
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
cmmc_parallel_body_5:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel1227:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1228:
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
	addi a1, a2, %pcrel_lo(pcrel1227)
	lw s4, 4(a1)
	addi s10, s4, -1359
	addi t0, s4, -18
	addi s6, s4, -336
	addi t1, s4, -81
	sd s4, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel1227)(a2)
	sd s6, 128(sp)
	addi a2, a5, %pcrel_lo(pcrel1228)
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
	j label850
.p2align 2
label915:
	bge s0, s1, label1083
.p2align 2
label1084:
	mv s3, s0
.p2align 2
label917:
	addiw s3, s3, 1
	bgt s1, s3, label917
	addiw s2, s2, 1
	bgt t6, s2, label915
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label1098
.p2align 2
label921:
	addi a6, a6, 4
.p2align 2
label850:
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
	blt s9, s1, label962
	mv s2, t5
	blt s0, s1, label1084
	addiw s2, t5, 1
	bgt t6, s2, label915
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label924
	j label923
.p2align 2
label962:
	mv s9, t5
.p2align 2
label853:
	addiw s11, s0, 15
	ble s2, s11, label966
	addiw s11, s0, 63
	ble s3, s11, label971
	addiw s11, s0, 255
	ble s4, s11, label985
	addiw s11, s0, 1023
	ble s5, s11, label999
	lui s10, 1
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s7, s10, label1004
	lui s11, 4
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s8, s11, label1009
	lui s11, 16
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s6, s11, label1014
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label1158
.p2align 2
label882:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label882
	mv s11, s10
	ble s6, s10, label1160
.p2align 2
label1019:
	mv s10, s11
.p2align 2
label878:
	addw s10, s10, a3
	bgt s6, s10, label878
	mv s11, s10
	ble s8, s10, label1159
.p2align 2
label889:
	addw s10, s10, a2
	bgt s8, s10, label889
	mv s11, s10
	ble s7, s10, label1042
.p2align 2
label894:
	addiw s10, s10, 1024
	bgt s7, s10, label894
	mv s11, s10
.p2align 2
label1155:
	mv s10, s11
	ble s5, s11, label1051
.p2align 2
label901:
	addiw s10, s10, 256
	bgt s5, s10, label901
	mv s11, s10
	ble s4, s10, label1163
.p2align 2
label867:
	addiw s10, s10, 64
	bgt s4, s10, label867
	mv s11, s10
	ble s3, s10, label1153
.p2align 2
label859:
	addiw s10, s10, 16
	bgt s3, s10, label859
	mv s11, s10
	ble s2, s10, label1152
.p2align 2
label908:
	addiw s10, s10, 4
	bgt s2, s10, label908
	ble s1, s10, label1069
.p2align 2
label912:
	addiw s10, s10, 1
	bgt s1, s10, label912
	addiw s9, s9, 1
	bgt t6, s9, label853
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label923
.p2align 2
label924:
	ld s0, 112(sp)
	mv a7, zero
	ld s4, 104(sp)
	sh2add a4, s0, a4
	addw t6, s4, t4
	subw t5, t4, s4
	mv a6, a4
	j label850
.p2align 2
label1042:
	mv s10, s11
	bgt s5, s11, label901
	bgt s4, s11, label867
	j label1179
.p2align 2
label1069:
	addiw s9, s9, 1
	bgt t6, s9, label853
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label924
	j label923
.p2align 2
label1083:
	addiw s2, s2, 1
	bgt t6, s2, label915
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label924
	j label923
.p2align 2
label971:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label859
	mv s10, zero
	bgt s2, zero, label908
	j label1170
.p2align 2
label985:
	mv s10, s0
	mv s11, zero
.p2align 2
label864:
	bgt s4, s10, label867
	mv s10, s11
	bgt s3, s11, label859
	j label1172
.p2align 2
label1152:
	mv s10, s11
	bgt s1, s11, label912
	addiw s9, s9, 1
	bgt t6, s9, label853
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
label1195:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label924
	j label923
.p2align 2
label1153:
	mv s10, s11
	bgt s2, s11, label908
	bgt s1, s11, label912
label1164:
	addiw s9, s9, 1
	bgt t6, s9, label853
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label921
	j label1195
.p2align 2
label1158:
	mv s11, s10
	bgt s6, s10, label1019
.p2align 2
label1160:
	mv s11, s10
	bgt s8, s10, label889
	bgt s7, s10, label894
label1161:
	mv s10, s11
	bgt s5, s11, label901
	j label1051
.p2align 2
label1159:
	mv s10, s11
	bgt s7, s11, label894
	bgt s5, s11, label901
.p2align 2
label1051:
	mv s10, s11
	bgt s4, s11, label867
.p2align 2
label1179:
	mv s10, s11
	bgt s3, s11, label859
label1172:
	mv s10, s11
	bgt s2, s11, label908
	j label1170
.p2align 2
label1163:
	mv s10, s11
	bgt s3, s11, label859
	bgt s2, s11, label908
label1170:
	mv s10, s11
	bgt s1, s11, label912
	j label1164
.p2align 2
label966:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label908
	mv s10, zero
	bgt s1, zero, label912
	j label1164
.p2align 2
label999:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label901
	mv s10, zero
	j label864
.p2align 2
label1009:
	mv s10, s0
	mv s11, zero
	bgt s8, s0, label889
label887:
	mv s10, s11
	bgt s7, s11, label894
	j label1161
.p2align 2
label1014:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label1019
	mv s11, zero
	bgt s8, zero, label889
	j label887
label923:
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
label1098:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label924
	j label923
.p2align 2
label1004:
	mv s10, s0
	mv s11, zero
	bgt s7, s0, label894
	j label1155
.p2align 2
cmmc_parallel_body_6:
	addi sp, sp, -96
	mv t3, a1
pcrel1412:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1413:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1412)
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
	lw t1, %pcrel_lo(pcrel1412)(a2)
	srai a4, a1, 32
	sext.w t0, a1
	addi a2, t4, %pcrel_lo(pcrel1413)
	mv t4, a0
	mulw a3, a0, a4
	addw a1, a3, t1
pcrel1414:
	auipc a3, %pcrel_hi(a)
	sh2add t2, a1, a2
	addi t1, a3, %pcrel_lo(pcrel1414)
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
	bne s9, zero, label1294
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1246
	j label1251
.p2align 2
label1386:
	addiw s2, s2, 1
	ble t6, s2, label1392
.p2align 2
label1323:
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
	beq s9, zero, label1385
.p2align 2
label1294:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s11, a3, a1
	and s9, s11, a0
	bne s9, a1, label1382
.p2align 2
label1259:
	divw s11, s6, s7
	and s9, s11, a0
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	bge s9, a2, label1381
.p2align 2
label1246:
	divw s11, a3, s7
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1246
.p2align 2
label1251:
	addiw s5, s5, 1
	bgt s1, s5, label1252
.p2align 2
label1316:
	addiw s2, s2, 1
	bgt t6, s2, label1323
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label1258
	addiw t4, t4, 1
	bgt t3, t4, label1257
label1256:
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
.p2align 2
label1381:
	addiw s5, s5, 1
	ble s1, s5, label1386
.p2align 2
label1252:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	srliw s8, s7, 31
	slt s7, s5, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s3, s9
	or s9, s6, s8
	bne s9, zero, label1294
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1246
	j label1251
.p2align 2
label1385:
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1246
	j label1251
.p2align 2
label1392:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1396
.p2align 2
label1258:
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
	bne s9, zero, label1294
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1246
	j label1251
.p2align 2
label1396:
	addiw t4, t4, 1
	ble t3, t4, label1256
.p2align 2
label1257:
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
	bne s9, zero, label1294
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1259
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1246
	j label1251
.p2align 2
label1382:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1246
	addiw s5, s5, 1
	bgt s1, s5, label1252
	j label1316
