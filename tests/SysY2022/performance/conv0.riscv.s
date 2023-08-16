.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 8
__cmmc_jumptable1405:
	.word	label1380-__cmmc_jumptable1405
	.word	label1379-__cmmc_jumptable1405
	.word	label1378-__cmmc_jumptable1405
	.word	label1377-__cmmc_jumptable1405
	.word	label1376-__cmmc_jumptable1405
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
	.zero	16
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	16
.align 8
cmmc_parallel_body_payload_3:
	.zero	16
.align 8
cmmc_parallel_body_payload_4:
	.zero	16
.align 8
cmmc_parallel_body_payload_5:
	.zero	16
.align 8
cmmc_parallel_body_payload_6:
	.zero	16
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[64] CalleeSaved[104]
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s11, 72(sp)
	sd s3, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	sd a0, 112(sp)
	mv a1, a0
	jal getint
pcrel1536:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1536)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1537:
	auipc a1, %pcrel_hi(kernelid)
	addi s1, a1, %pcrel_lo(pcrel1537)
	mv a0, s1
	jal getarray
	sd a0, 136(sp)
	li a0, 109
	jal _sysy_starttime
	srliw a2, s0, 31
pcrel1538:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1539:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_0)
	li s9, 5
pcrel1540:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	mv s11, zero
	addi s6, s7, %pcrel_lo(pcrel1538)
	addi s4, s5, %pcrel_lo(pcrel1539)
	ld a0, 104(sp)
	ld a1, 112(sp)
	mulw a1, a1, a0
	add a0, s0, a2
	sraiw s2, a0, 1
	sd a1, 128(sp)
pcrel1541:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1542:
	auipc a1, %pcrel_hi(__cmmc_jumptable1405)
	addi s8, a0, %pcrel_lo(pcrel1541)
	addi s3, a1, %pcrel_lo(pcrel1542)
pcrel1543:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	addi a3, a0, %pcrel_lo(pcrel1543)
pcrel1544:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_5)
	sd a3, 160(sp)
	addi a3, a0, %pcrel_lo(pcrel1544)
pcrel1545:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_6)
	sd a3, 152(sp)
	addi a2, a0, %pcrel_lo(pcrel1545)
pcrel1546:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
	sd a2, 144(sp)
	addi s0, a0, %pcrel_lo(pcrel1546)
	lw a0, 0(s1)
	mv a1, a0
	bltu a0, s9, label1409
.p2align 2
label1375:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1547:
	auipc a5, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1375)(a0)
	ld a2, 144(sp)
	sw s2, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1547)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1374
	j label1371
.p2align 2
label1377:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1548:
	auipc a4, %pcrel_hi(cmmc_parallel_body_4)
	sw zero, %pcrel_lo(label1377)(a0)
	sw s2, 4(s8)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1548)
	sd a3, 8(s8)
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1371
.p2align 2
label1374:
	ld a1, 128(sp)
	mv a0, zero
pcrel1549:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a1, %pcrel_lo(pcrel1549)(s10)
	mv a2, s0
	jal cmmcParallelFor
	ld a0, 136(sp)
	addiw s11, s11, 1
	ble a0, s11, label1373
.p2align 2
label1372:
	addi s1, s1, 4
	lw a0, 0(s1)
	mv a1, a0
	bgeu a0, s9, label1375
.p2align 2
label1409:
	sh2add a3, a1, s3
	lw a2, 0(a3)
	add a0, s3, a2
	jr a0
.p2align 2
label1380:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1380)(s5)
	slli a2, s2, 32
pcrel1550:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	ld a0, 104(sp)
	sw a0, 4(s4)
	ld a1, 112(sp)
	add.uw a0, a1, a2
	addi a2, a3, %pcrel_lo(pcrel1550)
	sd a0, 8(s4)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1374
	j label1371
label1373:
	li a0, 116
	jal _sysy_stoptime
	ld a2, 120(sp)
	ld a1, 128(sp)
	mv a0, a1
	mv a1, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s11, 72(sp)
	ld s3, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 168
	ret
.p2align 2
label1379:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1379)(s7)
	slli a2, s2, 32
pcrel1551:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	ld a1, 112(sp)
	sw a1, 4(s6)
	ld a0, 104(sp)
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1551)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1374
label1371:
	addiw s11, s11, 1
	ld a0, 136(sp)
	bgt a0, s11, label1372
	j label1373
