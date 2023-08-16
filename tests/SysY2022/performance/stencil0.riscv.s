.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
image_in:
	.zero	2097152
.align 8
image_out:
	.zero	2097152
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel433:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel433)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getarray
	mv s0, a0
	li a0, 23
	jal _sysy_starttime
	li a1, 1023
	li a0, 1
pcrel434:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel434)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel435:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel435)
	jal cmmcParallelFor
	li a1, 512
	mv a0, zero
pcrel436:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	addi a2, a3, %pcrel_lo(pcrel436)
	jal cmmcParallelFor
	li a0, 59
pcrel437:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel437)
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 128
	jal putarray
	mv a0, s0
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -88
	mv a4, a1
pcrel201:
	auipc a2, %pcrel_hi(image_in)
pcrel202:
	auipc t0, %pcrel_hi(image_out)
	sd s4, 0(sp)
	mv a1, a0
	addi a3, a2, %pcrel_lo(pcrel201)
	addi a5, t0, %pcrel_lo(pcrel202)
	sd s1, 8(sp)
	li a0, 255
	li a2, 509
	sd s6, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	j label2
.p2align 2
label8:
	slliw t2, s3, 3
	lw t0, 20(t4)
	subw t3, t2, a7
	subw t5, t3, s2
	lw t3, 20(a1)
	subw a7, t5, t0
	subw t2, a7, s5
	subw s4, t2, t3
	lw t2, 20(t6)
	subw a7, s4, s0
	subw t5, a7, s1
	subw a7, t5, t2
	min s0, a7, a0
	slli a7, t3, 3
	max t5, s0, zero
	subw s0, a7, s2
	sw t5, 16(a6)
	lw t3, 24(t4)
	subw t5, s0, t0
	lw t4, 24(a1)
	subw a7, t5, t3
	subw t0, a7, s3
	subw t3, t0, t4
	lw t4, 24(t6)
	subw t5, t3, s1
	subw a1, t5, t2
	subw t3, a1, t4
	min t2, t3, a0
	max t0, t2, zero
	sw t0, 20(a6)
	ble a4, t1, label9
	mv a1, t1
.p2align 2
label2:
	addiw t3, a1, -1
	addiw t1, a1, 1
	slliw t4, a1, 9
	slliw t2, t3, 9
	sh2add t5, t4, a3
	slliw t3, t1, 9
	sh2add t0, t2, a3
	addi a1, t5, 4
	sh2add t2, t3, a3
	li t5, 1
	sh2add t3, t4, a5
.p2align 2
label4:
	sh2add t4, t5, t0
	lw s4, 0(a1)
	slli a6, s4, 3
	lw a7, -4(t4)
	lw s1, 0(t4)
	subw t6, a6, a7
	lw a7, 4(t4)
	subw a6, t6, s1
	lw s3, -4(a1)
	subw t6, a6, a7
	lw s0, 4(a1)
	subw s2, t6, s3
	sh2add t6, t5, t2
	subw a6, s2, s0
	lw s6, -4(t6)
	lw s5, 0(t6)
	subw s3, a6, s6
	lw s2, 4(t6)
	subw a6, s3, s5
	subw s6, a6, s2
	sh2add a6, t5, t3
	min s7, s6, a0
	addiw t5, t5, 4
	max s3, s7, zero
	slli s7, s0, 3
	subw s9, s7, s1
	sw s3, 0(a6)
	subw s6, s9, a7
	lw s3, 8(t4)
	lw s1, 8(a1)
	subw s8, s6, s3
	subw s7, s8, s4
	lw s4, 8(t6)
	subw s9, s7, s1
	subw s8, s9, s5
	subw s6, s8, s2
	subw s7, s6, s4
	min s5, s7, a0
	slli s7, s1, 3
	max s8, s5, zero
	subw s5, s7, a7
	subw s6, s5, s3
	sw s8, 4(a6)
	lw a7, 12(t4)
	lw s5, 12(a1)
	subw s8, s6, a7
	subw s7, s8, s0
	lw s0, 12(t6)
	subw s9, s7, s5
	slli s7, s5, 3
	subw s8, s9, s2
	subw s10, s7, s3
	subw s6, s8, s4
	subw s2, s6, s0
	subw s6, s10, a7
	min s9, s2, a0
	max s8, s9, zero
	sw s8, 8(a6)
	lw s2, 16(t4)
	lw s3, 16(a1)
	subw s9, s6, s2
	subw s7, s9, s1
	lw s1, 16(t6)
	subw s8, s7, s3
	subw s9, s8, s4
	subw s6, s9, s0
	subw s7, s6, s1
	min s8, s7, a0
	max s4, s8, zero
	sw s4, 12(a6)
	bge t5, a2, label8
	addi a1, a1, 16
	j label4
