.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -424
	sd s0, 416(sp)
	addi s0, sp, 0
	sd s1, 408(sp)
	mv s1, zero
	sd ra, 400(sp)
label2:
	jal getint
	beq a0, zero, label5
	jal getint
	sh2add a1, s1, s0
	addiw s1, s1, 1
	sw a0, 0(a1)
	j label2
label5:
	beq s1, zero, label24
	mv a0, zero
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	sext.w a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	j label64
label24:
	mv a0, zero
label9:
	li a3, 1739733589
	li a4, 79
	ld ra, 400(sp)
	ld s1, 408(sp)
	mul a1, a0, a3
	ld s0, 416(sp)
	srli a3, a1, 63
	srai a2, a1, 37
	addi sp, sp, 424
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	ret
label64:
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
label6:
	addiw s1, s1, -1
	sh2add a1, s1, s0
	lw a2, 0(a1)
	addw a0, a0, a2
	beq s1, zero, label9
	j label6