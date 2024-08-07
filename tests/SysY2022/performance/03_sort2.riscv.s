.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	120000040
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	12
.text
.p2align 2
radixSort:
	# stack usage: CalleeArg[0] Local[192] RegSpill[0] CalleeSaved[64]
	addi sp, sp, -256
	mv a5, a0
	mv t0, a3
	xori t1, a0, -1
	addi a0, sp, 64
	sltiu t2, t1, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	addiw a1, a2, 1
	sd s2, 24(sp)
	slt a3, a1, a3
	addi s2, sp, 192
	xori a4, a3, 1
	sd s1, 32(sp)
	li a3, 1
	or a1, a4, t2
	addi s1, sp, 128
	sd s6, 40(sp)
	sd s4, 48(sp)
	li s4, 16
	sd s3, 56(sp)
	bne a1, zero, label2
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	slliw a1, a5, 2
	addiw s3, a5, -1
	slti a4, a5, 8
	bge a2, t0, label5
	sh2add t1, a2, s0
	mv t2, a2
	lw t3, 0(t1)
	ble a5, zero, label47
.p2align 2
label46:
	sllw t6, a3, a1
	mv t4, t3
	addiw t5, t6, -1
	bge t3, zero, label469
	addw t4, t3, t5
label469:
	sraw t6, t4, a1
	mv t3, t6
	bne a4, zero, label47
	mv t3, zero
label47:
	andi t6, t3, 15
	addiw t2, t2, 1
	sh2add t3, t6, s2
	lw t4, 0(t3)
	addi t5, t4, 1
	sw t5, 0(t3)
	ble t0, t2, label5
	addi t1, t1, 4
	lw t3, 0(t1)
	bgt a5, zero, label46
	j label47
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 256
	ret
label5:
	sw a2, 64(sp)
	lw t0, 192(sp)
	addw t1, a2, t0
	sw t1, 128(sp)
	sw t1, 68(sp)
	lw t2, 196(sp)
	addw t0, t1, t2
	sw t0, 132(sp)
	sw t0, 72(sp)
	lw t2, 200(sp)
	addw t1, t0, t2
	sw t1, 136(sp)
	sw t1, 76(sp)
	lw t2, 204(sp)
	addw t0, t1, t2
	sw t0, 140(sp)
	sw t0, 80(sp)
	lw t1, 208(sp)
	addw t2, t0, t1
	sw t2, 144(sp)
	sw t2, 84(sp)
	lw t0, 212(sp)
	addw t1, t2, t0
	sw t1, 148(sp)
	sw t1, 88(sp)
	lw t2, 216(sp)
	addw t0, t1, t2
	sw t0, 152(sp)
	sw t0, 92(sp)
	lw t2, 220(sp)
	addw t1, t0, t2
	sw t1, 156(sp)
	sw t1, 96(sp)
	lw t2, 224(sp)
	addw t0, t1, t2
	sw t0, 160(sp)
	sw t0, 100(sp)
	lw t2, 228(sp)
	addw t1, t0, t2
	sw t1, 164(sp)
	sw t1, 104(sp)
	lw t2, 232(sp)
	addw t0, t1, t2
	sw t0, 168(sp)
	sw t0, 108(sp)
	lw t1, 236(sp)
	addw t2, t0, t1
	sw t2, 172(sp)
	sw t2, 112(sp)
	lw t0, 240(sp)
	addw t1, t2, t0
	sw t1, 176(sp)
	sw t1, 116(sp)
	lw t2, 244(sp)
	addw t0, t1, t2
	sw t0, 180(sp)
	sw t0, 120(sp)
	lw t2, 248(sp)
	addw t1, t0, t2
	sw t1, 184(sp)
	sw t1, 124(sp)
	lw t0, 252(sp)
	addw t2, t1, t0
	sw t2, 188(sp)
	ble a5, zero, label203
	mv t0, a0
	mv a5, zero
	mv t2, s1
	lw t1, 0(a0)
	lw t3, 0(s1)
	blt t1, t3, label12
	j label10
.p2align 2
label254:
	lw t4, 0(t0)
	addiw t1, t4, 1
	sh2add t3, t4, s0
	sw t2, 0(t3)
	sh2add t2, a5, s1
	sw t1, 0(t0)
	lw t3, 0(t2)
	bge t1, t3, label482
