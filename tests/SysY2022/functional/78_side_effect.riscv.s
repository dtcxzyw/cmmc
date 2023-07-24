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
label6:
	addiw a0, s2, 1
	bne a0, zero, label15
	addiw s2, a0, 1
	li a1, 14
	blt s2, a1, label9
	addiw a1, a0, 2
	bne a1, zero, label12
	mv a0, a1
	addiw s2, a1, 1
	addiw s1, s1, -1
	bge s1, zero, label6
	j label18
label15:
	addiw a0, s2, 2
	bne a0, zero, label16
	addiw s2, a0, 1
	li a1, 14
	blt s2, a1, label9
	addiw a1, a0, 2
	bne a1, zero, label12
	mv a0, a1
	addiw s2, a1, 1
	addiw s1, s1, -1
	bge s1, zero, label6
	j label18
label7:
	addiw s2, a0, 1
	li a1, 14
	blt s2, a1, label9
	addiw a1, a0, 2
	bne a1, zero, label12
	mv a0, a1
	addiw s2, a1, 1
	addiw s1, s1, -1
	bge s1, zero, label6
	j label18
label16:
	addiw s2, s2, 3
	bne s2, zero, label17
	mv a0, s2
	j label7
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
label17:
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	j label7
label9:
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	slliw s0, s0, 1
	bge s1, zero, label6
	j label18
label12:
	addiw a1, a0, 3
	addiw a0, a0, 4
	subw a2, a1, a0
	addiw a1, a2, 1
	bne a1, zero, label46
	addiw s2, a0, 1
	addiw s1, s1, -1
	bge s1, zero, label6
	j label18
label46:
	mv s2, a0
	j label9
