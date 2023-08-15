.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
image_in:
	.zero	4194304
.align 8
image_out:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel431:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel431)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getarray
	mv s0, a0
	li a0, 23
	jal _sysy_starttime
	li a1, 1023
	li a0, 1
pcrel432:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel432)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel433:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel433)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel434:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	addi a2, a3, %pcrel_lo(pcrel434)
	jal cmmcParallelFor
	li a0, 59
pcrel435:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel435)
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 256
	jal putarray
	mv a0, s0
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -80
	mv t1, a1
pcrel199:
	auipc a2, %pcrel_hi(image_in)
pcrel200:
	auipc a3, %pcrel_hi(image_out)
	sd s3, 0(sp)
	mv a1, a0
	addi t0, a2, %pcrel_lo(pcrel199)
	addi t2, a3, %pcrel_lo(pcrel200)
	sd s2, 8(sp)
	li a0, 255
	li a2, 1021
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	j label2
.p2align 2
label8:
	slliw a5, s4, 3
	lw a3, 20(t4)
	subw a4, a5, s3
	lw a5, 20(a1)
	subw t5, a4, s1
	subw s5, t5, a3
	subw a4, s5, s0
	subw s3, a4, a5
	lw a4, 20(t6)
	subw s0, s3, a7
	subw t5, s0, s2
	subw a7, t5, a4
	min s0, a7, a0
	slli a7, a5, 3
	max t5, s0, zero
	subw s0, a7, s1
	sw t5, 16(a6)
	lw a5, 24(t4)
	subw t5, s0, a3
	subw a7, t5, a5
	lw a5, 24(a1)
	subw a3, a7, s4
	subw t5, a3, a5
	lw a5, 24(t6)
	subw t4, t5, s2
	subw a1, t4, a4
	subw a3, a1, a5
	min t4, a3, a0
	max a4, t4, zero
	sw a4, 20(a6)
	ble t1, t3, label9
	mv a1, t3
.p2align 2
label2:
	addiw a4, a1, -1
	addiw t3, a1, 1
	slliw t4, a4, 10
	slliw a5, t3, 10
	sh2add a3, t4, t0
	sh2add a4, a5, t0
	slliw t4, a1, 10
	sh2add a5, t4, t2
	sh2add t5, t4, t0
	addi a1, t5, 4
	li t5, 1
.p2align 2
label4:
	sh2add t4, t5, a3
	lw s3, 0(a1)
	slli a7, s3, 3
	lw a6, -4(t4)
	lw s2, 0(t4)
	subw t6, a7, a6
	lw s0, 4(t4)
	subw a7, t6, s2
	lw a6, -4(a1)
	subw t6, a7, s0
	lw a7, 4(a1)
	subw s1, t6, a6
	slli s8, a7, 3
	sh2add t6, t5, a4
	subw a6, s1, a7
	lw s5, -4(t6)
	lw s6, 0(t6)
	subw s4, a6, s5
	lw s1, 4(t6)
	subw a6, s4, s6
	subw s7, a6, s1
	sh2add a6, t5, a5
	min s5, s7, a0
	addiw t5, t5, 4
	subw s7, s8, s2
	max s4, s5, zero
	subw s5, s7, s0
	sw s4, 0(a6)
	lw s4, 8(t4)
	lw s2, 8(a1)
	subw s9, s5, s4
	lw s5, 8(t6)
	subw s7, s9, s3
	subw s8, s7, s2
	subw s9, s8, s6
	slli s8, s2, 3
	subw s3, s9, s1
	subw s7, s3, s5
	min s6, s7, a0
	max s9, s6, zero
	subw s6, s8, s0
	subw s7, s6, s4
	sw s9, 4(a6)
	lw s3, 12(t4)
	lw s0, 12(a1)
	subw s8, s7, s3
	subw s6, s8, a7
	subw a7, s6, s0
	subw s9, a7, s1
	lw a7, 12(t6)
	subw s7, s9, s5
	subw s8, s7, a7
	min s1, s8, a0
	slli s8, s0, 3
	max s6, s1, zero
	subw s7, s8, s4
	sw s6, 8(a6)
	lw s1, 16(t4)
	subw s6, s7, s3
	lw s4, 16(a1)
	subw s9, s6, s1
	subw s7, s9, s2
	lw s2, 16(t6)
	subw s8, s7, s4
	subw s9, s8, s5
	subw s6, s9, a7
	subw s8, s6, s2
	min s7, s8, a0
	max s5, s7, zero
	sw s5, 12(a6)
	bge t5, a2, label8
	addi a1, a1, 16
	j label4
label9:
	ld s3, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
cmmc_parallel_body_1:
	mv a4, a0
	addiw a5, a0, 3
	addiw a3, a1, -3
pcrel309:
	auipc t0, %pcrel_hi(image_out)
pcrel310:
	auipc t1, %pcrel_hi(image_in)
	addi a0, t0, %pcrel_lo(pcrel309)
	addi a2, t1, %pcrel_lo(pcrel310)
	ble a1, a5, label204
.p2align 2
label202:
	slliw a5, a4, 10
	addiw t3, a4, 1
	addiw t4, a4, 2
	sh2add t2, a5, a0
	sh2add t1, a5, a2
	lw t0, 0(t1)
	slliw t1, t3, 10
	sh2add a5, t1, a2
	sw t0, 0(t2)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	slliw t1, t4, 10
	addiw t4, a4, 3
	sw t2, -4(t0)
	addiw a4, a4, 4
	lw t3, 0(a5)
	sh2add a5, t1, a2
	sw t3, 0(t0)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	slliw t1, t4, 10
	sw t2, -4(t0)
	lw t3, 0(a5)
	sh2add a5, t1, a2
	sw t3, 0(t0)
	sh2add t0, t1, a0
	lw t2, -4(a5)
	sw t2, -4(t0)
	slli t2, a4, 10
	lw t3, 0(a5)
	addiw a5, t2, -1
	sh2add t2, a5, a0
	sh2add t1, a5, a2
	sw t3, 0(t0)
	lw t0, 0(t1)
	sw t0, 0(t2)
	bgt a3, a4, label202
label204:
	ble a1, a4, label208
label206:
	slliw a3, a4, 10
	addiw a4, a4, 1
	sh2add t1, a3, a0
	sh2add t0, a3, a2
	lw a5, 0(t0)
	slli t0, a4, 10
	addiw a3, t0, -1
	sw a5, 0(t1)
	sh2add t0, a3, a0
	sh2add t1, a3, a2
	lw a5, 0(t1)
	sw a5, 0(t0)
	bgt a1, a4, label206
label208:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t3, a0
	addiw t4, a0, 3
	addiw a4, a1, -3
pcrel412:
	auipc a5, %pcrel_hi(image_in)
	lui a2, 1023
pcrel413:
	auipc a0, %pcrel_hi(image_out)
	addi t2, a5, %pcrel_lo(pcrel412)
	addi a3, a0, %pcrel_lo(pcrel413)
	lui a0, 1023
	addiw a5, a0, 4
	addi t0, a5, 4
	addi t1, t0, 4
	ble a1, t4, label317
	sh2add a0, t3, t2
.p2align 2
label313:
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
	ble a4, t3, label317
	addi a0, a0, 16
	j label313
label317:
	ble a1, t3, label324
	sh2add a0, t3, t2
label320:
	sh2add a4, t3, a3
	lw t1, 0(a0)
	add t0, a0, a2
	addiw t3, t3, 1
	add a5, a4, a2
	sw t1, 0(a4)
	lw t1, 0(t0)
	sw t1, 0(a5)
	ble a1, t3, label324
	addi a0, a0, 4
	j label320
label324:
	ret
