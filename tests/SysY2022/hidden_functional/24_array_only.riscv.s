.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	li a0, -1
	sd s2, 48(sp)
	addi s2, sp, 0
	sd s0, 40(sp)
	sd s1, 32(sp)
	sd s4, 24(sp)
	sd s3, 8(sp)
	sd ra, 16(sp)
	sw a0, 0(sp)
	sw zero, 4(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	mv a0, s2
	jal getarray
	mv s2, zero
label2:
	beq s1, zero, label4
	lw s4, 0(sp)
	li a0, 5
	blt s4, a0, label53
	beq s0, zero, label32
label135:
	mv a0, s0
	j label29
label53:
	mv s3, s4
	j label6
.p2align 2
label23:
	lw a0, 0(sp)
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	beq s0, zero, label32
	j label135
label29:
	addiw a1, a0, -1
	slliw a0, s2, 1
	bne a1, zero, label100
	mv s2, a0
	j label32
label100:
	mv s2, a0
	mv a0, a1
	j label29
label32:
	addiw a0, s2, 1
	beq s0, zero, label34
	mv a1, s0
	j label36
label34:
	lw a1, 0(sp)
	addw s2, a0, a1
	lw a0, 4(sp)
	beq s2, a0, label4
	j label2
label36:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label36
	j label34
.p2align 2
label6:
	mv a0, s2
	jal putint
	mv a0, s3
	jal putint
	mv a0, s1
	jal putint
	mv a0, s4
	jal putint
	beq s0, zero, label9
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label11
	addw a0, s1, a0
	sw a0, 0(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	j label135
.p2align 2
label25:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	beq s0, zero, label32
	j label135
.p2align 2
label16:
	addiw a0, a0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	beq s0, zero, label23
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	j label135
.p2align 2
label19:
	addw s3, s1, s3
	beq s0, zero, label23
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	j label135
.p2align 2
label11:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label11
	addw a0, s1, a0
	sw a0, 0(sp)
	beq s0, zero, label19
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	j label135
.p2align 2
label9:
	lw a0, 0(sp)
	addw a0, s1, a0
	sw a0, 0(sp)
	beq s0, zero, label19
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label25
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label6
	j label135
label4:
	li a0, 10
	jal putch
	ld ra, 16(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret
