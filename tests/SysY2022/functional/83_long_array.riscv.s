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
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel481:
	auipc a0, %pcrel_hi(a1)
	li a1, 3
	li a2, 2
	mv a4, zero
	li a3, 1
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel481)
	sd s1, 32(sp)
pcrel482:
	auipc a0, %pcrel_hi(a2)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel482)
	sd s3, 16(sp)
pcrel483:
	auipc a0, %pcrel_hi(a3)
	sd s4, 8(sp)
	addi s2, a0, %pcrel_lo(pcrel483)
	sd ra, 0(sp)
	li a0, 4
	mv a5, zero
.p2align 2
label2:
	sh2add t0, a5, s0
	li t1, 1717986919
	addiw a5, a5, 4
	mul t2, a4, t1
	srli t5, t2, 63
	srai t3, t2, 34
	add t2, t5, t3
	sh2add t4, t2, t2
	addw t2, a4, a3
	slliw t3, t4, 1
	addiw a3, a3, 8
	subw t5, a4, t3
	mul t3, t2, t1
	srai t4, t3, 34
	sw t5, 0(t0)
	srli t5, t3, 63
	add t3, t5, t4
	sh2add t4, t3, t3
	slliw t5, t4, 1
	addiw t4, a2, 2
	subw t2, t2, t5
	addiw a2, a2, 16
	sw t2, 4(t0)
	addw t2, a4, t4
	mul t3, t2, t1
	srli t5, t3, 63
	srai t4, t3, 34
	add t3, t5, t4
	sh2add t4, t3, t3
	addiw t3, a1, 6
	slliw t5, t4, 1
	addiw a1, a1, 24
	subw t2, t2, t5
	sw t2, 8(t0)
	addw t2, a4, t3
	mul t1, t2, t1
	srli t4, t1, 63
	srai t3, t1, 34
	add t1, t4, t3
	sh2add t5, t1, t1
	slliw t3, t5, 1
	subw t1, t2, t3
	sw t1, 12(t0)
	addiw t0, a0, 12
	addiw a0, a0, 32
	addw a4, a4, t0
	li t0, 10000
	blt a5, t0, label2
	mv a1, zero
.p2align 2
label9:
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
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw t0, 4(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add a5, t2, t0
	sh2add t1, a5, a5
	slliw t0, t1, 1
	subw a4, a4, t0
	sw a4, 4(a3)
	lw t0, 8(a0)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add a5, t2, t0
	sh2add t1, a5, a5
	slliw t0, t1, 1
	subw a5, a4, t0
	sw a5, 8(a3)
	lw a4, 12(a0)
	mulw a0, a4, a4
	mul a2, a0, a2
	srli a5, a2, 63
	srai a4, a2, 34
	add a2, a5, a4
	sh2add a4, a2, a2
	li a2, 10000
	slliw a5, a4, 1
	subw a0, a0, a5
	sw a0, 12(a3)
	blt a1, a2, label9
	mv a0, zero
.p2align 2
label11:
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
	add t1, t3, t2
	lw t2, 8(a4)
	mulw t4, t1, a3
	subw t0, t0, t4
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
	sw a2, 12(a5)
	li a2, 10000
	blt a0, a2, label11
	mv a1, zero
	mv s3, zero
	blt zero, a2, label16
	j label33
.p2align 2
label13:
	li a2, 10000
	bge s3, a2, label33
.p2align 2
label16:
	li a0, 10
	blt s3, a0, label17
	li a0, 20
	blt s3, a0, label148
	li a0, 30
	blt s3, a0, label152
	j label20
.p2align 2
label17:
	sh2add a2, s3, s2
	li a3, 824839931
	lw a4, 0(a2)
	addw a0, a1, a4
	li a4, 1333
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	mulw a2, a1, a4
	subw s4, a0, a2
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	li a2, 10000
	blt s3, a2, label16
	j label33
label152:
	mv s4, a1
	li a0, 5000
	j label21
label20:
	sh2add a3, s3, s2
	addiw s3, s3, 1
	lw a2, 0(a3)
	li a3, 1407543789
	sh3add a4, a2, a2
	addw a0, a1, a4
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	li a2, 99988
	mulw a3, a1, a2
	subw a1, a0, a3
	j label13
.p2align 2
label21:
	li a1, 10000
	blt a0, a1, label25
label24:
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	j label13
.p2align 2
label25:
	li a1, 2233
	bgt a0, a1, label27
	sh2add a1, a0, s2
	sh2add a4, s3, s0
	addiw a0, a0, 2
	lw a2, 0(a4)
	li a4, 329861735
	addw a5, s4, a2
	lw a3, 0(a1)
	addw a1, a3, a5
	li a5, 13333
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 42
	add a2, a4, a3
	mulw a3, a2, a5
	subw s4, a1, a3
	li a1, 10000
	blt a0, a1, label25
	j label24
.p2align 2
label27:
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	blt a0, a1, label25
	j label24
.p2align 2
label148:
	sh2add a3, s3, s2
	li a2, 5000
	lw a0, 0(a3)
	mv a3, a1
.p2align 2
label29:
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
	lw t0, 20(a1)
	subw a5, a3, a4
	addw a3, a0, a5
	lw a5, 24(a1)
	subw a4, a3, t0
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 28(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 32(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 36(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 40(a1)
	addw a3, a0, a4
	lw t0, 44(a1)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 48(a1)
	subw a5, a3, t0
	addw a3, a0, a5
	lw a5, 52(a1)
	subw t0, a3, a4
	addw a3, a0, t0
	subw a4, a3, a5
	lw a5, 56(a1)
	addw a3, a0, a4
	subw a4, a3, a5
	lw a5, 60(a1)
	addw a3, a0, a4
	subw a1, a3, a5
	li a3, 9992
	bge a2, a3, label32
	mv a3, a1
	j label29
.p2align 2
label32:
	sh2add a2, a2, s0
	addw a5, a0, a1
	lw a3, 0(a2)
	subw a4, a5, a3
	lw a3, 4(a2)
	addw a1, a0, a4
	lw a4, 8(a2)
	subw a5, a1, a3
	addw a1, a0, a5
	subw a3, a1, a4
	lw a4, 12(a2)
	addw a1, a0, a3
	subw a3, a1, a4
	lw a4, 16(a2)
	addw a1, a0, a3
	subw a3, a1, a4
	lw a4, 20(a2)
	addw a1, a0, a3
	subw a3, a1, a4
	lw a4, 24(a2)
	addw a1, a0, a3
	subw a3, a1, a4
	lw a1, 28(a2)
	addw a0, a0, a3
	subw s4, a0, a1
	mv a0, s4
	jal putint
	mv a1, s4
	addiw s3, s3, 1
	li a2, 10000
	blt s3, a2, label16
label33:
	mv a0, a1
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
