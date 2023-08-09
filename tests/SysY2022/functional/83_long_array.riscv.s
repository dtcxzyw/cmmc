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
pcrel906:
	auipc a2, %pcrel_hi(a1)
	li a1, 16
	li a3, 14
	li a4, 13
	li a5, 12
	li t0, 11
	li t1, 10
	li t2, 9
	li t4, 8
	li t5, 7
	li t6, 6
	li a6, 5
	li a7, 4
	li t3, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a2, %pcrel_lo(pcrel906)
	sd s5, 16(sp)
	li a2, 15
	mv a0, s0
	sd s1, 24(sp)
	li s1, 3
	sd s6, 32(sp)
	sd s3, 40(sp)
	li s3, 2
	sd s2, 48(sp)
	mv s2, zero
	sd s4, 56(sp)
	mv s4, zero
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s11, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
.p2align 2
label2:
	lui s8, 419430
	addiw s4, s4, 16
	addiw s5, s8, 1639
	mul s6, s2, s5
	srli s11, s6, 63
	srai s7, s6, 34
	add s8, s11, s7
	addw s7, s2, t3
	sh2add s9, s8, s8
	addiw t3, t3, 32
	mul s8, s7, s5
	slliw s10, s9, 1
	srli s11, s8, 63
	srai s9, s8, 34
	subw s6, s2, s10
	add s10, s11, s9
	sh2add s9, s10, s10
	slliw s8, s9, 1
	subw s10, s7, s8
	slli s11, s10, 32
	addiw s10, s3, 2
	add.uw s9, s6, s11
	addiw s3, s3, 64
	addw s7, s2, s10
	mul s6, s7, s5
	sd s9, 0(a0)
	srli s11, s6, 63
	srai s8, s6, 34
	add s9, s11, s8
	sh2add s10, s9, s9
	addiw s9, s1, 6
	slliw s11, s10, 1
	addiw s1, s1, 96
	addw s8, s2, s9
	subw s6, s7, s11
	mul s7, s8, s5
	srli s11, s7, 63
	srai s9, s7, 34
	add s10, s11, s9
	sh2add s11, s10, s10
	slliw s7, s11, 1
	subw s10, s8, s7
	slli s11, s10, 32
	addiw s10, a7, 12
	add.uw s9, s6, s11
	addiw a7, a7, 128
	addw s7, s2, s10
	mul s6, s7, s5
	sd s9, 8(a0)
	srli s11, s6, 63
	srai s8, s6, 34
	add s9, s11, s8
	addiw s11, a6, 20
	sh2add s6, s9, s9
	addiw a6, a6, 160
	addw s8, s2, s11
	slliw s10, s6, 1
	subw s6, s7, s10
	mul s7, s8, s5
	srli s11, s7, 63
	srai s9, s7, 34
	add s10, s11, s9
	sh2add s11, s10, s10
	slliw s7, s11, 1
	addiw s11, t6, 30
	subw s10, s8, s7
	addiw t6, t6, 192
	addw s8, s2, s11
	slli s9, s10, 32
	add.uw s10, s6, s9
	mul s6, s8, s5
	srli s11, s6, 63
	srai s7, s6, 34
	sd s10, 16(a0)
	add s9, s11, s7
	sh2add s10, s9, s9
	addiw s9, t5, 42
	slliw s11, s10, 1
	addiw t5, t5, 224
	addw s7, s2, s9
	subw s6, s8, s11
	mul s8, s7, s5
	srli s11, s8, 63
	srai s9, s8, 34
	add s10, s11, s9
	sh2add s11, s10, s10
	slliw s8, s11, 1
	subw s9, s7, s8
	slli s10, s9, 32
	addiw s9, t4, 56
	add.uw s11, s6, s10
	addiw t4, t4, 256
	addw s7, s2, s9
	mul s6, s7, s5
	sd s11, 24(a0)
	srli s10, s6, 63
	srai s8, s6, 34
	add s9, s10, s8
	addiw s10, t2, 72
	sh2add s11, s9, s9
	addiw t2, t2, 288
	slliw s8, s11, 1
	subw s6, s7, s8
	addw s8, s2, s10
	mul s7, s8, s5
	srli s11, s7, 63
	srai s9, s7, 34
	add s10, s11, s9
	sh2add s7, s10, s10
	slliw s11, s7, 1
	subw s9, s8, s11
	slli s10, s9, 32
	addiw s9, t1, 90
	add.uw s7, s6, s10
	addiw t1, t1, 320
	addw s8, s2, s9
	mul s6, s8, s5
	sd s7, 32(a0)
	srli s10, s6, 63
	srai s7, s6, 34
	add s9, s10, s7
	addiw s10, t0, 110
	sh2add s11, s9, s9
	addiw t0, t0, 352
	slliw s7, s11, 1
	subw s6, s8, s7
	addw s7, s2, s10
	mul s8, s7, s5
	srli s11, s8, 63
	srai s9, s8, 34
	add s10, s11, s9
	sh2add s8, s10, s10
	slliw s11, s8, 1
	subw s9, s7, s11
	slli s10, s9, 32
	addiw s9, a5, 132
	add.uw s8, s6, s10
	addiw a5, a5, 384
	addw s7, s2, s9
	mul s6, s7, s5
	sd s8, 40(a0)
	srli s10, s6, 63
	srai s8, s6, 34
	add s9, s10, s8
	addiw s10, a4, 156
	sh2add s11, s9, s9
	addiw a4, a4, 416
	slliw s8, s11, 1
	subw s6, s7, s8
	addw s8, s2, s10
	mul s7, s8, s5
	srli s11, s7, 63
	srai s9, s7, 34
	add s10, s11, s9
	sh2add s7, s10, s10
	slliw s11, s7, 1
	subw s9, s8, s11
	slli s7, s9, 32
	addiw s9, a3, 182
	add.uw s10, s6, s7
	addiw a3, a3, 448
	addw s7, s2, s9
	mul s6, s7, s5
	sd s10, 48(a0)
	srli s11, s6, 63
	srai s8, s6, 34
	add s9, s11, s8
	addiw s11, a2, 210
	sh2add s6, s9, s9
	addiw a2, a2, 480
	addw s8, s2, s11
	slliw s10, s6, 1
	subw s6, s7, s10
	mul s7, s8, s5
	srli s11, s7, 63
	srai s9, s7, 34
	add s5, s11, s9
	sh2add s7, s5, s5
	slliw s10, s7, 1
	subw s9, s8, s10
	addiw s8, a1, 240
	slli s5, s9, 32
	addiw a1, a1, 512
	addw s2, s2, s8
	add.uw s7, s6, s5
	li s6, 625
	slli s5, s6, 4
	sd s7, 56(a0)
	bge s4, s5, label145
	addi a0, a0, 64
	j label2
label145:
	auipc a2, %pcrel_hi(a2)
	mv a0, s0
	mv a1, zero
	addi s3, a2, %pcrel_lo(label145)
	j label24
.p2align 2
label62:
	addi a0, a0, 64
.p2align 2
label24:
	lw a3, 0(a0)
	lui t0, 419430
	addiw a2, t0, 1639
	mulw a4, a3, a3
	mul a3, a4, a2
	srli t1, a3, 63
	srai a5, a3, 34
	sh2add a3, a1, s3
	add t0, t1, a5
	addiw a1, a1, 16
	sh2add t2, t0, t0
	slliw t3, t2, 1
	subw a5, a4, t3
	sw a5, 0(a3)
	lw t1, 4(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
	subw a5, a4, t4
	sw a5, 4(a3)
	lw t1, 8(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 8(a3)
	lw t1, 12(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t4, t1, t1
	slliw t2, t4, 1
	subw a5, a4, t2
	sw a5, 12(a3)
	lw t1, 16(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 16(a3)
	lw t1, 20(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 20(a3)
	lw t1, 24(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 24(a3)
	lw t1, 28(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 28(a3)
	lw t1, 32(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 32(a3)
	lw t1, 36(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 36(a3)
	lw t1, 40(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 40(a3)
	lw t1, 44(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 44(a3)
	lw t1, 48(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 48(a3)
	lw t1, 52(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 52(a3)
	lw t1, 56(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 56(a3)
	lw t1, 60(a0)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a2, t1, t0
	sh2add t2, a2, a2
	slliw a5, t2, 1
	subw t0, a4, a5
	li a4, 625
	slli a2, a4, 4
	sw t0, 60(a3)
	blt a1, a2, label62
pcrel907:
	auipc a2, %pcrel_hi(a3)
	mv a1, zero
	addi s1, a2, %pcrel_lo(pcrel907)
	mv a0, s1
	j label28
.p2align 2
label31:
	addi a0, a0, 16
.p2align 2
label28:
	sh2add a2, a1, s3
	lui t2, 335544
	lw a4, 0(a2)
	addiw a3, t2, 1311
	mulw t0, a4, a4
	li a4, 100
	mul a5, t0, a3
	srli t3, a5, 63
	srai t1, a5, 37
	sh2add a5, a1, s0
	add t2, t3, t1
	addiw a1, a1, 4
	lw t5, 0(a5)
	mulw t4, t2, a4
	subw t1, t0, t4
	addw t2, t1, t5
	sw t2, 0(a0)
	lw t3, 4(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t3, t1, 63
	srai t2, t1, 37
	add t5, t3, t2
	lw t2, 4(a5)
	mulw t4, t5, a4
	subw t1, t0, t4
	addw t5, t1, t2
	sw t5, 4(a0)
	lw t3, 8(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t4, 8(a5)
	mulw t5, t3, a4
	subw t1, t0, t5
	addw t3, t1, t4
	sw t3, 8(a0)
	lw t2, 12(a2)
	mulw t0, t2, t2
	mul t1, t0, a3
	srli t2, t1, 63
	srai a2, t1, 37
	add t4, t2, a2
	lw a2, 12(a5)
	mulw t3, t4, a4
	subw a3, t0, t3
	addw a4, a3, a2
	li a3, 625
	slli a2, a3, 4
	sw a4, 12(a0)
	blt a1, a2, label31
	mv s2, s1
	mv s4, s0
	mv s6, zero
	mv a0, zero
	li a2, 625
	slli a1, a2, 4
	blt zero, a1, label40
	j label39
.p2align 2
label49:
	addw a4, a0, a3
	lw t1, 64(a1)
	lw a5, 68(a1)
	subw t0, a4, t1
	lw t1, 72(a1)
	addw a2, a0, t0
	lw t0, 76(a1)
	subw a4, a2, a5
	addw a3, a0, a4
	subw a5, a3, t1
	addw a2, a0, a5
	lw a5, 80(a1)
	subw a4, a2, t0
	lw t1, 84(a1)
	addw a3, a0, a4
	subw t0, a3, a5
	addw a2, a0, t0
	lw t0, 88(a1)
	subw a4, a2, t1
	addw a3, a0, a4
	lw a4, 92(a1)
	subw a5, a3, t0
	addw a2, a0, a5
	subw s6, a2, a4
	mv a0, s6
	jal putint
	li a2, 625
	mv a0, s5
	addi s2, s2, 4
	addi s3, s3, 4
	addi s4, s4, 4
	slli a1, a2, 4
	bge s5, a1, label39
.p2align 2
label40:
	addiw s5, a0, 1
	li a1, 10
	bge a0, a1, label283
	lw a0, 0(s2)
	lui a4, 201377
	li t0, 1333
	addw a1, s6, a0
	addiw a3, a4, -261
	mul a0, a1, a3
	srli a5, a0, 63
	srai a2, a0, 40
	add a3, a5, a2
	mulw a4, a3, t0
	subw s6, a1, a4
	mv a0, s6
	jal putint
	li a2, 625
	mv a0, s5
	addi s2, s2, 4
	addi s3, s3, 4
	addi s4, s4, 4
	slli a1, a2, 4
	blt s5, a1, label40
label39:
	mv a0, s6
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s11, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label283:
	li a1, 20
	blt a0, a1, label43
	li a1, 30
	bge a0, a1, label51
	li a2, 625
	slli a3, a2, 5
	srli a2, a3, 2
	add a0, s1, a3
	add a1, s0, a3
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label59
	j label58
.p2align 2
label43:
	lw a0, 0(s2)
	li a2, 625
	mv a3, s6
	slli a4, a2, 5
	srli a2, a4, 2
	add a1, s0, a4
.p2align 2
label44:
	addw a4, a0, a3
	addiw a2, a2, 16
	lw a5, 0(a1)
	lw t0, 4(a1)
	subw t1, a4, a5
	addw a3, a0, t1
	lw t1, 8(a1)
	subw a4, a3, t0
	lw t0, 12(a1)
	addw a5, a0, a4
	subw a3, a5, t1
	lw t1, 16(a1)
	addw a4, a0, a3
	subw a5, a4, t0
	lw t0, 20(a1)
	addw a3, a0, a5
	lw t2, 24(a1)
	subw a4, a3, t1
	lw t1, 28(a1)
	addw a5, a0, a4
	subw a3, a5, t0
	addw a4, a0, a3
	subw t0, a4, t2
	addw a3, a0, t0
	lw t0, 32(a1)
	subw a5, a3, t1
	lw t1, 36(a1)
	addw a4, a0, a5
	subw a3, a4, t0
	lw t0, 40(a1)
	addw a5, a0, a3
	lw t2, 44(a1)
	subw a4, a5, t1
	addw a3, a0, a4
	subw t1, a3, t0
	addw a4, a0, t1
	lw t1, 48(a1)
	subw a5, a4, t2
	lw t0, 52(a1)
	addw a3, a0, a5
	lw a5, 56(a1)
	subw t2, a3, t1
	addw a4, a0, t2
	subw t1, a4, t0
	addw a3, a0, t1
	lw t1, 60(a1)
	subw t0, a3, a5
	li a5, 1249
	addw a4, a0, t0
	subw a3, a4, t1
	slli a4, a5, 3
	bge a2, a4, label49
	addi a1, a1, 64
	j label44
.p2align 2
label60:
	lw a5, 0(s3)
	addiw a2, a2, 1
	addi a0, a0, 4
	addw a3, s6, a5
	lw a4, 0(a1)
	addi a1, a1, 4
	subw s6, a3, a4
	li a4, 625
	slli a3, a4, 4
	bge a2, a3, label58
.p2align 2
label59:
	lui a4, 1
	addiw a3, a4, -1863
	bgt a2, a3, label60
	lw a5, 0(s4)
	lui t1, 80533
	lui t3, 3
	addiw a2, a2, 2
	addi a1, a1, 8
	addw a4, s6, a5
	addiw t2, t1, -1433
	lw t0, 0(a0)
	addi a0, a0, 8
	addw a3, a4, t0
	mul a5, a3, t2
	addiw t2, t3, 1045
	srli t1, a5, 63
	srai t0, a5, 42
	add a4, t1, t0
	mulw a5, a4, t2
	li a4, 625
	subw s6, a3, a5
	slli a3, a4, 4
	blt a2, a3, label59
	j label58
.p2align 2
label51:
	lw a1, 0(s2)
	lui a4, 343639
	lui a5, 24
	addi s4, s4, 4
	addi s3, s3, 4
	addi s2, s2, 4
	sh3add a2, a1, a1
	addiw a1, a4, -1555
	addw a0, s6, a2
	mul a2, a0, a1
	srli a4, a2, 63
	srai a3, a2, 47
	addiw a2, a5, 1684
	add a1, a4, a3
	mulw a3, a1, a2
	li a2, 625
	subw s6, a0, a3
	slli a1, a2, 4
	mv a0, s5
	blt s5, a1, label40
	j label39
.p2align 2
label58:
	mv a0, s6
	jal putint
	li a2, 625
	mv a0, s5
	addi s2, s2, 4
	addi s3, s3, 4
	addi s4, s4, 4
	slli a1, a2, 4
	blt s5, a1, label40
	j label39
