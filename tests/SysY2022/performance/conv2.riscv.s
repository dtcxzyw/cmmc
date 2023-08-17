.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable1433:
	.word	label1408-__cmmc_jumptable1433
	.word	label1407-__cmmc_jumptable1433
	.word	label1406-__cmmc_jumptable1433
	.word	label1405-__cmmc_jumptable1433
	.word	label1404-__cmmc_jumptable1433
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
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s2, a0
	jal getint
	sd a0, 112(sp)
	mv a1, a0
	jal getint
pcrel1555:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1555)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1556:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel1556)
	mv a0, s0
	jal getarray
	sd a0, 136(sp)
	li a0, 109
	jal _sysy_starttime
	ld a0, 104(sp)
pcrel1557:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1558:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	srliw a2, s2, 31
pcrel1559:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv s11, zero
pcrel1560:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi s8, s9, %pcrel_lo(pcrel1557)
	addi s6, s7, %pcrel_lo(pcrel1558)
	addi s4, s5, %pcrel_lo(pcrel1560)
	ld a1, 112(sp)
	mulw a1, a1, a0
	add a0, s2, a2
	addi s2, s3, %pcrel_lo(pcrel1559)
	sraiw s1, a0, 1
	sd a1, 128(sp)
pcrel1561:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1562:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
	addi a2, a0, %pcrel_lo(pcrel1561)
	addi s10, a1, %pcrel_lo(pcrel1562)
	sd a2, 144(sp)
	lw a1, 0(s0)
	li a3, 5
	mv a0, a1
	bltu a1, a3, label1437
.p2align 2
label1398:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1563:
	auipc a5, %pcrel_hi(cmmc_parallel_body_2)
	sw zero, %pcrel_lo(label1398)(a0)
	ld a2, 144(sp)
	sw s1, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1563)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1400
	j label1401
.p2align 2
label1404:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
	slli a2, s1, 32
pcrel1564:
	auipc a3, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1404)(a1)
	ld a0, 104(sp)
	sw a0, 4(s10)
	ld a1, 112(sp)
	add.uw a0, a1, a2
	addi a2, a3, %pcrel_lo(pcrel1564)
	sd a0, 8(s10)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1401
.p2align 2
label1400:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1565:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	ld a1, 128(sp)
	addi a2, a3, %pcrel_lo(pcrel1565)
	sw a1, %pcrel_lo(label1400)(a0)
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1401:
	addiw s11, s11, 1
	ld a0, 136(sp)
	ble a0, s11, label1403
	addi s0, s0, 4
	li a3, 5
	lw a1, 0(s0)
	mv a0, a1
	bgeu a1, a3, label1398
.p2align 2
label1437:
	auipc a4, %pcrel_hi(__cmmc_jumptable1433)
	addi a2, a4, %pcrel_lo(label1437)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	add a4, a2, a3
	jr a4
.p2align 2
label1408:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1408)(s3)
pcrel1566:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	ld a0, 104(sp)
	sw a0, 4(s2)
	ld a1, 112(sp)
	slli a2, a1, 32
	add.uw a0, s1, a2
	addi a2, a3, %pcrel_lo(pcrel1566)
	sd a0, 8(s2)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1400
	j label1401
label1403:
	li a0, 116
	jal _sysy_stoptime
	ld a2, 120(sp)
	ld a1, 128(sp)
	mv a0, a1
	mv a1, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label1407:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1407)(s5)
pcrel1567:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	sw s1, 4(s4)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1567)
	sd a3, 8(s4)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1400
	j label1401
.p2align 2
label1405:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	sw zero, %pcrel_lo(label1405)(s7)
pcrel1568:
	auipc a4, %pcrel_hi(cmmc_parallel_body_4)
	sw s1, 4(s6)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1568)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1400
	j label1401
.p2align 2
label1406:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
	sw zero, %pcrel_lo(label1406)(s9)
pcrel1569:
	auipc a4, %pcrel_hi(cmmc_parallel_body_5)
	sw s1, 4(s8)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1569)
	sd a3, 8(s8)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1400
	j label1401
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -80
	mv t1, a1
pcrel172:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel173:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel172)
	addi t4, t5, %pcrel_lo(pcrel173)
	sd s5, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	lw a2, 4(t0)
	lw a3, 8(t0)
	lw a4, 12(t0)
	mulw a1, a0, a2
	lw t3, %pcrel_lo(pcrel172)(a5)
	addw t2, a1, t3
