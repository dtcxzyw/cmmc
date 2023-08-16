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
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s8, 48(sp)
	sd s3, 56(sp)
	sd s2, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s6, a0
pcrel572:
	auipc a0, %pcrel_hi(width)
	sw s6, %pcrel_lo(pcrel572)(a0)
	jal getint
	slt s4, zero, a0
	addiw a1, a0, 1
	mv s0, a0
	sd a1, 104(sp)
	jal getint
	mv s8, a0
	jal getch
pcrel573:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel574:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
pcrel575:
	auipc a1, %pcrel_hi(sheet1)
	addi s1, a0, %pcrel_lo(pcrel574)
	addi s3, a1, %pcrel_lo(pcrel575)
pcrel576:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	addi s2, a1, %pcrel_lo(pcrel576)
	ble s0, zero, label369
	addi s9, s3, 2000
	mv a1, s6
	li s7, 1
	mv s10, s7
	bgt s6, zero, label402
	j label400
.p2align 2
label406:
	addi s11, s11, 4
.p2align 2
label403:
	jal getch
	addiw s7, s7, 1
	xori a2, a0, 35
	sltiu a1, a2, 1
	sw a1, 0(s11)
	bgt s6, s7, label406
.p2align 2
label400:
	jal getch
	addiw s10, s10, 1
	blt s0, s10, label369
pcrel577:
	auipc a0, %pcrel_hi(width)
	addi s9, s9, 2000
	lw a1, %pcrel_lo(pcrel577)(a0)
	ble a1, zero, label400
.p2align 2
label402:
	auipc a0, %pcrel_hi(width)
	addi s11, s9, 4
	li s7, 1
	lw a1, %pcrel_lo(label402)(a0)
	addi s6, a1, 1
	j label403
label369:
	li a0, 95
	jal _sysy_starttime
	ble s8, zero, label421
	li s7, 1
	mv a0, s7
	bne s7, s7, label425
.p2align 2
label373:
	ble s0, zero, label428
	ld a1, 104(sp)
	li s7, 1
pcrel578:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw a1, %pcrel_lo(pcrel578)(s5)
	mv a0, s7
	mv a2, s1
	jal cmmcParallelFor
	addiw s8, s8, -1
	li s7, 2
	bgt s8, zero, label445
	j label379
label425:
	ble s0, zero, label552
.p2align 2
label376:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s7, 1
	ld a1, 104(sp)
	sw a1, %pcrel_lo(label376)(a2)
	mv a0, s7
	mv a2, s2
	jal cmmcParallelFor
.p2align 2
label377:
	addiw s8, s8, -1
	ble s8, zero, label379
.p2align 2
label445:
	mv a0, s7
	li s7, 1
	beq a0, s7, label373
	bgt s0, zero, label376
label552:
	li s7, 1
	j label377
label379:
	xori a2, s7, 2
	li a0, 106
	sltiu a1, a2, 1
	and s1, s4, a1
	jal _sysy_stoptime
	bne s1, zero, label394
label381:
	ble s0, zero, label382
	addi s1, s3, 2000
	li s7, 1
	mv s2, s7
pcrel579:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel579)(a0)
	addi s0, a1, 1
	bgt a1, zero, label389
.p2align 2
label387:
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw s2, s2, 1
	ble a1, s2, label382
	addi s1, s1, 2000
pcrel580:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel580)(a0)
	addi s0, a1, 1
	ble a1, zero, label387
.p2align 2
label389:
	addi s3, s1, 4
	li s7, 1
	mv s4, s7
	lw a1, 0(s3)
	li a0, 35
	beq a1, s7, label537
.p2align 2
label536:
	li a0, 46
.p2align 2
label537:
	jal putch
	addiw s4, s4, 1
	ble s0, s4, label387
	addi s3, s3, 4
	li a0, 35
	li s7, 1
	lw a1, 0(s3)
	beq a1, s7, label537
	j label536
label382:
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s8, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label394:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel581:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	li s7, 1
	addi a2, a3, %pcrel_lo(pcrel581)
	ld a1, 104(sp)
	sw a1, %pcrel_lo(label394)(a0)
	mv a0, s7
	jal cmmcParallelFor
	j label381
label428:
	li s7, 2
	j label377
label421:
	li s7, 1
	j label379
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t0, a0
pcrel146:
	auipc a5, %pcrel_hi(sheet2)
	li a2, 2000
pcrel147:
	auipc t1, %pcrel_hi(sheet1)
	addi a3, a5, %pcrel_lo(pcrel146)
	mul a4, a0, a2
	sd s0, 0(sp)
	li a5, 16
	add a0, a3, a4
pcrel148:
	auipc a4, %pcrel_hi(width)
	addi a3, t1, %pcrel_lo(pcrel147)
	lw t3, %pcrel_lo(pcrel148)(a4)
	bgt t3, zero, label8
	j label5
.p2align 2
label20:
	addi t3, t3, 4
.p2align 2
label17:
	sh2add t5, t4, t1
	lw t6, 0(t3)
	addiw t4, t4, 1
	sw t6, 0(t5)
	bgt t2, t4, label20
	addiw t0, t0, 1
	ble a1, t0, label7
