.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable1460:
	.word	label1435-__cmmc_jumptable1460
	.word	label1434-__cmmc_jumptable1460
	.word	label1433-__cmmc_jumptable1460
	.word	label1432-__cmmc_jumptable1460
	.word	label1431-__cmmc_jumptable1460
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
pcrel1587:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi a2, a1, %pcrel_lo(pcrel1587)
	sd a2, 120(sp)
	mv a0, a2
	jal getarray
pcrel1588:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel1588)
	mv a0, s0
	jal getarray
	sd a0, 136(sp)
	li a0, 109
	jal _sysy_starttime
	mv s11, zero
pcrel1589:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	srliw a2, s2, 31
pcrel1590:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1591:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1592:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
	ld a0, 104(sp)
	addi s6, s7, %pcrel_lo(pcrel1589)
	addi s4, s5, %pcrel_lo(pcrel1590)
	addi s8, s9, %pcrel_lo(pcrel1592)
	ld a1, 112(sp)
	mulw a1, a1, a0
	add a0, s2, a2
	addi s2, s3, %pcrel_lo(pcrel1591)
	sraiw s1, a0, 1
	sd a1, 128(sp)
pcrel1593:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1594:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
	addi a2, a0, %pcrel_lo(pcrel1593)
	addi s10, a1, %pcrel_lo(pcrel1594)
	sd a2, 144(sp)
	lw a1, 0(s0)
	li a3, 5
	mv a0, a1
	bltu a1, a3, label1464
.p2align 2
label1425:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1595:
	auipc a5, %pcrel_hi(cmmc_parallel_body_2)
	sw zero, %pcrel_lo(label1425)(a0)
	ld a2, 144(sp)
	sw s1, 4(a2)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a3, a1, 32
	add.uw a4, a0, a3
	mv a0, zero
	sd a4, 8(a2)
	addi a2, a5, %pcrel_lo(pcrel1595)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1427
	j label1428
.p2align 2
label1431:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_6)
	slli a2, s1, 32
pcrel1596:
	auipc a3, %pcrel_hi(cmmc_parallel_body_6)
	sw zero, %pcrel_lo(label1431)(a1)
	ld a0, 104(sp)
	sw a0, 4(s10)
	ld a1, 112(sp)
	add.uw a0, a1, a2
	addi a2, a3, %pcrel_lo(pcrel1596)
	sd a0, 8(s10)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	ble a1, zero, label1428
.p2align 2
label1427:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1597:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	ld a1, 128(sp)
	addi a2, a3, %pcrel_lo(pcrel1597)
	sw a1, %pcrel_lo(label1427)(a0)
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1428:
	addiw s11, s11, 1
	ld a0, 136(sp)
	ble a0, s11, label1430
	addi s0, s0, 4
	li a3, 5
	lw a1, 0(s0)
	mv a0, a1
	bgeu a1, a3, label1425
.p2align 2
label1464:
	auipc a4, %pcrel_hi(__cmmc_jumptable1460)
	addi a2, a4, %pcrel_lo(label1464)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	add a4, a2, a3
	jr a4
.p2align 2
label1435:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(label1435)(s3)
pcrel1598:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	ld a0, 104(sp)
	sw a0, 4(s2)
	ld a1, 112(sp)
	slli a2, a1, 32
	add.uw a0, s1, a2
	addi a2, a3, %pcrel_lo(pcrel1598)
	sd a0, 8(s2)
	mv a0, zero
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1427
	j label1428
label1430:
	li a0, 116
	jal _sysy_stoptime
	ld a2, 120(sp)
	ld a1, 128(sp)
	mv a0, a1
	mv a1, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
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
label1432:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_4)
	sw zero, %pcrel_lo(label1432)(s7)
pcrel1599:
	auipc a4, %pcrel_hi(cmmc_parallel_body_4)
	sw s1, 4(s6)
	ld a1, 112(sp)
	ld a0, 104(sp)
	slli a2, a1, 32
	add.uw a3, a0, a2
	mv a0, zero
	addi a2, a4, %pcrel_lo(pcrel1599)
	sd a3, 8(s6)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1427
	j label1428
