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
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a0, 24(sp)
	li a0, 2
	sw a2, 28(sp)
	sw a1, 32(sp)
	li a1, 6
	sw a0, 36(sp)
	li a0, 1
	sw zero, 40(sp)
	sw a0, 44(sp)
	li a0, 5
	sw a1, 48(sp)
	li a1, 7
	sw a0, 52(sp)
	li a0, 8
	sw a1, 56(sp)
	mv a1, zero
	sw a0, 60(sp)
	li a3, 10
	mv a2, a3
	li a3, 9
	addi a0, a2, -1
	bge zero, a3, label26
.p2align 2
label27:
	mv a2, zero
	ble a0, zero, label30
.p2align 2
label6:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	bgt a3, a4, label7
	mv a2, a5
	bgt a0, a5, label6
	j label73
.p2align 2
label7:
	sh2add a2, a2, s0
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, a5
	bgt a0, a5, label6
	addiw a1, a1, 1
	li a3, 10
	subw a2, a3, a1
	li a3, 9
	addi a0, a2, -1
	blt a1, a3, label27
label26:
	mv s1, zero
	j label9
.p2align 2
label73:
	addiw a1, a1, 1
	li a3, 10
	subw a2, a3, a1
	li a3, 9
	addi a0, a2, -1
	blt a1, a3, label27
	j label26
.p2align 2
label9:
	sh2add a2, s1, s0
	lw a0, 0(a2)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label9
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
label30:
	addiw a1, a1, 1
	li a3, 10
	subw a2, a3, a1
	li a3, 9
	addi a0, a2, -1
	blt a1, a3, label27
	j label26
