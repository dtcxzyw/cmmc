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
	sd ra, 0(sp)
	xori t1, a0, -1
	addiw a3, a2, 1
	sd s0, 8(sp)
	slt a0, a3, a5
	mv s0, a1
	sltiu a3, t1, 1
	xori a2, a0, 1
	addi a1, sp, 64
	sd s5, 16(sp)
	or a0, a2, a3
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
	bne a0, zero, label41
	slliw a0, a4, 2
	addiw s3, a4, -1
	slti a3, a4, 8
	bge t0, a5, label112
	sh2add t1, t0, s0
	mv t2, t0
	lw t3, 0(t1)
	bgt a4, zero, label7
.p2align 2
label8:
	andi t5, t3, 15
	addiw t2, t2, 1
	sh2add t3, t5, s2
	lw t6, 0(t3)
	addi t4, t6, 1
	sw t4, 0(t3)
	ble a5, t2, label112
	addi t1, t1, 4
	lw t3, 0(t1)
	ble a4, zero, label8
.p2align 2
label7:
	slli t4, t3, 1
	subw t6, a2, a0
	srl a6, t4, t6
	add t5, t3, a6
	sraw a7, t5, a0
	mv t3, a7
	bne a3, zero, label8
	mv t3, zero
	j label8
label41:
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
label112:
	sw t0, 64(sp)
	addi a5, s2, 4
	lw t2, 192(sp)
	addw t1, t0, t2
	sw t1, 128(sp)
	li t1, 1
	j label12
label15:
	addi a5, a5, 16
label12:
	sh2add t2, t1, s1
	sh2add t3, t1, a1
	lw t5, -4(t2)
	addiw t1, t1, 4
	sw t5, 0(t3)
	lw t6, 0(a5)
	addw t4, t5, t6
	sw t4, 0(t2)
	sw t4, 4(t3)
	lw t5, 4(a5)
	addw t6, t4, t5
	sw t6, 4(t2)
	sw t6, 8(t3)
	lw t4, 8(a5)
	addw t5, t6, t4
	sw t5, 8(t2)
	sw t5, 12(t3)
	lw t6, 12(a5)
	addw t4, t5, t6
	li t5, 13
	sw t4, 12(t2)
	blt t1, t5, label15
	sw t4, 16(t3)
	lw t5, 16(a5)
	addw t1, t4, t5
	sw t1, 16(t2)
	sw t1, 20(t3)
	lw t5, 20(a5)
	addw t4, t1, t5
	mv t1, a1
	sw t4, 20(t2)
	sw t4, 24(t3)
	lw t5, 24(a5)
	mv a5, zero
	addw t6, t4, t5
	sw t6, 24(t2)
	mv t2, s1
	lw t3, 0(a1)
	lw t4, 0(s1)
	blt t3, t4, label20
	j label29
.p2align 2
label347:
	mv t3, zero
	mv t5, zero
	mv a6, zero
	mv t6, zero
	mv t4, zero
	beq a5, zero, label360
.p2align 2
label27:
	sh2add t3, t4, a1
	lw t4, 0(t3)
	addi a6, t4, 1
	sh2add t6, t4, s0
	lw t5, 0(t6)
	sw t2, 0(t6)
	mv t2, t5
	sw a6, 0(t3)
	ble a4, zero, label359
.p2align 2
label28:
	slli t3, t2, 1
	subw t4, a2, a0
	srl a6, t3, t4
	add t6, t2, a6
	sraw t5, t6, a0
	mv t3, t5
	beq a3, zero, label347
.p2align 2
label24:
	slli t4, t3, 1
	srli t5, t4, 60
	add a6, t3, t5
	andi t6, a6, -16
	subw t4, t3, t6
	bne a5, t4, label27
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	bge t3, t2, label212
.p2align 2
label20:
	sh2add t4, t3, s0
	lw t2, 0(t4)
	bgt a4, zero, label28
	mv t3, t2
	j label24
.p2align 2
label359:
	mv t3, t2
	slli t4, t2, 1
	srli t5, t4, 60
	add a6, t2, t5
	andi t6, a6, -16
	subw t4, t2, t6
	bne a5, t4, label27
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	blt t3, t2, label20
label212:
	addiw a5, a5, 1
	bge a5, s4, label358
.p2align 2
label40:
	addi t1, t1, 4
	sh2add t2, a5, s1
	lw t3, 0(t1)
	lw t4, 0(t2)
	blt t3, t4, label20
label29:
	addiw a5, a5, 1
	blt a5, s4, label40
	j label358
.p2align 2
label360:
	lw t4, 0(t1)
	addiw t3, t4, 1
	sh2add t5, t4, s0
	sw t2, 0(t5)
	sh2add t5, a5, s1
	sw t3, 0(t1)
	lw t2, 0(t5)
	blt t3, t2, label20
	addiw a5, a5, 1
	blt a5, s4, label40
label358:
	sw t0, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a0, 192(sp)
	addw a2, t0, a0
	sw a2, 128(sp)
.p2align 2
label34:
	sh2add a0, s6, s1
	lw a2, 0(s5)
	lw a3, 0(a0)
.p2align 2
label36:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label41
	addi s5, s5, 4
	ble s6, zero, label34
	sh2add a0, s6, s1
	sh2add a1, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a4, 0(a1)
	addw a3, a2, a4
	sw a3, 0(a0)
	j label36
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel432:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel432)
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
pcrel433:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel434:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a2, a3, %pcrel_lo(pcrel433)
	addi a0, s1, %pcrel_lo(pcrel434)
	sd zero, %pcrel_lo(pcrel434)(s1)
	sw s0, 8(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 102
	lw a1, %pcrel_lo(pcrel434)(s1)
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
	mv a2, a0
pcrel408:
	auipc a4, %pcrel_hi(a)
	addi a3, a4, %pcrel_lo(pcrel408)
	sh2add a0, a0, a3
	mv a3, zero
.p2align 2
label377:
	lw a4, 0(a0)
	addiw a5, a2, 2
	remw t1, a4, a5
	mulw t0, a2, t1
	addiw a2, a2, 1
	addw a3, a3, t0
	ble a1, a2, label382
	addi a0, a0, 4
	j label377
label382:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a0, a1, %pcrel_lo(label382)
	amoadd.w.aqrl a2, a3, (a0)
	ret