.p2align 2
label1433:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_5)
	sw zero, %pcrel_lo(label1433)(s9)
pcrel1600:
	auipc a4, %pcrel_hi(cmmc_parallel_body_5)
	sw s1, 4(s8)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1600)
	sd a3, 8(s8)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1427
	j label1428
.p2align 2
label1434:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw zero, %pcrel_lo(label1434)(s5)
pcrel1601:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	sw s1, 4(s4)
	ld a0, 104(sp)
	ld a1, 112(sp)
	slli a2, a0, 32
	mv a0, zero
	add.uw a3, a1, a2
	addi a2, a4, %pcrel_lo(pcrel1601)
	sd a3, 8(s4)
	jal cmmcParallelFor
	ld a1, 128(sp)
	bgt a1, zero, label1427
	j label1428
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -80
	mv t1, a1
pcrel178:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel179:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel178)
	addi t4, t5, %pcrel_lo(pcrel179)
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
	lw t3, %pcrel_lo(pcrel178)(a5)
	addw t2, a1, t3
pcrel180:
	auipc a1, %pcrel_hi(a)
	sh2add t0, t2, t4
	addi a5, a1, %pcrel_lo(pcrel180)
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
label108:
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
	j label151
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
	j label108
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
label151:
	mv s4, s5
	blt s5, zero, label29
	j label20
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
label148:
	mulw s5, a2, s0
	sh2add s7, s5, s2
	lw s6, 0(s7)
	addw s5, s4, s6
	bgt s5, a0, label31
	mv s4, s5
	blt s5, zero, label29
	j label20
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel339:
	auipc a5, %pcrel_hi(b)
pcrel340:
	auipc a0, %pcrel_hi(a)
	addi a3, a5, %pcrel_lo(pcrel339)
	addi a2, a0, %pcrel_lo(pcrel340)
	ble a1, a4, label196
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label219
	sh2add a0, t0, a2
	j label192
.p2align 2
label195:
	addi a0, a0, 64
.p2align 2
label192:
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
	bgt a5, t0, label195
	mv a0, t0
label183:
	ble a4, a0, label196
	sh2add a5, a0, a3
	j label187
label190:
	addi a5, a5, 16
label187:
	sh2add t0, a0, a2
	ld t2, 0(a5)
	addiw a0, a0, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a0, label190
	mv t0, a0
label196:
	ble a1, t0, label203
	sh2add a0, t0, a3
	j label199
label202:
	addi a0, a0, 4
label199:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label202
label203:
	ret
label219:
	mv a0, t0
	mv t0, zero
	j label183
.p2align 2
cmmc_parallel_body_2:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[96]
	addi sp, sp, -136
pcrel732:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel733:
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
	addi a1, a2, %pcrel_lo(pcrel732)
	lw s4, 4(a1)
	addi s6, s4, -336
	addi t1, s4, -81
	addi t0, s4, -18
	addi s10, s4, -1359
	sd s4, 104(sp)
	lw s0, 8(a1)
	mulw a3, a0, s0
	sd s0, 112(sp)
	lw a4, %pcrel_lo(pcrel732)(a2)
	sd s6, 128(sp)
	addi a2, a5, %pcrel_lo(pcrel733)
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
	j label345
.p2align 2
label645:
	addiw s2, s2, 1
	ble t6, s2, label668
.p2align 2
label415:
	blt s0, s1, label592
	addiw s2, s2, 1
	bgt t6, s2, label415
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	ble s0, a7, label682
.p2align 2
label349:
	addi a6, a6, 4
.p2align 2
label345:
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
	blt s9, s1, label457
	mv s2, t5
	bge s0, s1, label645
.p2align 2
label592:
	mv s3, s0
.p2align 2
label417:
	addiw s3, s3, 1
	bgt s1, s3, label417
	addiw s2, s2, 1
	bgt t6, s2, label415
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
	addiw t4, t4, 1
	ld t5, 96(sp)
	ble t5, t4, label351
