.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
sheet1:
	.zero	1000000
.p2align 3
sheet2:
	.zero	1000000
.p2align 2
width:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s8, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s6, a0
pcrel634:
	auipc a0, %pcrel_hi(width)
	sw s6, %pcrel_lo(pcrel634)(a0)
	jal getint
	addiw a1, a0, 1
	mv s0, a0
	sd a1, 104(sp)
	jal getint
	mv s8, a0
	jal getch
pcrel635:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel636:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel637:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel638:
	auipc a1, %pcrel_hi(sheet1)
	addi s1, a0, %pcrel_lo(pcrel636)
	addi s3, a1, %pcrel_lo(pcrel638)
pcrel639:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	addi s2, a1, %pcrel_lo(pcrel639)
	ble s0, zero, label426
	addi s9, s3, 2000
	mv a1, s6
	li s7, 1
	mv s10, s7
	bgt s6, zero, label460
	j label458
.p2align 2
label464:
	addi s11, s11, 4
.p2align 2
label461:
	jal getch
	addiw s7, s7, 1
	xori a2, a0, 35
	sltiu a1, a2, 1
	sw a1, 0(s11)
	bgt s6, s7, label464
.p2align 2
label458:
	jal getch
	addiw s10, s10, 1
	blt s0, s10, label426
pcrel640:
	auipc a0, %pcrel_hi(width)
	addi s9, s9, 2000
	lw a1, %pcrel_lo(pcrel640)(a0)
	ble a1, zero, label458
.p2align 2
label460:
	auipc a0, %pcrel_hi(width)
	addi s11, s9, 4
	li s7, 1
	lw a1, %pcrel_lo(label460)(a0)
	addiw s6, a1, 1
	j label461
label426:
	li a0, 95
	jal _sysy_starttime
	ble s8, zero, label479
	li s7, 1
	mv a0, s7
	beq s7, s7, label430
	bgt s0, zero, label435
	j label614
.p2align 2
label430:
	ble s0, zero, label486
	ld a1, 104(sp)
	li s7, 1
pcrel641:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw a1, %pcrel_lo(pcrel641)(s5)
	mv a0, s7
	mv a2, s2
	jal cmmcParallelFor
	li s7, 2
.p2align 2
label432:
	addiw s8, s8, -1
	ble s8, zero, label436
.p2align 2
label496:
	mv a0, s7
	li s7, 1
	beq a0, s7, label430
	ble s0, zero, label614
.p2align 2
label435:
	ld a1, 104(sp)
	li s7, 1
pcrel642:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a1, %pcrel_lo(pcrel642)(s4)
	mv a0, s7
	mv a2, s1
	jal cmmcParallelFor
	addiw s8, s8, -1
	bgt s8, zero, label496
label436:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s7, a1, label451
label438:
	ble s0, zero, label450
	addi s1, s3, 2000
	li s7, 1
	mv s2, s7
pcrel643:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel643)(a0)
	addiw s0, a1, 1
	bgt a1, zero, label445
.p2align 2
label443:
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw s2, s2, 1
	ble a1, s2, label450
	addi s1, s1, 2000
pcrel644:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel644)(a0)
	addiw s0, a1, 1
	ble a1, zero, label443
.p2align 2
label445:
	addi s3, s1, 4
	li s7, 1
	mv s4, s7
	lw a1, 0(s3)
	li a0, 35
	beq a1, s7, label599
.p2align 2
label598:
	li a0, 46
.p2align 2
label599:
	jal putch
	addiw s4, s4, 1
	ble s0, s4, label443
	addi s3, s3, 4
	li a0, 35
	li s7, 1
	lw a1, 0(s3)
	beq a1, s7, label599
	j label598
label450:
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s8, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label451:
	ble s0, zero, label450
pcrel645:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel646:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	li s7, 1
	addi a2, a3, %pcrel_lo(pcrel646)
	ld a1, 104(sp)
	sw a1, %pcrel_lo(pcrel645)(a0)
	mv a0, s7
	jal cmmcParallelFor
	j label438
label614:
	li s7, 1
	j label432
label479:
	li s7, 1
	j label436
label486:
	li s7, 2
	j label432
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
label63:
	addiw t1, t1, 1
	ble a1, t1, label28
.p2align 2
label29:
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
	ble t5, t0, label70
	addi t4, t2, 4
	li a6, 1
	j label15
.p2align 2
label18:
	addi t4, t4, 64
