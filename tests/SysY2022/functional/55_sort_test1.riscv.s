.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a3, 3
	li a4, 2
	li a5, 5
	addi a2, sp, 32
	slli a1, a3, 32
	sd ra, 0(sp)
	li a3, 9
	addi a0, a1, 4
	sd s0, 8(sp)
	li s0, 10
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a0, 32(sp)
	slli a0, a4, 32
	li a4, 1
	addi a1, a0, 9
	slli a0, a4, 32
	sd a1, 40(sp)
	li a4, 8
	slli a1, a5, 32
	sd a0, 48(sp)
	addi a0, a1, 6
	slli a1, a4, 32
	sd a0, 56(sp)
	mv a4, zero
	addi a0, a1, 7
	sd a0, 64(sp)
	blt zero, a3, label4
label30:
	mv s1, a2
	mv s2, zero
	j label13
.p2align 2
label4:
	subw t0, s0, a4
	mv a0, a2
	addi a1, t0, -1
	lw t0, 0(a2)
	li a5, 1
	lw t1, 4(a2)
	bgt t0, t1, label11
	j label8
.p2align 2
label9:
	addi a0, a0, 4
	addiw a5, a5, 1
	lw t0, 0(a0)
	lw t1, 4(a0)
	bgt t0, t1, label11
	bgt a1, a5, label9
	addiw a4, a4, 1
	blt a4, a3, label4
	j label30
.p2align 2
label11:
	sw t0, 4(a0)
	sw t1, 0(a0)
	bgt a1, a5, label9
	addiw a4, a4, 1
	blt a4, a3, label4
	j label30
.p2align 2
label8:
	bgt a1, a5, label9
	addiw a4, a4, 1
	blt a4, a3, label4
	j label30
.p2align 2
label13:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label17
	addi s1, s1, 4
	j label13
label17:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
