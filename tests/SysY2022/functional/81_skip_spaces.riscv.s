.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -424
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	mv s1, zero
.p2align 2
label2:
	jal getint
	beq a0, zero, label5
	jal getint
	sh2add a1, s1, s0
	addiw s1, s1, 1
	sw a0, 0(a1)
	j label2
label5:
	beq s1, zero, label23
	mv a0, s1
	mv a1, zero
.p2align 2
label6:
	addiw a0, a0, -1
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addw a1, a1, a2
	bne a0, zero, label6
label9:
	li a3, 1739733589
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	mul a0, a1, a3
	addi sp, sp, 424
	srli a3, a0, 63
	srai a2, a0, 37
	add a0, a3, a2
	li a2, 79
	mulw a3, a0, a2
	subw a0, a1, a3
	ret
label23:
	mv a1, zero
	j label9
