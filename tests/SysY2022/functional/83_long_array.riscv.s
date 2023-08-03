.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a1:
	.zero	40000
.align 8
a2:
	.zero	40000
.align 8
a3:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel922:
	auipc a1, %pcrel_hi(a1)
pcrel923:
	auipc a2, %pcrel_hi(a2)
pcrel924:
	auipc a3, %pcrel_hi(a3)
	li a4, 14
	li a5, 13
	li t0, 12
	li t1, 11
	li t2, 10
	li t3, 9
	li t5, 8
	li t6, 7
	li a6, 6
	li a7, 5
	li t4, 1
	addi a0, a2, %pcrel_lo(pcrel923)
	sd ra, 0(sp)
	li a2, 16
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel922)
	sd s5, 16(sp)
	mv a1, s0
	li s5, 2
	sd s1, 24(sp)
	addi s1, a3, %pcrel_lo(pcrel924)
	sd s6, 32(sp)
	li a3, 15
	mv s6, zero
	sd s2, 40(sp)
	li s2, 4
	sd s3, 48(sp)
	li s3, 3
	sd s4, 56(sp)
	mv s4, zero
	sd s10, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	lui s10, 419430
	addiw s6, s6, 16
	addiw s7, s10, 1639
	mul s8, s4, s7
	srli s11, s8, 63
	srai s9, s8, 34
	add s10, s11, s9
	addw s9, s4, t4
	sh2add s8, s10, s10
	addiw t4, t4, 32
	mul s10, s9, s7
	slliw s11, s8, 1
	subw s8, s4, s11
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	sh2add s11, s10, s10
	slliw s10, s11, 1
	subw s11, s9, s10
	slli s10, s11, 32
	add.uw s11, s8, s10
	addiw s10, s5, 2
	sd s11, 0(a1)
	addiw s5, s5, 64
	addw s9, s4, s10
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, s3, 6
	slliw s10, s8, 1
	addiw s3, s3, 96
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s9, s10, s9
	slli s11, s9, 32
	add.uw s9, s8, s11
	addiw s11, s2, 12
	addiw s2, s2, 128
	addw s10, s4, s11
	sd s9, 8(a1)
	mul s8, s10, s7
	srai s9, s8, 34
	srli s8, s8, 63
	add s11, s8, s9
	sh2add s8, s11, s11
	addiw s11, a7, 20
	slliw s9, s8, 1
	addiw a7, a7, 160
	subw s8, s10, s9
	addw s9, s4, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	sh2add s10, s10, s10
	slliw s11, s10, 1
	subw s9, s9, s11
	slli s10, s9, 32
	add.uw s11, s8, s10
	addiw s10, a6, 30
	addiw a6, a6, 192
	addw s9, s4, s10
	sd s11, 16(a1)
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t6, 42
	slliw s10, s8, 1
	addiw t6, t6, 224
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s9, s10, s9
	slli s10, s9, 32
	add.uw s11, s8, s10
	addiw s10, t5, 56
	addiw t5, t5, 256
	addw s9, s4, s10
	sd s11, 24(a1)
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t3, 72
	slliw s10, s8, 1
	addiw t3, t3, 288
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s11, s10, s9
	addiw s10, t2, 90
	slli s9, s11, 32
	addiw t2, t2, 320
	add.uw s11, s8, s9
	addw s9, s4, s10
	mul s8, s9, s7
	sd s11, 32(a1)
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t1, 110
	slliw s10, s8, 1
	addiw t1, t1, 352
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s11, s10, s9
	slli s10, s11, 32
	addiw s11, t0, 132
	add.uw s9, s8, s10
	addiw t0, t0, 384
	sd s9, 40(a1)
	addw s9, s4, s11
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, a5, 156
	slliw s10, s8, 1
	addiw a5, a5, 416
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s9, s9, s9
	slliw s11, s9, 1
	subw s9, s10, s11
	addiw s11, a4, 182
	slli s10, s9, 32
	addiw a4, a4, 448
	add.uw s9, s8, s10
	sd s9, 48(a1)
	addw s9, s4, s11
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, a3, 210
	slliw s10, s8, 1
	addiw a3, a3, 480
	subw s8, s9, s10
	addw s10, s4, s11
	mul s9, s10, s7
	srli s7, s9, 63
	srai s11, s9, 34
	add s7, s7, s11
	sh2add s9, s7, s7
	slliw s11, s9, 1
	subw s7, s10, s11
	slli s11, s7, 32
	addiw s7, a2, 240
	add.uw s9, s8, s11
	addiw a2, a2, 512
	addw s4, s4, s7
	li s8, 625
	sd s9, 56(a1)
	slli s7, s8, 4
	bge s6, s7, label22
	addi a1, a1, 64
	j label2
label22:
	mv a1, s0
	mv a2, zero