pcrel174:
	auipc a1, %pcrel_hi(a)
	sh2add t0, t2, t4
	addi a5, a1, %pcrel_lo(pcrel174)
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
label150:
	addiw s3, s3, 1
	ble a7, s3, label154
.p2align 2
label28:
	addi s2, s2, 4
	or s7, s0, s3
	srliw s8, s7, 31
	slt s7, s3, a2
	andi s6, s8, 1
	xori s8, s7, 1
	or s5, s1, s6
	or s9, s5, s8
	beq s9, zero, label148
.p2align 2
label67:
	mv s6, zero
	sext.w s5, s4
	ble s5, a0, label146
.p2align 2
label31:
	addw s5, s5, a1
	bgt s5, a0, label31
	mv s4, s5
	bge s5, zero, label150
.p2align 2
label29:
	addw s4, s4, a0
	blt s4, zero, label29
	addiw s3, s3, 1
	bgt a7, s3, label28
	addiw s0, s0, 1
	ble t4, s0, label153
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
	or s9, s5, s8
	bne s9, zero, label67
	mulw s5, a2, s0
	sh2add s7, s5, s2
	lw s6, 0(s7)
	addw s5, s4, s6
	bgt s5, a0, label31
label151:
	mv s4, s5
	blt s5, zero, label29
	j label20
.p2align 2
label153:
	addiw t6, t6, 1
	sw s4, 0(t5)
	ble a2, t6, label157
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
	or s9, s5, s8
	bne s9, zero, label67
	mulw s5, a2, t3
	sh2add s7, s5, s2
	lw s6, 0(s7)
	mv s5, s6
	bgt s6, a0, label31
	j label151
.p2align 2
label157:
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
	or s9, s5, s8
	bne s9, zero, label67
	mulw s5, a2, t3
	sh2add s7, s5, s2
	lw s6, 0(s7)
	mv s5, s6
	bgt s6, a0, label31
	j label151
.p2align 2
label148:
	mulw s5, a2, s0
	sh2add s7, s5, s2
	lw s6, 0(s7)
	addw s5, s4, s6
	bgt s5, a0, label31
	mv s4, s5
	blt s5, zero, label29
	j label20
label154:
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
	ld s9, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label146:
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
pcrel333:
	auipc a5, %pcrel_hi(b)
pcrel334:
	auipc a0, %pcrel_hi(a)
	addi a3, a5, %pcrel_lo(pcrel333)
	addi a2, a0, %pcrel_lo(pcrel334)
	ble a1, a4, label190
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label213
	sh2add a0, t0, a2
	j label186
.p2align 2
label189:
	addi a0, a0, 64
.p2align 2
label186:
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
	bgt a5, t0, label189
	mv a0, t0
label177:
	ble a4, a0, label190
	sh2add a5, a0, a3
	j label181
label184:
	addi a5, a5, 16
label181:
	sh2add t0, a0, a2
	ld t2, 0(a5)
	addiw a0, a0, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a0, label184
	mv t0, a0
label190:
	ble a1, t0, label197
	sh2add a0, t0, a3
	j label193
label196:
	addi a0, a0, 4
label193:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label196
label197:
	ret
label213:
	mv a0, t0
	mv t0, zero
	j label177
.p2align 2
cmmc_parallel_body_2:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel722:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel723:
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
	addi a1, a2, %pcrel_lo(pcrel722)
	lw s4, 4(a1)
	addi s6, s4, -336
	addi s10, s4, -1359
	addi t0, s4, -18
	addi t1, s4, -81
	sd s4, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel722)(a2)
	addi a2, a5, %pcrel_lo(pcrel723)
	addw a1, a3, a4
	sd s6, 128(sp)
	addi a5, s4, -3
	lui a3, 1048571
	sh2add a4, a1, a2
	sd s10, 120(sp)
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
	j label339
.p2align 2
label639:
	addiw s2, s2, 1
	ble t6, s2, label662
.p2align 2
label409:
	blt s0, s1, label586
	addiw s2, s2, 1
	bgt t6, s2, label409
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label676
.p2align 2
label343:
	addi a6, a6, 4
.p2align 2
label339:
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
	blt s9, s1, label451
	mv s2, t5
	bge s0, s1, label639
.p2align 2
label586:
	mv s3, s0
.p2align 2
label411:
	addiw s3, s3, 1
	bgt s1, s3, label411
	addiw s2, s2, 1
	bgt t6, s2, label409
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label345
.p2align 2
label346:
	ld s0, 112(sp)
	mv a7, zero
	ld s4, 104(sp)
	sh2add a4, s0, a4
	addw t6, s4, t4
	subw t5, t4, s4
	mv a6, a4
	j label339