label9:
	ld s4, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
cmmc_parallel_body_1:
	mv a4, a0
	addiw a5, a0, 3
	addiw a3, a1, -3
pcrel311:
	auipc t0, %pcrel_hi(image_out)
pcrel312:
	auipc t1, %pcrel_hi(image_in)
	addi a0, t0, %pcrel_lo(pcrel311)
	addi a2, t1, %pcrel_lo(pcrel312)
	ble a1, a5, label206
.p2align 2
label204:
	slliw a5, a4, 9
	addiw t3, a4, 1
	addiw t4, a4, 2
	sh2add t2, a5, a0
	sh2add t1, a5, a2
	lw t0, 0(t1)
	slliw t1, t3, 9
	sh2add a5, t1, a2
	sw t0, 0(t2)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	slliw t1, t4, 9
	addiw t4, a4, 3
	sw t2, -4(t0)
	addiw a4, a4, 4
	lw t3, 0(a5)
	sh2add a5, t1, a2
	sw t3, 0(t0)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	slliw t1, t4, 9
	sw t2, -4(t0)
	lw t3, 0(a5)
	sh2add a5, t1, a2
	sw t3, 0(t0)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	sw t2, -4(t0)
	slli t2, a4, 9
	lw t3, 0(a5)
	addiw a5, t2, -1
	sh2add t2, a5, a0
	sh2add t1, a5, a2
	sw t3, 0(t0)
	lw t0, 0(t1)
	sw t0, 0(t2)
	bgt a3, a4, label204
label206:
	ble a1, a4, label210
label208:
	slliw a3, a4, 9
	addiw a4, a4, 1
	sh2add t1, a3, a0
	sh2add t0, a3, a2
	lw a5, 0(t0)
	slli t0, a4, 9
	addiw a3, t0, -1
	sw a5, 0(t1)
	sh2add t0, a3, a0
	sh2add t1, a3, a2
	lw a5, 0(t1)
	sw a5, 0(t0)
	bgt a1, a4, label208
label210:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t3, a0
	addiw t4, a0, 3
	addiw a4, a1, -3
pcrel414:
	auipc a5, %pcrel_hi(image_in)
pcrel415:
	auipc a0, %pcrel_hi(image_out)
	addi t2, a5, %pcrel_lo(pcrel414)
	addi a3, a0, %pcrel_lo(pcrel415)
	li a0, 1023
	slli a2, a0, 11
	addi a5, a2, 4
	addi t0, a5, 4
	addi t1, t0, 4
	ble a1, t4, label319
	sh2add a0, t3, t2
.p2align 2
label315:
	sh2add t4, t3, a3
	lw t6, 0(a0)
	add a6, a0, a2
	add a7, a0, a5
	addiw t3, t3, 4
	add t5, t4, a2
	sw t6, 0(t4)
	lw t6, 0(a6)
	sw t6, 0(t5)
	add t5, t4, a5
	lw a6, 4(a0)
	sw a6, 4(t4)
	lw a6, 0(a7)
	sw a6, 0(t5)
	add a6, a0, t0
	add t5, t4, t0
	lw t6, 8(a0)
	sw t6, 8(t4)
	lw a7, 0(a6)
	add a6, a0, t1
	sw a7, 0(t5)
	add t5, t4, t1
	lw t6, 12(a0)
	sw t6, 12(t4)
	lw t6, 0(a6)
	sw t6, 0(t5)
	ble a4, t3, label319
	addi a0, a0, 16
	j label315
label319:
	ble a1, t3, label326
	sh2add a0, t3, t2
label322:
	sh2add a4, t3, a3
	lw t1, 0(a0)
	add t0, a0, a2
	addiw t3, t3, 1
	add a5, a4, a2
	sw t1, 0(a4)
	lw t1, 0(t0)
	sw t1, 0(a5)
	ble a1, t3, label326
	addi a0, a0, 4
	j label322
label326:
	ret
