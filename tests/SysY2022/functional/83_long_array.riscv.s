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
	addi sp, sp, -88
pcrel905:
	auipc a1, %pcrel_hi(a1)
pcrel906:
	auipc a0, %pcrel_hi(a3)
pcrel907:
	auipc a2, %pcrel_hi(a2)
	li a4, 7
	li a5, 6
	li t0, 5
	li t2, 3
	mv t1, zero
	li a3, 1
	mv t3, zero
	li t4, 1249
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, a1, %pcrel_lo(pcrel905)
	sd s4, 16(sp)
	li a1, 10
	addi s4, a0, %pcrel_lo(pcrel906)
	sd s3, 24(sp)
	mv a0, s2
	addi s3, a2, %pcrel_lo(pcrel907)
	sd s0, 32(sp)
	li a2, 9
	slli s0, t4, 3
	sd s5, 40(sp)
	sd s1, 48(sp)
	addi s1, s0, 8
	sd s6, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
.p2align 2
label2:
	lui a6, 419430
	addiw t3, t3, 16
	addiw t4, a6, 1639
	mul t5, t1, t4
	srli a7, t5, 63
	srai t6, t5, 34
	add a6, a7, t6
	addw t6, t1, a3
	sh2add s5, a6, a6
	mul a6, t6, t4
	slliw a7, s5, 1
	srli s7, a6, 63
	subw t5, t1, a7
	srai a7, a6, 34
	add s5, s7, a7
	sh2add s6, s5, s5
	slliw a6, s6, 1
	subw s7, t6, a6
	slli a7, s7, 32
	add.uw t6, t5, a7
	addiw a7, a3, 1
	sh1add a6, a7, t1
	sd t6, 0(a0)
	mul t5, a6, t4
	srli s6, t5, 63
	srai t6, t5, 34
	add a7, s6, t6
	sh2add s5, a7, a7
	addiw a7, t2, 6
	slliw t6, s5, 1
	addiw t2, t2, 96
	subw t5, a6, t6
	addw t6, t1, a7
	mul a6, t6, t4
	srli s8, a6, 63
	srai a7, a6, 34
	add s5, s8, a7
	sh2add s7, s5, s5
	slliw s6, s7, 1
	subw a6, t6, s6
	slli a7, a6, 32
	slliw a6, a3, 2
	add.uw t6, t5, a7
	addi a7, a6, 12
	sd t6, 8(a0)
	addw t6, t1, a7
	mul t5, t6, t4
	srli s5, t5, 63
	srai a6, t5, 34
	add a7, s5, a6
	sh2add s6, a7, a7
	addiw a7, t0, 20
	slliw a6, s6, 1
	addiw t0, t0, 160
	subw t5, t6, a6
	addw a6, t1, a7
	mul t6, a6, t4
	srli s6, t6, 63
	srai a7, t6, 34
	add s5, s6, a7
	sh2add s7, s5, s5
	slliw t6, s7, 1
	subw a7, a6, t6
	slli s5, a7, 32
	addiw a7, a5, 30
	add.uw t6, t5, s5
	addiw a5, a5, 192
	addw a6, t1, a7
	mul t5, a6, t4
	sd t6, 16(a0)
	srli s5, t5, 63
	srai t6, t5, 34
	add a7, s5, t6
	sh2add s6, a7, a7
	addiw a7, a4, 42
	slliw t5, s6, 1
	addiw a4, a4, 224
	subw t6, a6, t5
	addw t5, t1, a7
	mul a6, t5, t4
	srli s6, a6, 63
	srai a7, a6, 34
	add s5, s6, a7
	sh2add s7, s5, s5
	slliw a6, s7, 1
	subw s6, t5, a6
	slliw t5, a3, 3
	slli a7, s6, 32
	add.uw a6, t6, a7
	addi a7, t5, 56
	sd a6, 24(a0)
	addw a6, t1, a7
	mul t6, a6, t4
	srli s6, t6, 63
	srai a7, t6, 34
	add s5, s6, a7
	addiw s6, a2, 72
	sh2add s7, s5, s5
	addiw a2, a2, 288
	slliw a7, s7, 1
	subw t6, a6, a7
	addw a7, t1, s6
	mul a6, a7, t4
	srli s7, a6, 63
	srai s5, a6, 34
	add s6, s7, s5
	sh2add s9, s6, s6
	addiw s6, a1, 90
	slliw s8, s9, 1
	addiw a1, a1, 320
	subw a6, a7, s8
	slli s5, a6, 32
	addw a6, t1, s6
	add.uw a7, t6, s5
	mul t6, a6, t4
	srli s7, t6, 63
	sd a7, 32(a0)
	srai a7, t6, 34
	add s5, s7, a7
	sh2add s6, s5, s5
	li s5, 11
	slliw a7, s6, 1
	subw t6, a6, a7
	mulw a7, a3, s5
	addi s6, a7, 110
	addw a6, t1, s6
	mul a7, a6, t4
	srli s7, a7, 63
	srai s5, a7, 34
	add s6, s7, s5
	sh2add s8, s6, s6
	slliw a7, s8, 1
	subw s7, a6, a7
	sh1add a7, a3, a3
	slli s5, s7, 32
	add.uw a6, t6, s5
	slliw t6, a7, 2
	addi s5, t6, 132
	sd a6, 40(a0)
	addw a6, t1, s5
	mul t6, a6, t4
	srli s7, t6, 63
	srai a7, t6, 34
	add s5, s7, a7
	sh2add s6, s5, s5
	li s5, 13
	slliw a7, s6, 1
	subw t6, a6, a7
	mulw a7, a3, s5
	addi s6, a7, 156
	addw a6, t1, s6
	mul a7, a6, t4
	srli s8, a7, 63
	srai s5, a7, 34
	add s6, s8, s5
	sh2add s7, s6, s6
	slliw a7, s7, 1
	subw s5, a6, a7
	slli s6, s5, 32
	subw s5, t5, a3
	add.uw a6, t6, s6
	slliw t6, s5, 1
	addi a7, t6, 182
	sd a6, 48(a0)
	addw a6, t1, a7
	mul t5, a6, t4
	srli s5, t5, 63
	srai t6, t5, 34
	add a7, s5, t6
	sh2add t5, a7, a7
	slliw s6, t5, 1
	slliw t5, a3, 4
	subw t6, a6, s6
	subw a7, t5, a3
	addiw a3, a3, 32
	addi s6, a7, 210
	addw a6, t1, s6
	mul a7, a6, t4
	srli s7, a7, 63
	srai s5, a7, 34
	add t4, s7, s5
	sh2add a7, t4, t4
	slliw s6, a7, 1
	subw s5, a6, s6
	addi a6, t5, 240
	slli a7, s5, 32
	addw t1, t1, a6
	add.uw t4, t6, a7
	sd t4, 56(a0)
	bge t3, s1, label140
	addi a0, a0, 64
	j label2
label140:
	mv a0, s3
	mv a1, zero
.p2align 2
label15:
	sh2add a2, a1, s2
	lui t1, 419430
	addiw a1, a1, 16
	addiw a3, t1, 1639
	lw a5, 0(a2)
	mulw a4, a5, a5
	mul a5, a4, a3
	srli t4, a5, 63
	srai t0, a5, 34
	add t1, t4, t0
	sh2add t2, t1, t1
	slliw t3, t2, 1
	subw a5, a4, t3
	sw a5, 0(a0)
	lw t1, 4(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 4(a0)
	lw t1, 8(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 8(a0)
	lw t1, 12(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 12(a0)
	lw t1, 16(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 16(a0)
	lw t1, 20(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 20(a0)
	lw t1, 24(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 24(a0)
	lw t1, 28(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 28(a0)
	lw t1, 32(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 32(a0)
	lw t1, 36(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 36(a0)
	lw t1, 40(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 40(a0)
	lw t1, 44(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 44(a0)
	lw t1, 48(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 48(a0)
	lw t1, 52(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 52(a0)
	lw t1, 56(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 56(a0)
	lw t0, 60(a2)
	mulw a4, t0, t0
	mul a5, a4, a3
	srli t0, a5, 63
	srai a2, a5, 34
	add a3, t0, a2
	sh2add t1, a3, a3
	slliw a5, t1, 1
	subw a2, a4, a5
	sw a2, 60(a0)
	bge a1, s1, label226
	addi a0, a0, 64
	j label15
label226:
	mv a0, s2
	mv a1, zero
	j label20
.p2align 2
label23:
	addi a0, a0, 16
.p2align 2
label20:
	sh2add a2, a1, s3
	lui t2, 335544
	lw a4, 0(a2)
	addiw a3, t2, 1311
	mulw a5, a4, a4
	li a4, 100
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 37
	add t2, t3, t1
	lw t3, 0(a0)
	mulw t4, t2, a4
	subw t0, a5, t4
	sh2add a5, a1, s4
	addw t1, t0, t3
	addiw a1, a1, 4
	sw t1, 0(a5)
	lw t3, 4(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 4(a0)
	mulw t5, t3, a4
	subw t1, t0, t5
	addw t4, t1, t2
	sw t4, 4(a5)
	lw t3, 8(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 8(a0)
	mulw t5, t3, a4
	subw t1, t0, t5
	addw t4, t1, t2
	sw t4, 8(a5)
	lw t3, 12(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t3, t1, 63
	srai t2, t1, 37
	lw t1, 12(a0)
	add a3, t3, t2
	mulw t4, a3, a4
	subw a2, t0, t4
	addw a3, a2, t1
	sw a3, 12(a5)
	blt a1, s1, label23
	mv s5, s4
	mv s6, zero
	mv a3, zero
	li a0, 10
	blt zero, a0, label33
	li a0, 20
	blt zero, a0, label35
	li a0, 30
	blt zero, a0, label43
	j label53
.p2align 2
label33:
	lw a2, 0(s5)
	lui a5, 201377
	li t0, 1333
	addw a1, a3, a2
	addiw a4, a5, -261
	mul a0, a1, a4
	srli a5, a0, 63
	srai a3, a0, 40
	add a2, a5, a3
	mulw a4, a2, t0
	subw s7, a1, a4
	mv a0, s7
	jal putint
	addiw s6, s6, 1
	mv a3, s7
	bge s6, s1, label32
.p2align 2
label31:
	addi s5, s5, 4
	li a0, 10
	blt s6, a0, label33
	li a0, 20
	bge s6, a0, label896
.p2align 2
label35:
	lw a0, 0(s5)
	li a2, 625
	slli a4, a2, 5
	srli a2, a4, 2
	add a1, s2, a4
	j label36
.p2align 2
label41:
	addi a1, a1, 64
.p2align 2
label36:
	addw a3, a0, a3
	addiw a2, a2, 16
	lw t0, 0(a1)
	lw a5, 4(a1)
	subw t2, a3, t0
	addw a4, a0, t2
	lw t2, 8(a1)
	subw t1, a4, a5
	lw a5, 12(a1)
	addw a3, a0, t1
	subw t0, a3, t2
	addw a4, a0, t0
	lw t0, 16(a1)
	subw t1, a4, a5
	lw a5, 20(a1)
	addw a3, a0, t1
	lw t1, 24(a1)
	subw t2, a3, t0
	addw a4, a0, t2
	subw t0, a4, a5
	addw a3, a0, t0
	lw t0, 28(a1)
	subw t2, a3, t1
	lw t1, 32(a1)
	addw a4, a0, t2
	subw a5, a4, t0
	addw a3, a0, a5
	lw a5, 36(a1)
	subw t0, a3, t1
	addw a4, a0, t0
	lw t0, 40(a1)
	subw t1, a4, a5
	addw a3, a0, t1
	lw t1, 44(a1)
	subw a4, a3, t0
	lw t0, 48(a1)
	addw a5, a0, a4
	subw a3, a5, t1
	lw t1, 52(a1)
	addw a4, a0, a3
	subw a5, a4, t0
	lw t0, 56(a1)
	addw a3, a0, a5
	subw t2, a3, t1
	addw a4, a0, t2
	lw t2, 60(a1)
	subw t1, a4, t0
	addw a5, a0, t1
	subw a3, a5, t2
	blt a2, s0, label41
	addw a4, a0, a3
	lw a5, 64(a1)
	lw t1, 68(a1)
	subw t0, a4, a5
	lw a5, 72(a1)
	addw a2, a0, t0
	subw a4, a2, t1
	addw a3, a0, a4
	lw a4, 76(a1)
	subw t0, a3, a5
	lw a5, 80(a1)
	addw a2, a0, t0
	lw t0, 84(a1)
	subw t1, a2, a4
	addw a3, a0, t1
	subw a4, a3, a5
	addw a2, a0, a4
	lw a4, 88(a1)
	subw t1, a2, t0
	lw t0, 92(a1)
	addw a3, a0, t1
	subw a5, a3, a4
	addw a2, a0, a5
	subw s7, a2, t0
	mv a0, s7
	jal putint
	addiw s6, s6, 1
	mv a3, s7
	blt s6, s1, label31
	j label32
.p2align 2
label896:
	li a0, 30
	bge s6, a0, label53
.p2align 2
label43:
	li a2, 625
	mv s7, a3
	slli a4, a2, 5
	srli a2, a4, 2
	add a0, s4, a4
	add a1, s2, a4
	blt a2, s1, label50
	j label49
.p2align 2
label51:
	sh2add a3, s6, s2
	lui t1, 80533
	lui t3, 3
	addiw a2, a2, 2
	addi a1, a1, 8
	addiw t2, t1, -1433
	lw t0, 0(a3)
	lw a5, 0(a0)
	addw a4, s7, t0
	addi a0, a0, 8
	addw a3, a4, a5
	mul a5, a3, t2
	addiw t2, t3, 1045
	srli t1, a5, 63
	srai t0, a5, 42
	add a4, t1, t0
	mulw a5, a4, t2
	subw s7, a3, a5
	bge a2, s1, label49
.p2align 2
label50:
	lui a4, 1
	addiw a3, a4, -1863
	ble a2, a3, label51
	sh2add a4, s6, s3
	addiw a2, a2, 1
	addi a0, a0, 4
	lw a5, 0(a4)
	lw t0, 0(a1)
	addw a3, s7, a5
	addi a1, a1, 4
	subw s7, a3, t0
	blt a2, s1, label50
	j label49
.p2align 2
label53:
	lw a1, 0(s5)
	lui a4, 343639
	lui t0, 24
	addiw s6, s6, 1
	sh3add a2, a1, a1
	addiw a5, t0, 1684
	addiw a1, a4, -1555
	addw a0, a3, a2
	mul a2, a0, a1
	srli a4, a2, 63
	srai a3, a2, 47
	add a1, a4, a3
	mulw a2, a1, a5
	subw a3, a0, a2
	blt s6, s1, label31
	j label32
.p2align 2
label49:
	mv a0, s7
	jal putint
	addiw s6, s6, 1
	mv a3, s7
	blt s6, s1, label31
label32:
	mv a0, a3
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
