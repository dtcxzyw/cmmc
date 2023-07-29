.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
graphColoring:
.p2align 2
	addi sp, sp, -40
	sd s1, 32(sp)
	mv s1, a0
	sd s2, 24(sp)
	li a0, 4
	mv s2, a2
	sd s0, 16(sp)
	mv s0, a3
	sd s3, 8(sp)
	sd ra, 0(sp)
	beq a2, a0, label25
	li s3, 1
	j label13
label25:
	mv a2, zero
label2:
	slliw a1, a2, 4
	li a0, 4
	add a3, s1, a1
	blt a2, a0, label31
	mv s1, zero
	j label4
label31:
	addiw a0, a2, 1
	mv a1, a0
	j label8
label4:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	li a0, 4
	addiw s1, s1, 1
	blt s1, a0, label4
	li a0, 10
	jal putch
	li a0, 1
	j label17
label8:
	li a4, 4
	blt a1, a4, label10
	mv a2, a0
	j label2
label10:
	sh2add a5, a1, a3
	lw a4, 0(a5)
	bne a4, zero, label12
label50:
	addiw a1, a1, 1
	j label8
label12:
	sh2add t0, a1, s0
	sh2add a5, a2, s0
	lw a4, 0(t0)
	lw t0, 0(a5)
	bne a4, t0, label50
label62:
	mv a0, zero
	j label17
label13:
	li a1, 4
	bge s3, a1, label62
	sh2add a0, s2, s0
	addiw a2, s2, 1
	li a1, 3
	sw s3, 0(a0)
	mv a0, s1
	mv a3, s0
	jal graphColoring
	bne a0, zero, label74
	sh2add a1, s2, s0
	addiw s3, s3, 1
	sw zero, 0(a1)
	j label13
label74:
	li a0, 1
label17:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -88
	li a1, 1
	mv a2, zero
	addi a3, sp, 0
	addi a0, sp, 16
	sd ra, 80(sp)
	sw zero, 16(sp)
	sw a1, 20(sp)
	sw a1, 24(sp)
	sw a1, 28(sp)
	sw a1, 32(sp)
	sw zero, 36(sp)
	sw a1, 40(sp)
	sw zero, 44(sp)
	sw a1, 48(sp)
	sw a1, 52(sp)
	sw zero, 56(sp)
	sw a1, 60(sp)
	sw a1, 64(sp)
	sw zero, 68(sp)
	sw a1, 72(sp)
	li a1, 3
	sw zero, 76(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	jal graphColoring
	beq a0, zero, label99
label100:
	mv a0, zero
	ld ra, 80(sp)
	addi sp, sp, 88
	ret
label99:
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
	j label100
