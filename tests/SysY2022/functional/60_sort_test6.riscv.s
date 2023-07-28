.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -144
	li a2, 4
	li a3, 3
	li a4, 9
	addi a0, sp, 0
	addi a1, sp, 88
	sd s0, 136(sp)
	addi s0, sp, 48
	sd s1, 40(sp)
	sd ra, 128(sp)
	sw a2, 88(sp)
	li a2, 2
	sw a3, 92(sp)
	li a3, 6
	sw a4, 96(sp)
	sw a2, 100(sp)
	li a2, 1
	sw zero, 104(sp)
	sw a2, 108(sp)
	li a2, 5
	sw a3, 112(sp)
	li a3, 7
	sw a2, 116(sp)
	li a2, 8
	sw a3, 120(sp)
	sw a2, 124(sp)
	mv a2, zero
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
.p2align 2
label2:
	sh2add a3, a2, a1
	lw t0, 0(a3)
	sh2add a4, t0, a0
	lw a5, 0(a4)
	addi t0, a5, 1
	sw t0, 0(a4)
	lw a5, 4(a3)
	sh2add a4, a5, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	lw t1, 8(a3)
	sh2add a4, t1, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	lw a4, 12(a3)
	sh2add a3, a4, a0
	addiw a4, a2, 8
	lw t0, 0(a3)
	addi a5, t0, 1
	sw a5, 0(a3)
	addiw a3, a2, 4
	li a2, 10
	blt a4, a2, label67
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sh2add a2, a5, a0
	lw a4, 0(a2)
	addi a5, a4, 1
	sw a5, 0(a2)
	li a2, 10
	blt a3, a2, label4
	j label6
label67:
	mv a2, a3
	j label2
label4:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sh2add a2, a5, a0
	lw a4, 0(a2)
	addi a5, a4, 1
	sw a5, 0(a2)
	li a2, 10
	blt a3, a2, label4
label6:
	lw a4, 0(sp)
	lw a3, 4(sp)
	addw a2, a4, a3
	lw a4, 20(sp)
	lw a5, 8(sp)
	addw a3, a2, a4
	lw t0, 12(sp)
	addw a4, a3, a5
	lw t1, 16(sp)
	addw a5, a2, a5
	addw t2, a4, t0
	addw t0, t0, a5
	addw a3, t2, t1
	addw t1, t1, t0
	lw t2, 24(sp)
	lw t4, 36(sp)
	addw a4, a3, t2
	lw t3, 28(sp)
	addw t2, a4, t4
	lw t4, 32(sp)
	addw t5, t2, t3
	sw a2, 4(sp)
	addw t3, a4, t3
	addw t2, t5, t4
	li a2, 10
	sw a5, 8(sp)
	addw t4, t4, t3
	sw t0, 12(sp)
	sw t1, 16(sp)
	sw a3, 20(sp)
	sw a4, 24(sp)
	sw t3, 28(sp)
	sw t4, 32(sp)
	sw t2, 36(sp)
.p2align 2
label7:
	addiw a5, a2, -1
	sh2add a3, a5, a1
	lw a4, 0(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a4, -4(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a4, -8(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a3, -12(a3)
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, -1
	sw a5, 0(a4)
	sh2add a4, a5, s0
	sw a3, 0(a4)
	addiw a3, a2, -8
	addiw a2, a2, -4
	bgt a3, zero, label7
	addiw a2, a2, -1
	sh2add a5, a2, a1
	lw a3, 0(a5)
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, -1
	sw a5, 0(a4)
	sh2add a4, a5, s0
	sw a3, 0(a4)
	bgt a2, zero, label9
label212:
	mv s1, zero
	j label11
label9:
	addiw a2, a2, -1
	sh2add a5, a2, a1
	lw a3, 0(a5)
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, -1
	sw a5, 0(a4)
	sh2add a4, a5, s0
	sw a3, 0(a4)
	bgt a2, zero, label9
	j label212
.p2align 2
label11:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label11
	mv a0, zero
	ld ra, 128(sp)
	ld s1, 40(sp)
	ld s0, 136(sp)
	addi sp, sp, 144
	ret
