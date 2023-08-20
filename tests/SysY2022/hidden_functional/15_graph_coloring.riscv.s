.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
graphColoring:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s2, 16(sp)
	mv s2, a1
	sd s0, 24(sp)
	mv s0, a2
	sd s3, 32(sp)
	li s3, 4
	sd s4, 40(sp)
	bne a1, s3, label31
	mv a5, zero
label3:
	bge a5, s3, label6
	addiw a1, a5, 1
	mv a4, a1
	sh2add a2, a1, s0
	sh2add a3, a1, a0
	j label13
label56:
	addiw a4, a4, 1
	addi a3, a3, 4
	addi a2, a2, 4
label13:
	li t0, 3
	bgt a4, t0, label51
	lw t0, 0(a3)
	beq t0, zero, label56
	sh2add t1, a5, s0
	lw t0, 0(a2)
	lw t2, 0(t1)
	bne t0, t2, label56
label65:
	mv a0, zero
label25:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label31:
	li s4, 1
label21:
	bge s4, s3, label65
	sh2add a2, s2, s0
	addiw a1, s2, 1
	sw s4, 0(a2)
	mv a0, s1
	mv a2, s0
	jal graphColoring
	bne a0, zero, label81
	sh2add a1, s2, s0
	addiw s4, s4, 1
	sw zero, 0(a1)
	j label21
label6:
	mv s1, zero
	j label7
label10:
	addi s0, s0, 4
label7:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, 1
	blt s1, s3, label10
	li a0, 10
	jal putch
	li a0, 1
	j label25
label81:
	li a0, 1
	j label25
label51:
	addi a0, a0, 16
	mv a5, a1
	j label3
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -88
	li a4, 1
	li a3, 1
	addi a2, sp, 72
	sd ra, 0(sp)
	addi a0, sp, 8
	slli a1, a3, 32
	zext.w a3, a4
	ori a5, a1, 1
	sd a1, 8(sp)
	sd a5, 16(sp)
	sd a3, 24(sp)
	sd a3, 32(sp)
	sd a5, 40(sp)
	sd a1, 48(sp)
	mv a1, zero
	sd a3, 56(sp)
	sd a3, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	jal graphColoring
	bne a0, zero, label112
	li a0, 78
	jal putch
	li a0, 111
	jal putch
	li a0, 116
	jal putch
	li a0, 32
	jal putch
	li a0, 101
	jal putch
	li a0, 120
	jal putch
	li a0, 105
	jal putch
	li a0, 115
	jal putch
	li a0, 116
	jal putch
label112:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 88
	ret