.p2align 2
label352:
	ld s0, 112(sp)
	mv a7, zero
	ld s4, 104(sp)
	sh2add a4, s0, a4
	addw t6, s4, t4
	subw t5, t4, s4
	mv a6, a4
	j label345
.p2align 2
label457:
	mv s9, t5
	addiw s11, s0, 15
	ble s2, s11, label646
.p2align 2
label365:
	addiw s11, s0, 63
	ble s3, s11, label502
	addiw s11, s0, 255
	ble s4, s11, label507
	addiw s11, s0, 1023
	ble s5, s11, label512
	lui s11, 1
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s7, s11, label517
	lui s10, 4
	addiw s11, s10, -1
	addw s10, s0, s11
	ble s8, s10, label531
	lui s11, 16
	addiw s10, s11, -1
	addw s11, s0, s10
	ble s6, s11, label536
	addw s11, s0, a0
	addw s10, s0, a1
	ble s6, s11, label657
.p2align 2
label385:
	addw s11, s10, a0
	addw s10, s10, a1
	bgt s6, s11, label385
	mv s11, s10
	ble s6, s10, label661
.p2align 2
label541:
	addw s10, s11, a3
	ble s6, s10, label658
.p2align 2
label383:
	addw s10, s10, a3
	bgt s6, s10, label383
	mv s11, s10
	ble s8, s10, label660
.p2align 2
label390:
	addw s10, s10, a2
	bgt s8, s10, label390
	mv s11, s10
	ble s7, s10, label662
.p2align 2
label372:
	addiw s10, s10, 1024
	bgt s7, s10, label372
	mv s11, s10
	ble s5, s10, label654
.p2align 2
label399:
	addiw s10, s10, 256
	bgt s5, s10, label399
	mv s11, s10
	ble s4, s10, label573
.p2align 2
label404:
	addiw s10, s10, 64
	bgt s4, s10, label404
	mv s11, s10
.p2align 2
label652:
	mv s10, s11
	ble s3, s11, label582
.p2align 2
label411:
	addiw s10, s10, 16
	bgt s3, s10, label411
	mv s11, s10
	ble s2, s10, label665
.p2align 2
label363:
	addiw s10, s10, 4
	bgt s2, s10, label363
	ble s1, s10, label650
.p2align 2
label360:
	addiw s10, s10, 1
	bgt s1, s10, label360
	addiw s9, s9, 1
	ble t6, s9, label492
.p2align 2
label353:
	addiw s11, s0, 15
	bgt s2, s11, label365
	mv s10, s0
	mv s11, zero
.p2align 2
label355:
	bgt s2, s10, label363
label685:
	mv s10, s11
	bgt s1, s11, label360
	j label482
.p2align 2
label492:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label352
	j label351
.p2align 2
label573:
	mv s10, s11
	bgt s3, s11, label411
	bgt s2, s11, label363
	j label685
.p2align 2
label650:
	addiw s9, s9, 1
	bgt t6, s9, label353
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label352
	j label351
.p2align 2
label517:
	mv s10, s0
	mv s11, zero
.p2align 2
label369:
	bgt s7, s10, label372
.p2align 2
label521:
	mv s10, s11
	bgt s5, s11, label399
	j label397
.p2align 2
label654:
	mv s10, s11
	bgt s4, s11, label404
	bgt s3, s11, label411
.p2align 2
label582:
	mv s10, s11
	bgt s2, s11, label363
	bgt s1, s11, label360
label482:
	addiw s9, s9, 1
	bgt t6, s9, label353
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
	j label669
.p2align 2
label665:
	mv s10, s11
	bgt s1, s11, label360
	addiw s9, s9, 1
	bgt t6, s9, label353
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
label669:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label352
	j label351
.p2align 2
label657:
	mv s11, s10
	bgt s6, s10, label541
.p2align 2
label661:
	mv s11, s10
	bgt s8, s10, label390
	bgt s7, s10, label372
	j label521
.p2align 2
label662:
	mv s10, s11
	bgt s5, s11, label399
