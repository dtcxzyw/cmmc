.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	divw s5, s0, a0
	mv s2, a0
	mulw a1, s1, a0
	subw s4, s0, a1
	jal getint
	mv s3, a0
	subw s6, a0, s5
	jal getint
	beq s4, s6, label4
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 64
	ret
label4:
	mulw a2, s0, s1
	addw a1, s3, a0
	addw a0, s0, s1
	divw a3, a2, s2
	xor a4, a3, a1
	addw a3, s2, a0
	sltiu a2, a4, 1
	xor a4, a1, a3
	sltiu a5, a4, 1
	or a0, a2, a5
	j label2
