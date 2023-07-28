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
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
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
	li a0, 7
	sw a1, 24(sp)
	li a1, 8
	sw a2, 28(sp)
	sw a0, 32(sp)
	mv a0, zero
	sw a1, 36(sp)
	li a1, 9
	blt zero, a1, label4
.p2align 2
label29:
	mv s1, zero
	j label14
.p2align 2
label4:
	addiw a1, a0, 1
	mv a4, a0
	mv a3, a1
	addiw a2, a1, 4
	li a5, 10
	blt a2, a5, label8
	sh2add a2, a0, s0
	sh2add t1, a1, s0
	lw a5, 0(a2)
	mv a2, a1
	lw t0, 0(t1)
	bgt a5, t0, label140
	mv a2, a0
	addiw a3, a1, 1
	li a4, 10
	blt a3, a4, label84
	bne a0, a0, label13
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label29
.p2align 2
label8:
	sh2add a5, a4, s0
	sh2add t2, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	bgt t0, t1, label132
	mv a5, a4
.p2align 2
label132:
	sh2add t1, a5, s0
	addiw a4, a3, 1
	lw t0, 0(t1)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt t0, t1, label134
	mv a4, a5
.p2align 2
label134:
	sh2add t1, a4, s0
	addiw a5, a3, 2
	lw t0, 0(t1)
	sh2add t2, a5, s0
	lw t1, 0(t2)
	bgt t0, t1, label136
	mv a5, a4
.p2align 2
label136:
	sh2add t0, a5, s0
	addiw a3, a3, 3
	lw a4, 0(t0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a4, t1, label138
	mv t0, a5
.p2align 2
label138:
	mv a3, a2
	mv a4, t0
	addiw a2, a2, 4
	li a5, 10
	blt a2, a5, label8
	sh2add a2, t0, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label140
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	blt a3, a4, label84
	bne a0, a2, label13
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label29
.p2align 2
label140:
	addiw a3, a3, 1
	li a4, 10
	blt a3, a4, label84
	bne a0, a2, label13
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label29
.p2align 2
label84:
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label140
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	blt a3, a4, label84
	bne a0, a2, label13
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label29
.p2align 2
label13:
	sh2add a2, a2, s0
	sh2add a0, a0, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	sw a4, 0(a2)
	sw a3, 0(a0)
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label29
.p2align 2
label14:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label14
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