.p2align 2
label1376:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1552:
	auipc a5, %pcrel_hi(cmmc_parallel_body_2)
	sw zero, %pcrel_lo(label1376)(a0)
	ld a3, 160(sp)
	sw s2, 4(a3)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a4, a1, a2
	addi a2, a5, %pcrel_lo(pcrel1552)
	sd a4, 8(a3)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1374
	j label1371
.p2align 2
label1378:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1553:
	auipc a5, %pcrel_hi(cmmc_parallel_body_5)
	sw zero, %pcrel_lo(label1378)(a0)
	ld a1, 112(sp)
	ld a3, 152(sp)
	sw a1, 4(a3)
	ld a0, 104(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a4, s2, a2
	addi a2, a5, %pcrel_lo(pcrel1553)
	sd a4, 8(a3)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1374
	j label1371
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -80
	mv t1, a1
pcrel168:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel169:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel168)
	addi t4, t5, %pcrel_lo(pcrel169)
	sd s5, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	lw a2, 4(t0)
	lw a4, 8(t0)
	lw a3, 12(t0)
	mulw a1, a0, a2
	lw t3, %pcrel_lo(pcrel168)(a5)
	addw t2, a1, t3
pcrel170:
	auipc a1, %pcrel_hi(a)
	sh2add t0, t2, t4
	addi a5, a1, %pcrel_lo(pcrel170)
	mv t2, a0
	lui a1, 786432
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
label94:
	addiw s0, s0, 1
	ble t4, s0, label149
.p2align 2
label8:
	slt s3, s0, a4
	sh2add s2, a6, a5
	xori s1, s3, 1
	mv s3, a6
	or s7, s0, a6
	slt s8, a6, a2
	srliw s9, s7, 31
	xori s7, s8, 1
	andi s6, s9, 1
	or s5, s1, s6
	or s6, s5, s7
	bne s6, zero, label67
	mulw s7, a2, s0
	sh2add s6, s7, s2
	lw s5, 0(s6)
	addw s4, s4, s5
	bgt s4, a0, label18
	j label75
label146:
	blt s4, zero, label22
.p2align 2
label84:
	addiw s3, s3, 1
	bgt a7, s3, label26
	addiw s0, s0, 1
	bgt t4, s0, label8
.p2align 2
label149:
	addiw t6, t6, 1
	sw s4, 0(t5)
	ble a2, t6, label154
	addi t5, t5, 4
	subw a6, t6, a3
	addw a7, a3, t6
	mv s0, t3
	mv s4, zero
	slt s3, t3, a4
	slt s8, a6, a2
	or s7, t3, a6
	sh2add s2, a6, a5
	xori s1, s3, 1
	srliw s9, s7, 31
	mv s3, a6
	xori s7, s8, 1
	andi s6, s9, 1
	or s5, s1, s6
	or s6, s5, s7
	beq s6, zero, label157
.p2align 2
label67:
	mv s5, zero
	sext.w s4, s4
	ble s4, a0, label146
.p2align 2
label18:
	addw s4, s4, a1
	bgt s4, a0, label18
	bge s4, zero, label84
.p2align 2
label22:
	addw s4, s4, a0
	blt s4, zero, label22
	addiw s3, s3, 1
	ble a7, s3, label94
.p2align 2
label26:
	addi s2, s2, 4
	or s7, s0, s3
	slt s8, s3, a2
	srliw s9, s7, 31
	xori s7, s8, 1
	andi s6, s9, 1
	or s5, s1, s6
	or s6, s5, s7
	bne s6, zero, label67
	mulw s7, a2, s0
	sh2add s6, s7, s2
	lw s5, 0(s6)
	addw s4, s4, s5
	bgt s4, a0, label18
label75:
	blt s4, zero, label22
	j label84
.p2align 2
label154:
	addiw t2, t2, 1
	ble t1, t2, label30
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
	slt s8, a6, a2
	or s7, t3, a6
	sh2add s2, a6, a5
	xori s1, s3, 1
	srliw s9, s7, 31
	mv s3, a6
	xori s7, s8, 1
	andi s6, s9, 1
	or s5, s1, s6
	or s6, s5, s7
	bne s6, zero, label67
	mulw s7, a2, t3
	sh2add s6, s7, s2
	lw s5, 0(s6)
	mv s4, s5
	bgt s5, a0, label18
	j label75
