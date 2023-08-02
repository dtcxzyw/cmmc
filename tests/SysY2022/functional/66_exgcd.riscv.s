.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
exgcd:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s3, 24(sp)
	mv s3, a2
	sd s2, 32(sp)
	mv s2, a3
	sd s4, 40(sp)
	bne a1, zero, label3
	li a0, 1
	sw a0, 0(a2)
	mv a0, s0
	sw zero, 0(a3)
label8:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label3:
	remw s4, s0, s1
	bne s4, zero, label7
	li a0, 1
	mv a1, s1
	sw a0, 0(s3)
	sw zero, 0(s2)
	lw a0, 0(s3)
	divw a2, s0, s1
	lw a3, 0(s2)
	sw a3, 0(s3)
	lw a4, 0(s2)
	mulw a3, a2, a4
	subw a2, a0, a3
	mv a0, s1
	sw a2, 0(s2)
	j label8
label7:
	remw a1, s1, s4
	mv a0, s4
	mv a2, s3
	mv a3, s2
	jal exgcd
	lw a1, 0(s3)
	lw a3, 0(s2)
	sw a3, 0(s3)
	lw a4, 0(s2)
	divw a2, s1, s4
	mulw a3, a2, a4
	subw a2, a1, a3
	mv a1, a0
	sw a2, 0(s2)
	lw a0, 0(s3)
	divw a2, s0, s1
	lw a3, 0(s2)
	sw a3, 0(s3)
	lw a4, 0(s2)
	mulw a3, a2, a4
	subw a2, a0, a3
	mv a0, a1
	sw a2, 0(s2)
	j label8
.p2align 2
.globl main
main:
	addi sp, sp, -16
	li a0, 1
	li a1, 15
	addi a3, sp, 8
	addi a2, sp, 12
	sd ra, 0(sp)
	sw a0, 12(sp)
	sw a0, 8(sp)
	li a0, 7
	jal exgcd
	lw a0, 12(sp)
	lui a3, 559241
	addiw a1, a3, -1911
	mul a2, a0, a1
	srli a3, a2, 32
	add a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 3
	add a1, a3, a2
	addw a3, a0, a1
	slliw a2, a1, 4
	subw a1, a3, a2
	mv a0, a1
	bge a1, zero, label73
	addiw a0, a1, 15
label73:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 16
	ret
