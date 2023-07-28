.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
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
	sw a1, 8(sp)
	li a1, 1
	sw a0, 12(sp)
	li a0, 6
	sw zero, 16(sp)
	sw a1, 20(sp)
	li a1, 5
	sw a0, 24(sp)
	li a0, 7
	sw a1, 28(sp)
	li a1, 8
	sw a0, 32(sp)
	mv a0, zero
	sw a1, 36(sp)
	li a1, 9
	blt zero, a1, label4
.p2align 2
label28:
	mv s1, zero
	j label13
.p2align 2
label4:
	addiw a2, a0, 5
	addiw a1, a0, 1
	li a3, 10
	blt a2, a3, label35
	mv a2, a1
	mv a3, a0
	sh2add a4, a0, s0
	sh2add t1, a1, s0
	lw a5, 0(a4)
	mv a4, a1
	lw t0, 0(t1)
	bgt a5, t0, label138
	mv a4, a0
	addiw a2, a1, 1
	li a3, 10
	blt a2, a3, label48
	bne a0, a0, label9
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label35:
	mv a3, a0
	mv a2, a1
	sh2add a4, a0, s0
	sh2add t1, a1, s0
	lw a5, 0(a4)
	mv a4, a1
	lw t0, 0(t1)
	bgt a5, t0, label140
	mv a4, a0
	sh2add t0, a0, s0
	addiw a3, a1, 1
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label142
	mv a3, a0
	sh2add t0, a0, s0
	addiw a4, a1, 2
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label144
	mv a4, a0
	sh2add t0, a0, s0
	addiw a3, a1, 3
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label146
	mv a3, a0
	addiw a4, a1, 8
	li a5, 10
	addiw a2, a1, 4
	blt a4, a5, label10
	sh2add a4, a0, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	ble a5, t0, label156
.p2align 2
label138:
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	bne a0, a4, label9
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label48:
	mv a3, a4
	sh2add a4, a4, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	bgt a5, t0, label138
	mv a4, a3
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	bne a0, a4, label9
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label9:
	sh2add a2, a4, s0
	sh2add a0, a0, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	sw a4, 0(a2)
	sw a3, 0(a0)
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label13:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label13
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label10:
	sh2add a4, a3, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	bgt a5, t0, label140
	mv a4, a3
.p2align 2
label140:
	sh2add t0, a4, s0
	addiw a3, a2, 1
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label142
	mv a3, a4
.p2align 2
label142:
	sh2add t0, a3, s0
	addiw a4, a2, 2
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label144
	mv a4, a3
.p2align 2
label144:
	sh2add t0, a4, s0
	addiw a3, a2, 3
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label146
	mv a3, a4
.p2align 2
label146:
	addiw a4, a2, 8
	li a5, 10
	addiw a2, a2, 4
	blt a4, a5, label10
	sh2add a4, a3, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	bgt a5, t0, label138
.p2align 2
label156:
	mv a4, a3
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	bne a0, a4, label9
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
