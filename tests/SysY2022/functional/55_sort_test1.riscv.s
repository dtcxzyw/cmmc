.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a1, 0(sp)
	li a1, 9
	sw a0, 4(sp)
	li a0, 2
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
	li a2, 10
	subw a3, a2, zero
	li a2, 9
	addi a1, a3, -1
	blt zero, a2, label27
.p2align 2
label26:
	mv s1, zero
.p2align 2
label9:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label9
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label27:
	mv a2, zero
	bgt a1, zero, label6
	addiw a0, a0, 1
	li a2, 10
	subw a3, a2, a0
	li a2, 9
	addi a1, a3, -1
	blt a0, a2, label27
	j label26
.p2align 2
label6:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	bgt a3, a4, label7
	mv a2, a5
	bgt a1, a5, label6
	addiw a0, a0, 1
	li a2, 10
	subw a3, a2, a0
	li a2, 9
	addi a1, a3, -1
	blt a0, a2, label27
	j label26
.p2align 2
label7:
	sh2add a2, a2, s0
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, a5
	bgt a1, a5, label6
	addiw a0, a0, 1
	li a2, 10
	subw a3, a2, a0
	li a2, 9
	addi a1, a3, -1
	blt a0, a2, label27
	j label26