label30:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label157:
	mulw s7, a2, s0
	sh2add s6, s7, s2
	lw s5, 0(s6)
	addw s4, s4, s5
	bgt s4, a0, label18
	j label75
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel319:
	auipc a5, %pcrel_hi(a)
pcrel320:
	auipc a0, %pcrel_hi(b)
	addi a2, a5, %pcrel_lo(pcrel319)
	addi a3, a0, %pcrel_lo(pcrel320)
	ble a1, a4, label186
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label209
	sh2add a0, t0, a2
	j label182
.p2align 2
label185:
	addi a0, a0, 64
.p2align 2
label182:
	sh2add t1, t0, a3
	addiw t0, t0, 16
	lw t3, 0(t1)
	sw t3, 0(a0)
	lw t2, 4(t1)
	sw t2, 4(a0)
	lw t3, 8(t1)
	sw t3, 8(a0)
	lw t2, 12(t1)
	sw t2, 12(a0)
	lw t4, 16(t1)
	sw t4, 16(a0)
	lw t3, 20(t1)
	sw t3, 20(a0)
	lw t2, 24(t1)
	sw t2, 24(a0)
	lw t3, 28(t1)
	sw t3, 28(a0)
	lw t2, 32(t1)
	sw t2, 32(a0)
	lw t3, 36(t1)
	sw t3, 36(a0)
	lw t2, 40(t1)
	sw t2, 40(a0)
	lw t3, 44(t1)
	sw t3, 44(a0)
	lw t2, 48(t1)
	sw t2, 48(a0)
	lw t3, 52(t1)
	sw t3, 52(a0)
	lw t4, 56(t1)
	sw t4, 56(a0)
	lw t2, 60(t1)
	sw t2, 60(a0)
	bgt a5, t0, label185
	mv a5, t0
label173:
	ble a4, a5, label186
	sh2add a0, a5, a3
	j label177
label180:
	addi a0, a0, 16
label177:
	sh2add t0, a5, a2
	lw t1, 0(a0)
	addiw a5, a5, 4
	sw t1, 0(t0)
	lw t2, 4(a0)
	sw t2, 4(t0)
	lw t3, 8(a0)
	sw t3, 8(t0)
	lw t1, 12(a0)
	sw t1, 12(t0)
	bgt a4, a5, label180
	mv t0, a5
label186:
	ble a1, t0, label188
	sh2add a0, t0, a3
	j label190
label193:
	addi a0, a0, 4
label190:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label193
label188:
	ret
label209:
	mv a5, t0
	mv t0, zero
	j label173
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -96
	mv t3, a1
pcrel505:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel506:
	auipc t5, %pcrel_hi(a)
	mv t4, a0
	addi a3, a2, %pcrel_lo(pcrel505)
	sd s0, 0(sp)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	lw a5, 4(a3)
	lw t0, 8(a3)
	lw a4, 12(a3)
pcrel507:
	auipc a3, %pcrel_hi(b)
	lw t2, %pcrel_lo(pcrel505)(a2)
	mulw t1, a0, a4
	addi a2, a3, %pcrel_lo(pcrel507)
	addw a1, t1, t2
	lui a3, 524288
	addi t1, t5, %pcrel_lo(pcrel506)
	sh2add t2, a1, a2
	addiw a0, a3, 1
	li a1, 1
	lui a2, 262144
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
	slt s10, s0, a4
	srliw s8, s7, 31
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	bne s7, zero, label386
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, s6, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
	j label475
.p2align 2
label395:
	divw s11, s6, s7
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	bge s9, a2, label475
.p2align 2
label338:
	divw s9, a3, s7
	and s11, s9, a0
	beq s11, a1, label395
.p2align 2
label396:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label338
	addiw s5, s5, 1
	bgt s1, s5, label344
	addiw s2, s2, 1
	ble t6, s2, label469
.p2align 2
label415:
	mv a3, s8
	slt s5, s2, t0
	sh2add s4, s0, t1
	or s7, s2, s0
	slt s10, s0, a4
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	bne s7, zero, label386
	mulw s8, a4, s2
	divw s9, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, s6, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
