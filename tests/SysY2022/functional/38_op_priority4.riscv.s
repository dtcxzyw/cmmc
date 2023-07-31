.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	divw s5, s0, a0
	mulw a0, s1, a0
	subw s4, s0, a0
	jal getint
	mv s3, a0
	subw s5, a0, s5
	jal getint
	beq s4, s5, label4
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label4:
	mulw a2, s0, s1
	addw a0, s3, a0
	divw a1, a2, s2
	addw a2, s0, s1
	xor a3, a1, a0
	sltiu a1, a3, 1
	addw a3, s2, a2
	xor a4, a0, a3
	sltiu a2, a4, 1
	or a0, a1, a2
	j label2
