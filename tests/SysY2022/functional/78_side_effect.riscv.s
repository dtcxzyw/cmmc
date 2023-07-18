.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	li s0, 1
	sd s2, 16(sp)
	li s2, -1
	sd s1, 8(sp)
	li s1, 5
	sd ra, 0(sp)
	blt s1, zero, label18
	addiw a1, s2, 1
	beq a1, zero, label7
	addiw a1, s2, 2
	beq a1, zero, label7
	addiw s2, s2, 3
	beq s2, zero, label58
	j label17
label7:
	addiw s2, a1, 1
	li a0, 14
	bge s2, a0, label9
	j label13
label11:
	addiw s2, s2, 1
	addiw s1, s1, -1
	blt s1, zero, label18
	addiw a1, s2, 1
	beq a1, zero, label7
	addiw a1, s2, 2
	beq a1, zero, label7
	addiw s2, s2, 3
	beq s2, zero, label58
	j label17
label13:
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	slliw s0, s0, 1
	blt s1, zero, label18
	addiw a1, s2, 1
	beq a1, zero, label7
	addiw a1, s2, 2
	beq a1, zero, label7
	addiw s2, s2, 3
	beq s2, zero, label58
	j label17
label58:
	mv a1, s2
	addiw s2, s2, 1
	li a0, 14
	bge s2, a0, label9
	j label13
label17:
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a1, s2
	addiw s2, s2, 1
	li a0, 14
	bge s2, a0, label9
	j label13
label9:
	addiw s2, a1, 2
	beq s2, zero, label11
	addiw a0, a1, 3
	addiw s2, a1, 4
	subw a1, a0, s2
	addiw a0, a1, 1
	beq a0, zero, label11
	j label13
label18:
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
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
