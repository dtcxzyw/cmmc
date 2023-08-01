.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 4
	li a2, 3
	li a1, 9
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sw a0, 32(sp)
	li a0, 2
	sw a2, 36(sp)
	li a2, 6
	sw a1, 40(sp)
	sw a0, 44(sp)
	li a0, 1
	sw zero, 48(sp)
	sw a0, 52(sp)
	li a0, 5
	sw a2, 56(sp)
	li a2, 7
	sw a0, 60(sp)
	li a0, 8
	sw a2, 64(sp)
	mv a2, zero
	sw a0, 68(sp)
	mv a3, s1
	addi a0, s1, -1
	bge zero, a1, label26
.p2align 2
label27:
	mv a3, zero
	ble a0, zero, label30
.p2align 2
label6:
	sh2add t0, a3, s0
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a3, 1
	bgt a4, a5, label7
	mv a3, t0
	bgt a0, t0, label6
	j label76
.p2align 2
label7:
	sh2add a3, a3, s0
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a3, t0
	bgt a0, t0, label6
	addiw a2, a2, 1
	subw a3, s1, a2
	addi a0, a3, -1
	blt a2, a1, label27
label26:
	mv s2, zero
	j label9
.p2align 2
label76:
	addiw a2, a2, 1
	subw a3, s1, a2
	addi a0, a3, -1
	blt a2, a1, label27
	j label26
.p2align 2
label9:
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label9
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label30:
	addiw a2, a2, 1
	subw a3, s1, a2
	addi a0, a3, -1
	blt a2, a1, label27
	j label26
