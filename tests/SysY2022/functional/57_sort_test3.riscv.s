.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
QuickSort:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	bge a1, a2, label2
label3:
	sh2add a3, a1, s0
	mv a4, s1
	mv s2, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
.p2align 2
label5:
	ble a4, s2, label22
	sh2add a3, a4, s0
	bge s2, a4, label104
.p2align 2
label12:
	lw a5, 0(a3)
	bge a2, a5, label109
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label12
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label20
	j label357
.p2align 2
label104:
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	ble a0, t0, label357
.p2align 2
label20:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label20
label357:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label5
label22:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	blt a1, s3, label24
label23:
	addiw a1, s2, 1
	bgt s1, a1, label3
	j label2
label43:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	blt a1, s5, label45
label44:
	addiw a1, s4, 1
	ble s3, a1, label23
label24:
	sh2add a3, a1, s0
	mv a4, s3
	mv s4, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label26
.p2align 2
label339:
	lw t0, 0(a5)
	ble a0, t0, label359
.p2align 2
label41:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label339
.p2align 2
label26:
	ble a4, s4, label43
	sh2add a3, a4, s0
	blt s4, a4, label33
	sh2add a5, s4, s0
	lw t0, 0(a5)
	bgt a0, t0, label41
	j label359
label45:
	sh2add a3, a1, s0
	mv a4, s5
	mv s6, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
.p2align 2
label47:
	ble a4, s6, label64
	sh2add a3, a4, s0
	bge s6, a4, label208
.p2align 2
label54:
	lw a5, 0(a3)
	bge a2, a5, label55
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label54
	sh2add a5, s6, s0
	ble a4, s6, label47
	lw t0, 0(a5)
	bgt a0, t0, label63
	j label361
.p2align 2
label33:
	lw a5, 0(a3)
	bge a2, a5, label161
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label33
	sh2add a5, s4, s0
	ble a4, s4, label26
	lw t0, 0(a5)
	bgt a0, t0, label41
	j label359
.p2align 2
label208:
	sh2add a5, s6, s0
	ble a4, s6, label47
	lw t0, 0(a5)
	ble a0, t0, label361
.p2align 2
label63:
	addiw s6, s6, 1
	addi a5, a5, 4
	ble a4, s6, label47
	lw t0, 0(a5)
	bgt a0, t0, label63
label361:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label47
label64:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	blt a1, s7, label66
label65:
	addiw a1, s6, 1
	bgt s5, a1, label45
	j label44
label109:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label20
	j label357
label161:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label26
	lw t0, 0(a5)
	bgt a0, t0, label41
	j label359
label55:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label47
	lw t0, 0(a5)
	bgt a0, t0, label63
	j label361
label2:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label359:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label26
label66:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label68
.p2align 2
label343:
	lw t0, 0(a5)
	ble a0, t0, label363
.p2align 2
label83:
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label343
.p2align 2
label68:
	ble a4, s8, label85
	sh2add a3, a4, s0
	bge s8, a4, label260
.p2align 2
label75:
	lw a5, 0(a3)
	bge a2, a5, label265
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label75
	sh2add a5, s8, s0
	ble a4, s8, label68
	lw t0, 0(a5)
	bgt a0, t0, label83
	j label363
.p2align 2
label260:
	sh2add a5, s8, s0
	ble a4, s8, label68
	lw t0, 0(a5)
	bgt a0, t0, label83
	j label363
label85:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	bgt s7, a1, label66
	j label65
label265:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	ble a4, s8, label68
	lw t0, 0(a5)
	bgt a0, t0, label83
label363:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label68
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a2, 3
	li a3, 2
	li a4, 5
	addi t1, sp, 32
	slli a1, a2, 32
	sd ra, 0(sp)
	li a2, 9
	addi a0, a1, 4
	sd s0, 8(sp)
	slli a1, a3, 32
	sd s1, 16(sp)
	li a3, 1
	sd s2, 24(sp)
	sd a0, 32(sp)
	addi a0, a1, 9
	slli a1, a3, 32
	sd a0, 40(sp)
	slli a0, a4, 32
	sd a1, 48(sp)
	li a4, 8
	addi a3, a0, 6
	slli a1, a4, 32
	sd a3, 56(sp)
	addi a3, a1, 7
	mv a1, zero
	sd a3, 64(sp)
	mv a0, t1
	jal QuickSort
	li s0, 10
	bge a0, s0, label392
	sh2add s1, a0, t1
	mv s2, a0
.p2align 2
label388:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label392
	addi s1, s1, 4
	j label388
label392:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
