.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	5
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
	mv s4, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
pcrel703:
	auipc a0, %pcrel_hi(x)
	addiw s1, s4, -2
	addiw s2, s4, -1
	addi s3, a0, %pcrel_lo(pcrel703)
	ble s4, zero, label485
pcrel704:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a3, 1
pcrel705:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	addi a0, a1, %pcrel_lo(pcrel704)
	sw s4, %pcrel_lo(pcrel704)(a1)
	addi a2, a4, %pcrel_lo(pcrel705)
	sb a3, 4(a0)
	mv a1, s4
	mv a0, zero
	jal cmmcParallelFor
label485:
	li a0, 1
	ble s2, a0, label529
	lui a1, 352
	li a4, 1
	addiw a0, a1, -1792
	mv a1, s3
	add a3, s3, a0
	lui a5, 352
	addiw a4, a4, 1
	li t0, 75
	li t2, 1
	addiw a0, a5, -1792
	slli a5, t0, 5
	add a2, a3, a0
	add a0, a3, a5
	j label491
.p2align 2
label504:
	addi t3, t3, 4
.p2align 2
label501:
	sh2add a6, t4, a5
	lw t6, 0(t3)
	sh2add a7, t4, t0
	lw s5, 0(a6)
	lw a6, 0(a7)
	addw t5, t6, s5
	sh2add s5, t4, t1
	addw t6, t5, a6
	lw a7, 0(s5)
	sh2add t5, t4, a0
	addw a6, t6, a7
	addiw t4, t4, 1
	lw s5, -4(t5)
	lw a7, 4(t5)
	addw t6, a6, s5
	addw s6, t6, a7
	divw a6, s6, s0
	sw a6, 0(t5)
	bgt s2, t4, label504
	ble s2, t2, label691
.p2align 2
label499:
	li t0, 75
	slli a5, t0, 5
	add a0, a0, a5
.p2align 2
label491:
	li a5, 75
	li t6, 2
	slli t4, a5, 5
	sub t5, zero, t4
	mul t1, t2, t4
	add t0, a0, t5
	addiw t2, t2, 1
	add a5, a2, t1
	add t3, a1, t1
	add t1, a0, t4
	ble s2, t6, label544
	addi t4, t3, 4
	li t5, 1
	j label506
.p2align 2
label509:
	addi t4, t4, 8
.p2align 2
label506:
	sh2add a6, t5, a5
	lw s5, 0(t4)
	sh2add a7, t5, t0
	lw s7, 0(a6)
	lw s6, 0(a7)
	addw t6, s5, s7
	sh2add s5, t5, t1
	addw s7, t6, s6
	lw s8, 0(s5)
	sh2add t6, t5, a0
	addw s6, s7, s8
	addiw t5, t5, 2
	lw s9, -4(t6)
	lw s8, 4(t6)
	addw s7, s6, s9
	addw s10, s7, s8
	divw s9, s10, s0
	sw s9, 0(t6)
	lw s6, 4(t4)
	lw s8, 4(a6)
	lw s9, 4(a7)
	addw s7, s6, s8
	lw a7, 4(s5)
	addw a6, s7, s9
	lw s8, 0(t6)
	addw s6, a6, a7
	lw s7, 8(t6)
	addw a7, s6, s8
	addw s5, a7, s7
	divw a6, s5, s0
	sw a6, 4(t6)
	bgt s1, t5, label509
	ble s2, t5, label692
.p2align 2
label500:
	sh2add t3, t5, t3
	mv t4, t5
	j label501
.p2align 2
label544:
	li t5, 1
	bgt s2, t5, label500
	bgt s2, t2, label499
	bgt s2, a4, label498
	j label556
.p2align 2
label691:
	ble s2, a4, label556
.p2align 2
label498:
	lui a5, 352
	mv a1, a3
	addiw a4, a4, 1
	li t0, 75
	li t2, 1
	addiw a2, a5, -1792
	add a0, a3, a2
	mv a3, a0
	addiw a0, a5, -1792
	slli a5, t0, 5
	add a2, a3, a0
	add a0, a3, a5
	j label491
.p2align 2
label692:
	bgt s2, t2, label499
	bgt s2, a4, label498
label556:
	mv s0, a3
	mv s1, t2
label510:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s3
	jal putarray
	srliw a3, s4, 31
	lui a4, 352
	li a5, 75
	add a0, s4, a3
	addiw a1, a4, -1792
	slli s2, a5, 5
	sraiw a2, a0, 1
	mul a4, a2, s2
	mul a0, a2, a1
	add a3, s3, a0
	mv a0, s4
	add a1, a3, a4
	jal putarray
	mv a0, s4
	addiw a3, s1, -1
	mul a2, a3, s2
	add a1, s0, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label529:
	mv s0, s3
	li s1, 1
	j label510
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t3, a1
pcrel481:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel482:
	auipc t2, %pcrel_hi(x)
	lui t6, 352
	addi t1, a5, %pcrel_lo(pcrel481)
	addi a6, t2, %pcrel_lo(pcrel482)
	addiw t5, t6, -1792
	sd s2, 0(sp)
	mv t6, a0
	sd s1, 8(sp)
	sd s0, 16(sp)
	lw a2, %pcrel_lo(pcrel481)(a5)
	lb t4, 4(t1)
	addi a1, a2, -57
	addi t0, a2, -26
	addi a5, a2, -11
	addi a4, a2, -4
	addi a3, a2, -1
	mul t1, a0, t5
	add t2, a6, t1
	bne t4, zero, label5
	j label65
