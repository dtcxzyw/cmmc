.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
matrix:
	.zero	80000000
.p2align 3
a:
	.zero	400000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	8
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
pcrel546:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi s3, a1, %pcrel_lo(pcrel546)
	mv a0, s3
	jal getarray
	mv s1, a0
	li a0, 28
	jal _sysy_starttime
	li s0, 3
	ble s2, zero, label364
pcrel547:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel548:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	sw s2, %pcrel_lo(pcrel547)(a0)
	addi a2, a3, %pcrel_lo(pcrel548)
	mv a1, s2
	mv a0, zero
	jal cmmcParallelFor
	mv t0, zero
	mv a5, s3
pcrel549:
	auipc a0, %pcrel_hi(matrix)
	addi a4, a0, %pcrel_lo(pcrel549)
label365:
	lw a3, 0(a5)
	divw a2, s2, a3
	slliw a1, a2, 2
	bgt a2, zero, label368
	j label391
.p2align 2
label527:
	addiw t0, t0, 1
	ble s1, t0, label392
.p2align 2
label393:
	addi a5, a5, 4
	lw a3, 0(a5)
	divw a2, s2, a3
	slliw a1, a2, 2
	ble a2, zero, label391
.p2align 2
label368:
	mv a0, a4
	mv t2, zero
	li t1, 1
	min t3, a3, t1
	bgt t3, zero, label373
	sext.w t2, a3
	bgt a2, t1, label390
	addiw t0, t0, 1
	bgt s1, t0, label393
	j label392
.p2align 2
label382:
	addi t4, t4, 4
.p2align 2
label378:
	sh2add a6, t5, a0
	lw a7, 0(t4)
	addiw t6, t6, 1
	addw t5, a2, t5
	sw a7, 0(a6)
	bgt t3, t6, label382
	addw t2, a3, t2
	ble a2, t1, label527
.p2align 2
label390:
	addi a0, a0, 4
	addiw t1, t1, 1
	min t3, a3, t1
	ble t3, zero, label530
.p2align 2
label373:
	sh2add t4, t2, a4
	ble t3, s0, label421
	sh2add t6, a2, a0
	addiw s3, t3, -3
	mv t5, t4
	mv s5, zero
	mv s4, zero
	sh2add a6, a2, t6
	sh2add a7, a2, a6
	j label384
.p2align 2
label388:
	addi t5, t5, 16
.p2align 2
label384:
	sh2add s7, s4, a0
	lw s8, 0(t5)
	sh2add s9, s4, t6
	addiw s5, s5, 4
	sh2add s10, s4, a6
	sw s8, 0(s7)
	sh2add s8, s4, a7
	lw s6, 4(t5)
	addw s4, a1, s4
	sw s6, 0(s9)
	lw s7, 8(t5)
	sw s7, 0(s10)
	lw s6, 12(t5)
	sw s6, 0(s8)
	bgt s3, s5, label388
	ble t3, s5, label528
.p2align 2
label377:
	sh2add t4, s5, t4
	mv t5, s4
	mv t6, s5
	j label378
.p2align 2
label421:
	mv s5, zero
	mv s4, zero
	bgt t3, zero, label377
	addw t2, a3, t2
	bgt a2, t1, label390
	addiw t0, t0, 1
	bgt s1, t0, label393
	j label392
.p2align 2
label528:
	addw t2, a3, t2
	bgt a2, t1, label390
	addiw t0, t0, 1
	bgt s1, t0, label393
	j label392
.p2align 2
label530:
	addw t2, a3, t2
	bgt a2, t1, label390
	addiw t0, t0, 1
	bgt s1, t0, label393
	j label392
label391:
	addiw t0, t0, 1
	bgt s1, t0, label393
label392:
	auipc s2, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s1, 32
