.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
sheet1:
	.zero	1000000
.align 8
sheet2:
	.zero	1000000
.align 4
width:
	.zero	4
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s7, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s8, 40(sp)
	sd s2, 48(sp)
	sd s0, 56(sp)
	sd s5, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s7, a0
pcrel630:
	auipc a0, %pcrel_hi(width)
	sw s7, %pcrel_lo(pcrel630)(a0)
	jal getint
	slt s3, zero, a0
	addiw a1, a0, 1
	sd a0, 112(sp)
	mv s6, a0
	sd a1, 104(sp)
	jal getint
	mv s8, a0
	jal getch
pcrel631:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel632:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel633:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel634:
	auipc a1, %pcrel_hi(sheet1)
	addi s0, a0, %pcrel_lo(pcrel632)
	addi s2, a1, %pcrel_lo(pcrel634)
pcrel635:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	addi s1, a1, %pcrel_lo(pcrel635)
	ble s6, zero, label436
	addi s9, s2, 2000
	mv a1, s7
	li s7, 1
	mv s10, s7
	bgt a1, zero, label431
	j label429
.p2align 2
label435:
	addi s11, s11, 4
.p2align 2
label432:
	jal getch
	addiw s7, s7, 1
	xori a2, a0, 35
	sltiu a1, a2, 1
	sw a1, 0(s11)
	bgt s6, s7, label435
.p2align 2
label429:
	jal getch
	ld s6, 112(sp)
	addiw s10, s10, 1
	blt s6, s10, label436
pcrel636:
	auipc a0, %pcrel_hi(width)
	addi s9, s9, 2000
	lw a1, %pcrel_lo(pcrel636)(a0)
	ble a1, zero, label429
.p2align 2
label431:
	auipc a0, %pcrel_hi(width)
	addi s11, s9, 4
	li s7, 1
	lw a1, %pcrel_lo(label431)(a0)
	addi s6, a1, 1
	j label432
label436:
	li a0, 95
	jal _sysy_starttime
	ble s8, zero, label501
	li s7, 1
	mv a0, s7
	beq s7, s7, label442
	ld s6, 112(sp)
	bgt s6, zero, label441
	j label508
.p2align 2
label443:
	ld a1, 104(sp)
	li s7, 1
pcrel637:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw a1, %pcrel_lo(pcrel637)(s5)
	mv a0, s7
	mv a2, s1
	jal cmmcParallelFor
	li s7, 2
.p2align 2
label444:
	addiw s8, s8, -1
	ble s8, zero, label446
.p2align 2
label525:
	mv a0, s7
	li s7, 1
	bne a0, s7, label611
.p2align 2
label442:
	ld s6, 112(sp)
	bgt s6, zero, label443
	li s7, 2
	j label444
.p2align 2
label611:
	ld s6, 112(sp)
	ble s6, zero, label508
.p2align 2
label441:
	ld a1, 104(sp)
	li s7, 1
pcrel638:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a1, %pcrel_lo(pcrel638)(s4)
	mv a0, s7
	mv a2, s0
	jal cmmcParallelFor
	addiw s8, s8, -1
	bgt s8, zero, label525
label446:
	xori a2, s7, 2
	li a0, 106
	sltiu a1, a2, 1
	and s0, s3, a1
	jal _sysy_stoptime
	bne s0, zero, label461
label448:
	ld s6, 112(sp)
	ble s6, zero, label449
	addi s1, s2, 2000
	li s7, 1
	mv s2, s7
pcrel639:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel639)(a0)
	addi s0, a1, 1
	bgt a1, zero, label456
.p2align 2
label454:
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw s2, s2, 1
	ble a1, s2, label449
	addi s1, s1, 2000
pcrel640:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel640)(a0)
	addi s0, a1, 1
	ble a1, zero, label454
.p2align 2
label456:
	addi s3, s1, 4
	li s7, 1
	mv s4, s7
	lw a1, 0(s3)
	li a0, 35
	beq a1, s7, label593
.p2align 2
label592:
	li a0, 46
.p2align 2
label593:
	jal putch
	addiw s4, s4, 1
	ble s0, s4, label454
	addi s3, s3, 4
	li a0, 35
	li s7, 1
	lw a1, 0(s3)
	beq a1, s7, label593
	j label592
label449:
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s8, 40(sp)
	ld s2, 48(sp)
	ld s0, 56(sp)
	ld s5, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label461:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel641:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	li s7, 1
	addi a2, a3, %pcrel_lo(pcrel641)
	ld a1, 104(sp)
	sw a1, %pcrel_lo(label461)(a0)
	mv a0, s7
	jal cmmcParallelFor
	j label448
label508:
	li s7, 1
	j label444
label501:
	li s7, 1
	j label446
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t1, a0
pcrel199:
	auipc a5, %pcrel_hi(sheet2)
	li a2, 2000
pcrel200:
	auipc t0, %pcrel_hi(sheet1)
	addi a3, a5, %pcrel_lo(pcrel199)
	mul a4, a0, a2
	sd s0, 0(sp)
	li a5, 4
	add a0, a3, a4
	sd s1, 8(sp)
pcrel201:
	auipc a4, %pcrel_hi(width)
	addi a3, t0, %pcrel_lo(pcrel200)
	sd s2, 16(sp)
	li t0, 16
	lw t4, %pcrel_lo(pcrel201)(a4)
	bgt t4, zero, label5
	j label27
.p2align 2
label26:
	addi t4, t4, 4
.p2align 2
label23:
	sh2add t6, t5, t2
	lw a6, 0(t4)
	addiw t5, t5, 1
	sw a6, 0(t6)
	bgt t3, t5, label26
	addiw t1, t1, 1
	ble a1, t1, label29
.p2align 2
label28:
	addi a0, a0, 2000
pcrel202:
	auipc a4, %pcrel_hi(width)
	lw t4, %pcrel_lo(pcrel202)(a4)
	ble t4, zero, label27
.p2align 2
label5:
	mul t5, t1, a2
	addiw t3, t4, 1
	add t2, a3, t5
	ble t3, a5, label49
	addiw t5, t4, -2
	addiw t6, t4, -17
	ble t5, t0, label55
	addi t4, t2, 4
	li a6, 1
.p2align 2
label16:
	sh2add a7, a6, a0
	addiw a6, a6, 16
	lw s1, 0(a7)
	sw s1, 0(t4)
	lw s0, 4(a7)
	sw s0, 4(t4)
	lw s1, 8(a7)
	sw s1, 8(t4)
	lw s0, 12(a7)
	sw s0, 12(t4)
	lw s1, 16(a7)
	sw s1, 16(t4)
	lw s0, 20(a7)
	sw s0, 20(t4)
	lw s1, 24(a7)
	sw s1, 24(t4)
	lw s2, 28(a7)
	sw s2, 28(t4)
	lw s0, 32(a7)
	sw s0, 32(t4)
	lw s1, 36(a7)
	sw s1, 36(t4)
	lw s0, 40(a7)
	sw s0, 40(t4)
	lw s1, 44(a7)
	sw s1, 44(t4)
	lw s0, 48(a7)
	sw s0, 48(t4)
	lw s1, 52(a7)
	sw s1, 52(t4)
	lw s0, 56(a7)
	sw s0, 56(t4)
	lw s1, 60(a7)
	sw s1, 60(t4)
	ble t6, a6, label133
	addi t4, t4, 64
	j label16
.p2align 2
label133:
	mv t6, a6
	ble t5, a6, label184
.p2align 2
label10:
	sh2add t4, t6, t2
	j label11
.p2align 2
label14:
	addi t4, t4, 16
.p2align 2
label11:
	sh2add a6, t6, a0
	addiw t6, t6, 4
	lw s0, 0(a6)
	sw s0, 0(t4)
	lw a7, 4(a6)
	sw a7, 4(t4)
	lw s0, 8(a6)
	sw s0, 8(t4)
	lw a7, 12(a6)
	sw a7, 12(t4)
	bgt t5, t6, label14
	mv t5, t6
	ble t3, t6, label183
.p2align 2
label22:
	sh2add t4, t5, a0
	j label23
label55:
	li t6, 1
	mv a6, zero
	bgt t5, t6, label10
	mv t5, zero
	bgt t3, zero, label22
	addiw t1, t1, 1
	bgt a1, t1, label28
	j label29
.p2align 2
label184:
	mv t5, a6
	bgt t3, a6, label22
	addiw t1, t1, 1
	bgt a1, t1, label28
	j label29
label27:
	addiw t1, t1, 1
	bgt a1, t1, label28
	j label29
label49:
	li t5, 1
	bgt t3, t5, label22
	addiw t1, t1, 1
	bgt a1, t1, label28
label29:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label183:
	addiw t1, t1, 1
	bgt a1, t1, label28
	j label29
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -8
	mv a4, a1
pcrel308:
	auipc a3, %pcrel_hi(sheet2)
	li t0, 2000
	mv t3, a0
pcrel309:
	auipc t2, %pcrel_hi(width)
	sd s0, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel308)
	mulw a1, a0, t0
pcrel310:
	auipc a3, %pcrel_hi(sheet1)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel310)
	li a2, 1
	lw a0, %pcrel_lo(pcrel309)(t2)
	mulw t4, t3, t0
	addi a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label210
	j label207
.p2align 2
label278:
	addiw t3, t3, 1
	ble a4, t3, label209
.p2align 2
label208:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel311:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel311)(t2)
	add a3, t1, t4
	addi a1, a0, 1
	ble a0, zero, label207
.p2align 2
label210:
	addi a0, a5, 4
	mv t4, a2
	j label211
.p2align 2
label214:
	sh2add t6, t4, a3
	sw a2, 0(t6)
	ble a1, t5, label278
.p2align 2
label216:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label211:
	lw t5, -2004(a0)
	lw t6, -2000(a0)
	lw a7, -1996(a0)
	addw a6, t5, t6
	lw t5, -4(a0)
	addw t6, a6, a7
	lw a6, 4(a0)
	addw a7, t6, t5
	lw s0, 1996(a0)
	addw t5, a7, a6
	lw t6, 2000(a0)
	addw a6, t5, s0
	lw t5, 2004(a0)
	addw a7, a6, t6
	addw t6, a7, t5
	lw t5, 0(a0)
	xori a6, t6, 2
	xori s0, t5, 1
	addiw t5, t4, 1
	or a7, a6, s0
	beq a7, zero, label214
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	bgt a1, t5, label216
	addiw t3, t3, 1
	bgt a4, t3, label208
label209:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
label207:
	addiw t3, t3, 1
	bgt a4, t3, label208
	j label209
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -16
	mv a4, a1
pcrel419:
	auipc a3, %pcrel_hi(sheet1)
	li t0, 2000
	mv t3, a0
pcrel420:
	auipc t2, %pcrel_hi(width)
	sd s1, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel419)
	mulw a1, a0, t0
	sd s0, 8(sp)
pcrel421:
	auipc a3, %pcrel_hi(sheet2)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel421)
	li a2, 1
	lw a0, %pcrel_lo(pcrel420)(t2)
	mulw t4, t3, t0
	addi a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label316
	j label324
.p2align 2
label375:
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	ble a1, t5, label379
.p2align 2
label321:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label317:
	lw a6, -2004(a0)
	lw t6, -2000(a0)
	lw a7, -1996(a0)
	addw t5, a6, t6
	lw s1, -4(a0)
	addw t6, t5, a7
	lw s0, 4(a0)
	addw a6, t6, s1
	lw a7, 1996(a0)
	addw t5, a6, s0
	lw a6, 2000(a0)
	addw t6, t5, a7
	lw t5, 2004(a0)
	addw a7, t6, a6
	addw t6, a7, t5
	lw t5, 0(a0)
	xori a6, t6, 2
	xori s0, t5, 1
	addiw t5, t4, 1
	or a7, a6, s0
	bne a7, zero, label375
	sh2add a6, t4, a3
	sw a2, 0(a6)
	bgt a1, t5, label321
	addiw t3, t3, 1
	ble a4, t3, label326
.p2align 2
label325:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel422:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel422)(t2)
	add a3, t1, t4
	addi a1, a0, 1
	ble a0, zero, label324
.p2align 2
label316:
	addi a0, a5, 4
	mv t4, a2
	j label317
label324:
	addiw t3, t3, 1
	bgt a4, t3, label325
label326:
	ld s1, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.p2align 2
label379:
	addiw t3, t3, 1
	bgt a4, t3, label325
	j label326