.p2align 2
label475:
	addiw s5, s5, 1
	ble s1, s5, label481
.p2align 2
label344:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	beq s7, zero, label470
.p2align 2
label386:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s9, a3, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, zero, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
	j label475
.p2align 2
label481:
	addiw s2, s2, 1
	bgt t6, s2, label415
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label492
.p2align 2
label347:
	addi a6, a6, 4
	subw s0, a7, a5
	addw s1, a5, a7
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	slt s10, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	bne s7, zero, label386
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, s6, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
	j label475
.p2align 2
label470:
	mulw s8, a4, s2
	divw s9, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, s6, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
	j label475
.p2align 2
label469:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label347
	addiw t4, t4, 1
	ble t3, t4, label349
.p2align 2
label350:
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
	slt s10, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	bne s7, zero, label386
	mulw s8, a4, t5
	divw s9, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s11, s9, a0
	bne s11, a1, label396
	divw s11, s6, a1
	and s10, s11, a0
	xori s9, s10, 1
	sltiu s10, s9, 1
	slliw s9, a1, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label338
	j label475
label349:
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
	ld s10, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label492:
	addiw t4, t4, 1
	bgt t3, t4, label350
	j label349
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t1, a1
pcrel663:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel664:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel663)
	addi t3, t5, %pcrel_lo(pcrel664)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	lw a4, 4(t0)
	lw a2, 8(t0)
	lw a3, 12(t0)
	lw t4, %pcrel_lo(pcrel663)(a5)
	mulw t2, a0, a2
	addw a1, t2, t4
	mv t2, a0
pcrel665:
	auipc t4, %pcrel_hi(a)
	sh2add t0, a1, t3
	lui a0, 262144
	addi a5, t4, %pcrel_lo(pcrel665)
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
	or s5, t3, a6
	srliw s7, s5, 31
	slt s5, a6, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label570
.p2align 2
label569:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
.p2align 2
label525:
	divw s8, a1, s5
	srliw s9, s8, 31
	add s10, s8, s9
	divw s9, s2, s5
	andi s11, s10, -2
	subw s7, s8, s11
	srliw s10, s9, 31
	add s8, s9, s10
	andi s11, s8, -2
	subw s10, s9, s11
	xor s11, s7, s10
	slliw s7, s6, 1
	sltiu s8, s11, 1
	addi s9, s7, 1
	slliw s7, s5, 1
	subw s6, s9, s8
	mv s5, s7
	blt s7, a0, label525
	addiw s4, s4, 1
	bgt a7, s4, label535
	addiw s0, s0, 1
	bgt t4, s0, label598
	addiw t6, t6, 1
	sw s6, 0(t5)
	ble a2, t6, label652
	addi t5, t5, 4
	subw a6, t6, a3
	addw a7, a3, t6
	mv s0, t3
	mv a1, zero
	slt s2, t3, a4
	or s5, t3, a6
	mv s4, a6
	sh2add s3, a6, a5
	xori s1, s2, 1
	srliw s7, s5, 31
	slt s5, a6, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label570
	j label569
.p2align 2
label535:
	addi s3, s3, 4
	mv a1, s6
	or s5, s0, s4
	srliw s7, s5, 31
	slt s5, s4, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	beq s6, zero, label569
.p2align 2
label570:
	mv s2, zero
	li s5, 1
	mv s6, zero
	j label525
.p2align 2
label598:
	mv a1, s6
	slt s2, s0, a4
	sh2add s3, a6, a5
	mv s4, a6
	or s5, s0, a6
	xori s1, s2, 1
	srliw s7, s5, 31
	slt s5, a6, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label570
	j label569
.p2align 2
label652:
	addiw t2, t2, 1
	ble t1, t2, label533
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
	or s5, t3, a6
	mv s4, a6
	sh2add s3, a6, a5
	xori s1, s2, 1
	srliw s7, s5, 31
	slt s5, a6, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label570
	j label569
label533:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s10, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -96
	mv t3, a1
pcrel846:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel846)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	lw a5, 4(a3)
	lw a4, 8(a3)
	lw t0, 12(a3)
