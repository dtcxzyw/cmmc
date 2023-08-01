.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
QuickSort:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	mv a0, a1
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	mv a2, zero
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	mv s2, zero
label2:
	bne a2, zero, label290
	j label289
label126:
	addiw a0, s3, 1
	li a2, 1
	j label2
label289:
	mv s2, zero
label290:
	bgt s1, a0, label7
	mv a0, s2
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
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label7:
	sh2add a3, a0, s0
	mv s3, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
label8:
	bgt a3, s3, label11
label89:
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	j label22
.p2align 2
label11:
	bge s3, a3, label93
.p2align 2
label13:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label14
	addiw a3, a3, -1
	blt s3, a3, label13
	ble a3, s3, label317
.p2align 2
label18:
	sh2add a5, s3, s0
	lw a4, 0(a5)
	ble a1, a4, label115
	addiw s3, s3, 1
	bgt a3, s3, label18
	j label89
.p2align 2
label93:
	bgt a3, s3, label18
	j label89
label22:
	bgt s4, a0, label24
	j label126
label31:
	addiw a0, s5, 1
	j label22
label24:
	sh2add a3, a0, s0
	mv s5, a0
	lw a1, 0(a3)
	mv a3, s4
	addi a2, a1, -1
label25:
	ble a3, s5, label28
.p2align 2
label65:
	blt s5, a3, label72
.p2align 2
label67:
	ble a3, s5, label239
.p2align 2
label69:
	sh2add a5, s5, s0
	lw a4, 0(a5)
	ble a1, a4, label246
	addiw s5, s5, 1
	bgt a3, s5, label69
	j label28
.p2align 2
label72:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label73
	addiw a3, a3, -1
	blt s5, a3, label72
	bgt a3, s5, label69
	j label28
label73:
	sh2add a5, s5, s0
	addiw s5, s5, 1
	sw a4, 0(a5)
	j label67
label14:
	sh2add a5, s3, s0
	addiw s3, s3, 1
	sw a4, 0(a5)
	bgt a3, s3, label18
	j label89
label28:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a1, 0(a2)
label29:
	bgt s6, a0, label32
	j label31
label49:
	addiw a0, s7, 1
	j label29
label32:
	sh2add a3, a0, s0
	mv s7, a0
	lw a1, 0(a3)
	mv a3, s6
	addi a2, a1, -1
label33:
	bgt a3, s7, label36
label150:
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a1, 0(a2)
	mv a1, a0
	j label47
.p2align 2
label36:
	blt s7, a3, label43
.p2align 2
label38:
	ble a3, s7, label158
.p2align 2
label40:
	sh2add a5, s7, s0
	lw a4, 0(a5)
	ble a1, a4, label41
	addiw s7, s7, 1
	bgt a3, s7, label40
	j label150
label47:
	bgt s8, a1, label50
	j label49
.p2align 2
label54:
	blt s9, a3, label56
	bgt a3, s9, label61
	j label309
.p2align 2
label56:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label57
	addiw a3, a3, -1
	blt s9, a3, label56
	ble a3, s9, label322
.p2align 2
label61:
	sh2add a5, s9, s0
	lw a4, 0(a5)
	ble a0, a4, label222
	addiw s9, s9, 1
	bgt a3, s9, label61
label64:
	sh2add a3, s9, s0
	addiw a2, s9, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s9, 1
	j label47
.p2align 2
label43:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label44
	addiw a3, a3, -1
	blt s7, a3, label43
	bgt a3, s7, label40
	j label150
label50:
	sh2add a3, a1, s0
	mv s9, a1
	lw a0, 0(a3)
	mv a3, s8
	addi a2, a0, -1
label51:
	bgt a3, s9, label54
	j label64
label57:
	sh2add a5, s9, s0
	addiw s9, s9, 1
	sw a4, 0(a5)
	bgt a3, s9, label61
	j label64
label41:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label33
label44:
	sh2add a5, s7, s0
	addiw s7, s7, 1
	sw a4, 0(a5)
	j label38
.p2align 2
label158:
	bgt a3, s7, label36
	j label150
.p2align 2
label239:
	bgt a3, s5, label65
	j label28
.p2align 2
label309:
	bgt a3, s9, label54
	j label64
.p2align 2
label322:
	bgt a3, s9, label54
	j label64
.p2align 2
label317:
	bgt a3, s3, label11
	j label89
label222:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label51
label115:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label8
label246:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label25
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a1, 4
	li a0, 3
	li a2, 9
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
	sw a1, 32(sp)
	li a1, 1
	sw a0, 36(sp)
	li a0, 2
	sw a2, 40(sp)
	sw a0, 44(sp)
	li a0, 6
	sw zero, 48(sp)
	sw a1, 52(sp)
	li a1, 5
	sw a0, 56(sp)
	li a0, 7
	sw a1, 60(sp)
	li a1, 8
	sw a0, 64(sp)
	sw a1, 68(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	li s1, 10
	bge a0, s1, label352
	mv s2, a0
.p2align 2
label350:
	sh2add a1, s2, s0
	lw a0, 0(a1)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label350
label352:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
