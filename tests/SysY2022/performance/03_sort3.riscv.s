.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.align 8
cmmc_parallel_body_payload_0:
	.zero	12
.text
.p2align 2
radixSort:
	# stack usage: CalleeArg[0] Local[192] RegSpill[0] CalleeSaved[64]
	addi sp, sp, -256
	mv a4, a0
	mv t0, a2
	mv a5, a3
	addiw t1, a2, 1
	sd ra, 0(sp)
	slt a0, t1, a3
	sd s0, 8(sp)
	xori a3, a4, -1
	xori a2, a0, 1
	mv s0, a1
	sd s5, 16(sp)
	sltiu t1, a3, 1
	addi a1, sp, 64
	or a0, a2, t1
	sd s2, 24(sp)
	li a2, 64
	addi s2, sp, 192
	sd s1, 32(sp)
	addi s1, sp, 128
	sd s6, 40(sp)
	sd s4, 48(sp)
	li s4, 16
	sd s3, 56(sp)
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
	bne a0, zero, label2
	slliw a0, a4, 2
	addiw s3, a4, -1
	slti a3, a4, 8
	bge t0, a5, label12
	sh2add t1, t0, s0
	mv t2, t0
	lw t3, 0(t1)
	bgt a4, zero, label8
.p2align 2
label9:
	andi t4, t3, 15
	addiw t2, t2, 1
	sh2add t3, t4, s2
	lw t6, 0(t3)
	addi t5, t6, 1
	sw t5, 0(t3)
	ble a5, t2, label12
	addi t1, t1, 4
	lw t3, 0(t1)
	ble a4, zero, label9
.p2align 2
label8:
	slli t4, t3, 1
	subw t6, a2, a0
	srl a6, t4, t6
	add a7, t3, a6
	sraw t5, a7, a0
	mv t3, t5
	bne a3, zero, label9
	mv t3, zero
	j label9
label12:
	sw t0, 64(sp)
	lw t1, 192(sp)
	addw a5, t0, t1
	sw a5, 128(sp)
	sw a5, 68(sp)
	lw t2, 196(sp)
	addw t1, a5, t2
	sw t1, 132(sp)
	sw t1, 72(sp)
	lw t2, 200(sp)
	addw a5, t1, t2
	sw a5, 136(sp)
	sw a5, 76(sp)
	lw t2, 204(sp)
	addw t1, a5, t2
	sw t1, 140(sp)
	sw t1, 80(sp)
	lw t2, 208(sp)
	addw a5, t1, t2
	sw a5, 144(sp)
	sw a5, 84(sp)
	lw t1, 212(sp)
	addw t2, a5, t1
	sw t2, 148(sp)
	sw t2, 88(sp)
	lw a5, 216(sp)
	addw t1, t2, a5
	sw t1, 152(sp)
	sw t1, 92(sp)
	lw t2, 220(sp)
	addw a5, t1, t2
	sw a5, 156(sp)
	sw a5, 96(sp)
	lw t2, 224(sp)
	addw t1, a5, t2
	sw t1, 160(sp)
	sw t1, 100(sp)
	lw t2, 228(sp)
	addw a5, t1, t2
	sw a5, 164(sp)
	sw a5, 104(sp)
	lw t1, 232(sp)
	addw t2, a5, t1
	sw t2, 168(sp)
	sw t2, 108(sp)
	lw a5, 236(sp)
	addw t1, t2, a5
	sw t1, 172(sp)
	sw t1, 112(sp)
	lw t2, 240(sp)
	addw a5, t1, t2
	sw a5, 176(sp)
	sw a5, 116(sp)
	lw t2, 244(sp)
	addw t1, a5, t2
	sw t1, 180(sp)
	sw t1, 120(sp)
	lw t2, 248(sp)
	addw a5, t1, t2
	mv t1, a1
	sw a5, 184(sp)
	sw a5, 124(sp)
	lw t2, 252(sp)
	addw t3, a5, t2
	mv a5, zero
	sw t3, 188(sp)
	mv t2, s1
	lw t3, 0(a1)
	lw t4, 0(s1)
	blt t3, t4, label16
	j label25
.p2align 2
label23:
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	bge t3, t2, label240
.p2align 2
label16:
	sh2add t4, t3, s0
	lw t2, 0(t4)
	bgt a4, zero, label20
	mv t3, t2
	slli t4, t2, 1
	srli a6, t4, 60
	add t5, t2, a6
	andi t6, t5, -16
	subw t4, t2, t6
	bne a5, t4, label24
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	blt t3, t2, label16
	j label240
.p2align 2
label21:
	slli t4, t3, 1
	srli a6, t4, 60
	add t5, t3, a6
	andi t6, t5, -16
	subw t4, t3, t6
	beq a5, t4, label23
.p2align 2
label24:
	sh2add t3, t4, a1
	lw t4, 0(t3)
	addi a6, t4, 1
	sh2add t6, t4, s0
	lw t5, 0(t6)
	sw t2, 0(t6)
	mv t2, t5
	sw a6, 0(t3)
	ble a4, zero, label384
.p2align 2
label20:
	slli t3, t2, 1
	subw t5, a2, a0
	srl t6, t3, t5
	add a6, t2, t6
	sraw t4, a6, a0
	mv t3, t4
	bne a3, zero, label21
	mv t3, zero
	j label21
.p2align 2
label384:
	mv t3, t2
	slli t4, t2, 1
	srli a6, t4, 60
	add t5, t2, a6
	andi t6, t5, -16
	subw t4, t2, t6
	bne a5, t4, label24
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	blt t3, t2, label16
.p2align 2
label240:
	addiw a5, a5, 1
	bge a5, s4, label383
.p2align 2
label36:
	addi t1, t1, 4
	sh2add t2, a5, s1
	lw t3, 0(t1)
	lw t4, 0(t2)
	blt t3, t4, label16
label25:
	addiw a5, a5, 1
	blt a5, s4, label36
label383:
	sw t0, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a0, 192(sp)
	addw a2, t0, a0
	sw a2, 128(sp)
.p2align 2
label30:
	sh2add a0, s6, s1
	lw a2, 0(s5)
	lw a3, 0(a0)
.p2align 2
label32:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	ble s6, zero, label30
	sh2add a0, s6, s1
	sh2add a4, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a1, 0(a4)
	addw a3, a2, a1
	sw a3, 0(a0)
	j label32
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
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel512:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel512)
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
pcrel513:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel514:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a2, a3, %pcrel_lo(pcrel513)
	addi a0, s1, %pcrel_lo(pcrel514)
	sd zero, %pcrel_lo(pcrel514)(s1)
	sw s0, 8(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 102
	lw a1, %pcrel_lo(pcrel514)(s1)
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
pcrel488:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel488)
	ble a1, a4, label425
	sh2add a0, a5, a3
	mv a4, zero
.p2align 2
label401:
	lw t0, 0(a0)
	addiw t1, a5, 3
	addiw t5, a5, 1
	lw t2, 4(a0)
	remw t4, t2, t1
	addiw t2, a5, 2
	remw a6, t0, t2
	addiw t0, a5, 4
	mulw t3, t4, t5
	lw t5, 8(a0)
	mulw t6, a5, a6
	remw a6, t5, t0
	addw t4, t3, t6
	lw t5, 12(a0)
	mulw t6, t2, a6
	addiw a6, a5, 5
	addw t3, t4, t6
	remw t4, t5, a6
	mulw t2, t1, t4
	addw a5, t3, t2
	addw a4, a4, a5
	ble a2, t0, label455
	addi a0, a0, 16
	mv a5, t0
	j label401
label455:
	mv a2, a4
label406:
	ble a1, t0, label460
	sh2add a0, t0, a3
label411:
	lw a3, 0(a0)
	addiw t1, t0, 2
	remw a4, a3, t1
	mulw a5, t0, a4
	addiw t0, t0, 1
	addw a2, a2, a5
	ble a1, t0, label416
	addi a0, a0, 4
	j label411
label416:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a0, a1, %pcrel_lo(label416)
	amoadd.w.aqrl a3, a2, (a0)
	ret
label460:
	mv a2, a4
	j label416
label425:
	mv a2, zero
	mv t0, a5
	mv a4, zero
	j label406
