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
	li t0, 2
	li t1, 5
	addi a0, sp, 24
	sd ra, 0(sp)
	slli a4, a3, 32
	sd s0, 8(sp)
	li a3, 9
	addi a1, a4, 4
	sd s1, 16(sp)
	slli a4, t0, 32
	sd a1, 24(sp)
	li t0, 1
	addi a5, a4, 9
	li a1, 1
	slli a4, t0, 32
	sd a5, 32(sp)
	li t0, 8
	slli a5, t1, 32
	sd a4, 40(sp)
	addi a4, a5, 6
	slli a5, t0, 32
	sd a4, 48(sp)
	addi a4, a5, 7
	sd a4, 56(sp)
	j label2
.p2align 2
label110:
	mv t1, zero
	sh2add t4, a4, a0
	mv t2, zero
	mv t5, t0
	lw t3, 0(t4)
	lw t4, 0(t0)
	ble t3, t4, label31
.p2align 2
label7:
	addiw a2, a2, -1
	blt a2, zero, label8
.p2align 2
label2:
	slliw t0, a2, 1
	mv a4, a2
	addiw a5, t0, 1
	li t0, 10
	bge a5, t0, label7
.p2align 2
label28:
	sh2add t0, a5, a0
	bge a5, a3, label110
	sh2add t2, a5, a0
	lw t3, 0(t2)
	lw t4, 4(t2)
	slt t1, t3, t4
	sh2add t5, t1, t0
	mv t2, t1
	sh2add t4, a4, a0
	lw t3, 0(t4)
	lw t4, 0(t5)
	bgt t3, t4, label7
	addw t1, a5, t1
	sh2add t6, a4, a0
	slli t5, t1, 1
	mv a4, t1
	sw t4, 0(t6)
	addiw a5, t5, 1
	sh2add t5, t2, t0
	li t0, 10
	sw t3, 0(t5)
	blt a5, t0, label28
	j label7
label31:
	addw t1, a5, t2
	sh2add t6, a4, a0
	slli t5, t1, 1
	mv a4, t1
	sw t4, 0(t6)
	addiw a5, t5, 1
	sh2add t5, t2, t0
	li t0, 10
	sw t3, 0(t5)
	blt a5, t0, label28
	j label7
label8:
	addi a2, a0, 36
	lw t0, 24(sp)
	addiw a4, a3, -1
	lw a5, 0(a2)
	sw a5, 24(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	bgt a3, a1, label23
	j label15
.p2align 2
label27:
	sh2add t2, t0, a0
	lw t4, 0(t2)
	lw t5, 4(t2)
	slt t3, t4, t5
	sh2add t6, t3, t1
	mv t4, t3
	sh2add t5, a5, a0
	lw t2, 0(t5)
	lw t5, 0(t6)
	ble t2, t5, label188
.p2align 2
label15:
	ble a4, zero, label16
	addi a2, a2, -4
	mv a3, a4
	lw t0, 24(sp)
	addiw a4, a4, -1
	lw a5, 0(a2)
	sw a5, 24(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	ble a3, a1, label15
.p2align 2
label23:
	sh2add t1, t0, a0
	bgt a4, t0, label27
	mv t3, zero
	sh2add t5, a5, a0
	mv t4, zero
	mv t6, t1
	lw t2, 0(t5)
	lw t5, 0(t1)
	bgt t2, t5, label15
	sext.w t3, t0
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	mv t6, t1
	sw t2, 0(t1)
	bgt a3, t0, label23
	j label15
label16:
	mv s0, a0
	mv s1, zero
	j label17
.p2align 2
label21:
	addi s0, s0, 4
.p2align 2
label17:
	lw a0, 0(s0)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label21
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
.p2align 2
label188:
	addw t3, t0, t4
	sh2add a6, a5, a0
	slli t6, t3, 1
	mv a5, t3
	sw t5, 0(a6)
	addiw t0, t6, 1
	sh2add t6, t4, t1
	sw t2, 0(t6)
	bgt a3, t0, label23
	j label15
