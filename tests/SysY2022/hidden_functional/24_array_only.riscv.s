.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -56
	li a0, -1
	sd s2, 48(sp)
	addi s2, sp, 0
	sd s0, 8(sp)
	sd s1, 40(sp)
	sd s4, 32(sp)
	sd s3, 24(sp)
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
	beq s1, zero, label38
	lw s4, 0(sp)
	li a0, 5
	bge s4, a0, label5
	mv s3, s4
label16:
	mv a0, s2
	jal putint
	mv a0, s3
	jal putint
	mv a0, s1
	jal putint
	mv a0, s4
	jal putint
	bne s0, zero, label19
	lw a1, 0(sp)
	addw a0, s1, a1
	sw a0, 0(sp)
	addw s3, s1, s3
	lw a1, 0(sp)
	subw s4, a1, s1
	li a0, 5
	sw s4, 0(sp)
	bge s3, a0, label5
	j label16
label19:
	lw a0, 0(sp)
	mv a1, s0
label20:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label20
	mv a1, a0
	addw a0, s1, a0
	sw a0, 0(sp)
	bne s0, zero, label94
	addw s3, s1, s3
	lw a1, 0(sp)
	subw s4, a1, s1
	li a0, 5
	sw s4, 0(sp)
	bge s3, a0, label5
	j label16
label94:
	mv a0, s0
label25:
	addiw a0, a0, -1
	slliw s3, s3, 1
	bne a0, zero, label25
	addw s3, s1, s3
	bne s0, zero, label31
	lw a1, 0(sp)
	subw s4, a1, s1
	li a0, 5
	sw s4, 0(sp)
	bge s3, a0, label5
	j label16
label31:
	lw a0, 0(sp)
	mv a1, s0
label32:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label32
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	bge s3, a0, label5
	j label16
label5:
	bne s0, zero, label56
	addiw a1, s2, 1
	lw a2, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a2
	bne s2, a0, label2
	j label38
label56:
	mv a0, s0
label6:
	addiw a0, a0, -1
	slliw s2, s2, 1
	bne a0, zero, label6
	addiw a1, s2, 1
	bne s0, zero, label66
	lw a2, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a2
	bne s2, a0, label2
	j label38
label66:
	mv a0, a1
	mv a1, s0
label11:
	addiw a2, a1, -1
	slliw a1, a0, 1
	bne a2, zero, label72
	lw a2, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a2
	bne s2, a0, label2
	j label38
label72:
	mv a0, a1
	mv a1, a2
	j label11
label38:
	li a0, 10
	jal putch
	ld ra, 16(sp)
	mv a0, zero
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s0, 8(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret