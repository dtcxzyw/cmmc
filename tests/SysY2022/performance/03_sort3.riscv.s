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
	mv a5, a0
	mv t0, a3
	xori a4, a0, -1
	addi a0, sp, 64
	sltiu t1, a4, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	addiw a1, a2, 1
	sd s2, 24(sp)
	slt t2, a1, a3
	addi s2, sp, 192
	xori a3, t2, 1
	sd s1, 32(sp)
	or a1, a3, t1
	addi s1, sp, 128
	li a3, 64
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
	bne a1, zero, label2
	slliw a1, a5, 2
	addiw s3, a5, -1
	slti a4, a5, 8
	bge a2, t0, label12
	sh2add t1, a2, s0
	mv t2, a2
	lw t3, 0(t1)
	bgt a5, zero, label8
.p2align 2
label9:
	andi t5, t3, 15
	addiw t2, t2, 1
	sh2add t3, t5, s2
	lw t4, 0(t3)
	addi t6, t4, 1
	sw t6, 0(t3)
	ble t0, t2, label12
	addi t1, t1, 4
	lw t3, 0(t1)
	ble a5, zero, label9
.p2align 2
label8:
	slli t4, t3, 1
	subw a7, a3, a1
	srl t6, t4, a7
	add a6, t3, t6
	sraw t5, a6, a1
	mv t3, t5
	bne a4, zero, label9
	mv t3, zero
	j label9
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
label12:
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
	lw t2, 208(sp)
	addw t1, t0, t2
	sw t1, 144(sp)
	sw t1, 84(sp)
	lw t2, 212(sp)
	addw t0, t1, t2
	sw t0, 148(sp)
	sw t0, 88(sp)
	lw t2, 216(sp)
	addw t1, t0, t2
	sw t1, 152(sp)
	sw t1, 92(sp)
	lw t2, 220(sp)
	addw t0, t1, t2
	sw t0, 156(sp)
	sw t0, 96(sp)
	lw t2, 224(sp)
	addw t1, t0, t2
	sw t1, 160(sp)
	sw t1, 100(sp)
	lw t2, 228(sp)
	addw t0, t1, t2
	sw t0, 164(sp)
	sw t0, 104(sp)
	lw t2, 232(sp)
	addw t1, t0, t2
	sw t1, 168(sp)
	sw t1, 108(sp)
	lw t2, 236(sp)
	addw t0, t1, t2
	sw t0, 172(sp)
	sw t0, 112(sp)
	lw t2, 240(sp)
	addw t1, t0, t2
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
	lw t2, 252(sp)
	addw t0, t1, t2
	sw t0, 188(sp)
	ble a5, zero, label222
	mv t0, a0
	mv a5, zero
	mv t2, s1
	lw t1, 0(a0)
	lw t3, 0(s1)
	blt t1, t3, label29
	j label27
.p2align 2
label289:
	lw t4, 0(t0)
	addiw t1, t4, 1
	sh2add t3, t4, s0
	sw t2, 0(t3)
	sh2add t2, a5, s1
	sw t1, 0(t0)
	lw t3, 0(t2)
	bge t1, t3, label488
.p2align 2
label29:
	sh2add t2, t1, s0
	subw t6, a3, a1
	lw t3, 0(t2)
	slli t1, t3, 1
	srl t2, t1, t6
	add t4, t3, t2
	sraw t5, t4, a1
	mv t1, t5
	bne a4, zero, label473
	mv t1, zero
.p2align 2
label473:
	slli t2, t1, 1
	srli t5, t2, 60
	add t6, t1, t5
	andi t4, t6, -16
	subw a6, t1, t4
	bne a5, a6, label31
	mv t2, t3
	lw t4, 0(t0)
	addiw t1, t4, 1
	sh2add t3, t4, s0
	sw t2, 0(t3)
	sh2add t2, a5, s1
	sw t1, 0(t0)
	lw t3, 0(t2)
	blt t1, t3, label29
	addiw a5, a5, 1
	blt a5, s4, label28
	j label262
.p2align 2
label475:
	slli a6, t6, 1
	sw t3, 0(t5)
	srli s6, a6, 60
	add a7, t6, s6
	andi s5, a7, -16
	addi a7, t4, 1
	subw a6, t6, s5
	sw a7, 0(t1)
	beq a5, a6, label289
	mv t3, t2
.p2align 2
label31:
	sh2add t1, a6, a0
	subw s5, a3, a1
	lw t4, 0(t1)
	sh2add t5, t4, s0
	lw t2, 0(t5)
	slli t6, t2, 1
	srl a6, t6, s5
	add a7, t2, a6
	sraw s6, a7, a1
	mv t6, s6
	bne a4, zero, label475
	mv t6, zero
	j label475
label488:
	addiw a5, a5, 1
	bge a5, s4, label262
label28:
	addi t0, t0, 4
	sh2add t2, a5, s1
	lw t1, 0(t0)
	lw t3, 0(t2)
	blt t1, t3, label29
label27:
	addiw a5, a5, 1
	blt a5, s4, label28
label262:
	sw a2, 64(sp)
	mv s5, a0
	mv s6, zero
	lw a1, 192(sp)
	addw a3, a2, a1
	sw a3, 128(sp)
.p2align 2
label17:
	sh2add a0, s6, s1
	lw a2, 0(s5)
	lw a3, 0(a0)
.p2align 2
label19:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	ble s6, zero, label17
	sh2add a0, s6, s1
	sh2add a4, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a1, 0(a4)
	addw a3, a2, a1
	sw a3, 0(a0)
	j label19
label222:
	mv a3, a0
	mv a1, zero
	mv a5, s1
	lw a4, 0(a0)
	lw t0, 0(s1)
	blt a4, t0, label42
	j label40
.p2align 2
label335:
	mv t0, a5
.p2align 2
label44:
	sh2add a4, t3, a0
	lw t1, 0(a4)
	sh2add t2, t1, s0
	lw a5, 0(t2)
	sw t0, 0(t2)
	slli t3, a5, 1
	srli t4, t3, 60
	add t6, a5, t4
	addi t4, t1, 1
	andi t5, t6, -16
	sw t4, 0(a4)
	subw t3, a5, t5
	bne a1, t3, label335
	lw t1, 0(a3)
	addiw a4, t1, 1
	sh2add t0, t1, s0
	sw a5, 0(t0)
	sh2add t0, a1, s1
	sw a4, 0(a3)
	lw a5, 0(t0)
	bge a4, a5, label492
.p2align 2
label42:
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slli a5, t0, 1
	srli t2, a5, 60
	add a4, t0, t2
	andi t1, a4, -16
	subw t3, t0, t1
	bne a1, t3, label44
	mv a5, t0
	lw t1, 0(a3)
	addiw a4, t1, 1
	sh2add t0, t1, s0
	sw a5, 0(t0)
	sh2add t0, a1, s1
	sw a4, 0(a3)
	lw a5, 0(t0)
	blt a4, a5, label42
	addiw a1, a1, 1
	blt a1, s4, label41
	j label262
label492:
	addiw a1, a1, 1
	bge a1, s4, label262
label41:
	addi a3, a3, 4
	sh2add a5, a1, s1
	lw a4, 0(a3)
	lw t0, 0(a5)
	blt a4, t0, label42
label40:
	addiw a1, a1, 1
	blt a1, s4, label41
	j label262
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel622:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel622)
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
pcrel623:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel624:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a2, a3, %pcrel_lo(pcrel623)
	addi a0, s1, %pcrel_lo(pcrel624)
	sd zero, %pcrel_lo(pcrel624)(s1)
	sw s0, 8(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 102
	lw a1, %pcrel_lo(pcrel624)(s1)
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
pcrel598:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel598)
	ble a1, a4, label535
	sh2add a0, a5, a3
	mv a4, zero
.p2align 2
label511:
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
	ble a2, t0, label565
	addi a0, a0, 16
	mv a5, t0
	j label511
label565:
	mv a2, a4
label516:
	ble a1, t0, label570
	sh2add a0, t0, a3
label521:
	lw a3, 0(a0)
	addiw t1, t0, 2
	remw a4, a3, t1
	mulw a5, t0, a4
	addiw t0, t0, 1
	addw a2, a2, a5
	ble a1, t0, label526
	addi a0, a0, 4
	j label521
label526:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a0, a1, %pcrel_lo(label526)
	amoadd.w.aqrl a3, a2, (a0)
	ret
label570:
	mv a2, a4
	j label526
label535:
	mv a2, zero
	mv t0, a5
	mv a4, zero
	j label516
