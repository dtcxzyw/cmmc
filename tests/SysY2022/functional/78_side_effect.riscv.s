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
	j label2
label18:
	addiw a1, a0, 3
	addiw s2, a0, 4
	subw a3, a1, s2
	addiw a2, a3, 1
	beq a2, zero, label19
label11:
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	slliw s0, s0, 1
.p2align 2
label13:
	addiw s1, s1, -1
	blt s1, zero, label16
.p2align 2
label2:
	addiw a0, s2, 1
	beq a0, zero, label23
	addiw a0, s2, 2
	bne a0, zero, label7
label9:
	addiw s2, a0, 1
	blt s2, s3, label11
label38:
	addiw s2, a0, 2
	bne s2, zero, label18
	addiw s2, s2, 1
	j label13
label23:
	addiw s2, a0, 1
	blt s2, s3, label11
	j label38
label16:
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
label7:
	addiw s2, s2, 3
	bne s2, zero, label8
	mv a0, s2
	j label9
label19:
	addiw s2, s2, 1
	addiw s1, s1, -1
	bge s1, zero, label2
	j label16
label8:
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	j label9