.p2align 2
label417:
	addiw t6, t6, 1
	ble t3, t6, label67
.p2align 2
label66:
	add t2, t2, t5
	beq t4, zero, label65
.p2align 2
label5:
	mv t1, t2
	mv a6, zero
	li a0, 1
	bgt a2, a0, label9
	mv a7, zero
	bgt a2, zero, label58
	li a6, 1
	bgt a2, a6, label64
	j label416
.p2align 2
label227:
	addiw a6, a6, 1
	ble a2, a6, label417
.p2align 2
label64:
	li a7, 75
	slli a0, a7, 5
	add t1, t1, a0
	li a0, 1
	ble a2, a0, label419
.p2align 2
label9:
	li a0, 3
	ble a3, a0, label93
	li a0, 7
	ble a4, a0, label110
	li a0, 15
	ble a5, a0, label114
	li a0, 31
	ble t0, a0, label137
	mv a0, t1
	mv a7, zero
	j label32
.p2align 2
label35:
	addi a0, a0, 128
.p2align 2
label32:
	addiw a7, a7, 32
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(a0)
	sd s0, 8(a0)
	sd s0, 16(a0)
	sd s0, 24(a0)
	sd s0, 32(a0)
	sd s0, 40(a0)
	sd s0, 48(a0)
	sd s0, 56(a0)
	sd s0, 64(a0)
	sd s0, 72(a0)
	sd s0, 80(a0)
	sd s0, 88(a0)
	sd s0, 96(a0)
	sd s0, 104(a0)
	sd s0, 112(a0)
	sd s0, 120(a0)
	bgt a1, a7, label35
	mv s0, a7
	bgt t0, a7, label41
	mv a0, a7
	ble a5, a7, label440
.p2align 2
label25:
	sh2add a0, a7, t1
.p2align 2
label26:
	addiw a7, a7, 8
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(a0)
	sd s0, 8(a0)
	sd s0, 16(a0)
	sd s0, 24(a0)
	bgt a5, a7, label29
	mv a0, a7
	ble a4, a7, label409
.p2align 2
label51:
	sh2add a0, a7, t1
.p2align 2
label52:
	addiw a7, a7, 4
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(a0)
	sd s0, 8(a0)
	bgt a4, a7, label55
	mv a0, a7
	bgt a3, a7, label13
	bgt a2, a7, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label200:
	mv a0, a7
	bgt a5, a7, label25
	bgt a4, a7, label51
	ble a3, a7, label442
.p2align 2
label13:
	sh2add a0, a7, t1
.p2align 2
label14:
	addiw a7, a7, 2
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(a0)
	bgt a3, a7, label17
	ble a2, a7, label406
.p2align 2
label58:
	sh2add a0, a7, t1
.p2align 2
label59:
	addiw a7, a7, 1
	li s0, 1
	sw s0, 0(a0)
	ble a2, a7, label227
	addi a0, a0, 4
	j label59
.p2align 2
label137:
	mv s0, zero
	mv a7, zero
	ble t0, zero, label410
.p2align 2
label41:
	sh2add a0, s0, t1
.p2align 2
label42:
	addiw a7, s0, 16
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(a0)
	sd s0, 8(a0)
	sd s0, 16(a0)
	sd s0, 24(a0)
	sd s0, 32(a0)
	sd s0, 40(a0)
	sd s0, 48(a0)
	sd s0, 56(a0)
	ble t0, a7, label200
	addi a0, a0, 64
	mv s0, a7
	j label42
.p2align 2
label409:
	mv a7, a0
	bgt a3, a0, label13
	bgt a2, a0, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label440:
	mv a7, a0
	bgt a4, a0, label51
	bgt a3, a0, label13
	bgt a2, a0, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	j label447
.p2align 2
label93:
	mv a7, zero
	mv a0, zero
	bgt a3, zero, label13
	bgt a2, zero, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label442:
	mv a7, a0
	bgt a2, a0, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
label447:
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label114:
	mv a7, zero
	mv a0, zero
	bgt a5, zero, label25
	bgt a4, zero, label51
	bgt a3, zero, label13
	bgt a2, zero, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	j label447
.p2align 2
label419:
	mv a7, zero
	bgt a2, zero, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
label416:
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label110:
	mv a7, zero
	mv a0, zero
	bgt a4, zero, label51
	bgt a3, zero, label13
	bgt a2, zero, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
.p2align 2
label410:
	mv a0, a7
	bgt a5, a7, label25
	bgt a4, a7, label51
	bgt a3, a7, label13
	bgt a2, a7, label58
	addiw a6, a6, 1
	bgt a2, a6, label64
	j label447
.p2align 2
label406:
	addiw a6, a6, 1
	bgt a2, a6, label64
	addiw t6, t6, 1
	bgt t3, t6, label66
	j label67
label65:
	addiw t6, t6, 1
	bgt t3, t6, label66
label67:
	ld s2, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label29:
	addi a0, a0, 32
	j label26
.p2align 2
label17:
	addi a0, a0, 8
	j label14
.p2align 2
label55:
	addi a0, a0, 16
	j label52
