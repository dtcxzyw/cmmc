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
pcrel894:
	auipc a0, %pcrel_hi(a1)
pcrel895:
	auipc a1, %pcrel_hi(a2)
pcrel896:
	auipc a2, %pcrel_hi(a3)
	li a3, 13
	li a4, 12
	li a5, 11
	li t0, 10
	li t1, 9
	li t2, 8
	li t4, 7
	li t5, 6
	li t6, 5
	li a6, 4
	li a7, 3
	li t3, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel894)
	sd s5, 16(sp)
	li a0, 16
	mv s5, zero
	sd s1, 24(sp)
	addi s1, a1, %pcrel_lo(pcrel895)
	sd s6, 32(sp)
	li a1, 15
	sd s2, 40(sp)
	addi s2, a2, %pcrel_lo(pcrel896)
	sd s4, 48(sp)
	li a2, 14
	li s4, 2
	sd s3, 56(sp)
	mv s3, zero
	sd s10, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	sh2add s6, s5, s0
	lui s10, 419430
	addiw s5, s5, 16
	addiw s7, s10, 1639
	mul s8, s3, s7
	srli s11, s8, 63
	srai s9, s8, 34
	add s10, s11, s9
	addw s9, s3, t3
	sh2add s8, s10, s10
	addiw t3, t3, 32
	mul s10, s9, s7
	slliw s11, s8, 1
	subw s8, s3, s11
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	sh2add s11, s10, s10
	slliw s10, s11, 1
	subw s11, s9, s10
	slli s10, s11, 32
	addiw s11, s4, 2
	add.uw s9, s8, s10
	addiw s4, s4, 64
	sd s9, 0(s6)
	addw s9, s3, s11
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, a7, 6
	slliw s10, s8, 1
	addiw a7, a7, 96
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s11, s10, s9
	slli s9, s11, 32
	addiw s11, a6, 12
	add.uw s10, s8, s9
	addiw a6, a6, 128
	addw s9, s3, s11
	mul s8, s9, s7
	sd s10, 8(s6)
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t6, 20
	slliw s10, s8, 1
	addiw t6, t6, 160
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s11, s10, s9
	slli s9, s11, 32
	addiw s11, t5, 30
	add.uw s10, s8, s9
	addiw t5, t5, 192
	addw s9, s3, s11
	mul s8, s9, s7
	sd s10, 16(s6)
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t4, 42
	slliw s10, s8, 1
	addiw t4, t4, 224
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s9, s9, s9
	slliw s11, s9, 1
	subw s9, s10, s11
	addiw s11, t2, 56
	slli s10, s9, 32
	addiw t2, t2, 256
	add.uw s9, s8, s10
	sd s9, 24(s6)
	addw s9, s3, s11
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, t1, 72
	slliw s10, s8, 1
	addiw t1, t1, 288
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s11, s9, s9
	slliw s9, s11, 1
	subw s11, s10, s9
	slli s10, s11, 32
	addiw s11, t0, 90
	add.uw s9, s8, s10
	addiw t0, t0, 320
	addw s10, s3, s11
	mul s8, s10, s7
	sd s9, 32(s6)
	srai s9, s8, 34
	srli s8, s8, 63
	add s11, s8, s9
	sh2add s8, s11, s11
	addiw s11, a5, 110
	slliw s9, s8, 1
	addiw a5, a5, 352
	subw s8, s10, s9
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	sh2add s10, s10, s10
	slliw s11, s10, 1
	subw s9, s9, s11
	addiw s11, a4, 132
	slli s10, s9, 32
	addiw a4, a4, 384
	add.uw s9, s8, s10
	sd s9, 40(s6)
	addw s9, s3, s11
	mul s8, s9, s7
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, a3, 156
	slliw s10, s8, 1
	addiw a3, a3, 416
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srai s11, s9, 34
	srli s9, s9, 63
	add s9, s9, s11
	sh2add s9, s9, s9
	slliw s11, s9, 1
	subw s9, s10, s11
	addiw s11, a2, 182
	slli s9, s9, 32
	addiw a2, a2, 448
	add.uw s10, s8, s9
	addw s9, s3, s11
	mul s8, s9, s7
	sd s10, 48(s6)
	srai s10, s8, 34
	srli s8, s8, 63
	add s11, s8, s10
	sh2add s8, s11, s11
	addiw s11, a1, 210
	slliw s10, s8, 1
	addiw a1, a1, 480
	subw s8, s9, s10
	addw s10, s3, s11
	mul s9, s10, s7
	srli s7, s9, 63
	srai s11, s9, 34
	add s7, s7, s11
	sh2add s9, s7, s7
	slliw s11, s9, 1
	subw s7, s10, s11
	slli s9, s7, 32
	addiw s7, a0, 240
	add.uw s11, s8, s9
	addiw a0, a0, 512
	addw s3, s3, s7
	li s7, 625
	sd s11, 56(s6)
	slli s6, s7, 4
	blt s5, s6, label2
	mv a0, zero