.p2align 2
label451:
	mv s9, t5
	addiw s11, s0, 15
	ble s2, s11, label640
.p2align 2
label359:
	addiw s11, s0, 63
	ble s3, s11, label496
	addiw s11, s0, 255
	ble s4, s11, label501
	addiw s11, s0, 1023
	ble s5, s11, label506
	lui s11, 1
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s7, s11, label511
	lui s10, 4
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s8, s10, label525
	lui s11, 16
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s6, s11, label530
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label651
.p2align 2
label379:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label379
	mv s11, s10
	ble s6, s10, label655
.p2align 2
label535:
	addw s10, s11, a3
	ble s6, s10, label652
.p2align 2
label377:
	addw s10, s10, a3
	bgt s6, s10, label377
	mv s11, s10
	ble s8, s10, label654
.p2align 2
label384:
	addw s10, s10, a2
	bgt s8, s10, label384
	mv s11, s10
	ble s7, s10, label656
.p2align 2
label366:
	addiw s10, s10, 1024
	bgt s7, s10, label366
	mv s11, s10
	ble s5, s10, label648
.p2align 2
label393:
	addiw s10, s10, 256
	bgt s5, s10, label393
	mv s11, s10
	ble s4, s10, label567
.p2align 2
label398:
	addiw s10, s10, 64
	bgt s4, s10, label398
	mv s11, s10
.p2align 2
label646:
	mv s10, s11
	ble s3, s11, label576
.p2align 2
label405:
	addiw s10, s10, 16
	bgt s3, s10, label405
	mv s11, s10
	ble s2, s10, label659
.p2align 2
label357:
	addiw s10, s10, 4
	bgt s2, s10, label357
	ble s1, s10, label644
.p2align 2
label354:
	addiw s10, s10, 1
	bgt s1, s10, label354
	addiw s9, s9, 1
	ble t6, s9, label486
.p2align 2
label347:
	addiw s11, s0, 15
	bgt s2, s11, label359
	mv s10, s0
	mv s11, zero
.p2align 2
label349:
	bgt s2, s10, label357
label679:
	mv s10, s11
	bgt s1, s11, label354
	j label476
.p2align 2
label486:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label346
	j label345
.p2align 2
label567:
	mv s10, s11
	bgt s3, s11, label405
	bgt s2, s11, label357
	j label679
.p2align 2
label644:
	addiw s9, s9, 1
	bgt t6, s9, label347
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label346
	j label345
.p2align 2
label511:
	mv s10, s0
	mv s11, zero
.p2align 2
label363:
	bgt s7, s10, label366
.p2align 2
label515:
	mv s10, s11
	bgt s5, s11, label393
	j label391
.p2align 2
label648:
	mv s10, s11
	bgt s4, s11, label398
	bgt s3, s11, label405
.p2align 2
label576:
	mv s10, s11
	bgt s2, s11, label357
	bgt s1, s11, label354
label476:
	addiw s9, s9, 1
	bgt t6, s9, label347
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
	j label663
.p2align 2
label659:
	mv s10, s11
	bgt s1, s11, label354
	addiw s9, s9, 1
	bgt t6, s9, label347
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
label663:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label346
	j label345
.p2align 2
label651:
	mv s11, s10
	bgt s6, s10, label535
.p2align 2
label655:
	mv s11, s10
	bgt s8, s10, label384
	bgt s7, s10, label366
	j label515
.p2align 2
label656:
	mv s10, s11
	bgt s5, s11, label393
.p2align 2
label391:
	mv s10, s11
	bgt s4, s11, label398
	bgt s3, s11, label405
	j label576
.p2align 2
label652:
	mv s11, s10
	bgt s8, s10, label384
	bgt s7, s10, label366
	j label515
.p2align 2
label662:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label343
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label346
	j label345
.p2align 2
label654:
	mv s10, s11
	bgt s7, s11, label366
	bgt s5, s11, label393
	j label391
.p2align 2
label496:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label405
	mv s10, zero
	j label349
.p2align 2
label506:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label393
	j label391
.p2align 2
label525:
	mv s10, s0
	mv s11, zero
	bgt s8, s0, label384
	mv s10, zero
	j label363
.p2align 2
label530:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label535
	mv s11, zero
	bgt s8, zero, label384
	bgt s7, zero, label366
	j label515
label345:
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
label676:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label346
	j label345
