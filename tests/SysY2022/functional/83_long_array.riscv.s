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
	addi sp, sp, -48
pcrel603:
	auipc a0, %pcrel_hi(a1)
	li a1, 7
	li a2, 6
	li a3, 5
	li a4, 4
	li t0, 3
	li t1, 2
	mv t2, zero
	li a5, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel603)
	sd s1, 16(sp)
pcrel604:
	auipc a0, %pcrel_hi(a2)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel604)
	sd s4, 32(sp)
pcrel605:
	auipc a0, %pcrel_hi(a3)
	sd s3, 40(sp)
	addi s2, a0, %pcrel_lo(pcrel605)
	mv t3, zero
	li a0, 8
.p2align 2
label2:
	sh2add t4, t3, s0
	li t5, 1717986919
	addiw t3, t3, 8
	mul t6, t2, t5
	srli a7, t6, 63
	srai a6, t6, 34
	add t6, a7, a6
	sh2add a6, t6, t6
	addw t6, t2, a5
	slliw a7, a6, 1
	addiw a5, a5, 16
	subw a6, t2, a7
	sw a6, 0(t4)
	mul a6, t6, t5
	srli s4, a6, 63
	srai a7, a6, 34
	add a6, s4, a7
	sh2add s3, a6, a6
	slliw a7, s3, 1
	subw t6, t6, a7
	addiw a7, t1, 2
	addiw t1, t1, 32
	sw t6, 4(t4)
	addw t6, t2, a7
	mul a6, t6, t5
	srli s3, a6, 63
	srai a7, a6, 34
	add a6, s3, a7
	sh2add s4, a6, a6
	slliw a7, s4, 1
	subw t6, t6, a7
	addiw a7, t0, 6
	addiw t0, t0, 48
	sw t6, 8(t4)
	addw t6, t2, a7
	mul a6, t6, t5
	srli s3, a6, 63
	srai a7, a6, 34
	add a6, s3, a7
	sh2add s4, a6, a6
	slliw a7, s4, 1
	subw t6, t6, a7
	addiw a7, a4, 12
	addiw a4, a4, 64
	sw t6, 12(t4)
	addw t6, t2, a7
	mul a6, t6, t5
	srli s4, a6, 63
	srai a7, a6, 34
	add a6, s4, a7
	sh2add s3, a6, a6
	slliw a7, s3, 1
	subw t6, t6, a7
	addiw a7, a3, 20
	addiw a3, a3, 80
	sw t6, 16(t4)
	addw t6, t2, a7
	mul a6, t6, t5
	srli s3, a6, 63
	srai a7, a6, 34
	add a6, s3, a7
	sh2add a7, a6, a6
	slliw a6, a7, 1
	addiw a7, a2, 30
	subw t6, t6, a6
	addiw a2, a2, 96
	sw t6, 20(t4)
	addw t6, t2, a7
	mul a6, t6, t5
	srli s3, a6, 63
	srai a7, a6, 34
	add a6, s3, a7
	sh2add s4, a6, a6
	addiw a6, a1, 42
	slliw a7, s4, 1
	addiw a1, a1, 112
	subw t6, t6, a7
	sw t6, 24(t4)
	addw t6, t2, a6
	mul t5, t6, t5
	srli a7, t5, 63
	srai a6, t5, 34
	add t5, a7, a6
	sh2add a7, t5, t5
	slliw a6, a7, 1
	subw t5, t6, a6
	sw t5, 28(t4)
	addiw t4, a0, 56
	addiw a0, a0, 128
	addw t2, t2, t4
	li t4, 10000
	blt t3, t4, label2
	mv a1, zero
.p2align 2
label13:
	sh2add a0, a1, s0
	li a2, 1717986919
	lw a4, 0(a0)
	mulw a3, a4, a4
	mul a4, a3, a2
	srli t1, a4, 63
	srai a5, a4, 34
	add a4, t1, a5
	sh2add t0, a4, a4
	slliw a5, t0, 1
	subw a4, a3, a5
	sh2add a3, a1, s1
	addiw a1, a1, 8
	sw a4, 0(a3)
	lw t0, 4(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
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
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a4, a4, t1
	sw a4, 20(a3)
	lw t0, 24(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	sh2add t0, a5, a5
	slliw t1, t0, 1
	subw a5, a4, t1
	sw a5, 24(a3)
	lw a4, 28(a0)
	mulw a0, a4, a4
	mul a2, a0, a2
	srli a5, a2, 63
	srai a4, a2, 34
	add a2, a5, a4
	sh2add a4, a2, a2
	li a2, 10000
	slliw a5, a4, 1
	subw a0, a0, a5
	sw a0, 28(a3)
	blt a1, a2, label13
	mv a0, zero
.p2align 2
label15:
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
	addiw a0, a0, 8
	sw t0, 0(a5)
	lw t2, 4(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 4(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 4(a5)
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
	lw t2, 12(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 12(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 12(a5)
	lw t2, 16(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 16(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 16(a5)
	lw t2, 20(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t1, t3, t2
	mulw t2, t1, a3
	lw t1, 20(a4)
	subw t0, t0, t2
	addw t3, t0, t1
	sw t3, 20(a5)
	lw t2, 24(a2)
	mulw t0, t2, t2
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	lw t2, 24(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 24(a5)
	lw t0, 28(a2)
	mulw a2, t0, t0
	mul a1, a2, a1
	srli t2, a1, 63
	srai t0, a1, 37
	add t1, t2, t0
	mulw t0, t1, a3
	lw a3, 28(a4)
	subw a1, a2, t0
	addw a2, a1, a3
	li a1, 10000
	sw a2, 28(a5)
	blt a0, a1, label15
	mv s4, zero
	mv a1, zero
	li a2, 10000
	bge zero, a2, label37
.p2align 2
label20:
	addiw s3, a1, 1
	li a0, 10
	blt a1, a0, label36
	j label21
.p2align 2
label31:
	sh2add a2, a1, s2
	li a1, 5000
	lw a0, 0(a2)
.p2align 2
label32:
	sh2add a2, a1, s0
	addw a5, a0, s4
	addiw a1, a1, 8
	lw a3, 0(a2)
	subw a4, a5, a3
	lw a5, 4(a2)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 8(a2)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 12(a2)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 16(a2)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 20(a2)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 24(a2)
	addw a3, a0, a4
	lw a2, 28(a2)
	subw a4, a3, a5
	addw a3, a0, a4
	subw s4, a3, a2
	li a2, 10000
	blt a1, a2, label32
	mv a0, s4
	jal putint
	mv a1, s3
	li a2, 10000
	blt s3, a2, label20
	j label37
.p2align 2
label36:
	sh2add a2, a1, s2
	li a3, 824839931
	li a4, 1333
	lw a1, 0(a2)
	addw a0, s4, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	mulw a2, a1, a4
	subw s4, a0, a2
	mv a0, s4
	jal putint
	mv a1, s3
	li a2, 10000
	blt s3, a2, label20
label37:
	mv a0, s4
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label21:
	li a0, 20
	blt a1, a0, label31
	li a0, 30
	bge a1, a0, label23
	li a0, 5000
	li a2, 10000
	bge a0, a2, label27
.p2align 2
label28:
	li a2, 2233
	bgt a0, a2, label30
	sh2add a2, a0, s2
	sh2add a5, a1, s0
	addiw a0, a0, 2
	lw a4, 0(a5)
	li a5, 329861735
	addw t0, s4, a4
	lw a3, 0(a2)
	addw a2, a3, t0
	mul a3, a2, a5
	srli a5, a3, 63
	srai a4, a3, 42
	add a3, a5, a4
	li a4, 13333
	mulw a5, a3, a4
	subw s4, a2, a5
	li a2, 10000
	blt a0, a2, label28
	j label27
.p2align 2
label30:
	sh2add a3, a1, s1
	sh2add a4, a0, s0
	lw a5, 0(a3)
	addiw a0, a0, 1
	addw a2, s4, a5
	lw a3, 0(a4)
	subw s4, a2, a3
	li a2, 10000
	blt a0, a2, label28
	j label27
.p2align 2
label23:
	sh2add a2, a1, s2
	li a3, 1407543789
	lw a1, 0(a2)
	sh3add a4, a1, a1
	addw a0, s4, a4
	li a4, 99988
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	mulw a2, a1, a4
	mv a1, s3
	subw s4, a0, a2
	li a2, 10000
	blt s3, a2, label20
	j label37
.p2align 2
label27:
	mv a0, s4
	jal putint
	mv a1, s3
	li a2, 10000
	blt s3, a2, label20
	j label37
