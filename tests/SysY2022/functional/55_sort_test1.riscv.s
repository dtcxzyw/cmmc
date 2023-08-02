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
	slli a1, a4, 32
	li s0, 10
	li a4, 1
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a0, 32(sp)
	addi a0, a1, 9
	slli a1, a4, 32
	sd a0, 40(sp)
	li a4, 8
	slli a0, a5, 32
	sd a1, 48(sp)
	addi a1, a0, 6
	slli a0, a4, 32
	sd a1, 56(sp)
	mv a4, zero
	addi a1, a0, 7
	sd a1, 64(sp)
	mv a1, s0
	addi a0, s0, -1
	blt zero, a3, label10
label4:
	mv s1, a2
	mv s2, zero
	j label5
.p2align 2
label10:
	mv a1, a2
	mv a5, zero
	ble a0, zero, label43
.p2align 2
label14:
	lw t0, 0(a1)
	addiw a5, a5, 1
	lw t1, 4(a1)
	bgt t0, t1, label15
	addi a1, a1, 4
	bgt a0, a5, label14
	j label99
.p2align 2
label15:
	addi t2, a1, 4
	sw t0, 4(a1)
	sw t1, 0(a1)
	mv a1, t2
	bgt a0, a5, label14
	addiw a4, a4, 1
	subw a1, s0, a4
	addi a0, a1, -1
	blt a4, a3, label10
	j label4
.p2align 2
label5:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label9
	addi s1, s1, 4
	j label5
label9:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
.p2align 2
label99:
	addiw a4, a4, 1
	subw a1, s0, a4
	addi a0, a1, -1
	blt a4, a3, label10
	j label4
label43:
	addiw a4, a4, 1
	subw a1, s0, a4
	addi a0, a1, -1
	blt a4, a3, label10
	j label4
