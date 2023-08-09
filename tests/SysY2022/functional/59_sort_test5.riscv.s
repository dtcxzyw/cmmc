.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a2, 4
	li a3, 3
	li t0, 2
	li t1, 8
	addi a0, sp, 32
	sd ra, 0(sp)
	slli a4, a3, 32
	slli a5, t0, 32
	li a3, 9
	addi a1, a4, 4
	li t0, 5
	sd s0, 8(sp)
	addi a4, a5, 9
	li s0, 10
	li a5, 1
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a1, 32(sp)
	li a1, 1
	sd a4, 40(sp)
	slli a4, a5, 32
	slli a5, t0, 32
	sd a4, 48(sp)
	li t0, 8
	addi a4, a5, 6
	sd a4, 56(sp)
	slli a4, t0, 32
	addi a5, a4, 7
	sd a5, 64(sp)
	addiw a4, t1, -2
	addiw t0, t1, 1
	mv a5, a2
	blt t0, s0, label8
.p2align 2
label13:
	addiw a2, a2, -1
	blt a2, zero, label84
	mv t1, a4
	mv a5, a2
	addiw t0, a4, 1
	addiw a4, a4, -2
	bge t0, s0, label13
.p2align 2
label8:
	sh2add t1, t0, a0
	bge t0, a3, label55
	sh2add t3, t0, a0
	lw t4, 0(t3)
	lw t5, 4(t3)
	slt t2, t4, t5
	sh2add t6, t2, t1
	mv t3, t2
	sh2add t5, a5, a0
	lw t4, 0(t5)
	lw t5, 0(t6)
	bgt t4, t5, label13
	addw t2, t0, t2
	sh2add a6, a5, a0
	slli t6, t2, 1
	mv a5, t2
	sw t5, 0(a6)
	addiw t0, t6, 1
	sh2add t6, t3, t1
	sw t4, 0(t6)
	blt t0, s0, label8
	j label13
.p2align 2
label55:
	mv t2, zero
	sh2add t5, a5, a0
	mv t3, zero
	mv t6, t1
	lw t4, 0(t5)
	lw t5, 0(t1)
	bgt t4, t5, label13
	sext.w t2, t0
	sh2add a6, a5, a0
	slli t6, t2, 1
	mv a5, t2
	sw t5, 0(a6)
	addiw t0, t6, 1
	mv t6, t1
	sw t4, 0(t1)
	blt t0, s0, label8
	j label13
label84:
	addi a2, a0, 36
	addiw a4, a3, -1
	lw t0, 32(sp)
	lw a5, 0(a2)
	sw a5, 32(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	bgt a3, a1, label29
	j label21
.p2align 2
label33:
	sh2add t2, t0, a0
	lw t4, 0(t2)
	lw t5, 4(t2)
	slt t3, t4, t5
	sh2add t6, t3, t1
	mv t4, t3
	sh2add t5, a5, a0
	lw t2, 0(t5)
	lw t5, 0(t6)
	ble t2, t5, label193
.p2align 2
label21:
	ble a4, zero, label97
	addi a2, a2, -4
	mv a3, a4
	lw t0, 32(sp)
	addiw a4, a4, -1
	lw a5, 0(a2)
	sw a5, 32(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	ble a3, a1, label21
.p2align 2
label29:
	sh2add t1, t0, a0
	bgt a4, t0, label33
	mv t3, zero
	sh2add t5, a5, a0
	mv t4, zero
	mv t6, t1
	lw t2, 0(t5)
	lw t5, 0(t1)
	bgt t2, t5, label21
	sext.w t3, t0
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	mv t6, t1
	sw t2, 0(t1)
	bgt a3, t0, label29
	j label21
.p2align 2
label193:
	addw t3, t0, t4
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	sh2add t6, t4, t1
	sw t2, 0(t6)
	bgt a3, t0, label29
	j label21
label97:
	mv s1, a0
	mv s2, zero
	j label24
.p2align 2
label28:
	addi s1, s1, 4
.p2align 2
label24:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	blt s2, s0, label28
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