.p2align 2
label23:
	lw a4, 0(a1)
	lui t1, 419430
	addiw a3, t1, 1639
	mulw a5, a4, a4
	mul a4, a5, a3
	srli t2, a4, 63
	srai t0, a4, 34
	sh2add a4, a2, a0
	add t1, t2, t0
	addiw a2, a2, 16
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw t0, a5, t3
	sw t0, 0(a4)
	lw t2, 4(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t5, t2, t2
	slliw t3, t5, 1
	subw t0, a5, t3
	sw t0, 4(a4)
	lw t2, 8(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t5, t2, t2
	slliw t4, t5, 1
	subw t0, a5, t4
	sw t0, 8(a4)
	lw t2, 12(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t0, t4, 1
	subw t1, a5, t0
	sw t1, 12(a4)
	lw t2, 16(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t3, t2, t2
	slliw t5, t3, 1
	subw t0, a5, t5
	sw t0, 16(a4)
	lw t2, 20(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t0, t4, 1
	subw t1, a5, t0
	sw t1, 20(a4)
	lw t2, 24(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t3, t2, t2
	slliw t0, t3, 1
	subw t1, a5, t0
	sw t1, 24(a4)
	lw t2, 28(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t3, t2, t2
	slliw t5, t3, 1
	subw t0, a5, t5
	sw t0, 28(a4)
	lw t2, 32(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t0, t4, 1
	subw t1, a5, t0
	sw t1, 32(a4)
	lw t2, 36(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t0, t4, 1
	subw t1, a5, t0
	sw t1, 36(a4)
	lw t2, 40(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t3, t2, t2
	slliw t0, t3, 1
	subw t1, a5, t0
	sw t1, 40(a4)
	lw t2, 44(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t5, t2, t2
	slliw t4, t5, 1
	subw t0, a5, t4
	sw t0, 44(a4)
	lw t2, 48(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 34
	add t2, t4, t1
	sh2add t3, t2, t2
	slliw t5, t3, 1
	subw t0, a5, t5
	sw t0, 48(a4)
	lw t2, 52(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t5, t4, 1
	subw t0, a5, t5
	sw t0, 52(a4)
	lw t2, 56(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	sh2add t4, t2, t2
	slliw t0, t4, 1
	subw t1, a5, t0
	sw t1, 56(a4)
	lw t2, 60(a1)
	mulw a5, t2, t2
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 34
	add a3, t2, t1
	sh2add t4, a3, a3
	slliw t3, t4, 1
	subw t0, a5, t3
	li a5, 625
	slli a3, a5, 4
	sw t0, 60(a4)
	bge a2, a3, label236
	addi a1, a1, 64
	j label23
label236:
	mv a1, a0
	mv a2, zero
.p2align 2
label28:
	lw a4, 0(a1)
	lui t2, 335544
	addiw a3, t2, 1311
	mulw t0, a4, a4
	li a4, 100
	mul a5, t0, a3
	srli t4, a5, 63
	srai t1, a5, 37
	sh2add a5, a2, s0
	add t2, t4, t1
	lw t4, 0(a5)
	mulw t3, t2, a4
	subw t1, t0, t3
	sh2add t0, a2, s1
	addw t2, t1, t4
	addiw a2, a2, 4
	sw t2, 0(t0)
	lw t4, 4(a1)
	mulw t1, t4, t4
	mul t2, t1, a3
	srli t5, t2, 63
	srai t3, t2, 37
	add t6, t5, t3
	lw t3, 4(a5)
	mulw t4, t6, a4
	subw t2, t1, t4
	addw t5, t2, t3
	sw t5, 4(t0)
	lw t4, 8(a1)
	mulw t1, t4, t4
	mul t2, t1, a3
	srli t5, t2, 63
	srai t3, t2, 37
	add t4, t5, t3
	lw t5, 8(a5)
	mulw t6, t4, a4
	subw t2, t1, t6
	addw t3, t2, t5
	sw t3, 8(t0)
	lw t4, 12(a1)
	mulw t1, t4, t4
	mul t2, t1, a3
	srli t4, t2, 63
	srai t3, t2, 37
	lw t2, 12(a5)
	add t5, t4, t3
	li a5, 625
	mulw t6, t5, a4
	subw a3, t1, t6
	addw a4, a3, t2
	slli a3, a5, 4
	sw a4, 12(t0)
	bge a2, a3, label275
	addi a1, a1, 16
	j label28
label275:
	mv s2, s1
	mv s3, s1
	mv s4, s1
	mv s5, a0
	mv s7, s0
	mv s8, zero
	mv a0, zero
	li a2, 625
	slli a1, a2, 4
	bge zero, a1, label63
.p2align 2
label41:
	addiw s6, a0, 1
	li a1, 10
	bge a0, a1, label285
	lw a0, 0(s4)
	lui a4, 201377
	li t0, 1333
	addw a1, s8, a0
	addiw a2, a4, -261
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 40
	add a2, a5, a3
	mulw a4, a2, t0
	subw s8, a1, a4
	mv a0, s8
	jal putint
	addi s2, s2, 4
	addi s3, s3, 4
	addi s4, s4, 4
	mv a0, s6
	addi s5, s5, 4
	li a2, 625
	addi s7, s7, 4
	slli a1, a2, 4
	blt s6, a1, label41
	j label63
.p2align 2
label49:
	sh2add a1, a2, s0
	addw t1, a0, a3
	lw a4, 0(a1)
	lw t0, 4(a1)
	subw a5, t1, a4
	addw a2, a0, a5
	lw a5, 8(a1)
	subw a4, a2, t0
	lw t1, 12(a1)
	addw a3, a0, a4
	subw t0, a3, a5
	addw a2, a0, t0
	lw t0, 16(a1)
	subw a4, a2, t1
	lw t1, 20(a1)
	addw a3, a0, a4
	lw a4, 24(a1)
	subw a5, a3, t0
	addw a2, a0, a5
	lw a5, 28(a1)
	subw t0, a2, t1
	addw a3, a0, t0
	subw t1, a3, a4
	addw a2, a0, t1
	subw s8, a2, a5
	mv a0, s8
	jal putint
	li a2, 625
	addi s2, s2, 4
	mv a0, s6
	addi s3, s3, 4
	addi s4, s4, 4
	addi s5, s5, 4
	addi s7, s7, 4
	slli a1, a2, 4
	blt s6, a1, label41
	j label63
.p2align 2
label285:
	li a1, 20
	bge a0, a1, label903
	lw a0, 0(s3)
	li a2, 625
	mv a3, s8
	slli a4, a2, 5
	srli a2, a4, 2
	add a1, s0, a4
.p2align 2
label45:
	lw a4, 0(a1)
	addw t2, a0, a3
	addiw a2, a2, 16
	subw t0, t2, a4
	lw t1, 4(a1)
	addw a5, a0, t0
	lw t0, 8(a1)
	subw a4, a5, t1
	lw t2, 12(a1)
	addw a3, a0, a4
	subw a5, a3, t0
	lw t0, 16(a1)
	addw a4, a0, a5
	lw t3, 20(a1)
	subw t1, a4, t2
	lw t2, 24(a1)
	addw a3, a0, t1
	subw a5, a3, t0
	addw a4, a0, a5
	lw a5, 28(a1)
	subw t1, a4, t3
	addw a3, a0, t1
	subw t0, a3, t2
	addw a4, a0, t0
	lw t0, 32(a1)
	subw t1, a4, a5
	addw a3, a0, t1
	lw t1, 36(a1)
	subw a5, a3, t0
	lw t2, 40(a1)
	addw a4, a0, a5
	subw t0, a4, t1
	addw a3, a0, t0
	lw t0, 44(a1)
	subw a5, a3, t2
	addw a4, a0, a5
	lw a5, 48(a1)
	subw t1, a4, t0
	lw t0, 52(a1)
	addw a3, a0, t1
	lw t1, 56(a1)
	subw t2, a3, a5
	addw a4, a0, t2
	subw a5, a4, t0
	addw a3, a0, a5
	lw a5, 60(a1)
	subw t0, a3, t1
	addw a4, a0, t0
	li t0, 1249
	subw a3, a4, a5
	slli a4, t0, 3
	bge a2, a4, label49
	addi a1, a1, 64
	j label45
.p2align 2
label903:
	li a1, 30
	bge a0, a1, label62
	li a2, 625
	slli a3, a2, 5
	srli a2, a3, 2
	add a0, s1, a3
	add a1, s0, a3
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label59
.p2align 2
label58:
	mv a0, s8
	jal putint
	mv a0, s6
	addi s2, s2, 4
	addi s3, s3, 4
	addi s4, s4, 4
	addi s5, s5, 4
	li a2, 625
	addi s7, s7, 4
	slli a1, a2, 4
	blt s6, a1, label41
	j label63
.p2align 2
label59:
	lui a4, 1
	addiw a3, a4, -1863
	bgt a2, a3, label61
	lw a5, 0(s7)
	lui t1, 80533
	addiw a2, a2, 2
	addi a1, a1, 8
	addw t0, s8, a5
	addiw t2, t1, -1433
	lw a4, 0(a0)
	addi a0, a0, 8
	addw a3, a4, t0
	mul a5, a3, t2
	lui t2, 3
	srli t1, a5, 63
	srai t0, a5, 42
	addiw a5, t2, 1045
	add a4, t1, t0
	mulw t0, a4, a5
	li a4, 625
	subw s8, a3, t0
	slli a3, a4, 4
	blt a2, a3, label59
	j label58
.p2align 2
label61:
	lw a5, 0(s5)
	addiw a2, a2, 1
	addi a0, a0, 4
	addw a3, s8, a5
	lw a4, 0(a1)
	addi a1, a1, 4
	subw s8, a3, a4
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label59
	j label58
.p2align 2
label62:
	lw a1, 0(s2)
	lui a4, 343639
	lui t0, 24
	addi s7, s7, 4
	addi s5, s5, 4
	addi s4, s4, 4
	addi s3, s3, 4
	addi s2, s2, 4
	sh3add a2, a1, a1
	addiw a1, a4, -1555
	addw a0, s8, a2
	addiw a4, t0, 1684
	mul a2, a0, a1
	srli a5, a2, 63
	srai a3, a2, 47
	add a1, a5, a3
	mulw a2, a1, a4
	subw s8, a0, a2
	li a2, 625
	mv a0, s6
	slli a1, a2, 4
	blt s6, a1, label41
label63:
	mv a0, s8
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s10, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
