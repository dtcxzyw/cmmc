.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s3, 16(sp)
	li s3, -1
	sd s2, 24(sp)
	li s2, 5
	sd s1, 32(sp)
	li s1, 14
	blt s2, zero, label18
.p2align 2
label6:
	addiw a0, s3, 1
	bne a0, zero, label7
	addiw s3, a0, 1
	addiw s2, s2, -1
	bge s3, s1, label68
.p2align 2
label12:
	mv a0, s3
	jal putint
	li a0, 10
	jal putch
	slliw s0, s0, 1
	bge s2, zero, label6
label18:
	mv a0, s3
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s3
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label7:
	addiw a0, s3, 2
	beq a0, zero, label30
	addiw s3, s3, 3
	bne s3, zero, label9
	mv a0, s3
	addiw s3, s3, 1
	addiw s2, s2, -1
	blt s3, s1, label12
	addiw s3, a0, 2
	bne s3, zero, label15
	addiw s3, s3, 1
	bge s2, zero, label6
	j label18
.p2align 2
label30:
	addiw s3, a0, 1
	addiw s2, s2, -1
	blt s3, s1, label12
	addiw s3, a0, 2
	beq s3, zero, label75
.p2align 2
label15:
	addiw a1, a0, 3
	addiw s3, a0, 4
	subw a0, a1, s3
	addiw a1, a0, 1
	bne a1, zero, label12
	addiw s3, s3, 1
	bge s2, zero, label6
	j label18
.p2align 2
label9:
	mv a0, s3
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s3
	addiw s3, s3, 1
	addiw s2, s2, -1
	blt s3, s1, label12
	addiw s3, a0, 2
	bne s3, zero, label15
	addiw s3, s3, 1
	bge s2, zero, label6
	j label18
.p2align 2
label68:
	addiw s3, a0, 2
	bne s3, zero, label15
	addiw s3, s3, 1
	bge s2, zero, label6
	j label18
label75:
	addiw s3, s3, 1
	bge s2, zero, label6
	j label18
