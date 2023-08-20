.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[24]
	addi sp, sp, -64
	li a2, 4
	li a3, 3
	li t0, 1
	li t1, 5
	addi a0, sp, 24
	sd ra, 0(sp)
	slli a1, a3, 32
	sd s0, 8(sp)
	li a3, 9
	addi a4, a1, 4
	sd s1, 16(sp)
	li a1, 2
	sd a4, 24(sp)
	slli a4, a1, 32
	li a1, 1
	addi a5, a4, 9
	slli a4, t0, 32
	sd a5, 32(sp)
	slli a5, t1, 32
	sd a4, 40(sp)
	li t1, 8
	addi t0, a5, 6
	slli a4, t1, 32
	sd t0, 48(sp)
	addi a5, a4, 7
	sd a5, 56(sp)
	j label2
.p2align 2
label12:
	addiw a2, a2, -1
	blt a2, zero, label13
.p2align 2
label2:
	slliw t0, a2, 1
	mv a4, a2
	addiw a5, t0, 1
	li t0, 10
	bge a5, t0, label12
.p2align 2
label7:
	sh2add t0, a5, a0
	blt a5, a3, label11
	mv t1, zero
	sh2add t4, a4, a0
	mv t2, zero
	mv t5, t0
	lw t3, 0(t4)
	lw t4, 0(t0)
	bgt t3, t4, label12
	sext.w t1, a5
	sh2add t5, a4, a0
	slli t6, t1, 1
	mv a4, t1
	sw t4, 0(t5)
	addiw a5, t6, 1
	mv t6, t0
	li t0, 10
	sw t3, 0(t6)
	blt a5, t0, label7
	j label12
.p2align 2
label11:
	sh2add t2, a5, a0
	lw t3, 0(t2)
	lw t4, 4(t2)
	slt t1, t3, t4
	sh2add t5, t1, t0
	mv t2, t1
	sh2add t4, a4, a0
	lw t3, 0(t4)
	lw t4, 0(t5)
	bgt t3, t4, label12
	addw t1, a5, t1
	sh2add t5, a4, a0
	slli t6, t1, 1
	mv a4, t1
	sw t4, 0(t5)
	addiw a5, t6, 1
	sh2add t6, t2, t0
	li t0, 10
	sw t3, 0(t6)
	blt a5, t0, label7
	j label12
label13:
	addi a2, a0, 36
	lw t0, 24(sp)
	addiw a4, a3, -1
	lw a5, 0(a2)
	sw a5, 24(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	bgt a3, a1, label28
	j label20
.p2align 2
label110:
	mv t3, zero
	sh2add t5, a5, a0
	mv t4, zero
	mv t6, t1
	lw t2, 0(t5)
	lw t5, 0(t1)
	ble t2, t5, label31
.p2align 2
label20:
	ble a4, zero, label21
	addi a2, a2, -4
	mv a3, a4
	lw t0, 24(sp)
	addiw a4, a4, -1
	lw a5, 0(a2)
	sw a5, 24(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	ble a3, a1, label20
.p2align 2
label28:
	sh2add t1, t0, a0
	ble a4, t0, label110
	sh2add t2, t0, a0
	lw t4, 0(t2)
	lw t5, 4(t2)
	slt t3, t4, t5
	sh2add t6, t3, t1
	mv t4, t3
	sh2add t5, a5, a0
	lw t2, 0(t5)
	lw t5, 0(t6)
	bgt t2, t5, label20
	addw t3, t0, t3
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	sh2add t6, t4, t1
	sw t2, 0(t6)
	bgt a3, t0, label28
	j label20
label21:
	mv s0, a0
	mv s1, zero
.p2align 2
label22:
	lw a0, 0(s0)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label25
	addi s0, s0, 4
	j label22
.p2align 2
label31:
	addw t3, t0, t4
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	sh2add t6, t4, t1
	sw t2, 0(t6)
	bgt a3, t0, label28
	j label20
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