.p2align 2
label12:
	sh2add t2, t1, s0
	sllw t4, a3, a1
	lw t3, 0(t2)
	addiw t1, t4, -1
	mv t2, t3
	bge t3, zero, label453
	addw t2, t3, t1
label453:
	sraw t4, t2, a1
	mv t1, t4
	bne a4, zero, label455
	mv t1, zero
label455:
	mv t2, t1
	bge t1, zero, label457
	addiw t2, t1, 15
label457:
	andi t4, t2, -16
	subw a6, t1, t4
	beq a5, a6, label228
	sh2add t1, a6, a0
	sllw a7, a3, a1
	lw t4, 0(t1)
	addiw t6, a7, -1
	sh2add t5, t4, s0
	lw t2, 0(t5)
	mv a6, t2
	bge t2, zero, label459
	addw a6, t2, t6
label459:
	sraw a7, a6, a1
	mv t6, a7
	bne a4, zero, label461
	mv t6, zero
label461:
	mv a7, t6
	bge t6, zero, label463
	addiw a7, t6, 15
label463:
	andi s5, a7, -16
	sw t3, 0(t5)
	addi a7, t4, 1
	subw a6, t6, s5
	sw a7, 0(t1)
	beq a5, a6, label254
.p2align 2
label255:
	mv t3, t2
	sh2add t1, a6, a0
	sllw a7, a3, a1
	lw t4, 0(t1)
	addiw t6, a7, -1
	sh2add t5, t4, s0
	lw t2, 0(t5)
	mv a6, t2
	bge t2, zero, label459
	addw a6, t2, t6
	sraw a7, a6, a1
	mv t6, a7
	bne a4, zero, label461
	mv t6, zero
	mv s5, zero
	mv a6, zero
	addi a7, t4, 1
	sw t3, 0(t5)
	sw a7, 0(t1)
	bne a5, zero, label255
	lw t4, 0(t0)
	addiw t1, t4, 1
	sh2add t3, t4, s0
	sw t2, 0(t3)
	sh2add t2, a5, s1
	sw t1, 0(t0)
	lw t3, 0(t2)
	blt t1, t3, label12
	addiw a5, a5, 1
	bge a5, s4, label216
label11:
	addi t0, t0, 4
	sh2add t2, a5, s1
	lw t1, 0(t0)
	lw t3, 0(t2)
	blt t1, t3, label12
label10:
	addiw a5, a5, 1
	blt a5, s4, label11
label216:
	sw a2, 64(sp)
	mv s5, a0
	mv s6, zero
	lw a1, 192(sp)
	addw a3, a2, a1
	sw a3, 128(sp)
	j label308
.p2align 2
label36:
	sh2add a0, s6, s1
	sh2add a4, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a1, 0(a4)
	addw a3, a2, a1
	sw a3, 0(a0)
.p2align 2
label38:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	bgt s6, zero, label36
.p2align 2
label308:
	sh2add a0, s6, s1
	lw a2, 0(s5)
	lw a3, 0(a0)
	j label38
label228:
	mv t2, t3
	lw t4, 0(t0)
	addiw t1, t4, 1
	sh2add t3, t4, s0
	sw t2, 0(t3)
	sh2add t2, a5, s1
	sw t1, 0(t0)
	lw t3, 0(t2)
	blt t1, t3, label12
	addiw a5, a5, 1
	blt a5, s4, label11
	j label216
label203:
	mv a3, a0
	mv a1, zero
	mv a5, s1
	lw a4, 0(a0)
	lw t0, 0(s1)
	blt a4, t0, label25
	j label23
.p2align 2
label299:
	lw t1, 0(a3)
	addiw a4, t1, 1
	sh2add t0, t1, s0
	sw a5, 0(t0)
	sh2add a5, a1, s1
	sw a4, 0(a3)
	lw t0, 0(a5)
	bge a4, t0, label486
.p2align 2
label25:
	sh2add a5, a4, s0
	lw t0, 0(a5)
	mv a4, t0
	bge t0, zero, label465
	addiw a4, t0, 15
