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
	li a1, 1
	sw a1, 0(a2)
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
	li a1, 1
	mv a0, s1
	sw a1, 0(s3)
	sw zero, 0(s2)
	lw a1, 0(s3)
	divw a2, s0, s1
	lw a3, 0(s2)
	sw a3, 0(s3)
	lw a5, 0(s2)
	mulw a4, a2, a5
	subw a3, a1, a4
	sw a3, 0(s2)
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
	divw a2, s0, s1
	subw a5, a1, a3
	sw a5, 0(s2)
	lw a1, 0(s3)
	lw a3, 0(s2)
	sw a3, 0(s3)
	lw a5, 0(s2)
	mulw a4, a2, a5
	subw a3, a1, a4
	sw a3, 0(s2)
	j label8
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -16
	li a4, 1
	li a0, 7
	li a1, 15
	addi a3, sp, 8
	addi a2, sp, 12
	sd ra, 0(sp)
	sw a4, 12(sp)
	sw a4, 8(sp)
	jal exgcd
	lw a1, 12(sp)
	lui a0, 559241
	addiw a3, a0, -1911
	mul a5, a1, a3
	srli a2, a5, 32
	add a0, a2, a1
	srliw a5, a0, 31
	sraiw a4, a0, 3
	add a2, a5, a4
	addw t0, a1, a2
	slliw a3, a2, 4
	subw a4, t0, a3
	mv a0, a4
	bge a4, zero, label73
	addiw a0, a4, 15
label73:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 16
	ret
