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
pcrel860:
	auipc a1, %pcrel_hi(a1)
pcrel861:
	auipc a0, %pcrel_hi(a2)
	li a2, 14
	li a3, 13
	li a4, 12
	li a5, 11
	li t0, 10
	li t1, 9
	li t3, 8
	li t4, 7
	li t5, 6
	li t6, 5
	li a6, 4
	li a7, 3
	li t2, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel860)
	sd s5, 16(sp)
pcrel862:
	auipc a1, %pcrel_hi(a3)
	sd s1, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel861)
	sd s6, 32(sp)
	li a0, 16
	sd s2, 40(sp)
	addi s2, a1, %pcrel_lo(pcrel862)
	sd s4, 48(sp)
	li a1, 15
	li s4, 2
	sd s3, 56(sp)
	mv s3, zero
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
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
	addw s8, s3, t2
	slliw s9, s11, 1
	addiw t2, t2, 32
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
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, a7, 6
	subw s8, s8, s11
	addiw a7, a7, 96
	sw s8, 8(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, a6, 12
	subw s8, s8, s11
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
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, t3, 56
	subw s8, s8, s11
	addiw t3, t3, 256
	sw s8, 28(s6)
	addw s8, s3, s10
	mul s9, s8, s7
	srli s11, s9, 63
	srai s10, s9, 34
	add s9, s11, s10
	sh2add s11, s9, s9
	slliw s10, s11, 1
	subw s8, s8, s10
	addiw s10, t1, 72
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
	sh2add s10, s9, s9
	slliw s11, s10, 1
	addiw s10, a3, 156
	subw s8, s8, s11
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
	srli s10, s7, 63
	srai s9, s7, 34
	add s7, s10, s9
	sh2add s9, s7, s7
	slliw s10, s9, 1
	subw s7, s8, s10
	sw s7, 60(s6)
	addiw s6, a0, 240
	addiw a0, a0, 512
	addw s3, s3, s6
	li s6, 10000
	blt s5, s6, label2
	mv a1, zero
.p2align 2
label21:
	sh2add a0, a1, s0
	li a2, 1717986919
	lw a4, 0(a0)
	mulw a3, a4, a4
	mul a4, a3, a2
	srli t0, a4, 63
	srai a5, a4, 34
	add a4, t0, a5
	sh2add t1, a4, a4
	slliw a5, t1, 1
	subw a4, a3, a5
	sh2add a3, a1, s1
	addiw a1, a1, 16
	sw a4, 0(a3)
	lw t0, 4(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 4(a3)
	lw t0, 8(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 8(a3)
	lw t0, 12(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 12(a3)
	lw t0, 16(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 16(a3)
	lw t0, 20(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add a5, t2, t0
	sh2add t1, a5, a5
	slliw t0, t1, 1
	subw a4, a4, t0
	sw a4, 20(a3)
	lw t0, 24(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add a5, t2, t0
	sh2add t1, a5, a5
	slliw t0, t1, 1
	subw a4, a4, t0
	sw a4, 24(a3)
	lw t0, 28(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 28(a3)
	lw t0, 32(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 32(a3)
	lw t0, 36(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 36(a3)
	lw t0, 40(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 40(a3)
	lw t0, 44(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 44(a3)
	lw t0, 48(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 48(a3)
	lw t0, 52(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a4, a4, t0
	sw a4, 52(a3)
	lw t0, 56(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t2, a5, a5
	slliw t0, t2, 1
	subw a5, a4, t0
	sw a5, 56(a3)
	lw a4, 60(a0)
	mulw a0, a4, a4
	mul a2, a0, a2
	srli a5, a2, 63
	srai a4, a2, 34
	add a2, a5, a4
	sh2add a4, a2, a2
	li a2, 10000
	slliw a5, a4, 1
	subw a0, a0, a5
	sw a0, 60(a3)
	blt a1, a2, label21
	mv a0, zero
.p2align 2
label23:
	sh2add a2, a0, s1
	li a1, 1374389535
	lw a3, 0(a2)
	mulw a4, a3, a3
	mul a3, a4, a1
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
	addiw a0, a0, 4
	sw t0, 0(a5)
	lw t2, 4(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t4, t1, 63
	srai t2, t1, 37
	add t1, t4, t2
	lw t2, 4(a4)
	mulw t3, t1, a3
	subw t0, t0, t3
	addw t1, t0, t2
	sw t1, 4(a5)
	lw t2, 8(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	lw t2, 8(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 8(a5)
	lw t0, 12(a2)
	mulw a2, t0, t0
	mul a1, a2, a1
	srli t2, a1, 63
	srai t0, a1, 37
	add t1, t2, t0
	mulw t0, t1, a3
	lw a3, 12(a4)
	subw a1, a2, t0
	addw a2, a1, a3
	li a1, 10000
	sw a2, 12(a5)
	blt a0, a1, label23
	mv s4, zero
	mv a0, zero
	bge zero, a1, label45
.p2align 2
label28:
	addiw s3, a0, 1
	li a1, 10
	blt a0, a1, label29
	li a1, 20
	blt a0, a1, label40
	j label848
.p2align 2
label29:
	sh2add a1, a0, s2
	li a3, 824839931
	li a4, 1333
	lw a2, 0(a1)
	addw a0, s4, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	mulw a2, a1, a4
	subw s4, a0, a2
	mv a0, s4
	jal putint
	mv a0, s3
	li a1, 10000
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
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label40:
	sh2add a2, a0, s2
	li a1, 5000
	mv a3, s4
	lw a0, 0(a2)
.p2align 2
label41:
	sh2add a2, a1, s0
	addw t0, a0, a3
	addiw a1, a1, 16
	lw a4, 0(a2)
	subw a5, t0, a4
	lw a4, 4(a2)
	addw a3, a0, a5
	lw a5, 8(a2)
	subw t0, a3, a4
	addw a3, a0, t0
	lw t0, 12(a2)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 16(a2)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 20(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 24(a2)
	addw a3, a0, a5
	lw a5, 28(a2)
	subw t0, a3, a4
	addw a3, a0, t0
	subw a4, a3, a5
	lw a5, 32(a2)
	addw a3, a0, a4
	lw a4, 36(a2)
	subw t0, a3, a5
	addw a3, a0, t0
	subw a5, a3, a4
	lw a4, 40(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 44(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 48(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 52(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 56(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 60(a2)
	addw a3, a0, a5
	subw a2, a3, a4
	li a3, 9992
	bge a1, a3, label44
	mv a3, a2
	j label41
.p2align 2
label44:
	sh2add a1, a1, s0
	addw a4, a0, a2
	lw a3, 0(a1)
	subw a5, a4, a3
	lw a4, 4(a1)
	addw a2, a0, a5
	subw a3, a2, a4
	lw a4, 8(a1)
	addw a2, a0, a3
	lw a5, 12(a1)
	subw a3, a2, a4
	addw a2, a0, a3
	lw a3, 16(a1)
	subw a4, a2, a5
	addw a2, a0, a4
	subw a4, a2, a3
	lw a3, 20(a1)
	addw a2, a0, a4
	lw a4, 24(a1)
	subw a5, a2, a3
	lw a1, 28(a1)
	addw a2, a0, a5
	subw a3, a2, a4
	addw a0, a0, a3
	subw s4, a0, a1
	mv a0, s4
	jal putint
	mv a0, s3
	li a1, 10000
	blt s3, a1, label28
	j label45
.p2align 2
label848:
	li a1, 30
	blt a0, a1, label284
	sh2add a0, a0, s2
	li a3, 1407543789
	li a4, 99988
	lw a1, 0(a0)
	sh3add a2, a1, a1
	addw a0, s4, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	mulw a2, a1, a4
	subw s4, a0, a2
	mv a0, s3
	li a1, 10000
	blt s3, a1, label28
	j label45
.p2align 2
label284:
	li a1, 5000
	li a2, 10000
	blt a1, a2, label36
.p2align 2
label35:
	mv a0, s4
	jal putint
	mv a0, s3
	li a1, 10000
	blt s3, a1, label28
	j label45
.p2align 2
label36:
	li a2, 2233
	bgt a1, a2, label38
	sh2add a2, a1, s2
	li t0, 329861735
	sh2add a5, a0, s0
	addiw a1, a1, 2
	lw a3, 0(a5)
	addw a5, s4, a3
	lw a4, 0(a2)
	addw a2, a4, a5
	mul a3, a2, t0
	li t0, 13333
	srli a5, a3, 63
	srai a4, a3, 42
	add a3, a5, a4
	mulw a4, a3, t0
	subw s4, a2, a4
	li a2, 10000
	blt a1, a2, label36
	j label35
.p2align 2
label38:
	sh2add a3, a0, s1
	lw a4, 0(a3)
	sh2add a3, a1, s0
	addw a2, s4, a4
	addiw a1, a1, 1
	lw a4, 0(a3)
	subw s4, a2, a4
	li a2, 10000
	blt a1, a2, label36
	j label35
