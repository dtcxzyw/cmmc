.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
image_in:
	.zero	2097152
.p2align 3
image_out:
	.zero	2097152
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel427:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel427)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getarray
	mv s0, a0
	li a0, 23
	jal _sysy_starttime
	li a1, 1023
	li a0, 1
pcrel428:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel428)
	jal cmmcParallelFor
	li a1, 1024
	mv a0, zero
pcrel429:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel429)
	jal cmmcParallelFor
	li a1, 512
	mv a0, zero
pcrel430:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	addi a2, a3, %pcrel_lo(pcrel430)
	jal cmmcParallelFor
	li a0, 59
pcrel431:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel431)
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
	mv a3, a1
	mv t1, a0
pcrel195:
	auipc a2, %pcrel_hi(image_in)
	sd s3, 0(sp)
pcrel196:
	auipc a1, %pcrel_hi(image_out)
	li a0, 255
	addi a4, a2, %pcrel_lo(pcrel195)
	sd s1, 8(sp)
	addi a5, a1, %pcrel_lo(pcrel196)
	li a2, 509
	sd s6, 16(sp)
	addi t0, a2, 1539
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s7, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	j label2
.p2align 2
label7:
	slli t6, s6, 3
	addiw t1, t1, 1
	lw t2, 20(a6)
	subw t4, t6, s3
	subw t3, t4, s5
	lw t4, 20(t5)
	subw s3, t3, t2
	subw t6, s3, s1
	subw t3, t6, t4
	subw s1, t3, s0
	lw t3, 20(a7)
	subw t6, s1, s2
	subw s0, t6, t3
	min s1, s0, a0
	slli s0, t4, 3
	max t6, s1, zero
	subw s1, s0, s5
	sw t6, 16(a1)
	lw s3, 24(a6)
	subw t6, s1, t2
	lw s0, 24(t5)
	subw t2, t6, s3
	lw t5, 24(a7)
	subw t4, t2, s6
	subw t6, t4, s0
	subw a6, t6, s2
	subw t2, a6, t3
	subw t6, t2, t5
	min t3, t6, a0
	max t4, t3, zero
	sw t4, 20(a1)
	ble a3, t1, label8
.p2align 2
label2:
	slliw t5, t1, 9
	li t6, 1
	sh2add a6, t5, a5
	sh2add t2, t5, a4
	addi a1, a6, 4
	add t4, t2, t0
	addi t3, t2, -2048
.p2align 2
label4:
	sh2add t5, t6, t2
	sh2add a6, t6, t3
	lw s3, 0(t5)
	slli s1, s3, 3
	lw a7, -4(a6)
	lw s2, 0(a6)
	subw s0, s1, a7
	lw s1, 4(a6)
	subw a7, s0, s2
	lw s7, -4(t5)
	subw s6, a7, s1
	lw s0, 4(t5)
	sh2add a7, t6, t4
	subw s5, s6, s7
	addiw t6, t6, 4
	lw s9, -4(a7)
	subw s4, s5, s0
	lw s7, 0(a7)
	subw s6, s4, s9
	lw s5, 4(a7)
	subw s8, s6, s7
	subw s9, s8, s5
	slli s8, s0, 3
	min s4, s9, a0
	subw s10, s8, s2
	max s6, s4, zero
	subw s4, s10, s1
	sw s6, 0(a1)
	lw s6, 8(a6)
	lw s2, 8(t5)
	subw s9, s4, s6
	lw s4, 8(a7)
	subw s8, s9, s3
	subw s10, s8, s2
	subw s9, s10, s7
	subw s3, s9, s5
	subw s8, s3, s4
	min s9, s8, a0
	slli s8, s2, 3
	max s7, s9, zero
	subw s10, s8, s1
	sw s7, 4(a1)
	lw s3, 12(a6)
	subw s7, s10, s6
	lw s1, 12(t5)
	subw s9, s7, s3
	subw s8, s9, s0
	lw s0, 12(a7)
	subw s10, s8, s1
	subw s9, s10, s5
	subw s7, s9, s4
	slli s9, s1, 3
	subw s5, s7, s0
	min s8, s5, a0
	max s10, s8, zero
	subw s8, s9, s6
	subw s7, s8, s3
	sw s10, 8(a1)
	lw s5, 16(a6)
	lw s6, 16(t5)
	subw s10, s7, s5
	subw s8, s10, s2
	lw s2, 16(a7)
	subw s9, s8, s6
	subw s10, s9, s4
	subw s7, s10, s0
	subw s9, s7, s2
	min s8, s9, a0
	max s4, s8, zero
	sw s4, 12(a1)
	bge t6, a2, label7
	addi a1, a1, 16
	j label4
label8:
	ld s3, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
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
pcrel305:
	auipc t0, %pcrel_hi(image_out)
pcrel306:
	auipc t1, %pcrel_hi(image_in)
	addi a0, t0, %pcrel_lo(pcrel305)
	addi a2, t1, %pcrel_lo(pcrel306)
	ble a1, a5, label200
.p2align 2
label198:
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
	bgt a3, a4, label198
label200:
	ble a1, a4, label204
label202:
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
	bgt a1, a4, label202
label204:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t3, a0
	addiw t4, a0, 3
	addiw a4, a1, -3
pcrel408:
	auipc a5, %pcrel_hi(image_in)
pcrel409:
	auipc a0, %pcrel_hi(image_out)
	addi t2, a5, %pcrel_lo(pcrel408)
	addi a3, a0, %pcrel_lo(pcrel409)
	li a0, 1023
	slli a2, a0, 11
	addi a5, a2, 4
	addi t0, a5, 4
	addi t1, t0, 4
	ble a1, t4, label313
	sh2add a0, t3, t2
.p2align 2
label309:
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
	ble a4, t3, label313
	addi a0, a0, 16
	j label309
label313:
	ble a1, t3, label320
	sh2add a0, t3, t2
label316:
	sh2add a4, t3, a3
	lw t1, 0(a0)
	add t0, a0, a2
	addiw t3, t3, 1
	add a5, a4, a2
	sw t1, 0(a4)
	lw t1, 0(t0)
	sw t1, 0(a5)
	ble a1, t3, label320
	addi a0, a0, 4
	j label316
label320:
	ret
