.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
image_in:
	.zero	4194304
.p2align 3
image_out:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel430:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel430)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getarray
	mv s0, a0
	li a0, 23
	jal _sysy_starttime
	li a1, 1023
	li a0, 1
pcrel431:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel431)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel432:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel432)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel433:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	addi a2, a3, %pcrel_lo(pcrel433)
	jal cmmcParallelFor
	li a0, 59
pcrel434:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel434)
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
	addi sp, sp, -96
	mv t0, a1
	mv t5, a0
pcrel198:
	auipc a2, %pcrel_hi(image_in)
	lui t3, 1048575
	lui t4, 1
	sd s4, 0(sp)
pcrel199:
	auipc a1, %pcrel_hi(image_out)
	li a0, 255
	addi t1, a2, %pcrel_lo(pcrel198)
	sd s0, 8(sp)
	addi t2, a1, %pcrel_lo(pcrel199)
	li a2, 1021
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	j label2
.p2align 2
label8:
	slli a4, s7, 3
	addiw t5, t5, 1
	lw a3, 20(a7)
	subw a5, a4, s4
	subw a6, a5, s5
	lw a5, 20(t6)
	subw s6, a6, a3
	subw a4, s6, s1
	subw s4, a4, a5
	lw a4, 20(s0)
	subw s1, s4, s2
	subw a6, s1, s3
	slli s1, a5, 3
	subw s2, a6, a4
	min s4, s2, a0
	max a6, s4, zero
	subw s4, s1, s5
	sw a6, 16(a1)
	lw s2, 24(a7)
	subw a6, s4, a3
	lw a7, 24(t6)
	subw a3, a6, s2
	subw a5, a3, s7
	subw s1, a5, a7
	lw a7, 24(s0)
	subw a6, s1, s3
	subw a3, a6, a4
	subw a5, a3, a7
	min a4, a5, a0
	max t6, a4, zero
	sw t6, 20(a1)
	ble t0, t5, label9
.p2align 2
label2:
	slliw t6, t5, 10
	li a6, 1
	sh2add a7, t6, t2
	sh2add a3, t6, t1
	addi a1, a7, 4
	add a5, a3, t4
	add a4, a3, t3
.p2align 2
label4:
	sh2add t6, a6, a3
	sh2add a7, a6, a4
	lw s4, 0(t6)
	slli s1, s4, 3
	lw s0, -4(a7)
	lw s3, 0(a7)
	subw s5, s1, s0
	lw s1, 4(a7)
	subw s2, s5, s3
	lw s7, -4(t6)
	subw s0, s2, s1
	lw s2, 4(t6)
	subw s6, s0, s7
	sh2add s0, a6, a5
	subw s5, s6, s2
	addiw a6, a6, 4
	lw s9, -4(s0)
	lw s8, 0(s0)
	subw s7, s5, s9
	lw s5, 4(s0)
	subw s6, s7, s8
	subw s9, s6, s5
	slli s6, s2, 3
	min s10, s9, a0
	subw s11, s6, s3
	max s7, s10, zero
	subw s9, s11, s1
	sw s7, 0(a1)
	lw s7, 8(a7)
	lw s3, 8(t6)
	subw s10, s9, s7
	subw s6, s10, s4
	subw s9, s6, s3
	lw s6, 8(s0)
	subw s10, s9, s8
	subw s4, s10, s5
	subw s9, s4, s6
	min s8, s9, a0
	slli s9, s3, 3
	max s10, s8, zero
	subw s11, s9, s1
	subw s8, s11, s7
	sw s10, 4(a1)
	lw s4, 12(a7)
	lw s1, 12(t6)
	subw s10, s8, s4
	subw s9, s10, s2
	lw s2, 12(s0)
	subw s11, s9, s1
	subw s10, s11, s5
	subw s8, s10, s6
	subw s11, s8, s2
	slli s8, s1, 3
	min s9, s11, a0
	subw s11, s8, s7
	max s5, s9, zero
	subw s9, s11, s4
	sw s5, 8(a1)
	lw s5, 16(a7)
	lw s7, 16(t6)
	subw s10, s9, s5
	subw s8, s10, s3
	lw s3, 16(s0)
	subw s11, s8, s7
	subw s10, s11, s6
	subw s9, s10, s2
	subw s8, s9, s3
	min s6, s8, a0
	max s10, s6, zero
	sw s10, 12(a1)
	bge a6, a2, label8
	addi a1, a1, 16
	j label4
label9:
	ld s4, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_1:
	mv a4, a0
	addiw a5, a0, 3
	addiw a3, a1, -3
pcrel308:
	auipc t0, %pcrel_hi(image_out)
pcrel309:
	auipc t1, %pcrel_hi(image_in)
	addi a0, t0, %pcrel_lo(pcrel308)
	addi a2, t1, %pcrel_lo(pcrel309)
	ble a1, a5, label203
.p2align 2
label201:
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
	bgt a3, a4, label201
label203:
	ble a1, a4, label207
label205:
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
	bgt a1, a4, label205
label207:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t3, a0
	addiw t4, a0, 3
	addiw a4, a1, -3
pcrel411:
	auipc a5, %pcrel_hi(image_in)
	lui a2, 1023
pcrel412:
	auipc a0, %pcrel_hi(image_out)
	addi t2, a5, %pcrel_lo(pcrel411)
	addi a3, a0, %pcrel_lo(pcrel412)
	lui a0, 1023
	addiw a5, a0, 4
	addi t0, a5, 4
	addi t1, t0, 4
	ble a1, t4, label311
	sh2add a0, t3, t2
.p2align 2
label320:
	sh2add t4, t3, a3
	lw t6, 0(a0)
	add a7, a0, a2
	addiw t3, t3, 4
	add t5, t4, a2
	sw t6, 0(t4)
	lw t6, 0(a7)
	add a7, a0, t0
	sw t6, 0(t5)
	add t6, a0, a5
	add t5, t4, a5
	lw a6, 4(a0)
	sw a6, 4(t4)
	lw a6, 0(t6)
	sw a6, 0(t5)
	add t5, t4, t0
	lw t6, 8(a0)
	sw t6, 8(t4)
	lw a6, 0(a7)
	sw a6, 0(t5)
	add a6, a0, t1
	add t5, t4, t1
	lw t6, 12(a0)
	sw t6, 12(t4)
	lw t6, 0(a6)
	sw t6, 0(t5)
	ble a4, t3, label311
	addi a0, a0, 16
	j label320
label311:
	ble a1, t3, label318
	sh2add a0, t3, t2
label314:
	sh2add a4, t3, a3
	lw t0, 0(a0)
	add t1, a0, a2
	addiw t3, t3, 1
	add a5, a4, a2
	sw t0, 0(a4)
	lw t0, 0(t1)
	sw t0, 0(a5)
	ble a1, t3, label318
	addi a0, a0, 4
	j label314
label318:
	ret
