.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -56
	li a0, -1
	sd s2, 48(sp)
	addi s2, sp, 0
	sd s0, 40(sp)
	sd s1, 32(sp)
	sd s4, 24(sp)
	sd s3, 16(sp)
	sd ra, 8(sp)
	sw a0, 0(sp)
	sw zero, 4(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	mv a0, s2
	jal getarray
	mv s2, zero
	beq s1, zero, label38
label4:
	lw s4, 0(sp)
	li a0, 5
	blt s4, a0, label53
	beq s0, zero, label28
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label53:
	mv s3, s4
label5:
	mv a0, s2
	jal putint
	mv a0, s3
	jal putint
	mv a0, s1
	jal putint
	mv a0, s4
	jal putint
	beq s0, zero, label8
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label10
	mv a1, a0
	addw a0, s1, a0
	sw a0, 0(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label15
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	j label253
label8:
	lw a1, 0(sp)
	addw a0, s1, a1
	sw a0, 0(sp)
	beq s0, zero, label18
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label15
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	j label209
label253:
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	j label209
label21:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	beq s0, zero, label28
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	j label209
label10:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label10
	mv a1, a0
	addw a0, s1, a0
	sw a0, 0(sp)
	beq s0, zero, label18
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	bne a0, zero, label15
	addw s3, s1, s3
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	j label253
label18:
	addw s3, s1, s3
	beq s0, zero, label24
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label24:
	lw a1, 0(sp)
	subw s4, a1, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	beq s0, zero, label28
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label28:
	addiw a0, s2, 1
	beq s0, zero, label98
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label15:
	addiw a0, a0, -1
	slliw s3, s3, 1
	bne a0, zero, label15
	addw s3, s1, s3
	beq s0, zero, label24
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	bne a1, zero, label21
	mv a1, a0
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	mv a1, s0
	addiw a1, s0, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label209:
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label30:
	addiw a2, a2, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label104:
	mv a0, a1
	j label30
label98:
	mv a1, a0
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
label35:
	addiw a1, a1, -1
	slliw s2, s2, 1
	bne a1, zero, label35
	addiw a0, s2, 1
	beq s0, zero, label98
	mv a2, s0
	addiw a2, s0, -1
	slliw a1, a0, 1
	bne a2, zero, label104
	lw a3, 0(sp)
	lw a0, 4(sp)
	addw s2, a1, a3
	beq s2, a0, label38
	bne s1, zero, label4
label38:
	li a0, 10
	jal putch
	ld ra, 8(sp)
	mv a0, zero
	ld s3, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret
