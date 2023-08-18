.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable1458:
	.word	label1433-__cmmc_jumptable1458
	.word	label1432-__cmmc_jumptable1458
	.word	label1431-__cmmc_jumptable1458
	.word	label1430-__cmmc_jumptable1458
	.word	label1429-__cmmc_jumptable1458
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
pcrel1581:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1581)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1582:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel1582)
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
	bge s1, zero, label1552
	addiw a2, s1, 1
label1552:
	sraiw s1, a2, 1
pcrel1583:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1584:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1585:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1586:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1587:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
pcrel1588:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	mv s11, zero
	addi s2, s3, %pcrel_lo(pcrel1583)
	addi s4, s5, %pcrel_lo(pcrel1584)
	addi s6, s7, %pcrel_lo(pcrel1585)
	addi s8, s9, %pcrel_lo(pcrel1586)
	addi s10, a1, %pcrel_lo(pcrel1587)
	addi a2, a0, %pcrel_lo(pcrel1588)
	sd a2, 144(sp)
	lw a1, 0(s0)
	li a3, 5
	mv a0, a1
	bltu a1, a3, label1462
.p2align 2
label1423:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1589:
	auipc a5, %pcrel_hi(cmmc_parallel_body_2)
	sw zero, %pcrel_lo(label1423)(a0)
	ld a2, 144(sp)
	sw s1, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1589)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1425
	j label1426
.p2align 2
label1432:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1432)(s5)
pcrel1590:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	sw s1, 4(s4)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1590)
	sd a3, 8(s4)
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1426
.p2align 2
label1425:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1591:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	ld a1, 128(sp)
	addi a2, a3, %pcrel_lo(pcrel1591)
	sw a1, %pcrel_lo(label1425)(a0)
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1426:
	addiw s11, s11, 1
	ld a0, 136(sp)
	ble a0, s11, label1428
	addi s0, s0, 4
	li a3, 5
	lw a1, 0(s0)
	mv a0, a1
	bgeu a1, a3, label1423
.p2align 2
label1462:
	auipc a5, %pcrel_hi(__cmmc_jumptable1458)
	addi a2, a5, %pcrel_lo(label1462)
	sh2add a3, a0, a2
	lw a4, 0(a3)
	add a1, a2, a4
	jr a1
.p2align 2
label1429:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
	slli a2, s1, 32
pcrel1592:
	auipc a3, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1429)(a1)
	ld a0, 104(sp)
	sw a0, 4(s10)
	ld a1, 112(sp)
	add.uw a0, a1, a2
	addi a2, a3, %pcrel_lo(pcrel1592)
	sd a0, 8(s10)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1425
	j label1426
label1428:
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
label1433:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1433)(s3)
pcrel1593:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	ld a0, 104(sp)
	sw a0, 4(s2)
	ld a1, 112(sp)
	slli a2, a1, 32
	add.uw a0, s1, a2
	addi a2, a3, %pcrel_lo(pcrel1593)
	sd a0, 8(s2)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1425
	j label1426
.p2align 2
label1430:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	sw zero, %pcrel_lo(label1430)(s7)
pcrel1594:
	auipc a4, %pcrel_hi(cmmc_parallel_body_4)
	sw s1, 4(s6)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1594)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1425
	j label1426
.p2align 2
label1431:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
	sw zero, %pcrel_lo(label1431)(s9)
pcrel1595:
	auipc a4, %pcrel_hi(cmmc_parallel_body_5)
	sw s1, 4(s8)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1595)
	sd a3, 8(s8)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1425
	j label1426
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -80
	mv t1, a1
pcrel173:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel174:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel173)
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
	ld t3, 8(t0)
	lw t0, %pcrel_lo(pcrel173)(a5)
	srai a4, t3, 32
	mv a3, t3
	mulw a1, a0, a2
	addi t3, t4, %pcrel_lo(pcrel174)
	addw t2, a1, t0
pcrel175:
	auipc a1, %pcrel_hi(a)
	sh2add t0, t2, t3
	addi a5, a1, %pcrel_lo(pcrel175)
	mv t2, a0
	lui a1, 786432
	lui a0, 262144
	subw t3, t2, a3
	addw t4, a3, t2
	mv t5, t0
	mv t6, zero
	subw a6, zero, a3
	sext.w a7, a3
	mv s0, t3
	mv s4, zero
	j label8
