.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -144
	li a2, 4
	li a3, 3
	li a4, 5
	sd s0, 40(sp)
	addi a0, sp, 0
	addi a1, sp, 88
	addi s0, sp, 48
	sd s1, 136(sp)
	sd ra, 128(sp)
	sw a2, 88(sp)
	li a2, 9
	sw a3, 92(sp)
	li a3, 2
	sw a2, 96(sp)
	li a2, 6
	sw a3, 100(sp)
	li a3, 1
	sw zero, 104(sp)
	sw a3, 108(sp)
	li a3, 7
	sw a2, 112(sp)
	li a2, 8
	sw a4, 116(sp)
	sw a3, 120(sp)
	mv a3, zero
	sw a2, 124(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
label2:
	addiw a2, a3, 4
	li a4, 10
	blt a2, a4, label15
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sh2add a2, a4, a0
	lw a5, 0(a2)
	addi a4, a5, 1
	sw a4, 0(a2)
	li a2, 10
	bge a3, a2, label6
label4:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sh2add a2, a4, a0
	lw a5, 0(a2)
	addi a4, a5, 1
	sw a4, 0(a2)
	li a2, 10
	blt a3, a2, label4
label6:
	lw a4, 4(sp)
	lw a3, 0(sp)
	addw a2, a4, a3
	li a4, 10
	sw a2, 4(sp)
	lw a3, 8(sp)
	addw a2, a2, a3
	sw a2, 8(sp)
	lw a3, 12(sp)
	addw a2, a2, a3
	sw a2, 12(sp)
	lw a3, 16(sp)
	addw a2, a2, a3
	sw a2, 16(sp)
	lw a3, 20(sp)
	addw a2, a2, a3
	sw a2, 20(sp)
	lw a3, 24(sp)
	addw a2, a2, a3
	sw a2, 24(sp)
	lw a3, 28(sp)
	addw a2, a2, a3
	sw a2, 28(sp)
	lw a3, 32(sp)
	addw a2, a2, a3
	sw a2, 32(sp)
	lw a3, 36(sp)
	addw a2, a2, a3
	sw a2, 36(sp)
	j label7
label15:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	sh2add a4, a5, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	lw t0, 4(a3)
	sh2add a4, t0, a0
	lw a5, 0(a4)
	addi t0, a5, 1
	sw t0, 0(a4)
	lw a5, 8(a3)
	sh2add a4, a5, a0
	lw t1, 0(a4)
	addi t0, t1, 1
	sw t0, 0(a4)
	lw a5, 12(a3)
	sh2add a3, a5, a0
	lw a4, 0(a3)
	addi a5, a4, 1
	sw a5, 0(a3)
	mv a3, a2
	j label2
label7:
	addiw a2, a4, -4
	bgt a2, zero, label14
	addiw a4, a4, -1
	sh2add a5, a4, a1
	lw a2, 0(a5)
	sh2add a3, a2, a0
	lw t0, 0(a3)
	addiw a5, t0, -1
	sw a5, 0(a3)
	sh2add a3, a5, s0
	sw a2, 0(a3)
	bgt a4, zero, label9
	j label101
label14:
	addiw a5, a4, -1
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
	sh2add t0, a5, s0
	sw a5, 0(a4)
	mv a4, a2
	sw a3, 0(t0)
	j label7
label9:
	addiw a4, a4, -1
	sh2add a5, a4, a1
	lw a2, 0(a5)
	sh2add a3, a2, a0
	lw t0, 0(a3)
	addiw a5, t0, -1
	sw a5, 0(a3)
	sh2add a3, a5, s0
	sw a2, 0(a3)
	bgt a4, zero, label9
label101:
	mv s1, zero
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
	ld s1, 136(sp)
	ld s0, 40(sp)
	addi sp, sp, 144
	ret
