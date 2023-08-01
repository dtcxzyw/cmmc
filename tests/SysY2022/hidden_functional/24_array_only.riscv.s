.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
	li a0, -1
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, sp, 48
	sd s0, 16(sp)
	sd s1, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sw a0, 48(sp)
	sw zero, 52(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	mv a0, s2
	jal getarray
	mv s2, zero
label2:
	beq s1, zero, label4
	lw s4, 48(sp)
	li a0, 5
	bge s4, a0, label28
	mv s3, s4
	j label6
label4:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 56
	ret
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
	lw a1, 48(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	bne a0, zero, label11
	addw a1, s1, a1
	sw a1, 48(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	bne s0, zero, label146
.p2align 2
label23:
	lw a1, 48(sp)
	subw s4, a1, s1
	li a0, 5
	sw s4, 48(sp)
	blt s3, a0, label6
label28:
	beq s0, zero, label32
	mv a1, s0
label29:
	addiw a1, a1, -1
	slliw a0, s2, 1
	bne a1, zero, label100
	mv s2, a0
label32:
	addiw a0, s2, 1
	beq s0, zero, label34
	mv a1, s0
	j label36
label34:
	lw a1, 48(sp)
	addw s2, a0, a1
	lw a0, 52(sp)
	beq s2, a0, label4
	j label2
label36:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label36
	j label34
.p2align 2
label11:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label11
	addw a1, s1, a1
	sw a1, 48(sp)
	beq s0, zero, label19
	mv a0, s0
.p2align 2
label16:
	addiw a0, a0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
.p2align 2
label19:
	addw s3, s1, s3
	beq s0, zero, label23
	lw a1, 48(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	bne a0, zero, label25
.p2align 2
label139:
	subw s4, a1, s1
	li a0, 5
	sw s4, 48(sp)
	blt s3, a0, label6
	j label28
.p2align 2
label9:
	lw a1, 48(sp)
	addw a1, s1, a1
	sw a1, 48(sp)
	beq s0, zero, label19
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label16
	addw s3, s1, s3
	lw a1, 48(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	beq a0, zero, label145
.p2align 2
label25:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label25
	subw s4, a1, s1
	li a0, 5
	sw s4, 48(sp)
	blt s3, a0, label6
	j label28
label146:
	lw a1, 48(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	bne a0, zero, label25
	j label139
label145:
	subw s4, a1, s1
	li a0, 5
	sw s4, 48(sp)
	blt s3, a0, label6
	j label28
label100:
	mv s2, a0
	j label29