.p2align 2
label151:
	addiw s3, s3, 1
	ble a7, s3, label155
.p2align 2
label28:
	addi s2, s2, 4
	or s7, s0, s3
	slt s8, s3, a2
	srliw s9, s7, 31
	andi s6, s9, 1
	xori s9, s8, 1
	or s5, s1, s6
	or s7, s5, s9
	beq s7, zero, label149
.p2align 2
label67:
	mv s6, zero
	sext.w s5, s4
	ble s5, a0, label147
.p2align 2
label31:
	addw s5, s5, a1
	bgt s5, a0, label31
	mv s4, s5
	bge s5, zero, label151
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
	slt s8, a6, a2
	srliw s9, s7, 31
	andi s6, s9, 1
	xori s9, s8, 1
	or s5, s1, s6
	or s7, s5, s9
	bne s7, zero, label67
	mulw s5, a2, s0
	sh2add s7, s5, s2
	lw s6, 0(s7)
	addw s5, s4, s6
	bgt s5, a0, label31
label152:
	mv s4, s5
	blt s5, zero, label29
	j label20
.p2align 2
label154:
	addiw t6, t6, 1
	sw s4, 0(t5)
	ble a2, t6, label158
.p2align 2
label24:
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
	andi s6, s9, 1
	xori s9, s8, 1
	or s5, s1, s6
	or s7, s5, s9
	bne s7, zero, label67
	mulw s5, a2, t3
	sh2add s7, s5, s2
	lw s6, 0(s7)
	mv s5, s6
	bgt s6, a0, label31
	j label152
.p2align 2
label158:
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
	slt s8, a6, a2
	or s7, t3, a6
	sh2add s2, a6, a5
	xori s1, s3, 1
	srliw s9, s7, 31
	mv s3, a6
	andi s6, s9, 1
	xori s9, s8, 1
	or s5, s1, s6
	or s7, s5, s9
	bne s7, zero, label67
	mulw s5, a2, t3
	sh2add s7, s5, s2
	lw s6, 0(s7)
	mv s5, s6
	bgt s6, a0, label31
	j label152
.p2align 2
label149:
	mulw s5, a2, s0
	sh2add s7, s5, s2
	lw s6, 0(s7)
	addw s5, s4, s6
	bgt s5, a0, label31
	mv s4, s5
	blt s5, zero, label29
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
	ld s9, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label147:
	mv s4, s5
	blt s5, zero, label29
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
	ble a1, a4, label191
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label214
	sh2add a0, t0, a2
	j label187
.p2align 2
label190:
	addi a0, a0, 64
.p2align 2
label187:
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
	ld t4, 32(t1)
	sd t4, 32(a0)
	ld t3, 40(t1)
	sd t3, 40(a0)
	ld t2, 48(t1)
	sd t2, 48(a0)
	ld t3, 56(t1)
	sd t3, 56(a0)
	bgt a5, t0, label190
	mv a0, t0
label178:
	ble a4, a0, label191
	sh2add a5, a0, a3
	j label182
label185:
	addi a5, a5, 16
label182:
	sh2add t0, a0, a2
	ld t2, 0(a5)
	addiw a0, a0, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a0, label185
	mv t0, a0
label191:
	ble a1, t0, label198
	sh2add a0, t0, a3
	j label194
label197:
	addi a0, a0, 4
label194:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label197
label198:
	ret
label214:
	mv a0, t0
	mv t0, zero
	j label178
.p2align 2
cmmc_parallel_body_2:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel723:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel724:
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
	addi a1, a2, %pcrel_lo(pcrel723)
	lw s4, 4(a1)
	addi s6, s4, -336
	addi s10, s4, -1359
	addi t1, s4, -81
	addi t0, s4, -18
	sd s4, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel723)(a2)
	sd s6, 128(sp)
	addi a2, a5, %pcrel_lo(pcrel724)
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
	j label340
.p2align 2
label640:
	addiw s2, s2, 1
	ble t6, s2, label663
