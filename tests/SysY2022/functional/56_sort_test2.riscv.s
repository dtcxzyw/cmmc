.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a4, 3
	addi a1, sp, 32
	slli a0, a4, 32
	sd ra, 0(sp)
	addi a2, a1, 4
	li a4, 2
	addi a3, a0, 4
	sd s0, 8(sp)
	slli a5, a4, 32
	li s0, 10
	li a4, 1
	addi a0, a5, 9
	sd s1, 16(sp)
	li a5, 5
	sd s2, 24(sp)
	sd a3, 32(sp)
	li a3, 1
	sd a0, 40(sp)
	slli a0, a3, 32
	slli a3, a5, 32
	sd a0, 48(sp)
	li a5, 8
	addi a0, a3, 6
	slli a3, a5, 32
	sd a0, 56(sp)
	addi a0, a3, 7
	sd a0, 64(sp)
	blt a4, s0, label5
	j label33
.p2align 2
label41:
	mv t0, zero
	addiw a4, a4, 1
	addi a2, a2, 4
	sw a0, 4(a3)
	bge a4, s0, label33
.p2align 2
label5:
	lw a0, 0(a2)
	addiw a5, a4, -1
	sh2add a3, a5, a1
	blt a5, zero, label41
.p2align 2
label9:
	lw t1, 0(a3)
	slt t0, a0, t1
	beq t0, zero, label12
	lw t0, 0(a3)
	addiw a5, a5, -1
	sw t0, 4(a3)
	addi a3, a3, -4
	bge a5, zero, label9
	mv t0, zero
	addiw a4, a4, 1
	addi a2, a2, 4
	sw a0, 4(a3)
	blt a4, s0, label5
	j label33
label12:
	sw a0, 4(a3)
	addiw a4, a4, 1
	addi a2, a2, 4
	blt a4, s0, label5
label33:
	mv s1, a1
	mv s2, zero
	j label15
.p2align 2
label18:
	addi s1, s1, 4
.p2align 2
label15:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	blt s2, s0, label18
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