.p2align 2
label501:
	mv s10, s0
	mv s11, zero
	bgt s4, s0, label398
	j label646
label640:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label357
	j label679
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t1, a1
pcrel883:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel884:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel883)
	addi t3, t5, %pcrel_lo(pcrel884)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	lw a3, 4(t0)
	lw a4, 8(t0)
	lw a2, 12(t0)
	lw t4, %pcrel_lo(pcrel883)(a5)
	mulw t2, a0, a2
	addw a1, t2, t4
	mv t2, a0
pcrel885:
	auipc t4, %pcrel_hi(a)
	sh2add t0, a1, t3
	lui a0, 262144
	addi a5, t4, %pcrel_lo(pcrel885)
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
	bne s6, zero, label786
	j label785
.p2align 2
label745:
	addi s3, s3, 4
	mv a1, s6
	or s5, s0, s4
	srliw s7, s5, 31
	slt s5, s4, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label786
.p2align 2
label785:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
.p2align 2
label741:
	divw s8, a1, s5
	srliw s9, s8, 31
	add s11, s8, s9
	divw s9, s2, s5
	andi s10, s11, -2
	subw s7, s8, s10
	srliw s11, s9, 31
	add s10, s9, s11
	slliw s11, s6, 1
	andi s8, s10, -2
	subw s10, s9, s8
	xor s9, s7, s10
	slliw s7, s5, 1
	sltiu s8, s9, 1
	mv s5, s7
	addi s9, s11, 1
	subw s6, s9, s8
	blt s7, a0, label741
	addiw s4, s4, 1
	bgt a7, s4, label745
	addiw s0, s0, 1
	ble t4, s0, label868
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
	bne s6, zero, label786
	j label785
.p2align 2
label868:
	addiw t6, t6, 1
	sw s6, 0(t5)
	ble a2, t6, label872
	addi t5, t5, 4
	subw a6, t6, a3
	addw a7, a3, t6
	mv s0, t3
	mv a1, zero
	slt s2, t3, a4
	mv s4, a6
	or s5, t3, a6
	sh2add s3, a6, a5
	xori s1, s2, 1
	srliw s7, s5, 31
	slt s5, a6, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	beq s6, zero, label785
.p2align 2
label786:
	mv s2, zero
	li s5, 1
	mv s6, zero
	j label741
.p2align 2
label872:
	addiw t2, t2, 1
	ble t1, t2, label750
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
	bne s6, zero, label786
	j label785
label750:
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
	ld s11, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -96
	mv t3, a1
pcrel1069:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1069)
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
pcrel1070:
	auipc a3, %pcrel_hi(b)
	lw t1, %pcrel_lo(pcrel1069)(a2)
	mulw a1, a0, a4
	addi a2, a3, %pcrel_lo(pcrel1070)
	addw t4, a1, t1
	lui a3, 524288
pcrel1071:
	auipc a1, %pcrel_hi(a)
	sh2add t2, t4, a2
	addi t1, a1, %pcrel_lo(pcrel1071)
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
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	bne s7, zero, label951
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label903
	j label1038
.p2align 2
label916:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	beq s7, zero, label1036
.p2align 2
label951:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s10, a3, a0
	and s9, s10, a1
	bne s9, a0, label1037
.p2align 2
label961:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label1034
.p2align 2
label903:
	divw s10, a3, s7
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, s7
	and s10, s9, a1
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	blt s9, a2, label903
.p2align 2
label1038:
	addiw s5, s5, 1
	bgt s1, s5, label916
.p2align 2
label1044:
	addiw s2, s2, 1
	ble t6, s2, label1051
.p2align 2
label982:
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
	bne s7, zero, label951
	mulw s8, a4, s2
	divw s10, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label903
	j label1038
.p2align 2
label1034:
	addiw s5, s5, 1
	bgt s1, s5, label916
	addiw s2, s2, 1
	bgt t6, s2, label982
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1052
.p2align 2
label915:
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
	bne s7, zero, label951
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label903
	j label1038
.p2align 2
label1036:
	mulw s8, a4, s2
	divw s10, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label903
	j label1038
.p2align 2
label1051:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label915
	addiw t4, t4, 1
	ble t3, t4, label914
.p2align 2
label913:
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
	bne s7, zero, label951
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label961
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label903
	j label1038
.p2align 2
label1037:
	divw s9, s6, s7
	and s10, s9, a1
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	blt s9, a2, label903
	addiw s5, s5, 1
	bgt s1, s5, label916
	j label1044
.p2align 2
label1052:
	addiw t4, t4, 1
	bgt t3, t4, label913
label914:
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
cmmc_parallel_body_5:
	addi sp, sp, -64
	mv t0, a0
	mv a5, a1
pcrel1208:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1209:
	auipc t5, %pcrel_hi(b)
	addi a4, a3, %pcrel_lo(pcrel1208)
	sd s2, 0(sp)
	addi t4, t5, %pcrel_lo(pcrel1209)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	lw a1, 4(a4)
	lw a2, 8(a4)
	lw a0, 12(a4)
	lw t3, %pcrel_lo(pcrel1208)(a3)
	mulw t2, t0, a0
	addw t1, t2, t3
pcrel1210:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t4
	addi a3, t2, %pcrel_lo(pcrel1210)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label1079
.p2align 2
label1184:
	addiw t0, t0, 1
	ble a5, t0, label1094
.p2align 2
label1093:
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
	bne s4, zero, label1130
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	ble t6, s1, label1197
.p2align 2
label1088:
	addi s0, s0, 4
	or s5, a6, s1
	slt s6, s1, a0
	srliw s4, s5, 31
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	beq s4, zero, label1180
.p2align 2
label1130:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label1088
	addiw a6, a6, 1
	ble t2, a6, label1179
.p2align 2
label1079:
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
	bne s4, zero, label1130
	mulw s4, a0, a6
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1088
	addiw a6, a6, 1
	bgt t2, a6, label1079
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1091
	addiw t0, t0, 1
	bgt a5, t0, label1093
	j label1094
.p2align 2
label1180:
	mulw s4, a0, a6
	addiw s1, s1, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1088
	addiw a6, a6, 1
	bgt t2, a6, label1079
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1091
	addiw t0, t0, 1
	bgt a5, t0, label1093
	j label1094
.p2align 2
label1179:
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label1184
.p2align 2
label1091:
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
	bne s4, zero, label1130
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label1088
	addiw a6, t1, 1
	bgt t2, a6, label1079
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1091
	addiw t0, t0, 1
	bgt a5, t0, label1093
	j label1094
.p2align 2
label1197:
	addiw a6, a6, 1
	bgt t2, a6, label1079
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1091
	addiw t0, t0, 1
	bgt a5, t0, label1093
label1094:
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
	addi sp, sp, -96
	mv t3, a1
pcrel1391:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1391)
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
	lw a4, 4(a3)
	lw t0, 8(a3)
	lw a5, 12(a3)
	mulw a1, a0, a4
pcrel1392:
	auipc a3, %pcrel_hi(b)
	lw t1, %pcrel_lo(pcrel1391)(a2)
	addi a2, a3, %pcrel_lo(pcrel1392)
	addw t4, a1, t1
	lui a3, 524288
pcrel1393:
	auipc a1, %pcrel_hi(a)
	sh2add t2, t4, a2
	addi t1, a1, %pcrel_lo(pcrel1393)
	lui a2, 262144
	mv t4, a0
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
	slt s10, s0, a4
	srliw s8, s7, 31
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	bne s8, zero, label1276
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1228
	j label1233
.p2align 2
label1362:
	addiw s5, s5, 1
	ble s1, s5, label1366
.p2align 2
label1240:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	beq s8, zero, label1361
.p2align 2
label1276:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s11, a3, a1
	and s9, s11, a0
	bne s9, a1, label1363
.p2align 2
label1241:
	divw s10, s6, s7
	and s9, s10, a0
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	bge s9, a2, label1362
.p2align 2
label1228:
	divw s11, a3, s7
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1228
.p2align 2
label1233:
	addiw s5, s5, 1
	bgt s1, s5, label1240
.p2align 2
label1234:
	addiw s2, s2, 1
	bgt t6, s2, label1304
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label1236
	addiw t4, t4, 1
	bgt t3, t4, label1239
	j label1238
.p2align 2
label1361:
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1228
	j label1233
.p2align 2
label1366:
	addiw s2, s2, 1
	ble t6, s2, label1371
.p2align 2
label1304:
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
	bne s8, zero, label1276
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1228
	j label1233
.p2align 2
label1371:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1375
.p2align 2
label1236:
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
	bne s8, zero, label1276
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1228
	j label1233
.p2align 2
label1375:
	addiw t4, t4, 1
	ble t3, t4, label1238
.p2align 2
label1239:
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
	bne s8, zero, label1276
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1241
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1228
	j label1233
.p2align 2
label1363:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1228
	addiw s5, s5, 1
	bgt s1, s5, label1240
	j label1234
label1238:
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