.p2align 2
label410:
	blt s0, s1, label587
	addiw s2, s2, 1
	bgt t6, s2, label410
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label677
.p2align 2
label344:
	addi a6, a6, 4
.p2align 2
label340:
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
	blt s9, s1, label452
	mv s2, t5
	bge s0, s1, label640
.p2align 2
label587:
	mv s3, s0
.p2align 2
label412:
	addiw s3, s3, 1
	bgt s1, s3, label412
	addiw s2, s2, 1
	bgt t6, s2, label410
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label346
.p2align 2
label347:
	ld s0, 112(sp)
	mv a7, zero
	ld s4, 104(sp)
	sh2add a4, s0, a4
	addw t6, s4, t4
	subw t5, t4, s4
	mv a6, a4
	j label340
.p2align 2
label452:
	mv s9, t5
	addiw s11, s0, 15
	ble s2, s11, label641
.p2align 2
label360:
	addiw s11, s0, 63
	ble s3, s11, label497
	addiw s11, s0, 255
	ble s4, s11, label502
	addiw s11, s0, 1023
	ble s5, s11, label507
	lui s11, 1
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s7, s11, label512
	lui s10, 4
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s8, s10, label526
	lui s11, 16
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s6, s11, label531
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label652
.p2align 2
label380:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label380
	mv s11, s10
	ble s6, s10, label656
.p2align 2
label536:
	addw s10, s11, a3
	ble s6, s10, label653
.p2align 2
label378:
	addw s10, s10, a3
	bgt s6, s10, label378
	mv s11, s10
	ble s8, s10, label655
.p2align 2
label385:
	addw s10, s10, a2
	bgt s8, s10, label385
	mv s11, s10
	ble s7, s10, label657
.p2align 2
label367:
	addiw s10, s10, 1024
	bgt s7, s10, label367
	mv s11, s10
	ble s5, s10, label649
.p2align 2
label394:
	addiw s10, s10, 256
	bgt s5, s10, label394
	mv s11, s10
	ble s4, s10, label568
.p2align 2
label399:
	addiw s10, s10, 64
	bgt s4, s10, label399
	mv s11, s10
.p2align 2
label647:
	mv s10, s11
	ble s3, s11, label577
.p2align 2
label406:
	addiw s10, s10, 16
	bgt s3, s10, label406
	mv s11, s10
	ble s2, s10, label660
.p2align 2
label358:
	addiw s10, s10, 4
	bgt s2, s10, label358
	ble s1, s10, label645
.p2align 2
label355:
	addiw s10, s10, 1
	bgt s1, s10, label355
	addiw s9, s9, 1
	ble t6, s9, label487
.p2align 2
label348:
	addiw s11, s0, 15
	bgt s2, s11, label360
	mv s10, s0
	mv s11, zero
.p2align 2
label350:
	bgt s2, s10, label358
label680:
	mv s10, s11
	bgt s1, s11, label355
	j label477
.p2align 2
label487:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label347
	j label346
.p2align 2
label568:
	mv s10, s11
	bgt s3, s11, label406
	bgt s2, s11, label358
	j label680
.p2align 2
label645:
	addiw s9, s9, 1
	bgt t6, s9, label348
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label347
	j label346
.p2align 2
label512:
	mv s10, s0
	mv s11, zero
.p2align 2
label364:
	bgt s7, s10, label367
.p2align 2
label516:
	mv s10, s11
	bgt s5, s11, label394
	j label392
.p2align 2
label649:
	mv s10, s11
	bgt s4, s11, label399
	bgt s3, s11, label406
.p2align 2
label577:
	mv s10, s11
	bgt s2, s11, label358
	bgt s1, s11, label355
label477:
	addiw s9, s9, 1
	bgt t6, s9, label348
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
	j label664
.p2align 2
label660:
	mv s10, s11
	bgt s1, s11, label355
	addiw s9, s9, 1
	bgt t6, s9, label348
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
label664:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label347
	j label346
.p2align 2
label652:
	mv s11, s10
	bgt s6, s10, label536
.p2align 2
label656:
	mv s11, s10
	bgt s8, s10, label385
	bgt s7, s10, label367
	j label516
