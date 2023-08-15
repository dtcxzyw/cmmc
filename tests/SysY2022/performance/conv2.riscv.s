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
pcrel640:
	auipc a1, %pcrel_hi(a)
	sd a0, 104(sp)
	addi s3, a1, %pcrel_lo(pcrel640)
	mv a0, s3
	jal getarray
pcrel641:
	auipc a1, %pcrel_hi(kernelid)
	addi s7, a1, %pcrel_lo(pcrel641)
	mv a0, s7
	jal getarray
	mv s4, a0
	li a0, 109
	jal _sysy_starttime
	ld a0, 104(sp)
	srliw a1, s0, 31
pcrel642:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv s11, zero
pcrel643:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	add a2, s0, a1
	mulw s1, s2, a0
pcrel644:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	addi s0, s9, %pcrel_lo(pcrel642)
	sraiw s8, a2, 1
pcrel645:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
	addi s5, a1, %pcrel_lo(pcrel644)
	addi s6, a0, %pcrel_lo(pcrel645)
.p2align 2
label559:
	lw a1, 0(s7)
	slli a2, s2, 32
	xori a4, a1, 1
	add.uw a3, s8, a2
pcrel646:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw zero, %pcrel_lo(pcrel646)(s9)
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
	ble s1, zero, label563
pcrel647:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s1, %pcrel_lo(pcrel647)(s10)
	mv a0, zero
	mv a1, s1
	mv a2, s6
	jal cmmcParallelFor
.p2align 2
label563:
	addiw s11, s11, 1
	ble s4, s11, label565
	addi s7, s7, 4
	j label559
label565:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
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
	# stack usage: CalleeArg[0] Local[0] RegSpill[56] CalleeSaved[96]
	addi sp, sp, -152
pcrel404:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel405:
	auipc t3, %pcrel_hi(b)
	lui t4, 524288
	sd s2, 0(sp)
	sd s4, 8(sp)
	sd s8, 16(sp)
	sd s7, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s3, 64(sp)
	sd s9, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	sd a1, 120(sp)
	addi a1, a2, %pcrel_lo(pcrel404)
	lw a4, 4(a1)
	lw s2, 8(a1)
	mulw a3, a0, a4
	sd s2, 144(sp)
	lw s4, 12(a1)
	sd s4, 136(sp)
	lb s8, 16(a1)
	sd s8, 128(sp)
	lw s7, 20(a1)
	sd s7, 96(sp)
	lb s7, 24(a1)
	sd s7, 112(sp)
	lb s8, 25(a1)
	sd s8, 104(sp)
	lb a5, 26(a1)
	addi a1, t3, %pcrel_lo(pcrel405)
	lw t0, %pcrel_lo(pcrel404)(a2)
	mv t3, a0
pcrel406:
	auipc a2, %pcrel_hi(a)
	addw t2, a3, t0
	lui a0, 262144
	addiw a3, t4, 1
	addi t0, a2, %pcrel_lo(pcrel406)
	sh2add t1, t2, a1
	li a2, 1
	li t2, 4
	lui a1, 786432
	mv t6, t1
	mv a6, zero
	addw t5, s2, t3
	subw t4, t3, s2
	mv s1, t4
	mv s5, zero
	mv s0, s2
	subw a7, zero, s2
	j label8
.p2align 2
label305:
	addiw s1, s1, 1
	ble t5, s1, label324
.p2align 2
label8:
	ld s4, 136(sp)
	sh2add s3, a7, t0
	slt s6, s1, s4
	mv s4, a7
	xori s2, s6, 1
	or s7, s1, a7
	srliw s8, s7, 31
	slt s7, a7, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a4, s1
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a5, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	ld s7, 96(sp)
	beq s7, t2, label129
.p2align 2
label370:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	j label362
.p2align 2
label308:
	mulw s7, a4, s1
	sh2add s8, s7, s3
	lw s6, 0(s8)
	beq a5, zero, label327
.p2align 2
label37:
	addw s6, s5, s6
	ble s6, a0, label167
.p2align 2
label42:
	addw s6, s6, a1
	bgt s6, a0, label42
	mv s5, s6
	bge s6, zero, label306
.p2align 2
label40:
	addw s5, s5, a0
	blt s5, zero, label40
	addiw s4, s4, 1
	ble s0, s4, label305
.p2align 2
label46:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s8, s7, 31
	slt s7, s4, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	beq s9, zero, label308
.p2align 2
label98:
	mv s6, zero
	bne a5, zero, label37
	ld s8, 128(sp)
	beq s8, zero, label103
.p2align 2
label104:
	mv s7, a2
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
	xor s10, s9, s10
	slliw s9, s8, 1
	sltiu s11, s10, 1
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
	ble a4, a6, label330
.p2align 2
label49:
	addi t6, t6, 4
	mv s1, t4
	mv s5, zero
	ld s2, 144(sp)
	ld s4, 136(sp)
	addw s0, s2, a6
	subw a7, a6, s2
	slt s6, t4, s4
	or s7, t4, a7
	sh2add s3, a7, t0
	mv s4, a7
	xori s2, s6, 1
	srliw s8, s7, 31
	slt s7, a7, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a4, t4
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a5, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	ld s7, 96(sp)
	beq s7, t2, label129
	j label370
.p2align 2
label103:
	ld s7, 112(sp)
	beq s7, zero, label293