label465:
	andi t1, a4, -16
	subw t3, t0, t1
	beq a1, t3, label276
	sh2add a4, t3, a0
	lw t1, 0(a4)
	sh2add t2, t1, s0
	lw a5, 0(t2)
	mv t4, a5
	bge a5, zero, label467
	addiw t4, a5, 15
label467:
	andi t5, t4, -16
	sw t0, 0(t2)
	addi t4, t1, 1
	subw t3, a5, t5
	sw t4, 0(a4)
	beq a1, t3, label299
.p2align 2
label300:
	mv t0, a5
	sh2add a4, t3, a0
	lw t1, 0(a4)
	sh2add t2, t1, s0
	lw a5, 0(t2)
	mv t4, a5
	bge a5, zero, label467
	addiw t4, a5, 15
	sw t0, 0(t2)
	andi t5, t4, -16
	addi t4, t1, 1
	subw t3, a5, t5
	sw t4, 0(a4)
	bne a1, t3, label300
	lw t1, 0(a3)
	addiw a4, t1, 1
	sh2add t0, t1, s0
	sw a5, 0(t0)
	sh2add a5, a1, s1
	sw a4, 0(a3)
	lw t0, 0(a5)
	blt a4, t0, label25
	addiw a1, a1, 1
	bge a1, s4, label216
label24:
	addi a3, a3, 4
	sh2add a5, a1, s1
	lw a4, 0(a3)
	lw t0, 0(a5)
	blt a4, t0, label25
label23:
	addiw a1, a1, 1
	blt a1, s4, label24
	j label216
label276:
	mv a5, t0
	lw t1, 0(a3)
	addiw a4, t1, 1
	sh2add t0, t1, s0
	sw a5, 0(t0)
	sh2add a5, a1, s1
	sw a4, 0(a3)
	lw t0, 0(a5)
	blt a4, t0, label25
	addiw a1, a1, 1
	blt a1, s4, label24
	j label216
label482:
	addiw a5, a5, 1
	blt a5, s4, label11
	j label216
label486:
	addiw a1, a1, 1
	blt a1, s4, label24
	j label216
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel630:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel630)
	sd s0, 16(sp)
	mv a0, s1
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s1
	li a0, 8
	mv a3, s0
	jal radixSort
pcrel631:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel632:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a2, a3, %pcrel_lo(pcrel631)
	addi a0, s1, %pcrel_lo(pcrel632)
	sd zero, %pcrel_lo(pcrel632)(s1)
	sw s0, 8(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 102
	lw a1, %pcrel_lo(pcrel632)(s1)
	subw a2, zero, a1
	max s0, a2, a1
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a5, a0
	addiw a4, a0, 3
	addiw a2, a1, -3
pcrel606:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel606)
	ble a1, a4, label541
	sh2add a0, a5, a3
	mv a4, zero
.p2align 2
label517:
	ld t0, 0(a0)
	addiw t1, a5, 3
	addiw t4, a5, 1
	srai t2, t0, 32
	remw t3, t2, t1
	addiw t2, a5, 2
	remw a6, t0, t2
	addiw t0, a5, 4
	mulw t5, t3, t4
	ld t3, 8(a0)
	remw a7, t3, t0
	mulw t6, a5, a6
	addw t4, t5, t6
	srai t6, t3, 32
	mulw a6, t2, a7
	addiw a7, a5, 5
	addw t5, t4, a6
	remw t4, t6, a7
	mulw t2, t1, t4
	addw a5, t5, t2
	addw a4, a4, a5
	ble a2, t0, label571
	addi a0, a0, 16
	mv a5, t0
	j label517
label571:
	mv a2, a4
label522:
	ble a1, t0, label576
	sh2add a0, t0, a3
label527:
	lw a3, 0(a0)
	addiw a5, t0, 2
	remw a4, a3, a5
	mulw t1, t0, a4
	addiw t0, t0, 1
	addw a2, a2, t1
	ble a1, t0, label532
	addi a0, a0, 4
	j label527
label532:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a0, a1, %pcrel_lo(label532)
	amoadd.w.aqrl a3, a2, (a0)
	ret
label576:
	mv a2, a4
	j label532
label541:
	mv a2, zero
	mv t0, a5
	mv a4, zero
	j label522