.p2align 2
label657:
	mv s10, s11
	bgt s5, s11, label394
.p2align 2
label392:
	mv s10, s11
	bgt s4, s11, label399
	bgt s3, s11, label406
	j label577
.p2align 2
label653:
	mv s11, s10
	bgt s8, s10, label385
	bgt s7, s10, label367
	j label516
.p2align 2
label663:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label344
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label347
	j label346
.p2align 2
label655:
	mv s10, s11
	bgt s7, s11, label367
	bgt s5, s11, label394
	j label392
.p2align 2
label497:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label406
	mv s10, zero
	j label350
.p2align 2
label507:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label394
	j label392
.p2align 2
label526:
	mv s10, s0
	mv s11, zero
	bgt s8, s0, label385
	mv s10, zero
	j label364
.p2align 2
label531:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label536
	mv s11, zero
	bgt s8, zero, label385
	bgt s7, zero, label367
	j label516
label346:
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
label677:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label347
	j label346
.p2align 2
label502:
	mv s10, s0
	mv s11, zero
	bgt s4, s0, label399
	j label647
label641:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label358
	j label680
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t1, a1
pcrel906:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel907:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel906)
	addi t2, t4, %pcrel_lo(pcrel907)
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
	lw t3, %pcrel_lo(pcrel906)(a5)
	srai a2, a1, 32
	sext.w a4, a1
	mulw t0, a0, a2
	addw a1, t0, t3
pcrel908:
	auipc t3, %pcrel_hi(a)
	sh2add t0, a1, t2
	addi a5, t3, %pcrel_lo(pcrel908)
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
	bne s5, zero, label787
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, zero, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
	j label888
.p2align 2
label872:
	addiw t6, t6, 1
	sw s6, 0(t5)
	ble a2, t6, label877
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
	beq s5, zero, label884
.p2align 2
label787:
	mv s2, zero
	li s5, 1
	mv s6, zero
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, zero, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
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
	bge s7, a0, label893
.p2align 2
label742:
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
label857:
	andi s11, s10, -2
	divw s8, s2, s5
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
	addiw s10, s8, 1
label859:
	andi s9, s10, -2
	subw s11, s8, s9
	slliw s8, s6, 1
	xor s10, s7, s11
	slliw s7, s5, 1
	addi s11, s8, 1
	sltiu s9, s10, 1
	mv s5, s7
	subw s6, s11, s9
	blt s7, a0, label742
.p2align 2
label745:
	addiw s4, s4, 1
	bgt a7, s4, label746
.p2align 2
label809:
	addiw s0, s0, 1
	ble t4, s0, label872
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
	bne s5, zero, label787
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
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
	blt s7, a0, label742
	j label745
.p2align 2
label746:
	addi s3, s3, 4
	mv a1, s6
	or s6, s0, s4
	srliw s7, s6, 31
	slt s6, s4, a2
	andi s5, s7, 1
	xori s7, s6, 1
	or s2, s1, s5
	or s5, s2, s7
	bne s5, zero, label787
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
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
	blt s7, a0, label742
	j label745
.p2align 2
label877:
	addiw t2, t2, 1
	ble t1, t2, label751
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
	bne s5, zero, label787
	mulw s6, a2, t3
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, zero, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
.p2align 2
label888:
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
	blt s7, a0, label742
	j label745
.p2align 2
label884:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
	divw s9, a1, s5
	mv s10, s9
	bge s9, zero, label857
	addiw s10, s9, 1
	divw s8, s2, s5
	andi s11, s10, -2
	subw s7, s9, s11
	mv s10, s8
	bge s8, zero, label859
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
	blt s7, a0, label742
	j label745
label893:
	addiw s4, s4, 1
	bgt a7, s4, label746
	j label809
label751:
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
cmmc_parallel_body_4:
	addi sp, sp, -96
	mv t3, a1
pcrel1093:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1094:
	auipc t4, %pcrel_hi(b)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1093)
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
	lw a5, 4(a3)
	ld a1, 8(a3)
	lw t2, %pcrel_lo(pcrel1093)(a2)
	srai t0, a1, 32
	sext.w a4, a1
