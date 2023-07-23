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
	addi sp, sp, -104
pcrel790:
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
	addi s0, a0, %pcrel_lo(pcrel790)
	sd s5, 88(sp)
pcrel791:
	auipc a0, %pcrel_hi(a2)
	sd s1, 80(sp)
	addi s1, a0, %pcrel_lo(pcrel791)
	sd s6, 72(sp)
pcrel792:
	auipc a0, %pcrel_hi(a3)
	sd s2, 64(sp)
	addi s2, a0, %pcrel_lo(pcrel792)
	sd s4, 56(sp)
	li a0, 16
	li s4, 2
	sd s3, 48(sp)
	mv s3, zero
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s11, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	mv s5, zero
label2:
	sh2add s6, s5, s0
	li s7, 1717986919
	addiw s5, s5, 16
	mul s8, s3, s7
	srli s11, s8, 63
	srai s9, s8, 34
	li s8, 10
	add s10, s11, s9
	mulw s9, s10, s8
	subw s10, s3, s9
	addw s9, s3, t3
	addiw t3, t3, 32
	sw s10, 0(s6)
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s11, s10, s11
	mulw s10, s11, s8
	addiw s11, s4, 2
	subw s9, s9, s10
	addiw s4, s4, 64
	sw s9, 4(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, a7, 6
	addiw a7, a7, 96
	sw s9, 8(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, a6, 12
	addiw a6, a6, 128
	sw s9, 12(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s11, s10, s11
	mulw s10, s11, s8
	addiw s11, t6, 20
	subw s9, s9, s10
	addiw t6, t6, 160
	sw s9, 16(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, t5, 30
	addiw t5, t5, 192
	sw s9, 20(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, t4, 42
	addiw t4, t4, 224
	sw s9, 24(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s11, s10, s11
	mulw s10, s11, s8
	addiw s11, t2, 56
	subw s9, s9, s10
	addiw t2, t2, 256
	sw s9, 28(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, t1, 72
	addiw t1, t1, 288
	sw s9, 32(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, t0, 90
	addiw t0, t0, 320
	sw s9, 36(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, a5, 110
	addiw a5, a5, 352
	sw s9, 40(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s11, s10, s11
	mulw s10, s11, s8
	addiw s11, a4, 132
	subw s9, s9, s10
	addiw a4, a4, 384
	sw s9, 44(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, a3, 156
	addiw a3, a3, 416
	sw s9, 48(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	subw s9, s9, s11
	addiw s11, a2, 182
	addiw a2, a2, 448
	sw s9, 52(s6)
	addw s9, s3, s11
	mul s10, s9, s7
	srai s11, s10, 34
	srli s10, s10, 63
	add s10, s10, s11
	mulw s11, s10, s8
	addiw s10, a1, 210
	subw s9, s9, s11
	addiw a1, a1, 480
	sw s9, 56(s6)
	addw s9, s3, s10
	mul s7, s9, s7
	srli s11, s7, 63
	srai s10, s7, 34
	add s7, s11, s10
	mulw s8, s7, s8
	subw s9, s9, s8
	sw s9, 60(s6)
	addiw s6, a0, 240
	addiw a0, a0, 512
	addw s3, s3, s6
	li s6, 10000
	blt s5, s6, label2
	mv a2, zero
label21:
	sh2add a0, a2, s0
	li a1, 1717986919
	lw a3, 0(a0)
	mulw a4, a3, a3
	mul a3, a4, a1
	srli t1, a3, 63
	srai t0, a3, 34
	li a3, 10
	add a5, t1, t0
	mulw t0, a5, a3
	subw a5, a4, t0
	sh2add a4, a2, s1
	addiw a2, a2, 16
	sw a5, 0(a4)
	lw t1, 4(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	mulw t0, t2, a3
	subw a5, a5, t0
	sw a5, 4(a4)
	lw t1, 8(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 8(a4)
	lw t1, 12(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 12(a4)
	lw t1, 16(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	mulw t0, t2, a3
	subw a5, a5, t0
	sw a5, 16(a4)
	lw t1, 20(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 20(a4)
	lw t1, 24(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	mulw t0, t2, a3
	subw a5, a5, t0
	sw a5, 24(a4)
	lw t1, 28(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 28(a4)
	lw t1, 32(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 32(a4)
	lw t1, 36(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 36(a4)
	lw t1, 40(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 40(a4)
	lw t1, 44(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 44(a4)
	lw t1, 48(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 48(a4)
	lw t1, 52(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 52(a4)
	lw t1, 56(a0)
	mulw a5, t1, t1
	mul t0, a5, a1
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw t1, a5, t0
	sw t1, 56(a4)
	lw a5, 60(a0)
	mulw a0, a5, a5
	mul a1, a0, a1
	srli t1, a1, 63
	srai a5, a1, 34
	add t0, t1, a5
	mulw a1, t0, a3
	subw a0, a0, a1
	li a1, 10000
	sw a0, 60(a4)
	blt a2, a1, label21
	mv a0, zero
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
	addiw a0, a0, 4
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
	add t4, t3, t2
	lw t2, 8(a4)
	mulw t1, t4, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 8(a5)
	lw t0, 12(a1)
	lw a4, 12(a4)
	mulw a1, t0, t0
	mul a2, a1, a2
	srli t1, a2, 63
	srai t0, a2, 37
	add a2, t1, t0
	mulw a3, a2, a3
	subw a1, a1, a3
	addw a2, a1, a4
	sw a2, 12(a5)
	li a2, 10000
	blt a0, a2, label23
	mv a1, zero
	mv s3, zero
	bge zero, a2, label28
label29:
	li a2, 10
	blt s3, a2, label45
	li a0, 20
	blt s3, a0, label274
	li a0, 30
	blt s3, a0, label278
	j label32
label45:
	sh2add a3, s3, s2
	lw a2, 0(a3)
	li a3, 824839931
	addw a0, a1, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	li a2, 1333
	mulw a3, a1, a2
	subw s4, a0, a3
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	li a2, 10000
	blt s3, a2, label29
	j label28
label274:
	sh2add a3, s3, s2
	li a2, 5000
	lw a0, 0(a3)
	mv a3, a1
label41:
	sh2add a1, a2, s0
	addw a5, a0, a3
	addiw a2, a2, 16
	lw a4, 0(a1)
	subw t0, a5, a4
	lw a5, 4(a1)
	addw a3, a0, t0
	subw a4, a3, a5
	lw a5, 8(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 12(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 16(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 20(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 24(a1)
	addw a3, a0, a4
	lw t0, 28(a1)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 32(a1)
	subw a5, a3, t0
	addw a3, a0, a5
	lw a5, 36(a1)
	subw t0, a3, a4
	addw a3, a0, t0
	subw a4, a3, a5
	lw a5, 40(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 44(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 48(a1)
	addw a3, a0, a4
	lw t0, 52(a1)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 56(a1)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 60(a1)
	addw a3, a0, a5
	subw a1, a3, a4
	li a3, 9992
	bge a2, a3, label44
	mv a3, a1
	j label41
label44:
	sh2add a2, a2, s0
	addw a4, a0, a1
	lw a3, 0(a2)
	subw a5, a4, a3
	lw a3, 4(a2)
	addw a1, a0, a5
	subw a4, a1, a3
	lw a3, 8(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 12(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 16(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 20(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a3, 24(a2)
	addw a1, a0, a4
	subw a4, a1, a3
	lw a1, 28(a2)
	addw a0, a0, a4
	subw s4, a0, a1
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	li a2, 10000
	blt s3, a2, label29
label28:
	mv a0, a1
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s11, 16(sp)
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
label32:
	sh2add a3, s3, s2
	addiw s3, s3, 1
	lw a2, 0(a3)
	li a3, 1407543789
	sh3add a4, a2, a2
	addw a0, a1, a4
	li a4, 99988
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	mulw a2, a1, a4
	subw a1, a0, a2
	li a2, 10000
	blt s3, a2, label29
	j label28
label278:
	mv s4, a1
	li a0, 5000
	li a1, 10000
	blt a0, a1, label37
label36:
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	li a2, 10000
	blt s3, a2, label29
	j label28
label37:
	li a1, 2233
	bgt a0, a1, label39
	sh2add a1, a0, s2
	sh2add a4, s3, s0
	addiw a0, a0, 2
	lw a3, 0(a4)
	li a4, 329861735
	addw a5, s4, a3
	lw a2, 0(a1)
	addw a1, a2, a5
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 42
	add a2, a4, a3
	li a3, 13333
	mulw a4, a2, a3
	subw s4, a1, a4
	li a1, 10000
	blt a0, a1, label37
	j label36
label39:
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	blt a0, a1, label37
	j label36