pcrel847:
	auipc a3, %pcrel_hi(b)
	lw t1, %pcrel_lo(pcrel846)(a2)
	mulw a1, a0, a4
	addi a2, a3, %pcrel_lo(pcrel847)
	addw t4, a1, t1
	lui a3, 524288
pcrel848:
	auipc a1, %pcrel_hi(a)
	sh2add t2, t4, a2
	addi t1, a1, %pcrel_lo(pcrel848)
	lui a2, 262144
	mv t4, a0
	addiw a1, a3, 1
	li a0, 1
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
	slt s10, s0, a4
	srliw s8, s7, 31
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	bne s8, zero, label731
	mulw s8, a4, t5
	divw s11, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
	j label814
.p2align 2
label740:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label814
.p2align 2
label683:
	divw s11, a3, s7
	and s9, s11, a1
	beq s9, a0, label740
.p2align 2
label686:
	divw s11, s6, s7
	and s10, s11, a1
	xori s9, s10, 1
	sltiu s10, s9, 1
	sh1add s8, s8, s10
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label683
	addiw s5, s5, 1
	bgt s1, s5, label690
	addiw s2, s2, 1
	bgt t6, s2, label763
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label696
	addiw t4, t4, 1
	ble t3, t4, label694
.p2align 2
label695:
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
	slt s10, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	bne s8, zero, label731
	mulw s8, a4, t5
	divw s11, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
	j label814
.p2align 2
label690:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	beq s8, zero, label816
.p2align 2
label731:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s11, a3, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
.p2align 2
label814:
	addiw s5, s5, 1
	bgt s1, s5, label690
	addiw s2, s2, 1
	ble t6, s2, label825
.p2align 2
label763:
	mv a3, s8
	slt s5, s2, t0
	sh2add s4, s0, t1
	or s7, s2, s0
	slt s10, s0, a4
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	bne s8, zero, label731
	mulw s8, a4, s2
	divw s11, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
	j label814
.p2align 2
label816:
	mulw s8, a4, s2
	divw s11, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
	j label814
.p2align 2
label825:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label831
.p2align 2
label696:
	addi a6, a6, 4
	subw s0, a7, a5
	addw s1, a5, a7
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	slt s10, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s8, s7, 31
	mv s5, s0
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	bne s8, zero, label731
	mulw s8, a4, t5
	divw s11, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s11, a1
	bne s9, a0, label686
	mv s10, a0
	mv s8, a0
	slliw s9, a0, 1
	mv s7, s9
	blt s9, a2, label683
	j label814
label694:
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
	ld s10, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label831:
	addiw t4, t4, 1
	bgt t3, t4, label695
	j label694
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -64
	mv t0, a0
	mv a5, a1
pcrel985:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel986:
	auipc t5, %pcrel_hi(b)
	addi a4, a3, %pcrel_lo(pcrel985)
	sd s2, 0(sp)
	addi t4, t5, %pcrel_lo(pcrel986)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	lw a2, 4(a4)
	lw a1, 8(a4)
	lw a0, 12(a4)
	lw t3, %pcrel_lo(pcrel985)(a3)
	mulw t2, t0, a0
	addw t1, t2, t3
pcrel987:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t4
	addi a3, t2, %pcrel_lo(pcrel987)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label856
.p2align 2
label961:
	addiw t0, t0, 1
	ble a5, t0, label871
.p2align 2
label870:
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
	slt s6, t5, a0
	or s5, t1, t5
	sh2add s0, t5, a3
	xori a7, s1, 1
	srliw s4, s5, 31
	mv s1, t5
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	bne s4, zero, label907
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	ble t6, s1, label974
.p2align 2
label865:
	addi s0, s0, 4
	or s5, a6, s1
	slt s6, s1, a0
	srliw s4, s5, 31
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	beq s4, zero, label957
.p2align 2
label907:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label865
	addiw a6, a6, 1
	ble t2, a6, label956
.p2align 2
label856:
	slt s1, a6, a2
	sh2add s0, t5, a3
	xori a7, s1, 1
	mv s1, t5
	or s5, a6, t5
	slt s6, t5, a0
	srliw s4, s5, 31
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	bne s4, zero, label907
	mulw s4, a0, a6
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label865
	addiw a6, a6, 1
	bgt t2, a6, label856
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label868
	addiw t0, t0, 1
	bgt a5, t0, label870
	j label871