pcrel1095:
	auipc a2, %pcrel_hi(a)
	addi a1, t4, %pcrel_lo(pcrel1094)
	mv t4, a0
	mulw t1, a0, a4
	li a0, 1
	addw a3, t1, t2
	addi t1, a2, %pcrel_lo(pcrel1095)
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
	bne s8, zero, label974
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, a0
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label926
	j label1062
.p2align 2
label939:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	srliw s9, s7, 31
	slt s7, s5, a4
	andi s8, s9, 1
	xori s9, s7, 1
	or s6, s3, s8
	or s8, s6, s9
	beq s8, zero, label1060
.p2align 2
label974:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s9, a3, a0
	and s11, s9, a1
	bne s11, a0, label1061
.p2align 2
label984:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label1058
.p2align 2
label926:
	divw s9, a3, s7
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, s7
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a2, label926
.p2align 2
label1062:
	addiw s5, s5, 1
	bgt s1, s5, label939
.p2align 2
label1068:
	addiw s2, s2, 1
	ble t6, s2, label1075
.p2align 2
label1005:
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
	bne s8, zero, label974
	mulw s7, a4, s2
	divw s9, a3, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, a0
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label926
	j label1062
.p2align 2
label1058:
	addiw s5, s5, 1
	bgt s1, s5, label939
	addiw s2, s2, 1
	bgt t6, s2, label1005
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1076
.p2align 2
label938:
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
	bne s8, zero, label974
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, a0
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label926
	j label1062
.p2align 2
label1060:
	mulw s7, a4, s2
	divw s9, a3, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, a0
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label926
	j label1062
.p2align 2
label1075:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label938
	addiw t4, t4, 1
	ble t3, t4, label937
.p2align 2
label936:
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
	bne s8, zero, label974
	mulw s7, a4, t5
	divw s9, zero, a0
	sh2add s8, s7, s4
	mv s7, a0
	lw s6, 0(s8)
	mv s8, zero
	and s11, s9, a1
	beq s11, a0, label984
	divw s9, s6, a0
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, a0, 1
	mv s8, s10
	mv s7, s9
	blt s9, a2, label926
	j label1062
.p2align 2
label1061:
	divw s9, s6, s7
	and s11, s9, a1
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a2, label926
	addiw s5, s5, 1
	bgt s1, s5, label939
	j label1068
.p2align 2
label1076:
	addiw t4, t4, 1
	bgt t3, t4, label936
label937:
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
cmmc_parallel_body_5:
	addi sp, sp, -56
	mv t0, a0
	mv a5, a1
pcrel1232:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1233:
	auipc t4, %pcrel_hi(b)
	addi a4, a3, %pcrel_lo(pcrel1232)
	sd s2, 0(sp)
	addi t3, t4, %pcrel_lo(pcrel1233)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	lw a1, 4(a4)
	ld t1, 8(a4)
	lw t2, %pcrel_lo(pcrel1232)(a3)
	srai a0, t1, 32
	sext.w a2, t1
	mulw a4, t0, a0
	addw t1, a4, t2
pcrel1234:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t3
	addi a3, t2, %pcrel_lo(pcrel1234)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label1103
.p2align 2
label1208:
	addiw t0, t0, 1
	ble a5, t0, label1118
.p2align 2
label1117:
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
	bne s5, zero, label1154
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	ble t6, s1, label1221
.p2align 2
label1112:
	addi s0, s0, 4
	or s6, a6, s1
	srliw s4, s6, 31
	slt s6, s1, a0
	andi s5, s4, 1
	xori s4, s6, 1
	or s3, a7, s5
	or s5, s3, s4
	beq s5, zero, label1204
.p2align 2
label1154:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label1112
	addiw a6, a6, 1
	ble t2, a6, label1203
.p2align 2
label1103:
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
	bne s5, zero, label1154
	mulw s4, a0, a6
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1112
	addiw a6, a6, 1
	bgt t2, a6, label1103
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1115
	addiw t0, t0, 1
	bgt a5, t0, label1117
	j label1118