pcrel550:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(label392)(s2)
	addi a2, a3, %pcrel_lo(pcrel550)
	mv a1, s1
	mv a0, zero
	jal cmmcParallelFor
	li a0, 47
	lw a1, %pcrel_lo(label392)(s2)
	subw a2, zero, a1
	max s0, a2, a1
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label364:
	auipc a0, %pcrel_hi(matrix)
	mv a5, s3
	mv t0, zero
	addi a4, a0, %pcrel_lo(label364)
	j label365
.p2align 2
cmmc_parallel_body_0:
	mv a4, a0
	addiw a2, a0, 3
pcrel226:
	auipc a5, %pcrel_hi(matrix)
	addi a0, a5, %pcrel_lo(pcrel226)
	ble a1, a2, label41
	addiw a3, a4, 15
	addiw a2, a1, -3
	addiw a5, a1, -18
	bge a3, a2, label48
	sh2add a3, a4, a0
	mv t0, zero
	j label18
.p2align 2
label22:
	addi a3, a3, 64
.p2align 2
label18:
	ld t1, 0(a3)
	addiw t3, a4, 1
	mulw t6, a4, a4
	srai t2, t1, 32
	mulw a6, t3, t3
	mulw t5, t1, t6
	mulw t4, t2, a6
	addiw t1, a4, 2
	ld t2, 8(a3)
	addw t3, t4, t5
	mulw a6, t1, t1
	srai t5, t2, 32
	addiw t1, a4, 3
	mulw t6, t2, a6
	addw t4, t3, t6
	mulw t3, t1, t1
	ld t1, 16(a3)
	mulw t6, t5, t3
	srai t5, t1, 32
	addiw t3, a4, 4
	addw t2, t4, t6
	mulw t6, t3, t3
	mulw a6, t1, t6
	ld t1, 24(a3)
	addiw t6, a4, 5
	addw t4, t2, a6
	mulw t2, t6, t6
	mulw a6, t5, t2
	addiw t5, a4, 6
	addw t3, t4, a6
	srai t4, t1, 32
	mulw a6, t5, t5
	addiw t5, a4, 7
	mulw t6, t1, a6
	ld t1, 32(a3)
	addw t2, t3, t6
	mulw t6, t5, t5
	mulw a6, t4, t6
	addiw t4, a4, 8
	addw t3, t2, a6
	mulw t5, t4, t4
	srai t4, t1, 32
	mulw t6, t1, t5
	ld t1, 40(a3)
	addiw t5, a4, 9
	addw t2, t3, t6
	mulw t6, t5, t5
	mulw a6, t4, t6
	addiw t4, a4, 10
	addw t3, t2, a6
	mulw t5, t4, t4
	srai t4, t1, 32
	mulw t6, t1, t5
	ld t1, 48(a3)
	addiw t5, a4, 11
	addw t2, t3, t6
	mulw t6, t5, t5
	mulw a6, t4, t6
	addiw t4, a4, 12
	addw t3, t2, a6
	mulw t5, t4, t4
	srai t4, t1, 32
	mulw t6, t1, t5
	ld t1, 56(a3)
	addiw t5, a4, 13
	addw t2, t3, t6
	mulw t6, t5, t5
	mulw a6, t4, t6
	addiw t4, a4, 14
	addw t3, t2, a6
	mulw t5, t4, t4
	srai t4, t1, 32
	mulw t6, t1, t5
	addiw t5, a4, 15
	addw t2, t3, t6
	addiw a4, a4, 16
	mulw t3, t5, t5
	mulw t1, t4, t3
	addw t6, t2, t1
	addw t0, t0, t6
	bgt a5, a4, label22
	mv t1, a4
	mv a5, t0
label3:
	ble a2, t1, label52
	sh2add a3, t1, a0
	mv a4, t1
	j label12
label16:
	addi a3, a3, 16