.p2align 2
label957:
	mulw s4, a0, a6
	addiw s1, s1, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label865
	addiw a6, a6, 1
	bgt t2, a6, label856
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label868
	addiw t0, t0, 1
	bgt a5, t0, label870
	j label871
.p2align 2
label956:
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label961
.p2align 2
label868:
	addi t3, t3, 4
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s2, zero
	slt s1, t1, a2
	slt s6, t5, a0
	or s5, t1, t5
	sh2add s0, t5, a3
	xori a7, s1, 1
	srliw s4, s5, 31
	mv s1, t5
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	bne s4, zero, label907
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label865
	addiw a6, t1, 1
	bgt t2, a6, label856
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label868
	addiw t0, t0, 1
	bgt a5, t0, label870
	j label871
.p2align 2
label974:
	addiw a6, a6, 1
	bgt t2, a6, label856
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label868
	addiw t0, t0, 1
	bgt a5, t0, label870
label871:
	ld s2, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
cmmc_parallel_body_6:
	# stack usage: CalleeArg[0] Local[0] RegSpill[64] CalleeSaved[96]
	addi sp, sp, -160
pcrel1364:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1365:
	auipc a5, %pcrel_hi(b)
	mv t4, a0
	sd s3, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s8, 48(sp)
	sd s10, 56(sp)
	sd s9, 64(sp)
	sd s2, 72(sp)
	sd s7, 80(sp)
	sd s11, 88(sp)
	sd a1, 96(sp)
	addi a1, a2, %pcrel_lo(pcrel1364)
	lw s3, 4(a1)
	addi s8, s3, -336
	addi s6, s3, -81
	addi s5, s3, -18
	addi s10, s3, -1359
	addi s4, s3, -3
	sd s3, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel1364)(a2)
	sd s4, 152(sp)
	addi a2, a5, %pcrel_lo(pcrel1365)
	addw a1, a3, a4
	sd s5, 144(sp)
	lui a3, 1048571
	sh2add a4, a1, a2
	sd s6, 136(sp)
	lui a1, 1048575
	sd s8, 128(sp)
	addiw a2, a1, -1358
	sd s10, 120(sp)
	addiw a1, a3, -1357
	addw a5, s3, a2
	lui a3, 32
	addw t0, s3, a1
	lui a2, 1
	addiw a0, a3, -1
	lui a1, 16
	srli t3, a0, 1
	srli t2, a0, 3
	srli t1, a0, 5
	lui a3, 4
	mv a6, a4
	mv a7, zero
	addw t6, s3, t4
	subw t5, t4, s3
	j label992
.p2align 2
label1211:
	addiw s9, s9, 1
	bgt t6, s9, label995
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label1330
.p2align 2
label1061:
	addi a6, a6, 4
.p2align 2
label992:
	ld s3, 104(sp)
	ld s4, 152(sp)
	addw s1, s3, a7
	subw s0, a7, s3
	addw s2, s4, a7
	ld s5, 144(sp)
	addiw s9, s0, 3
	ld s6, 136(sp)
	addw s3, s5, a7
	ld s8, 128(sp)
	addw s4, s6, a7
	ld s10, 120(sp)
	addw s5, s8, a7
	addw s6, t0, a7
	addw s7, s10, a7
	addw s8, a5, a7
	bge s9, s1, label1103
	mv s9, t5
.p2align 2
label995:
	addiw s11, s0, 15
	ble s2, s11, label1108
	addiw s11, s0, 63
	ble s3, s11, label1113
	addiw s11, s0, 255
	ble s4, s11, label1118
	addiw s11, s0, 1023
	ble s5, s11, label1123
	addw s11, s0, t1
	ble s7, s11, label1128
	addw s11, s0, t2
	ble s8, s11, label1133
	addw s10, s0, t3
	ble s6, s10, label1147
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label1303
.p2align 2
label1017:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label1017
	mv s11, s10
	ble s6, s10, label1305
.p2align 2
label1152:
	mv s10, s11
.p2align 2
label1013:
	addw s10, s10, a3
	bgt s6, s10, label1013
	mv s11, s10
	ble s8, s10, label1304
.p2align 2
label1005:
	addw s10, s10, a2
	bgt s8, s10, label1005
	mv s11, s10
	ble s7, s10, label1301