.p2align 2
label22:
	max s5, s5, s6
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
label327:
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	ld s7, 96(sp)
	beq s7, t2, label129
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	j label362
.p2align 2
label324:
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	ble t4, t3, label52
.p2align 2
label51:
	sh2add t1, a4, t1
	ld s2, 144(sp)
	mv a6, zero
	mv s5, zero
	mv t6, t1
	sext.w s0, s2
	subw a7, zero, s2
	addw t5, s2, t3
	subw t4, t3, s2
	sh2add s3, a7, t0
	ld s4, 136(sp)
	or s7, t4, a7
	mv s1, t4
	slt s6, t4, s4
	srliw s8, s7, 31
	mv s4, a7
	xori s2, s6, 1
	slt s7, a7, a4
	andi s9, s8, 1
	xori s8, s7, 1
	or s6, s2, s9
	or s9, s6, s8
	bne s9, zero, label98
	mulw s7, a4, t4
	sh2add s8, s7, s3
	lw s6, 0(s8)
	bne a5, zero, label37
	ld s8, 128(sp)
	bne s8, zero, label104
	ld s7, 112(sp)
	bne s7, zero, label22
	ld s8, 104(sp)
	bne s8, zero, label125
	ld s7, 96(sp)
	beq s7, t2, label129
	j label370
.p2align 2
label293:
	ld s8, 104(sp)
	beq s8, zero, label312
.p2align 2
label125:
	mv s7, a2
	mv s8, zero
	divw s10, s5, a2
	and s9, s10, a3
	beq s9, a2, label152
	divw s9, s6, a2
	and s10, s9, a3
	slliw s9, a2, 1
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
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
label152:
	mv s10, a2
	sh1add s8, s8, a2
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a0, label302
.p2align 2
label31:
	divw s10, s5, s7
	and s9, s10, a3
	beq s9, a2, label152
	divw s9, s6, s7
	and s10, s9, a3
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
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
label302:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
label312:
	ld s7, 96(sp)
	bne s7, t2, label329
.p2align 2
label129:
	mv s7, a2
	mv s8, zero
	j label25
.p2align 2
label134:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a0, label300
.p2align 2
label25:
	divw s11, s5, s7
	and s9, s11, a3
	bne s9, a2, label134
	divw s10, s6, s7
	and s9, s10, a3
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
	bgt a4, a6, label49
	j label337
.p2align 2
label300:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s8, 0(t6)
	bgt a4, a6, label49
label337:
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
label329:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label46
	addiw s1, s1, 1
	bgt t5, s1, label8
.p2align 2
label362:
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
label167:
	mv s5, s6
	blt s6, zero, label40
	addiw s4, s4, 1
	bgt s0, s4, label46
	j label304
label306:
	addiw s4, s4, 1
	bgt s0, s4, label46
label304:
	addiw s1, s1, 1
	bgt t5, s1, label8
	addiw a6, a6, 1
	sw s5, 0(t6)
	bgt a4, a6, label49
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
label52:
	ld s2, 0(sp)
	ld s4, 8(sp)
	ld s8, 16(sp)
	ld s7, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s3, 64(sp)
	ld s9, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 152
	ret
.p2align 2
label330:
	addiw t3, t3, 1
	ld t4, 120(sp)
	bgt t4, t3, label51
	j label52
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel556:
	auipc a5, %pcrel_hi(a)
pcrel557:
	auipc a0, %pcrel_hi(b)
	addi a2, a5, %pcrel_lo(pcrel556)
	addi a3, a0, %pcrel_lo(pcrel557)
	ble a1, a4, label408
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label460
	sh2add a0, t0, a2
.p2align 2
label426:
	sh2add t1, t0, a3
	addiw t0, t0, 16
	lw t2, 0(t1)
	sw t2, 0(a0)
	lw t3, 4(t1)
	sw t3, 4(a0)
	lw t2, 8(t1)
	sw t2, 8(a0)
	lw t3, 12(t1)
	sw t3, 12(a0)
	lw t4, 16(t1)
	sw t4, 16(a0)
	lw t2, 20(t1)
	sw t2, 20(a0)
	lw t3, 24(t1)
	sw t3, 24(a0)
	lw t2, 28(t1)
	sw t2, 28(a0)
	lw t3, 32(t1)
	sw t3, 32(a0)
	lw t2, 36(t1)
	sw t2, 36(a0)
	lw t3, 40(t1)
	sw t3, 40(a0)
	lw t2, 44(t1)
	sw t2, 44(a0)
	lw t3, 48(t1)
	sw t3, 48(a0)
	lw t2, 52(t1)
	sw t2, 52(a0)
	lw t3, 56(t1)
	sw t3, 56(a0)
	lw t2, 60(t1)
	sw t2, 60(a0)
	ble a5, t0, label539
	addi a0, a0, 64
	j label426
label539:
	mv a5, t0
label417:
	ble a4, a5, label408
	sh2add a0, a5, a3
	j label421
label424:
	addi a0, a0, 16
label421:
	sh2add t0, a5, a2
	lw t1, 0(a0)
	addiw a5, a5, 4
	sw t1, 0(t0)
	lw t2, 4(a0)
	sw t2, 4(t0)
	lw t1, 8(a0)
	sw t1, 8(t0)
	lw t2, 12(a0)
	sw t2, 12(t0)
	bgt a4, a5, label424
	mv t0, a5
label408:
	ble a1, t0, label415
	sh2add a0, t0, a3
	j label411
label414:
	addi a0, a0, 4
label411:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label414
label415:
	ret
label460:
	mv a5, t0
	mv t0, zero
	j label417
