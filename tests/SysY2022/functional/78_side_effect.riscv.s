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
	sd s2, 16(sp)
	li s2, -1
	sd s1, 24(sp)
	li s1, 5
	sd s3, 32(sp)
	li s3, 14
.p2align 2
label2:
	addiw a0, s2, 1
	bne a0, zero, label18
.p2align 2
label6:
	addiw s2, a0, 1
	bge s2, s3, label28
label8:
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	slliw s0, s0, 1
.p2align 2
label10:
	addiw s1, s1, -1
	bge s1, zero, label2
label13:
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label18:
	addiw a0, s2, 2
	beq a0, zero, label6
	addiw s2, s2, 3
	beq s2, zero, label58
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	j label6
label28:
	addiw s2, a0, 2
	bne s2, zero, label15
	addiw s2, s2, 1
	j label10
label15:
	addiw a1, a0, 3
	addiw s2, a0, 4
	subw a2, a1, s2
	addiw a3, a2, 1
	bne a3, zero, label8
	addiw s2, s2, 1
	addiw s1, s1, -1
	bge s1, zero, label2
	j label13
label58:
	mv a0, s2
	j label6