label12:
	ld t0, 0(a3)
	addiw t2, a4, 1
	mulw t6, a4, a4
	srai t1, t0, 32
	mulw t4, t2, t2
	mulw t5, t0, t6
	mulw t3, t1, t4
	addiw t4, a4, 2
	addw t2, t3, t5
	ld t1, 8(a3)
	mulw t5, t4, t4
	srai t3, t1, 32
	addiw t4, a4, 3
	addiw a4, a4, 4
	mulw t6, t1, t5
	mulw t5, t4, t4
	addw t0, t2, t6
	mulw t1, t3, t5
	addw t2, t0, t1
	addw a5, a5, t2
	bgt a2, a4, label16
	mv a2, a5
	mv a3, a5
label23:
	ble a1, a4, label33
	sh2add a0, a4, a0
	mv a2, a3
	j label28
label32:
	addi a0, a0, 4
label28:
	lw a5, 0(a0)
	mulw a3, a4, a4
	addiw a4, a4, 1
	mulw t0, a5, a3
	addw a2, a2, t0
	bgt a1, a4, label32
label33:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi a0, a1, %pcrel_lo(label33)
	amoadd.w.aqrl a3, a2, (a0)
	ret
label52:
	mv a2, t0
	mv a3, t0
	j label23
label48:
	mv t1, a4
	mv a5, zero
	mv t0, zero
	mv a4, zero
	j label3
label41:
	mv a3, zero
	mv a2, zero
	j label23
.p2align 2
cmmc_parallel_body_1:
	mv a2, a0
	addiw a4, a0, 3
pcrel362:
	auipc a0, %pcrel_hi(matrix)
	addi a3, a0, %pcrel_lo(pcrel362)
	ble a1, a4, label242
	addiw a0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label263
	sh2add a0, a2, a3
	j label238
.p2align 2
label241:
	addi a0, a0, 64
.p2align 2
label238:
	addiw t0, a2, 1
	slli t2, t0, 32
	addiw t0, a2, 2
	add.uw t1, a2, t2
	addiw t2, a2, 3
	sd t1, 0(a0)
	slli t3, t2, 32
	addiw t1, a2, 4
	add.uw t4, t0, t3
	addiw t0, a2, 5
	sd t4, 8(a0)
	slli t3, t0, 32
	addiw t0, a2, 6
	add.uw t2, t1, t3
	addiw t1, a2, 7
	sd t2, 16(a0)
	slli t2, t1, 32
	addiw t1, a2, 8
	add.uw t3, t0, t2
	addiw t0, a2, 9
	sd t3, 24(a0)
	slli t2, t0, 32
	addiw t0, a2, 10
	add.uw t3, t1, t2
	addiw t1, a2, 11
	sd t3, 32(a0)
	slli t2, t1, 32
	addiw t1, a2, 12
	add.uw t3, t0, t2
	addiw t0, a2, 13
	sd t3, 40(a0)
	slli t2, t0, 32
	addiw t0, a2, 14
	add.uw t3, t1, t2
	addiw t2, a2, 15
	sd t3, 48(a0)
	addiw a2, a2, 16
	slli t1, t2, 32
	add.uw t3, t0, t1
	sd t3, 56(a0)
	bgt a5, a2, label241
	mv a5, a2
label229:
	ble a4, a5, label242
	sh2add a0, a5, a3
	j label233
label236:
	addi a0, a0, 16
label233:
	addiw a2, a5, 1
	slli t0, a2, 32
	addiw a2, a5, 2
	add.uw t1, a5, t0
	addiw t0, a5, 3
	sd t1, 0(a0)
	addiw a5, a5, 4
	slli t1, t0, 32
	add.uw t2, a2, t1
	sd t2, 8(a0)
	bgt a4, a5, label236
	mv a2, a5
label242:
	ble a1, a2, label249
	sh2add a0, a2, a3
	j label245
label248:
	addi a0, a0, 4
	mv a2, a3
label245:
	addiw a3, a2, 1
	sw a2, 0(a0)
	bgt a1, a3, label248
label249:
	ret
label263:
	mv a5, a2
	mv a2, zero
	j label229
