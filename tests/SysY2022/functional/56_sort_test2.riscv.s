.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a4, 3
	li a5, 2
	li t0, 1
	addi a0, sp, 32
	slli a3, a4, 32
	sd ra, 0(sp)
	addi a1, a0, 4
	addi a2, a3, 4
	sd s0, 8(sp)
	slli a3, a5, 32
	li s0, 10
	li a5, 5
	addi a4, a3, 9
	sd s1, 16(sp)
	slli a3, t0, 32
	sd s2, 24(sp)
	sd a2, 32(sp)
	li a2, 1
	sd a4, 40(sp)
	slli a4, a5, 32
	sd a3, 48(sp)
	li a5, 8
	addi a3, a4, 6
	slli a4, a5, 32
	sd a3, 56(sp)
	addi a3, a4, 7
	sd a3, 64(sp)
	blt a2, s0, label11
label5:
	mv s1, a0
	mv s2, zero
	j label6
.p2align 2
label11:
	lw a3, 0(a1)
	addiw a5, a2, -1
	sh2add a4, a5, a0
	addiw t0, a5, 1
	bge a5, zero, label16
.p2align 2
label15:
	sh2add a4, t0, a0
	addiw a2, a2, 1
	addi a1, a1, 4
	sw a3, 0(a4)
	blt a2, s0, label11
	j label5
.p2align 2
label16:
	lw t1, 0(a4)
	bge a3, t1, label15
	sh2add t2, t0, a0
	addiw a5, a5, -1
	addi a4, a4, -4
	sw t1, 0(t2)
	addiw t0, a5, 1
	bge a5, zero, label16
	sh2add a4, t0, a0
	addiw a2, a2, 1
	addi a1, a1, 4
	sw a3, 0(a4)
	blt a2, s0, label11
	j label5
.p2align 2
label6:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label10
	addi s1, s1, 4
	j label6
label10:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
