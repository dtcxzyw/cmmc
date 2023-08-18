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
pcrel917:
	auipc a0, %pcrel_hi(a1)
pcrel918:
	auipc a1, %pcrel_hi(a3)
pcrel919:
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
	addi s0, a0, %pcrel_lo(pcrel917)
	sd s5, 16(sp)
	mv a0, s0
	sd s2, 24(sp)
	addi s2, a1, %pcrel_lo(pcrel918)
	sd s1, 32(sp)
	li a1, 10
	addi s1, a2, %pcrel_lo(pcrel919)
	sd s6, 40(sp)
	li a2, 9
	sd s3, 48(sp)
	sd s4, 56(sp)
	j label2
.p2align 2
label53:
	addi a0, a0, 64
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
	sh2add a6, s3, s3
	slliw s4, a6, 1
	subw s5, t6, s4
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
	slliw s6, s5, 1
	subw t6, a6, s6
	slli a7, t6, 32
	slliw t6, a3, 2
	add.uw a6, t5, a7
	addi a7, t6, 12
	sd a6, 8(a0)
	addw a6, t1, a7
	mul t5, a6, t4
	srli s3, t5, 63
	srai t6, t5, 34
	add a7, s3, t6
	sh2add s4, a7, a7
	addiw a7, t0, 20
	slliw t6, s4, 1
	addiw t0, t0, 160
	subw t5, a6, t6
	addw t6, t1, a7
	mul a6, t6, t4
	srli s4, a6, 63
	srai a7, a6, 34
	add s3, s4, a7
	sh2add a6, s3, s3
	slliw s5, a6, 1
	subw a7, t6, s5
	slli s3, a7, 32
	addiw a7, a5, 30
	add.uw a6, t5, s3
	addiw a5, a5, 192
	addw t5, t1, a7
	mul t6, t5, t4
	sd a6, 16(a0)
	srli s3, t6, 63
	srai a6, t6, 34
	add a7, s3, a6
	sh2add s4, a7, a7
	addiw a7, a4, 42
	slliw a6, s4, 1
	addiw a4, a4, 224
	subw t6, t5, a6
	addw a6, t1, a7
	mul t5, a6, t4
	srli s4, t5, 63
	srai a7, t5, 34
	add s3, s4, a7
	sh2add t5, s3, s3
	slliw a7, t5, 1
	subw s4, a6, a7
	slli t5, s4, 32
	add.uw a7, t6, t5
	slliw t5, a3, 3
	addi a6, t5, 56
	sd a7, 24(a0)
	addw a7, t1, a6
	mul t6, a7, t4
	srli s4, t6, 63
	srai a6, t6, 34
	add s3, s4, a6
	addiw s4, a2, 72
	sh2add s5, s3, s3
	addiw a2, a2, 288
	slliw a6, s5, 1
	subw t6, a7, a6
	addw a6, t1, s4
	mul a7, a6, t4
	srli s5, a7, 63
	srai s3, a7, 34
	add s4, s5, s3
	sh2add s6, s4, s4
	addiw s4, a1, 90
	slliw a7, s6, 1
	addiw a1, a1, 320
	subw s5, a6, a7
	addw a6, t1, s4
	slli s3, s5, 32
	add.uw a7, t6, s3
	mul t6, a6, t4
	srli s5, t6, 63
	sd a7, 32(a0)
	srai a7, t6, 34
	add s3, s5, a7
	sh2add s4, s3, s3
	li s3, 11
	slliw a7, s4, 1
	subw t6, a6, a7
	mulw a7, a3, s3
	addi s4, a7, 110
	addw a6, t1, s4
	mul a7, a6, t4
	srli s6, a7, 63
	srai s3, a7, 34
	add s4, s6, s3
	sh2add a7, s4, s4
	slliw s5, a7, 1
	subw s3, a6, s5
	slli a7, s3, 32
	sh1add s3, a3, a3
	add.uw a6, t6, a7
	slliw t6, s3, 2
	addi a7, t6, 132
	sd a6, 40(a0)
	addw a6, t1, a7
	mul t6, a6, t4
	srli s5, t6, 63
	srai a7, t6, 34
	add s3, s5, a7
	sh2add s4, s3, s3
	li s3, 13
	slliw a7, s4, 1
	subw t6, a6, a7
	mulw a7, a3, s3
	addi s4, a7, 156
	addw a6, t1, s4
	mul a7, a6, t4
	srli s6, a7, 63
	srai s3, a7, 34
	add s4, s6, s3
	sh2add a7, s4, s4
	slliw s5, a7, 1
	subw s3, a6, s5
	slli a7, s3, 32
	add.uw a6, t6, a7
	subw a7, t5, a3
	slli t6, a7, 1
	sd a6, 48(a0)
	addiw s3, t6, 182
	addw a6, t1, s3
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
	blt t3, t4, label53
	mv a0, s1
	mv a1, zero
.p2align 2
label14:
	sh2add a2, a1, s0
	lui t1, 419430
	addiw a1, a1, 16
	addiw a3, t1, 1639
	lw a5, 0(a2)
	mulw a4, a5, a5
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 0(a0)
	lw t1, 4(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
	subw a5, a4, t4
	sw a5, 4(a0)
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
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 24(a0)
	lw t1, 28(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 28(a0)
	lw t1, 32(a2)
	mulw a4, t1, t1
	mul a5, a4, a3
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 32(a0)
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
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 44(a0)
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
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 52(a0)
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
	bge a1, a2, label225
	addi a0, a0, 64
	j label14
label225:
	mv a0, s2
	mv a1, zero
	j label19
.p2align 2
label52:
	addi a0, a0, 16
.p2align 2
label19:
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
	mulw t4, t2, a4
	lw t2, 0(a5)
	subw t1, t0, t4
	addw t4, t1, t2
	sw t4, 0(a0)
	lw t3, 4(a2)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t4, t1, 63
	srai t2, t1, 37
	add t5, t4, t2
	lw t2, 4(a5)
	mulw t3, t5, a4
	subw t1, t0, t3
	addw t4, t1, t2
	sw t4, 4(a0)
	lw t3, 8(a2)
	lw t5, 8(a5)
	mulw t0, t3, t3
	mul t1, t0, a3
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	mulw t6, t4, a4
	subw t1, t0, t6
	addw t3, t1, t5
	sw t3, 8(a0)
	lw t2, 12(a2)
	mulw t0, t2, t2
	mul t1, t0, a3
	srli t4, t1, 63
	srai a2, t1, 37
	lw t1, 12(a5)
	add t3, t4, a2
	mulw t2, t3, a4
	subw a3, t0, t2
	addw a2, a3, t1
	li a3, 625
	sw a2, 12(a0)
	slli a2, a3, 4
	blt a1, a2, label52
	mv s3, s2
	mv s4, zero
	mv s5, zero
	li a0, 10
	bge zero, a0, label268
.p2align 2
label51:
	lw a0, 0(s3)
	lui a4, 201377
	li t0, 1333
	addw a1, s5, a0
	addiw a3, a4, -261
	mul a0, a1, a3
	srli a4, a0, 63
	srai a2, a0, 40
	add a3, a4, a2
	mulw a5, a3, t0
	subw s5, a1, a5
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	bge s4, a0, label30
.p2align 2
label29:
	addi s3, s3, 4
	li a0, 10
	blt s4, a0, label51
	li a1, 20
	bge s4, a1, label908
.p2align 2
label32:
	lw a0, 0(s3)
	li a2, 625
	mv a3, s5
	slli a4, a2, 5
	srli a2, a4, 2
	add a1, s0, a4
.p2align 2
label33:
	addw a4, a0, a3
	addiw a2, a2, 16
	ld a3, 0(a1)
	srai t1, a3, 32
	subw t0, a4, a3
	ld a3, 8(a1)
	addw a5, a0, t0
	subw t3, a5, t1
	srai t1, a3, 32
	addw a4, a0, t3
	subw t2, a4, a3
	ld a3, 16(a1)
	addw a5, a0, t2
	subw t0, a5, t1
	addw a4, a0, t0
	srai t0, a3, 32
	subw t2, a4, a3
	ld a3, 24(a1)
	addw a5, a0, t2
	srai t2, a3, 32
	subw t1, a5, t0
	addw a4, a0, t1
	subw t0, a4, a3
	ld a3, 32(a1)
	addw a5, a0, t0
	subw t1, a5, t2
	addw a4, a0, t1
	srai t1, a3, 32
	subw t0, a4, a3
	ld a3, 40(a1)
	addw a5, a0, t0
	subw a4, a5, t1
	srai t1, a3, 32
	addw t0, a0, a4
	subw a5, t0, a3
	ld a3, 48(a1)
	addw a4, a0, a5
	srai t2, a3, 32
	subw t0, a4, t1
	addw a5, a0, t0
	subw a4, a5, a3
	addw t0, a0, a4
	ld a4, 56(a1)
	subw a5, t0, t2
	srai t0, a4, 32
	addw t1, a0, a5
	subw t2, t1, a4
	li t1, 1249
	addw a5, a0, t2
	slli a4, t1, 3
	subw a3, a5, t0
	bge a2, a4, label37
	addi a1, a1, 64
	j label33
.p2align 2
label37:
	addw a4, a0, a3
	ld a2, 64(a1)
	srai t0, a2, 32
	subw a5, a4, a2
	ld a2, 72(a1)
	addw a3, a0, a5
	subw t1, a3, t0
	srai t0, a2, 32
	addw a4, a0, t1
	subw a5, a4, a2
	ld a2, 80(a1)
	addw a3, a0, a5
	srai a5, a2, 32
	subw t1, a3, t0
	addw a4, a0, t1
	subw t2, a4, a2
	ld a2, 88(a1)
	addw a3, a0, t2
	srai a1, a2, 32
	subw t0, a3, a5
	addw a4, a0, t0
	subw a5, a4, a2
	addw a3, a0, a5
	subw s5, a3, a1
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	blt s4, a0, label29
	j label30
.p2align 2
label908:
	li a0, 30
	bge s4, a0, label50
.p2align 2
label40:
	li a2, 625
	slli a3, a2, 5
	srli a2, a3, 2
	add a0, s2, a3
	add a1, s0, a3
	li a4, 625
	slli a3, a4, 4
	blt a2, a3, label47
	j label46
.p2align 2
label48:
	sh2add a5, s4, s1
	addiw a2, a2, 1
	addi a0, a0, 4
	lw a4, 0(a5)
	lw t0, 0(a1)
	addw a3, s5, a4
	addi a1, a1, 4
	li a4, 625
	subw s5, a3, t0
	slli a3, a4, 4
	bge a2, a3, label46
.p2align 2
label47:
	lui a4, 1
	addiw a3, a4, -1863
	bgt a2, a3, label48
	sh2add a3, s4, s0
	lui t1, 80533
	addiw a2, a2, 2
	addi a1, a1, 8
	lw t0, 0(a3)
	addiw t2, t1, -1433
	lw a5, 0(a0)
	addw a4, s5, t0
	addi a0, a0, 8
	addw a3, a4, a5
	mul a5, a3, t2
	lui t2, 3
	srli t1, a5, 63
	srai t0, a5, 42
	addiw a5, t2, 1045
	add a4, t1, t0
	mulw t0, a4, a5
	li a4, 625
	subw s5, a3, t0
	slli a3, a4, 4
	blt a2, a3, label47
.p2align 2
label46:
	mv a0, s5
	jal putint
	li a1, 625
	addiw s4, s4, 1
	slli a0, a1, 4
	blt s4, a0, label29
	j label30
.p2align 2
label50:
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
	blt s4, a0, label29
label30:
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
label268:
	li a1, 20
	blt s4, a1, label32
	li a0, 30
	blt s4, a0, label40
	j label50
