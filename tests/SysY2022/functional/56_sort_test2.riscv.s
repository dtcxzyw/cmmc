.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -64
	li a0, 4
	li a2, 3
	li a1, 9
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a0, 0(sp)
	li a0, 2
	sw a2, 4(sp)
	li a2, 5
	sw a1, 8(sp)
	li a1, 6
	sw a0, 12(sp)
	li a0, 1
	sw zero, 16(sp)
	sw a0, 20(sp)
	sw a1, 24(sp)
	li a1, 7
	sw a2, 28(sp)
	li a2, 8
	sw a1, 32(sp)
	sw a2, 36(sp)
	li a1, 10
	bge a0, a1, label26
	sh2add a3, a0, s0
	addiw a2, a0, -1
	lw a1, 0(a3)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	j label127
label26:
	mv s1, zero
	j label10
label9:
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, s0
	sw a1, 0(a2)
	li a1, 10
	bge a0, a1, label26
	sh2add a3, a0, s0
	addiw a2, a0, -1
	lw a1, 0(a3)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
label128:
	sh2add a4, a2, s0
	lw a3, 0(a4)
	bge a1, a3, label9
	j label121
label127:
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	j label128
label121:
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add a4, a5, s0
	sw a3, 0(a4)
	blt a2, zero, label9
	j label128
label10:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label12
	j label10
label12:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
