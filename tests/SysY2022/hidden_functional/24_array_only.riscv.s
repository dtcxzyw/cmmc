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
	mv a0, s0
	addiw a0, s0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	j label234
label53:
	mv s3, s4
	j label5
label234:
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
label35:
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	j label35
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
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	j label10
label8:
	lw a0, 0(sp)
	addw a1, s1, a0
	sw a1, 0(sp)
	beq s0, zero, label18
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	j label228
label10:
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label13
	j label10
label228:
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
label15:
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	j label15
label233:
	addiw a0, a0, -1
	slliw s2, s2, 1
	bne a0, zero, label234
label28:
	addiw a0, s2, 1
	beq s0, zero, label33
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
	j label235
label13:
	addw a1, s1, a0
	sw a1, 0(sp)
	beq s0, zero, label18
	mv a0, s0
	addiw a0, s0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	beq a0, zero, label18
	addiw a0, a0, -1
	slliw s3, s3, 1
	bne a0, zero, label228
label18:
	addw s3, s1, s3
	beq s0, zero, label24
	lw a0, 0(sp)
	mv a1, s0
	addiw a1, s0, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label21
label25:
	subw s4, a0, s1
	li a0, 5
	sw s4, 0(sp)
	blt s3, a0, label5
	beq s0, zero, label28
	mv a0, s0
	addiw a0, s0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	j label221
label21:
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label25
	j label21
label24:
	lw a0, 0(sp)
	j label25
label221:
	addiw a0, a0, -1
	slliw s2, s2, 1
	beq a0, zero, label28
	j label233
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
label235:
	addiw a1, a1, -1
	slliw a0, a0, 1
	beq a1, zero, label33
label30:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label30
label33:
	lw a1, 0(sp)
	addw s2, a0, a1
	lw a0, 4(sp)
	beq s2, a0, label38
	bne s1, zero, label4
	j label38