.p2align 2
label397:
	mv s10, s11
	bgt s4, s11, label404
	bgt s3, s11, label411
	j label582
.p2align 2
label658:
	mv s11, s10
	bgt s8, s10, label390
	bgt s7, s10, label372
	j label521
.p2align 2
label668:
	addiw a7, a7, 1
	sw zero, 0(a6)
	ld s0, 112(sp)
	bgt s0, a7, label349
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label352
	j label351
.p2align 2
label660:
	mv s10, s11
	bgt s7, s11, label372
	bgt s5, s11, label399
	j label397
.p2align 2
label502:
	mv s10, s0
	mv s11, zero
	bgt s3, s0, label411
	mv s10, zero
	j label355
.p2align 2
label512:
	mv s10, s0
	mv s11, zero
	bgt s5, s0, label399
	j label397
.p2align 2
label531:
	mv s10, s0
	mv s11, zero
	bgt s8, s0, label390
	mv s10, zero
	j label369
.p2align 2
label536:
	mv s11, s0
	mv s10, zero
	bgt s6, s0, label541
	mv s11, zero
	bgt s8, zero, label390
	bgt s7, zero, label372
	j label521
label351:
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
label507:
	mv s10, s0
	mv s11, zero
	bgt s4, s0, label404
	j label652
label646:
	mv s10, s0
	mv s11, zero
	bgt s2, s0, label363
	j label685
.p2align 2
label682:
	addiw t4, t4, 1
	ld t5, 96(sp)
	bgt t5, t4, label352
	j label351
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -96
	mv t1, a1
pcrel893:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel894:
	auipc t5, %pcrel_hi(b)
	sd s0, 0(sp)
	addi t0, a5, %pcrel_lo(pcrel893)
	addi t3, t5, %pcrel_lo(pcrel894)
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
	lw t4, %pcrel_lo(pcrel893)(a5)
	mulw t2, a0, a2
	addw a1, t2, t4
	mv t2, a0
pcrel895:
	auipc t4, %pcrel_hi(a)
	sh2add t0, a1, t3
	lui a0, 262144
	addi a5, t4, %pcrel_lo(pcrel895)
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
	bne s6, zero, label796
	j label795
.p2align 2
label755:
	addi s3, s3, 4
	mv a1, s6
	or s5, s0, s4
	srliw s7, s5, 31
	slt s5, s4, a2
	andi s6, s7, 1
	xori s7, s5, 1
	or s2, s1, s6
	or s6, s2, s7
	bne s6, zero, label796
.p2align 2
label795:
	mulw s6, a2, s0
	sh2add s5, s6, s3
	mv s6, zero
	lw s2, 0(s5)
	li s5, 1
.p2align 2
label751:
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
	blt s7, a0, label751
	addiw s4, s4, 1
	bgt a7, s4, label755
	addiw s0, s0, 1
	ble t4, s0, label878
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
	bne s6, zero, label796
	j label795
.p2align 2
label878:
	addiw t6, t6, 1
	sw s6, 0(t5)
	ble a2, t6, label882
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
	beq s6, zero, label795
.p2align 2
label796:
	mv s2, zero
	li s5, 1
	mv s6, zero
	j label751
.p2align 2
label882:
	addiw t2, t2, 1
	ble t1, t2, label760
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
	bne s6, zero, label796
	j label795
label760:
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
pcrel1086:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1086)
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
pcrel1087:
	auipc a3, %pcrel_hi(b)
	lw t1, %pcrel_lo(pcrel1086)(a2)
	mulw a1, a0, a4
	addi a2, a3, %pcrel_lo(pcrel1087)
	addw t4, a1, t1
	lui a3, 524288
pcrel1088:
	auipc a1, %pcrel_hi(a)
	sh2add t2, t4, a2
	addi t1, a1, %pcrel_lo(pcrel1088)
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
	bne s7, zero, label961
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label913
	j label1048
.p2align 2
label926:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	andi s9, s8, 1
	xori s8, s10, 1
	or s6, s3, s9
	or s7, s6, s8
	beq s7, zero, label1046
.p2align 2
label961:
	mv s6, zero
	mv s7, a0
	mv s8, zero
	divw s10, a3, a0
	and s9, s10, a1
	bne s9, a0, label1047
.p2align 2
label971:
	mv s10, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a2, label1044
.p2align 2
label913:
	divw s10, a3, s7
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, s7
	and s10, s9, a1
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	blt s9, a2, label913
	j label1048
.p2align 2
label1044:
	addiw s5, s5, 1
	bgt s1, s5, label926
	addiw s2, s2, 1
	bgt t6, s2, label992
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1062
.p2align 2
label925:
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
	bne s7, zero, label961
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label913
.p2align 2
label1048:
	addiw s5, s5, 1
	bgt s1, s5, label926
.p2align 2
label1054:
	addiw s2, s2, 1
	ble t6, s2, label1061
.p2align 2
label992:
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
	bne s7, zero, label961
	mulw s8, a4, s2
	divw s10, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label913
	j label1048
.p2align 2
label1046:
	mulw s8, a4, s2
	divw s10, a3, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label913
	j label1048
.p2align 2
label1061:
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label925
	addiw t4, t4, 1
	ble t3, t4, label924
.p2align 2
label923:
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
	bne s7, zero, label961
	mulw s8, a4, t5
	divw s10, zero, a0
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a0
	and s9, s10, a1
	beq s9, a0, label971
	divw s9, s6, a0
	and s10, s9, a1
	slliw s9, a0, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	mv s8, s10
	blt s9, a2, label913
	j label1048
.p2align 2
label1047:
	divw s9, s6, s7
	and s10, s9, a1
	slliw s9, s7, 1
	xori s11, s10, 1
	mv s7, s9
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	blt s9, a2, label913
	addiw s5, s5, 1
	bgt s1, s5, label926
	j label1054
label924:
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
label1062:
	addiw t4, t4, 1
	bgt t3, t4, label923
	j label924
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -64
	mv t0, a0
	mv a5, a1
pcrel1229:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_5)
pcrel1230:
	auipc t5, %pcrel_hi(b)
	addi a4, a3, %pcrel_lo(pcrel1229)
	sd s2, 0(sp)
	addi t4, t5, %pcrel_lo(pcrel1230)
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
	lw t3, %pcrel_lo(pcrel1229)(a3)
	mulw t2, t0, a0
	addw t1, t2, t3
pcrel1231:
	auipc t2, %pcrel_hi(a)
	sh2add a4, t1, t4
	addi a3, t2, %pcrel_lo(pcrel1231)
	subw t1, t0, a1
	addw t2, a1, t0
	mv t3, a4
	mv t4, zero
	subw t5, zero, a1
	mv t6, a1
	mv a6, t1
	mv s2, zero
	j label1096
.p2align 2
label1201:
	addiw t0, t0, 1
	ble a5, t0, label1111
.p2align 2
label1110:
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
	bne s4, zero, label1147
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	ble t6, s1, label1214
.p2align 2
label1105:
	addi s0, s0, 4
	or s5, a6, s1
	slt s6, s1, a0
	srliw s4, s5, 31
	xori s5, s6, 1
	andi s7, s4, 1
	or s3, a7, s7
	or s4, s3, s5
	beq s4, zero, label1197
.p2align 2
label1147:
	mv s3, zero
	addiw s1, s1, 1
	max s2, s2, zero
	bgt t6, s1, label1105
	addiw a6, a6, 1
	ble t2, a6, label1196
.p2align 2
label1096:
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
	bne s4, zero, label1147
	mulw s4, a0, a6
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1105
	addiw a6, a6, 1
	bgt t2, a6, label1096
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1108
	addiw t0, t0, 1
	bgt a5, t0, label1110
	j label1111
.p2align 2
label1197:
	mulw s4, a0, a6
	addiw s1, s1, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, s2, s3
	bgt t6, s1, label1105
	addiw a6, a6, 1
	bgt t2, a6, label1096
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1108
	addiw t0, t0, 1
	bgt a5, t0, label1110
	j label1111
.p2align 2
label1196:
	addiw t4, t4, 1
	sw s2, 0(t3)
	ble a0, t4, label1201
.p2align 2
label1108:
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
	bne s4, zero, label1147
	mulw s4, a0, t1
	addiw s1, t5, 1
	sh2add s5, s4, s0
	lw s3, 0(s5)
	max s2, zero, s3
	bgt t6, s1, label1105
	addiw a6, t1, 1
	bgt t2, a6, label1096
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1108
	addiw t0, t0, 1
	bgt a5, t0, label1110
	j label1111
.p2align 2
label1214:
	addiw a6, a6, 1
	bgt t2, a6, label1096
	addiw t4, t4, 1
	sw s2, 0(t3)
	bgt a0, t4, label1108
	addiw t0, t0, 1
	bgt a5, t0, label1110
label1111:
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
pcrel1418:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
	sd s0, 0(sp)
	addi a3, a2, %pcrel_lo(pcrel1418)
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
pcrel1419:
	auipc a3, %pcrel_hi(b)
	lw t1, %pcrel_lo(pcrel1418)(a2)
	addi a2, a3, %pcrel_lo(pcrel1419)
	addw t4, a1, t1
	lui a3, 524288
pcrel1420:
	auipc a1, %pcrel_hi(a)
	sh2add t2, t4, a2
	addi t1, a1, %pcrel_lo(pcrel1420)
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
	bne s8, zero, label1297
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1249
	j label1254
.p2align 2
label1383:
	addiw s5, s5, 1
	ble s1, s5, label1387
.p2align 2
label1261:
	addi s4, s4, 4
	mv a3, s8
	or s7, s2, s5
	slt s10, s5, a4
	srliw s8, s7, 31
	xori s7, s10, 1
	andi s9, s8, 1
	or s6, s3, s9
	or s8, s6, s7
	beq s8, zero, label1382
.p2align 2
label1297:
	mv s6, zero
	mv s7, a1
	mv s8, zero
	divw s11, a3, a1
	and s9, s11, a0
	bne s9, a1, label1384
.p2align 2
label1262:
	divw s10, s6, s7
	and s9, s10, a0
	xori s11, s9, 1
	slliw s9, s7, 1
	sltiu s10, s11, 1
	mv s7, s9
	sh1add s8, s8, s10
	bge s9, a2, label1383
.p2align 2
label1249:
	divw s11, a3, s7
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1249
.p2align 2
label1254:
	addiw s5, s5, 1
	bgt s1, s5, label1261
.p2align 2
label1255:
	addiw s2, s2, 1
	bgt t6, s2, label1325
	addiw a7, a7, 1
	sw s8, 0(a6)
	bgt a4, a7, label1257
	addiw t4, t4, 1
	bgt t3, t4, label1260
	j label1259
.p2align 2
label1382:
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1249
	j label1254
.p2align 2
label1387:
	addiw s2, s2, 1
	ble t6, s2, label1392
.p2align 2
label1325:
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
	bne s8, zero, label1297
	mulw s8, a4, s2
	divw s11, a3, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1249
	j label1254
.p2align 2
label1392:
	addiw a7, a7, 1
	sw s8, 0(a6)
	ble a4, a7, label1396
.p2align 2
label1257:
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
	bne s8, zero, label1297
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1249
	j label1254
.p2align 2
label1396:
	addiw t4, t4, 1
	ble t3, t4, label1259
.p2align 2
label1260:
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
	bne s8, zero, label1297
	mulw s8, a4, t5
	divw s11, zero, a1
	sh2add s7, s8, s4
	mv s8, zero
	lw s6, 0(s7)
	mv s7, a1
	and s9, s11, a0
	beq s9, a1, label1262
	mv s10, zero
	slliw s9, a1, 1
	mv s7, s9
	blt s9, a2, label1249
	j label1254
label1259:
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
label1384:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a2, label1249
	addiw s5, s5, 1
	bgt s1, s5, label1261
	j label1255
