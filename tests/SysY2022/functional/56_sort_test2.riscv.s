.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 4
	li a1, 3
	li a2, 5
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sw a0, 32(sp)
	li a0, 9
	sw a1, 36(sp)
	li a1, 2
	sw a0, 40(sp)
	li a0, 1
	sw a1, 44(sp)
	li a1, 6
	sw zero, 48(sp)
	sw a0, 52(sp)
	sw a1, 56(sp)
	li a1, 7
	sw a2, 60(sp)
	li a2, 8
	sw a1, 64(sp)
	sw a2, 68(sp)
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
	sh2add a3, a3, s0
	addiw a2, a2, -1
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label8
	sh2add a2, a3, s0
	addiw a0, a0, 1
	sw a1, 0(a2)
	blt a0, s1, label4
	j label25