.p2align 2
label6:
	addi a0, a0, 2000
pcrel149:
	auipc a4, %pcrel_hi(width)
	lw t3, %pcrel_lo(pcrel149)(a4)
	ble t3, zero, label5
.p2align 2
label8:
	mul t5, t0, a2
	addiw t2, t3, 1
	addiw t4, t3, -14
	add t1, a3, t5
	ble t2, a5, label47
	addi t3, a0, 4
	li t6, 1
	j label10
.p2align 2
label13:
	addi t3, t3, 64
.p2align 2
label10:
	sh2add t5, t6, t1
	lw a7, 0(t3)
	addiw t6, t6, 16
	sw a7, 0(t5)
	lw a6, 4(t3)
	sw a6, 4(t5)
	lw a7, 8(t3)
	sw a7, 8(t5)
	lw a6, 12(t3)
	sw a6, 12(t5)
	lw a7, 16(t3)
	sw a7, 16(t5)
	lw a6, 20(t3)
	sw a6, 20(t5)
	lw a7, 24(t3)
	sw a7, 24(t5)
	lw a6, 28(t3)
	sw a6, 28(t5)
	lw s0, 32(t3)
	sw s0, 32(t5)
	lw a7, 36(t3)
	sw a7, 36(t5)
	lw a6, 40(t3)
	sw a6, 40(t5)
	lw s0, 44(t3)
	sw s0, 44(t5)
	lw a7, 48(t3)
	sw a7, 48(t5)
	lw a6, 52(t3)
	sw a6, 52(t5)
	lw a7, 56(t3)
	sw a7, 56(t5)
	lw a6, 60(t3)
	sw a6, 60(t5)
	bgt t4, t6, label13
	mv t4, t6
	ble t2, t6, label138
.p2align 2
label16:
	sh2add t3, t4, a0
	j label17
label5:
	addiw t0, t0, 1
	bgt a1, t0, label6
label7:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
.p2align 2
label47:
	li t4, 1
	bgt t2, t4, label16
	addiw t0, t0, 1
	bgt a1, t0, label6
	j label7
label138:
	addiw t0, t0, 1
	bgt a1, t0, label6
	j label7
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -8
	mv a4, a1
pcrel255:
	auipc a3, %pcrel_hi(sheet2)
	li t0, 2000
	mv t3, a0
pcrel256:
	auipc t2, %pcrel_hi(width)
	sd s0, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel255)
	mulw a1, a0, t0
pcrel257:
	auipc a3, %pcrel_hi(sheet1)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel257)
	li a2, 1
	lw a0, %pcrel_lo(pcrel256)(t2)
	mulw t4, t3, t0
	addi a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label157
	j label154
.p2align 2
label225:
	addiw t3, t3, 1
	ble a4, t3, label156
.p2align 2
label155:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel258:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel258)(t2)
	add a3, t1, t4
	addi a1, a0, 1
	ble a0, zero, label154
.p2align 2
label157:
	addi a0, a5, 4
	mv t4, a2
	j label158
.p2align 2
label161:
	sh2add t6, t4, a3
	sw a2, 0(t6)
	ble a1, t5, label225
.p2align 2
label163:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label158:
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
	beq a7, zero, label161
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	bgt a1, t5, label163
	addiw t3, t3, 1
	bgt a4, t3, label155
label156:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
label154:
	addiw t3, t3, 1
	bgt a4, t3, label155
	j label156
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -8
	mv a4, a1
pcrel364:
	auipc a3, %pcrel_hi(sheet1)
	li t0, 2000
	mv t3, a0
pcrel365:
	auipc t2, %pcrel_hi(width)
	sd s0, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel364)
	mulw a1, a0, t0
pcrel366:
	auipc a3, %pcrel_hi(sheet2)
	add a5, a2, a1
	addi t1, a3, %pcrel_lo(pcrel366)
	li a2, 1
	lw a0, %pcrel_lo(pcrel365)(t2)
	mulw t4, t3, t0
	addi a1, a0, 1
	add a3, t1, t4
	bgt a0, zero, label266
	j label263
.p2align 2
label334:
	addiw t3, t3, 1
	ble a4, t3, label265
.p2align 2
label264:
	addi a5, a5, 2000
	mulw t4, t3, t0
pcrel367:
	auipc t2, %pcrel_hi(width)
	lw a0, %pcrel_lo(pcrel367)(t2)
	add a3, t1, t4
	addi a1, a0, 1
	ble a0, zero, label263
.p2align 2
label266:
	addi a0, a5, 4
	mv t4, a2
	j label267
.p2align 2
label270:
	sh2add t6, t4, a3
	sw a2, 0(t6)
	ble a1, t5, label334
.p2align 2
label272:
	addi a0, a0, 4
	mv t4, t5
.p2align 2
label267:
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
	beq a7, zero, label270
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	bgt a1, t5, label272
	addiw t3, t3, 1
	bgt a4, t3, label264
label265:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
label263:
	addiw t3, t3, 1
	bgt a4, t3, label264
	j label265
