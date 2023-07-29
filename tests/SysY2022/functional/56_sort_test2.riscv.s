.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
	li a0, 4
	li a1, 3
	li a2, 5
	sd s0, 40(sp)
	addi s0, sp, 0
	sd s1, 56(sp)
	sd ra, 48(sp)
	sw a0, 0(sp)
	li a0, 9
	sw a1, 4(sp)
	li a1, 2
	sw a0, 8(sp)
	li a0, 1
	sw a1, 12(sp)
	li a1, 6
	sw zero, 16(sp)
	sw a0, 20(sp)
	sw a1, 24(sp)
	li a1, 7
	sw a2, 28(sp)
	li a2, 8
	sw a1, 32(sp)
	sw a2, 36(sp)
	li a1, 10
	bge a0, a1, label25
.p2align 2
label4:
	sh2add a3, a0, s0
	addiw a2, a0, -1
	lw a1, 0(a3)
	bge a2, zero, label7
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, s0
	sw a1, 0(a2)
	li a1, 10
	blt a0, a1, label4
	j label25
.p2align 2
label7:
	sh2add a4, a2, s0
	lw a3, 0(a4)
	blt a1, a3, label8
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, s0
	sw a1, 0(a2)
	li a1, 10
	blt a0, a1, label4
.p2align 2
label25:
	mv s1, zero
	j label10
.p2align 2
label8:
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	bge a2, zero, label7
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, s0
	sw a1, 0(a2)
	li a1, 10
	blt a0, a1, label4
	j label25
.p2align 2
label10:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label10
	mv a0, zero
	ld ra, 48(sp)
	ld s1, 56(sp)
	ld s0, 40(sp)
	addi sp, sp, 64
	ret