.p2align 2
label15:
	sh2add a7, a6, a0
	addiw a6, a6, 16
	lw s0, 0(a7)
	sw s0, 0(t4)
	lw s1, 4(a7)
	sw s1, 4(t4)
	lw s0, 8(a7)
	sw s0, 8(t4)
	lw s2, 12(a7)
	sw s2, 12(t4)
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
	lw s2, 40(a7)
	sw s2, 40(t4)
	lw s0, 44(a7)
	sw s0, 44(t4)
	lw s1, 48(a7)
	sw s1, 48(t4)
	lw s0, 52(a7)
	sw s0, 52(t4)
	lw s1, 56(a7)
	sw s1, 56(t4)
	lw s0, 60(a7)
	sw s0, 60(t4)
	bgt t6, a6, label18
	mv t6, a6
	ble t5, a6, label184
.p2align 2
label22:
	sh2add t4, t6, a0
	j label23
.p2align 2
label26:
	addi t4, t4, 16
.p2align 2
label23:
	sh2add a6, t6, t2
	lw a7, 0(t4)
	addiw t6, t6, 4
	sw a7, 0(a6)
	lw s0, 4(t4)
	sw s0, 4(a6)
	lw a7, 8(t4)
	sw a7, 8(a6)
	lw s0, 12(t4)
	sw s0, 12(a6)
	bgt t5, t6, label26
	mv t5, t6
	ble t3, t6, label186
.p2align 2
label8:
	sh2add t4, t5, a0
.p2align 2
label9:
	sh2add t6, t5, t2
	lw a6, 0(t4)
	addiw t5, t5, 1
	sw a6, 0(t6)
	ble t3, t5, label63
	addi t4, t4, 4
	j label9
label49:
	li t5, 1
	bgt t3, t5, label8
	addiw t1, t1, 1
	bgt a1, t1, label29
	j label28
.p2align 2
label184:
	mv t5, a6
	bgt t3, a6, label8
	addiw t1, t1, 1
	bgt a1, t1, label29
	j label28
label27:
	addiw t1, t1, 1
	bgt a1, t1, label29
	j label28
label70:
	li t6, 1
	mv a6, zero
	bgt t5, t6, label22
	mv t5, zero
	bgt t3, zero, label8
	addiw t1, t1, 1
	bgt a1, t1, label29
label28:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label186:
	addiw t1, t1, 1
	bgt a1, t1, label29
	j label28
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -16
	mv a4, a1
pcrel310:
	auipc a3, %pcrel_hi(sheet2)
	li t0, 2000
	mv t3, a0
pcrel311:
	auipc t2, %pcrel_hi(width)
	sd s1, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel310)
	mulw a1, a0, t0
	sd s0, 8(sp)
pcrel312:
	auipc a3, %pcrel_hi(sheet1)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel312)
	li a2, 1
	lw a0, %pcrel_lo(pcrel311)(t2)
	mulw t4, t3, t0
	addiw a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label207
	j label215
.p2align 2
label304:
	addiw t3, t3, 1
	ble a4, t3, label217
.p2align 2
label216:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel313:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel313)(t2)
	add a3, t1, t4
	addiw a1, a0, 1
	ble a0, zero, label215
.p2align 2
label207:
	addi a0, a5, 4
	mv t4, a2
	j label208
.p2align 2
label266:
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	ble a1, t5, label304
.p2align 2
label213:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label208:
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
	bne a7, zero, label266
	sh2add t6, t4, a3
	sw a2, 0(t6)
	bgt a1, t5, label213
	addiw t3, t3, 1
	bgt a4, t3, label216
	j label217
label215:
	addiw t3, t3, 1
	bgt a4, t3, label216
label217:
	ld s1, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -16
	mv a4, a1
pcrel421:
	auipc a3, %pcrel_hi(sheet1)
	li t0, 2000
	mv t3, a0
pcrel422:
	auipc t2, %pcrel_hi(width)
	sd s1, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel421)
	mulw a1, a0, t0
	sd s0, 8(sp)
pcrel423:
	auipc a3, %pcrel_hi(sheet2)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel423)
	li a2, 1
	lw a0, %pcrel_lo(pcrel422)(t2)
	mulw t4, t3, t0
	addiw a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label318
	j label326
.p2align 2
label377:
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	ble a1, t5, label381
.p2align 2
label323:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label319:
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
	bne a7, zero, label377
	sh2add a6, t4, a3
	sw a2, 0(a6)
	bgt a1, t5, label323
	addiw t3, t3, 1
	ble a4, t3, label328
.p2align 2
label327:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel424:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel424)(t2)
	add a3, t1, t4
	addiw a1, a0, 1
	ble a0, zero, label326
.p2align 2
label318:
	addi a0, a5, 4
	mv t4, a2
	j label319
label326:
	addiw t3, t3, 1
	bgt a4, t3, label327
label328:
	ld s1, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.p2align 2
label381:
	addiw t3, t3, 1
	bgt a4, t3, label327
	j label328
