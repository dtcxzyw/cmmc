.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a1:
	.zero	40000
.p2align 3
a2:
	.zero	40000
.p2align 3
a3:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
pcrel910:
	auipc a1, %pcrel_hi(a1)
pcrel911:
	auipc a0, %pcrel_hi(a3)
pcrel912:
	auipc a2, %pcrel_hi(a2)
	li a4, 7
	li a5, 6
	li t0, 5
	li t2, 3
	mv t1, zero
	li a3, 1
	mv t3, zero
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel910)
	sd s5, 16(sp)
	li a1, 10
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel911)
	sd s1, 32(sp)
	mv a0, s0
	addi s1, a2, %pcrel_lo(pcrel912)
	sd s6, 40(sp)
	li a2, 9
	sd s3, 48(sp)
	sd s4, 56(sp)
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
	sh2add s3, a6, a6
	mul a6, t6, t4
	slliw a7, s3, 1
	srli s5, a6, 63
	subw t5, t1, a7
	srai a7, a6, 34
	add s3, s5, a7
	sh2add s4, s3, s3
	slliw a6, s4, 1
	subw s5, t6, a6
	slli a7, s5, 32
	add.uw a6, t5, a7
	addiw a7, a3, 1
	sh1add t6, a7, t1
	sd a6, 0(a0)
	mul t5, t6, t4
	srli s4, t5, 63
	srai a6, t5, 34
	add a7, s4, a6
	sh2add s3, a7, a7
	addiw a7, t2, 6
	slliw a6, s3, 1
	addiw t2, t2, 96
	subw t5, t6, a6
	addw a6, t1, a7
	mul t6, a6, t4
	srli s4, t6, 63
	srai a7, t6, 34
	add s3, s4, a7
	sh2add s5, s3, s3
	slliw t6, s5, 1
	subw s4, a6, t6
	slliw a6, a3, 2
	slli a7, s4, 32
	add.uw t6, t5, a7
	addi a7, a6, 12
	sd t6, 8(a0)
	addw t6, t1, a7
	mul t5, t6, t4
	srli s4, t5, 63
	srai a6, t5, 34
	add a7, s4, a6
	sh2add s3, a7, a7
	addiw a7, t0, 20
	slliw a6, s3, 1
	addiw t0, t0, 160
	subw t5, t6, a6
	addw a6, t1, a7
	mul t6, a6, t4
	srli s4, t6, 63
	srai a7, t6, 34
	add s3, s4, a7
	sh2add s5, s3, s3
	slliw a7, s5, 1
	subw t6, a6, a7
	addiw a7, a5, 30
	slli s3, t6, 32
	addiw a5, a5, 192
	add.uw a6, t5, s3
	sd a6, 16(a0)
	addw a6, t1, a7
	mul t5, a6, t4
	srli s4, t5, 63
	srai t6, t5, 34
	add a7, s4, t6
	sh2add t5, a7, a7
	addiw a7, a4, 42
	slliw s3, t5, 1
	addiw a4, a4, 224
	addw t5, t1, a7
	subw t6, a6, s3
	mul a6, t5, t4
	srli s4, a6, 63
	srai a7, a6, 34
	add s3, s4, a7
	sh2add a6, s3, s3
	slliw s5, a6, 1
	subw a7, t5, s5
	slliw t5, a3, 3
	slli s3, a7, 32
	addi a7, t5, 56
	add.uw a6, t6, s3
	sd a6, 24(a0)
	addw a6, t1, a7
	mul t6, a6, t4
	srli s4, t6, 63
	srai a7, t6, 34
	add s3, s4, a7
	addiw s4, a2, 72
	sh2add s5, s3, s3
	addiw a2, a2, 288
	slliw a7, s5, 1
	subw t6, a6, a7
	addw a7, t1, s4
	mul a6, a7, t4
	srli s5, a6, 63
	srai s3, a6, 34
	add s4, s5, s3
	sh2add a6, s4, s4
	slliw s6, a6, 1
	subw s3, a7, s6
	slli a6, s3, 32
	addiw s3, a1, 90
	add.uw a7, t6, a6
	addiw a1, a1, 320
	addw a6, t1, s3
	mul t6, a6, t4
	sd a7, 32(a0)
	srli s4, t6, 63
	srai a7, t6, 34
	add s3, s4, a7
	sh2add s5, s3, s3
	li s3, 11
	slliw a7, s5, 1
	subw t6, a6, a7
	mulw a7, a3, s3
	addi s4, a7, 110
	addw a6, t1, s4
	mul a7, a6, t4
	srli s5, a7, 63
	srai s3, a7, 34
	add s4, s5, s3
	sh2add a7, s4, s4
	slliw s6, a7, 1
	subw s3, a6, s6
	slli a7, s3, 32
	add.uw a6, t6, a7
	sh1add t6, a3, a3
	slliw a7, t6, 2
	sd a6, 40(a0)
	addi s3, a7, 132
	addw a6, t1, s3
	mul t6, a6, t4
	srli s4, t6, 63
	srai a7, t6, 34
	add s3, s4, a7
	sh2add s5, s3, s3
	li s3, 13
	slliw a7, s5, 1
	subw t6, a6, a7
	mulw a7, a3, s3
	addi s4, a7, 156
	addw a6, t1, s4
	mul a7, a6, t4
	srli s5, a7, 63
	srai s3, a7, 34
	add s4, s5, s3
	sh2add s6, s4, s4
	slliw a7, s6, 1
	subw s5, a6, a7
	subw a7, t5, a3
	slli s3, s5, 32
	add.uw a6, t6, s3
	slliw s3, a7, 1
	addi t6, s3, 182
	sd a6, 48(a0)
	addw a6, t1, t6
	mul t5, a6, t4
	srli s4, t5, 63
	srai t6, t5, 34
	add a7, s4, t6
	sh2add t5, a7, a7
	slliw s3, t5, 1
	slliw t5, a3, 4
	subw t6, a6, s3
	subw a7, t5, a3
	addiw a3, a3, 32
	addi s4, a7, 210
	addw a6, t1, s4
	mul a7, a6, t4
	srli s4, a7, 63
	srai s3, a7, 34
	add t4, s4, s3
	sh2add a7, t4, t4
	slliw s5, a7, 1
	subw s3, a6, s5
	addi a6, t5, 240
	slli t4, s3, 32
	li t5, 625
	addw t1, t1, a6
	add.uw a7, t6, t4
	slli t4, t5, 4
	sd a7, 56(a0)
	bge t3, t4, label140
	addi a0, a0, 64
	j label2
label140:
	mv a0, s1
	mv a1, zero
	j label15
.p2align 2
label18:
	addi a0, a0, 64
.p2align 2
label15:
	sh2add a2, a1, s0
	lui t1, 419430
	addiw a1, a1, 16
	addiw a3, t1, 1639
	lw a5, 0(a2)
	mulw a4, a5, a5
	mul a5, a4, a3
	srli t4, a5, 63
	srai t0, a5, 34
	add t1, t4, t0
	sh2add t3, t1, t1
	slliw t2, t3, 1
	subw a5, a4, t2
	sw a5, 0(a0)
	lw t1, 4(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 4(a0)
	lw t1, 8(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 8(a0)
	lw t1, 12(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 12(a0)
	lw t1, 16(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t4, a5, 63
	srai t0, a5, 34
	add t1, t4, t0
	sh2add t3, t1, t1
	slliw t2, t3, 1
	subw a5, a4, t2
	sw a5, 16(a0)
	lw t1, 20(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t4, a5, 63
	srai t0, a5, 34
	add t1, t4, t0
	sh2add t3, t1, t1
	slliw t2, t3, 1
	subw a5, a4, t2
	sw a5, 20(a0)
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
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 36(a0)
	lw t1, 40(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 40(a0)
	lw t1, 44(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 44(a0)
	lw t1, 48(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 48(a0)
	lw t1, 52(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
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
	li a3, 625
	slliw a5, t1, 1
	subw a2, a4, a5
	sw a2, 60(a0)
	slli a2, a3, 4
	blt a1, a2, label18
	mv a0, s2
	mv a1, zero
.p2align 2
label20:
	sh2add a2, a1, s1
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
	lw t6, 4(a5)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	mulw t5, t4, a4
	subw t1, t0, t5
	addw t2, t1, t6
	sw t2, 4(a0)
	lw t3, 8(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 8(a5)
	mulw t5, t3, a4
	subw t1, t0, t5
	addw t4, t1, t2
	sw t4, 8(a0)
	lw t3, 12(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	lw a3, 12(a5)
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	mulw t5, t4, a4
	subw a2, t0, t5
	addw a4, a2, a3
	li a3, 625
	slli a2, a3, 4
	sw a4, 12(a0)
	bge a1, a2, label265
	addi a0, a0, 16
	j label20
label265:
	mv s3, s2
	mv s4, zero
	mv s5, zero
	li a0, 10
	bge zero, a0, label270
.p2align 2
label53:
	lw a0, 0(s3)
	lui a4, 201377
	li t0, 1333
	addw a1, s5, a0
	addiw a2, a4, -261
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 40
	add a2, a4, a3
	mulw a5, a2, t0
	subw s5, a1, a5
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	bge s4, a0, label31
.p2align 2
label32:
	addi s3, s3, 4
	li a0, 10
	blt s4, a0, label53
	li a0, 20
	bge s4, a0, label895
.p2align 2
label46:
	lw a0, 0(s3)
	li a2, 625
	mv a3, s5
	slli a4, a2, 5
	srli a2, a4, 2
	add a1, s0, a4
	j label47
.p2align 2
label52:
	addi a1, a1, 64
.p2align 2
label47:
	addw a3, a0, a3
	addiw a2, a2, 16
	lw t0, 0(a1)
	lw t2, 4(a1)
	subw a5, a3, t0
	lw t0, 8(a1)
	addw a4, a0, a5
	subw t1, a4, t2
	addw a3, a0, t1
	lw t1, 12(a1)
	subw a5, a3, t0
	addw a4, a0, a5
	lw a5, 16(a1)
	subw t0, a4, t1
	addw a3, a0, t0
	lw t0, 20(a1)
	subw t1, a3, a5
	addw a4, a0, t1
	lw t1, 24(a1)
	subw a3, a4, t0
	lw t0, 28(a1)
	addw a5, a0, a3
	subw a4, a5, t1
	lw t1, 32(a1)
	addw a3, a0, a4
	subw a5, a3, t0
	lw t0, 36(a1)
	addw a4, a0, a5
	subw a3, a4, t1
	lw t1, 40(a1)
	addw a5, a0, a3
	subw a4, a5, t0
	lw t0, 44(a1)
	addw a3, a0, a4
	subw a5, a3, t1
	lw t1, 48(a1)
	addw a4, a0, a5
	subw a3, a4, t0
	lw t0, 52(a1)
	addw a5, a0, a3
	lw t2, 56(a1)
	subw a4, a5, t1
	addw a3, a0, a4
	subw a5, a3, t0
	lw t0, 60(a1)
	addw a4, a0, a5
	subw t1, a4, t2
	addw a5, a0, t1
	li t1, 1249
	subw a3, a5, t0
	slli a4, t1, 3
	blt a2, a4, label52
	addw a2, a0, a3
	lw a4, 64(a1)
	lw t0, 68(a1)
	subw a5, a2, a4
	addw a3, a0, a5
	lw a5, 72(a1)
	subw a4, a3, t0
	addw a2, a0, a4
	lw a4, 76(a1)
	subw t1, a2, a5
	lw a5, 80(a1)
	addw a3, a0, t1
	subw t0, a3, a4
	addw a2, a0, t0
	lw t0, 84(a1)
	subw a4, a2, a5
	addw a3, a0, a4
	lw a4, 88(a1)
	subw a5, a3, t0
	addw a2, a0, a5
	lw a5, 92(a1)
	subw t0, a2, a4
	addw a3, a0, t0
	subw s5, a3, a5
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	blt s4, a0, label32
	j label31
.p2align 2
label895:
	li a0, 30
	bge s4, a0, label45
.p2align 2
label35:
	li a2, 625
	slli a3, a2, 5
	srli a2, a3, 2
	add a0, s2, a3
	add a1, s0, a3
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label42
	j label41
.p2align 2
label43:
	sh2add a3, s4, s0
	lui t2, 80533
	addiw a2, a2, 2
	addi a1, a1, 8
	lw t0, 0(a3)
	addiw t1, t2, -1433
	lw a5, 0(a0)
	addw a4, s5, t0
	addi a0, a0, 8
	addw a3, a4, a5
	mul a5, a3, t1
	lui t1, 3
	srli t2, a5, 63
	srai t0, a5, 42
	addiw a5, t1, 1045
	add a4, t2, t0
	mulw t0, a4, a5
	li a4, 625
	subw s5, a3, t0
	slli a3, a4, 4
	bge a2, a3, label41
.p2align 2
label42:
	lui a4, 1
	addiw a3, a4, -1863
	ble a2, a3, label43
	sh2add a5, s4, s1
	addiw a2, a2, 1
	addi a0, a0, 4
	lw t0, 0(a5)
	lw a4, 0(a1)
	addw a3, s5, t0
	addi a1, a1, 4
	subw s5, a3, a4
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label42
	j label41
.p2align 2
label45:
	lw a1, 0(s3)
	lui a4, 343639
	lui a5, 24
	addiw s4, s4, 1
	sh3add a2, a1, a1
	addiw a1, a4, -1555
	addw a0, s5, a2
	mul a2, a0, a1
	srli a4, a2, 63
	srai a3, a2, 47
	addiw a2, a5, 1684
	add a1, a4, a3
	mulw a3, a1, a2
	li a1, 625
	subw s5, a0, a3
	slli a0, a1, 4
	blt s4, a0, label32
	j label31
.p2align 2
label41:
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	blt s4, a0, label32
label31:
	mv a0, s5
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
label270:
	li a0, 20
	blt s4, a0, label46
	li a0, 30
	blt s4, a0, label35
	j label45