.p2align 2
label1204:
	mulw s4, a0, a6
	addiw s1, s1, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1112
	addiw a6, a6, 1
	bgt t2, a6, label1103
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1115
	addiw t0, t0, 1
	bgt a5, t0, label1117
	j label1118
.p2align 2
label1203:
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label1208
.p2align 2
label1115:
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
	bne s5, zero, label1154
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label1112
	addiw a6, t1, 1
	bgt t2, a6, label1103
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1115
	addiw t0, t0, 1
	bgt a5, t0, label1117
	j label1118
.p2align 2
label1221:
	addiw a6, a6, 1
	bgt t2, a6, label1103
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1115
	addiw t0, t0, 1
	bgt a5, t0, label1117
label1118:
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
cmmc_parallel_body_6:
	addi sp, sp, -96
	mv t3, a1
pcrel1416:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
	mv t4, a0
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1416)
	sd s5, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s10, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	lw a4, 4(a3)
	ld t1, 8(a3)
	srai a5, t1, 32
	sext.w t0, t1
	mulw a1, a0, a4
	lw t2, %pcrel_lo(pcrel1416)(a2)
pcrel1417:
	auipc t1, %pcrel_hi(b)
	addw a3, a1, t2
	addi a2, t1, %pcrel_lo(pcrel1417)
pcrel1418:
	auipc a1, %pcrel_hi(a)
	sh2add t2, a3, a2
	addi t1, a1, %pcrel_lo(pcrel1418)
	lui a2, 262144
	lui a3, 524288
	li a1, 1
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
	slt s8, s0, a4
	srliw s9, s7, 31
	xori s7, s8, 1
	andi s10, s9, 1
	or s6, s3, s10
	or s9, s6, s7
	bne s9, zero, label1300
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1252
	j label1257
.p2align 2
label1387:
	addiw s5, s5, 1
	ble s1, s5, label1391
.p2align 2
label1264:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s8, s5, a4
	srliw s9, s7, 31
	xori s7, s8, 1
	andi s10, s9, 1
	or s6, s3, s10
	or s9, s6, s7
	beq s9, zero, label1386
.p2align 2
label1300:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s11, a3, a1
	and s9, s11, a0
	bne s9, a1, label1388
.p2align 2
label1265:
	divw s9, s6, s7
	and s10, s9, a0
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	bge s9, a2, label1387
.p2align 2
label1252:
	divw s11, a3, s7
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1252
.p2align 2
label1257:
	addiw s5, s5, 1
	bgt s1, s5, label1264
.p2align 2
label1258:
	addiw s2, s2, 1
	bgt t6, s2, label1328
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label1260
	addiw t4, t4, 1
	bgt t3, t4, label1263
	j label1262
.p2align 2
label1386:
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1252
	j label1257
.p2align 2
label1391:
	addiw s2, s2, 1
	ble t6, s2, label1396
.p2align 2
label1328:
	mv a3, s8
	slt s5, s2, t0
	sh2add s4, s0, t1
	or s7, s2, s0
	slt s8, s0, a4
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	xori s7, s8, 1
	andi s10, s9, 1
	or s6, s3, s10
	or s9, s6, s7
	bne s9, zero, label1300
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1252
	j label1257
.p2align 2
label1396:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1400
.p2align 2
label1260:
	addi a6, a6, 4
	subw s0, a7, a5
	addw s1, a5, a7
	mv s2, t5
	mv a3, zero
	slt s5, t5, t0
	slt s8, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	xori s7, s8, 1
	andi s10, s9, 1
	or s6, s3, s10
	or s9, s6, s7
	bne s9, zero, label1300
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1252
	j label1257
.p2align 2
label1400:
	addiw t4, t4, 1
	ble t3, t4, label1262
.p2align 2
label1263:
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
	slt s8, s0, a4
	or s7, t5, s0
	sh2add s4, s0, t1
	xori s3, s5, 1
	srliw s9, s7, 31
	mv s5, s0
	xori s7, s8, 1
	andi s10, s9, 1
	or s6, s3, s10
	or s9, s6, s7
	bne s9, zero, label1300
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1265
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1252
	j label1257
.p2align 2
label1388:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1252
	addiw s5, s5, 1
	bgt s1, s5, label1264
	j label1258
label1262:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s10, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
