.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	li a1, -1
	sd ra, 0(sp)
	zext.w a0, a1
	sd s2, 8(sp)
	addi s2, sp, 56
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd a0, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	mv a0, s2
	jal getarray
	li s3, 5
	mv s2, zero
label2:
	beq s1, zero, label38
	lw s5, 56(sp)
	bge s5, s3, label5
	mv s4, s5
	j label16
label5:
	bne s0, zero, label55
label9:
	addiw a0, s2, 1
	beq s0, zero, label11
	mv a1, s0
	j label13
label11:
	lw a1, 56(sp)
	addw s2, a0, a1
	lw a0, 60(sp)
	beq s2, a0, label38
	j label2
label13:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label13
	j label11
.p2align 2
label16:
	mv a0, s2
	jal putint
	mv a0, s4
	jal putint
	mv a0, s1
	jal putint
	mv a0, s5
	jal putint
	bne s0, zero, label82
	lw a1, 56(sp)
	addw a1, s1, a1
	sw a1, 56(sp)
	beq s0, zero, label29
	mv a0, s0
	addiw a0, s0, -1
	slliw s4, s4, 1
	bne a0, zero, label26
	addw s4, s1, s4
.p2align 2
label37:
	lw a1, 56(sp)
	subw s5, a1, s1
	sw s5, 56(sp)
	blt s4, s3, label16
	j label5
label38:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 64
	ret
.p2align 2
label82:
	lw a1, 56(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	beq a0, zero, label141
.p2align 2
label21:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label21
	addw a1, s1, a1
	sw a1, 56(sp)
	beq s0, zero, label29
	mv a0, s0
.p2align 2
label26:
	addiw a0, a0, -1
	slliw s4, s4, 1
	bne a0, zero, label26
.p2align 2
label29:
	addw s4, s1, s4
	beq s0, zero, label37
	lw a1, 56(sp)
	mv a0, s0
.p2align 2
label32:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label32
.p2align 2
label35:
	subw s5, a1, s1
	sw s5, 56(sp)
	blt s4, s3, label16
	j label5
.p2align 2
label141:
	addw a1, s1, a1
	sw a1, 56(sp)
	beq s0, zero, label29
	mv a0, s0
	addiw a0, s0, -1
	slliw s4, s4, 1
	bne a0, zero, label26
	addw s4, s1, s4
	lw a1, 56(sp)
	mv a0, s0
	addiw a0, s0, -1
	slliw a1, a1, 1
	bne a0, zero, label32
	j label35
label55:
	mv a1, s0
label6:
	addiw a1, a1, -1
	slliw a0, s2, 1
	beq a1, zero, label61
	mv s2, a0
	j label6
label61:
	mv s2, a0
	j label9