.p2align 2
label21:
	sh2add a1, a0, s0
	lui t0, 419430
	lw a3, 0(a1)
	addiw a2, t0, 1639
	mulw a4, a3, a3
	mul a3, a4, a2
	srli t2, a3, 63
	srai a5, a3, 34
	sh2add a3, a0, s1
	add t0, t2, a5
	addiw a0, a0, 16
	sh2add t1, t0, t0
	slliw t3, t1, 1
	subw a5, a4, t3
	sw a5, 0(a3)
	lw t1, 4(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
	subw a5, a4, t4
	sw a5, 4(a3)
	lw t1, 8(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 8(a3)
	lw t1, 12(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t0, a4, a5
	sw t0, 12(a3)
	lw t1, 16(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t4, t1, t1
	slliw t3, t4, 1
	subw a5, a4, t3
	sw a5, 16(a3)
	lw t1, 20(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
	subw a5, a4, t4
	sw a5, 20(a3)
	lw t1, 24(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw a5, t2, 1
	subw t0, a4, a5
	sw t0, 24(a3)
	lw t1, 28(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t4, a5, 63
	srai t0, a5, 34
	add t1, t4, t0
	sh2add t2, t1, t1
	slliw t3, t2, 1
	subw a5, a4, t3
	sw a5, 28(a3)
	lw t1, 32(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t2, t1, t1
	slliw t4, t2, 1
	subw a5, a4, t4
	sw a5, 32(a3)
	lw t1, 36(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 36(a3)
	lw t1, 40(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 40(a3)
	lw t1, 44(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 44(a3)
	lw t1, 48(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw t4, t3, 1
	subw a5, a4, t4
	sw a5, 48(a3)
	lw t1, 52(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 34
	add t1, t3, t0
	sh2add t4, t1, t1
	slliw t2, t4, 1
	subw a5, a4, t2
	sw a5, 52(a3)
	lw t1, 56(a1)
	mulw a4, t1, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	sh2add t3, t1, t1
	slliw a5, t3, 1
	subw t2, a4, a5
	sw t2, 56(a3)
	lw t0, 60(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai a1, a5, 34
	add a2, t1, a1
	sh2add t0, a2, a2
	li a2, 625
	slliw a5, t0, 1
	subw a1, a4, a5
	sw a1, 60(a3)
	slli a1, a2, 4
	blt a0, a1, label21
	mv a0, zero
.p2align 2
label23:
	sh2add a1, a0, s1
	lui t1, 335544
	lw a3, 0(a1)
	addiw a2, t1, 1311
	mulw a5, a3, a3
	li a3, 100
	mul a4, a5, a2
	srli t2, a4, 63
	srai t0, a4, 37
	sh2add a4, a0, s0
	add t1, t2, t0
	lw t2, 0(a4)
	mulw t3, t1, a3
	subw t0, a5, t3
	sh2add a5, a0, s2
	addw t1, t0, t2
	addiw a0, a0, 4
	sw t1, 0(a5)
	lw t3, 4(a1)
	mulw t0, t3, t3
	mul t1, t0, a2
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 4(a4)
	mulw t5, t3, a3
	subw t1, t0, t5
	addw t4, t1, t2
	sw t4, 4(a5)
	lw t3, 8(a1)
	lw t6, 8(a4)
	mulw t0, t3, t3
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	mulw t5, t4, a3
	subw t1, t0, t5
	addw t2, t1, t6
	sw t2, 8(a5)
	lw t3, 12(a1)
	mulw t0, t3, t3
	mul t1, t0, a2
	srli t4, t1, 63
	srai t2, t1, 37
	lw t1, 12(a4)
	add a2, t4, t2
	mulw t3, a2, a3
	li a3, 625
	subw a1, t0, t3
	addw a2, a1, t1
	slli a1, a3, 4
	sw a2, 12(a5)
	blt a0, a1, label23
	mv s4, zero
	mv a0, zero
	li a2, 625
	slli a1, a2, 4
	bge zero, a1, label45
.p2align 2
label28:
	addiw s3, a0, 1
	li a1, 10
	bge a0, a1, label270
	sh2add a3, a0, s2
	lui a4, 201377
	li t0, 1333
	lw a2, 0(a3)
	addiw a3, a4, -261
	addw a1, s4, a2
	mul a0, a1, a3
	srli a4, a0, 63
	srai a2, a0, 40
	add a3, a4, a2
	mulw a5, a3, t0
	subw s4, a1, a5
	mv a0, s4
	jal putint
	mv a0, s3
	li a2, 625
	slli a1, a2, 4
	blt s3, a1, label28
	j label45
.p2align 2
label40:
	sh2add a2, a0, s2
	li a4, 625
	mv a3, s4
	slli a1, a4, 3
	lw a0, 0(a2)
.p2align 2
label41:
	sh2add a2, a1, s0
	addw t2, a0, a3
	addiw a1, a1, 16
	lw a5, 0(a2)
	lw t0, 4(a2)
	subw t1, t2, a5
	addw a4, a0, t1
	lw t1, 8(a2)
	subw t2, a4, t0
	lw t0, 12(a2)
	addw a3, a0, t2
	subw a5, a3, t1
	addw a4, a0, a5
	lw a5, 16(a2)
	subw t2, a4, t0
	lw t0, 20(a2)
	addw a3, a0, t2
	lw t2, 24(a2)
	subw t1, a3, a5
	addw a4, a0, t1
	subw a5, a4, t0
	lw t0, 28(a2)
	addw a3, a0, a5
	subw t1, a3, t2
	lw t2, 32(a2)
	addw a4, a0, t1
	lw t1, 36(a2)
	subw a3, a4, t0
	lw t0, 40(a2)
	addw a5, a0, a3
	subw a4, a5, t2
	addw a3, a0, a4
	subw a5, a3, t1
	lw t1, 44(a2)
	addw a4, a0, a5
	lw t2, 48(a2)
	subw a3, a4, t0
	lw t0, 52(a2)
	addw a5, a0, a3
	subw a4, a5, t1
	addw a3, a0, a4
	subw a5, a3, t2
	lw t2, 56(a2)
	addw a4, a0, a5
	subw t1, a4, t0
	lw t0, 60(a2)
	addw a3, a0, t1
	subw a5, a3, t2
	addw a4, a0, a5
	li a5, 1249
	subw a3, a4, t0
	slli a2, a5, 3
	blt a1, a2, label41
	sh2add a2, a1, s0
	addw t0, a0, a3
	lw a4, 0(a2)
	lw a5, 4(a2)
	subw t1, t0, a4
	lw a4, 8(a2)
	addw a1, a0, t1
	lw t1, 12(a2)
	subw t0, a1, a5
	addw a3, a0, t0
	lw t0, 16(a2)
	subw a5, a3, a4
	addw a1, a0, a5
	subw a4, a1, t1
	addw a3, a0, a4
	lw a4, 20(a2)
	subw a5, a3, t0
	addw a1, a0, a5
	lw a5, 24(a2)
	subw t0, a1, a4
	addw a3, a0, t0
	lw t0, 28(a2)
	subw a4, a3, a5
	addw a1, a0, a4
	subw s4, a1, t0
	mv a0, s4
	jal putint
	mv a0, s3
	li a2, 625
	slli a1, a2, 4
	blt s3, a1, label28
	j label45
.p2align 2
label270:
	li a1, 20
	blt a0, a1, label40
	li a1, 30
	bge a0, a1, label39
	li a2, 625
	slli a1, a2, 3
	li a3, 625
	slli a2, a3, 4
	blt a1, a2, label36
.p2align 2
label35:
	mv a0, s4
	jal putint
	mv a0, s3
	li a2, 625
	slli a1, a2, 4
	blt s3, a1, label28
	j label45
.p2align 2
label36:
	lui a3, 1
	addiw a2, a3, -1863
	bgt a1, a2, label38
	sh2add a3, a1, s2
	lui t1, 80533
	lui t2, 3
	sh2add a2, a0, s0
	addiw a1, a1, 2
	lw a5, 0(a2)
	addw t0, s4, a5
	lw a4, 0(a3)
	addiw a3, t1, -1433
	addw a2, a4, t0
	addiw t1, t2, 1045
	mul a4, a2, a3
	srli t0, a4, 63
	srai a5, a4, 42
	add a3, t0, a5
	mulw a4, a3, t1
	subw s4, a2, a4
	li a3, 625
	slli a2, a3, 4
	blt a1, a2, label36
	j label35
.p2align 2
label38:
	sh2add a5, a0, s1
	sh2add a4, a1, s0
	lw a3, 0(a5)
	addiw a1, a1, 1
	addw a2, s4, a3
	lw a5, 0(a4)
	subw s4, a2, a5
	li a3, 625
	slli a2, a3, 4
	blt a1, a2, label36
	j label35
.p2align 2
label39:
	sh2add a3, a0, s2
	lui a5, 343639
	lui t0, 24
	addiw a0, a5, -1555
	lw a2, 0(a3)
	sh3add a4, a2, a2
	addw a1, s4, a4
	addiw a4, t0, 1684
	mul a2, a1, a0
	srli a5, a2, 63
	srai a3, a2, 47
	add a0, a5, a3
	mulw a2, a0, a4
	mv a0, s3
	subw s4, a1, a2
	li a2, 625
	slli a1, a2, 4
	blt s3, a1, label28
label45:
	mv a0, s4
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s10, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