.p2align 2
label1024:
	addiw s10, s10, 1024
	bgt s7, s10, label1024
	mv s11, s10
	ble s5, s10, label1029
.p2align 2
label1031:
	addiw s10, s10, 256
	bgt s5, s10, label1031
	mv s11, s10
	ble s4, s10, label1036
.p2align 2
label1038:
	addiw s10, s10, 64
	bgt s4, s10, label1038
	mv s11, s10
	ble s3, s10, label1043
.p2align 2
label1045:
	addiw s10, s10, 16
	bgt s3, s10, label1045
	mv s11, s10
	ble s2, s10, label1202
.p2align 2
label1050:
	addiw s10, s10, 4
	bgt s2, s10, label1050
	ble s1, s10, label1211
.p2align 2
label1054:
	addiw s10, s10, 1
	bgt s1, s10, label1054
	addiw s9, s9, 1
	bgt t6, s9, label995
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label1061
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label1059
.p2align 2
label1060:
	ld s0, 112(sp)
	mv a7, zero
	ld s3, 104(sp)
	sh2add a4, s0, a4
	addw t6, s3, t4
	subw t5, t4, s3
	mv a6, a4
	j label992
.p2align 2
label1103:
	mv s2, t5
	blt s0, s1, label1239
	addiw s2, t5, 1
	ble t6, s2, label1318
.p2align 2
label1062:
	bge s0, s1, label1238
.p2align 2
label1239:
	mv s3, s0
.p2align 2
label1064:
	addiw s3, s3, 1
	bgt s1, s3, label1064
	addiw s2, s2, 1
	bgt t6, s2, label1062
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label1061
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label1060
	j label1059
.p2align 2
label1202:
	mv s10, s11
	bgt s1, s11, label1054
.p2align 2
label1314:
	addiw s9, s9, 1
	bgt t6, s9, label995
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label1061
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label1060
	j label1059
.p2align 2
label1043:
	mv s10, s11
	bgt s2, s11, label1050
.p2align 2
label1312:
	mv s10, s11
	bgt s1, s11, label1054
	j label1314
.p2align 2
label1036:
	mv s10, s11
	bgt s3, s11, label1045
.p2align 2
label1310:
	mv s10, s11
	bgt s2, s11, label1050
	j label1312
.p2align 2
label1029:
	mv s10, s11
	bgt s4, s11, label1038
.p2align 2
label1308:
	mv s10, s11
	bgt s3, s11, label1045
	j label1310
.p2align 2
label1238:
	addiw s2, s2, 1
	bgt t6, s2, label1062
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label1061
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label1060
	j label1059
.p2align 2
label1133:
	mv s10, s0
	mv s11, zero
.p2align 2
label1002:
	bgt s8, s10, label1005
	mv s10, s11
	bgt s7, s11, label1024
	j label1022
.p2align 2
label1303:
	mv s11, s10
	bgt s6, s10, label1152
.p2align 2
label1305:
	mv s11, s10
	bgt s8, s10, label1005
	bgt s7, s10, label1024
	j label1022
.p2align 2
label1301:
	mv s10, s11
	bgt s5, s11, label1031
	bgt s4, s11, label1038
	j label1308
.p2align 2
label1304:
	mv s10, s11
	bgt s7, s11, label1024
	bgt s5, s11, label1031
label1306:
	mv s10, s11
	bgt s4, s11, label1038
	j label1308
.p2align 2
label1318:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label1061
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label1060
	j label1059
.p2align 2
label1108:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label1050
	j label1202
.p2align 2
label1113:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label1045
	j label1043
.p2align 2
label1118:
	mv s10, s0
	mv s11, zero
	bgt s4, s0, label1038
	j label1036
.p2align 2
label1123:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label1031
	j label1029
.p2align 2
label1128:
	mv s10, s0
	mv s11, zero
	bgt s7, s0, label1024
label1022:
	mv s10, s11
	bgt s5, s11, label1031
	j label1306
.p2align 2
label1147:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label1152
	mv s11, zero
	j label1002
label1059:
	ld s3, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s8, 48(sp)
	ld s10, 56(sp)
	ld s9, 64(sp)
	ld s2, 72(sp)
	ld s7, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 160
	ret
.p2align 2
label1330:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label1060
	j label1059
