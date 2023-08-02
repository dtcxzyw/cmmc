.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a2, 3
	li a3, 2
	li a4, 5
	sd ra, 0(sp)
	slli a0, a2, 32
	sd s0, 8(sp)
	slli a2, a3, 32
	addi a1, a0, 4
	addi s0, sp, 32
	sd s1, 16(sp)
	li a3, 1
	li a0, 1
	li s1, 10
	sd s2, 24(sp)
	sd a1, 32(sp)
	addi a1, a2, 9
	slli a2, a3, 32
	sd a1, 40(sp)
	slli a1, a4, 32
	sd a2, 48(sp)
	li a4, 8
	addi a3, a1, 6
	slli a2, a4, 32
	sd a3, 56(sp)
	addi a1, a2, 7
	sd a1, 64(sp)
	blt a0, s1, label4
label25:
	mv s2, zero
	j label10
.p2align 2
label4:
	sh2add a3, a0, s0
	addiw a2, a0, -1
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label8
.p2align 2
label7:
	sh2add a2, a3, s0
	addiw a0, a0, 1
	sw a1, 0(a2)
	blt a0, s1, label4
	j label25
.p2align 2
label10:
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label10
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
.p2align 2
label8:
	sh2add a5, a2, s0
	lw a4, 0(a5)
	bge a1, a4, label7
	sh2add a5, a3, s0
	addiw a2, a2, -1
	sw a4, 0(a5)
	addiw a3, a2, 1
	bge a2, zero, label8
	sh2add a2, a3, s0
	addiw a0, a0, 1
	sw a1, 0(a2)
	blt a0, s1, label4
	j label25
