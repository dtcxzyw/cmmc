.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a1:
	.zero	40000
.align 4
a2:
	.zero	40000
.align 4
a3:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -104
pcrel1052:
	auipc a0, %pcrel_hi(a1)
	li a1, 15
	li a2, 14
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
	sd s0, 96(sp)
	addi s0, a0, %pcrel_lo(pcrel1052)
	sd s5, 88(sp)
pcrel1053:
	auipc a0, %pcrel_hi(a2)
	sd s1, 80(sp)
	addi s1, a0, %pcrel_lo(pcrel1053)
	sd s6, 72(sp)
pcrel1054:
	auipc a0, %pcrel_hi(a3)
	sd s2, 64(sp)
	addi s2, a0, %pcrel_lo(pcrel1054)
	sd s4, 56(sp)
	li a0, 16
	li s4, 2
	sd s3, 48(sp)
	mv s3, zero
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	mv s5, zero
.p2align 2
label2:
	sh2add s6, s5, s0
	li s7, 1717986919
	addiw s5, s5, 16
	mul s8, s3, s7
	srli s10, s8, 63
	srai s9, s8, 34
	add s8, s10, s9
	sh2add s11, s8, s8
	addw s8, s3, t3
	slliw s9, s11, 1
	addiw t3, t3, 32
	subw s10, s3, s9
	mul s9, s8, s7
	srli s11, s9, 63
	sw s10, 0(s6)
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, s4, 2
	sw s8, 4(s6)
	addiw s4, s4, 64
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a7, 6
	addiw a7, a7, 96
	sw s8, 8(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a6, 12
	addiw a6, a6, 128
	sw s8, 12(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, t6, 20
	addiw t6, t6, 160
	sw s8, 16(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, t5, 30
	subw s8, s8, s11
	addiw t5, t5, 192
	sw s8, 20(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, t4, 42
	addiw t4, t4, 224
	sw s8, 24(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, t2, 56
	addiw t2, t2, 256
	sw s8, 28(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, t1, 72
	subw s8, s8, s11
	addiw t1, t1, 288
	sw s8, 32(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, t0, 90
	subw s8, s8, s11
	addiw t0, t0, 320
	sw s8, 36(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a5, 110
	addiw a5, a5, 352
	sw s8, 40(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a4, 132
	addiw a4, a4, 384
	sw s8, 44(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a3, 156
	addiw a3, a3, 416
	sw s8, 48(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, a2, 182
	addiw a2, a2, 448
	sw s8, 52(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	addiw s9, a1, 210
	slliw s10, s11, 1
	addiw a1, a1, 480
	subw s8, s8, s10
	sw s8, 56(s6)
	addw s8, s3, s9
	mul s7, s8, s7
	srli s11, s7, 63
	srai s9, s7, 34
	add s7, s11, s9
	sh2add s10, s7, s7
	slliw s9, s10, 1
	subw s7, s8, s9
	sw s7, 60(s6)
	addiw s6, a0, 240
	addiw a0, a0, 512
	addw s3, s3, s6
	li s6, 10000
	blt s5, s6, label2
	mv a2, zero
.p2align 2
label21:
	sh2add a0, a2, s0
	li a1, 1717986919
	lw a4, 0(a0)
	mulw a3, a4, a4
	mul a4, a3, a1
	srli t1, a4, 63
	srai a5, a4, 34
	add a4, t1, a5
	sh2add t0, a4, a4
	slliw a5, t0, 1
	subw a4, a3, a5
	sh2add a3, a2, s1
	addiw a2, a2, 16
	sw a4, 0(a3)
	lw t0, 4(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 4(a3)
	lw t0, 8(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t2, a5, 63
	srai t0, a5, 34
	add a5, t2, t0
	sh2add t1, a5, a5
	slliw t0, t1, 1
	subw a4, a4, t0
	sw a4, 8(a3)
	lw t0, 12(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 12(a3)
	lw t0, 16(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 16(a3)
	lw t0, 20(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 20(a3)
	lw t0, 24(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 24(a3)
	lw t0, 28(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 28(a3)
	lw t0, 32(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 32(a3)
	lw t0, 36(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 36(a3)
	lw t0, 40(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 40(a3)
	lw t0, 44(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 44(a3)
	lw t0, 48(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 48(a3)
	lw t0, 52(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 52(a3)
	lw t0, 56(a0)
	mulw a4, t0, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a5, a4, t1
	sw a5, 56(a3)
	lw a4, 60(a0)
	mulw a0, a4, a4
	mul a1, a0, a1
	srli a5, a1, 63
	srai a4, a1, 34
	add a1, a5, a4
	sh2add t0, a1, a1
	li a1, 10000
	slliw a4, t0, 1
	subw a0, a0, a4
	sw a0, 60(a3)
	blt a2, a1, label21
	mv a0, zero
.p2align 2
label23:
	sh2add a1, a0, s1
	li a2, 1374389535
	lw a3, 0(a1)
	mulw a4, a3, a3
	mul a3, a4, a2
	srli t1, a3, 63
	srai a5, a3, 37
	li a3, 100
	add t0, t1, a5
	mulw t1, t0, a3
	subw a5, a4, t1
	sh2add a4, a0, s0
	lw t1, 0(a4)
	addw t0, a5, t1
	sh2add a5, a0, s2
	addiw a0, a0, 16
	sw t0, 0(a5)
	lw t2, 4(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 4(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 4(a5)
	lw t2, 8(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 8(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 8(a5)
	lw t2, 12(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 12(a4)
	mulw t1, t3, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 12(a5)
	lw t2, 16(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	lw t2, 16(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 16(a5)
	lw t2, 20(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	lw t3, 20(a4)
	mulw t2, t1, a3
	subw t0, t0, t2
	addw t1, t0, t3
	sw t1, 20(a5)
	lw t2, 24(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 24(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 24(a5)
	lw t2, 28(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 28(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 28(a5)
	lw t2, 32(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	lw t2, 32(a4)
	mulw t4, t1, a3
	subw t0, t0, t4
	addw t1, t0, t2
	sw t1, 32(a5)
	lw t2, 36(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	lw t2, 36(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 36(a5)
	lw t2, 40(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 40(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 40(a5)
	lw t2, 44(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	lw t3, 44(a4)
	mulw t2, t1, a3
	subw t0, t0, t2
	addw t1, t0, t3
	sw t1, 44(a5)
	lw t2, 48(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 48(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 48(a5)
	lw t2, 52(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	lw t2, 52(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 52(a5)
	lw t2, 56(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	lw t3, 56(a4)
	mulw t2, t1, a3
	subw t0, t0, t2
	addw t1, t0, t3
	sw t1, 56(a5)
	lw t0, 60(a1)
	mulw a1, t0, t0
	mul a2, a1, a2
	srli t1, a2, 63
	srai t0, a2, 37
	add a2, t1, t0
	mulw a3, a2, a3
	lw a2, 60(a4)
	subw a1, a1, a3
	addw a3, a1, a2
	li a1, 10000
	sw a3, 60(a5)
	blt a0, a1, label23
	mv a3, zero
	mv s3, zero
	bge zero, a1, label45
.p2align 2
label28:
	li a0, 10
	blt s3, a0, label44
	li a0, 20
	blt s3, a0, label30
	li a0, 30
	blt s3, a0, label481
	j label43
.p2align 2
label30:
	sh2add a1, s3, s2
	li a2, 5000
	lw a0, 0(a1)
.p2align 2
label31:
	sh2add a1, a2, s0
	addw a5, a0, a3
	addiw a2, a2, 16
	lw a4, 0(a1)
	subw t0, a5, a4
	lw a4, 4(a1)
	addw a3, a0, t0
	subw a5, a3, a4
	lw a4, 8(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 12(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 16(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 20(a1)
	addw a3, a0, a5
	lw a5, 24(a1)
	subw t0, a3, a4
	addw a3, a0, t0
	lw t0, 28(a1)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 32(a1)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 36(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 40(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 44(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 48(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 52(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 56(a1)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 60(a1)
	addw a3, a0, a5
	subw a1, a3, a4
	li a3, 9992
	bge a2, a3, label34
	mv a3, a1
	j label31
.p2align 2
label34:
	sh2add a2, a2, s0
	addw a5, a0, a1
	lw a3, 0(a2)
	subw a4, a5, a3
	lw a3, 4(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 8(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 12(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 16(a2)
	addw a1, a0, a4
	lw a5, 20(a2)
	subw a4, a1, a3
	addw a1, a0, a4
	lw a4, 24(a2)
	subw a3, a1, a5
	addw a1, a0, a3
	subw a3, a1, a4
	lw a1, 28(a2)
	addw a0, a0, a3
	subw s4, a0, a1
	mv a0, s4
	jal putint
	mv a3, s4
	addiw s3, s3, 1
	li a1, 10000
	blt s3, a1, label28
	j label45
label481:
	mv s4, a3
	li a0, 5000
	li a1, 10000
	bge a0, a1, label39
.p2align 2
label40:
	li a1, 2233
	bgt a0, a1, label42
	sh2add a1, a0, s2
	sh2add a4, s3, s0
	addiw a0, a0, 2
	lw a3, 0(a4)
	li a4, 329861735
	addw a5, s4, a3
	lw a2, 0(a1)
	addw a1, a2, a5
	mul a2, a1, a4
	li a4, 13333
	srli a5, a2, 63
	srai a3, a2, 42
	add a2, a5, a3
	mulw a3, a2, a4
	subw s4, a1, a3
	li a1, 10000
	blt a0, a1, label40
	j label39
.p2align 2
label42:
	sh2add a2, s3, s1
	sh2add a3, a0, s0
	lw a4, 0(a2)
	addiw a0, a0, 1
	addw a1, s4, a4
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	blt a0, a1, label40
	j label39
label43:
	sh2add a4, s3, s2
	addiw s3, s3, 1
	lw a1, 0(a4)
	sh3add a2, a1, a1
	addw a0, a3, a2
	li a3, 1407543789
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	li a2, 99988
	mulw a4, a1, a2
	subw a3, a0, a4
	j label25
label45:
	mv a0, a3
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s2, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label25:
	li a1, 10000
	blt s3, a1, label28
	j label45
label39:
	mv a0, s4
	jal putint
	mv a3, s4
	addiw s3, s3, 1
	j label25
.p2align 2
label44:
	sh2add a2, s3, s2
	lw a1, 0(a2)
	addw a0, a3, a1
	li a3, 824839931
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	li a2, 1333
	mulw a3, a1, a2
	subw s4, a0, a3
	mv a0, s4
	jal putint
	mv a3, s4
	addiw s3, s3, 1
	li a1, 10000
	blt s3, a1, label28
	j label45
