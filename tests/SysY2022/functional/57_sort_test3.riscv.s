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
	mv s2, zero
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
label2:
	bne a2, zero, label314
	j label313
label28:
	addiw a0, s3, 1
	li a2, 1
	j label2
label313:
	mv s2, zero
label314:
	ble s1, a0, label6
	sh2add a3, a0, s0
	mv a4, s1
	mv s3, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label8:
	bgt a4, s3, label11
label105:
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	j label26
.p2align 2
label11:
	sh2add a3, a4, s0
	blt s3, a4, label21
	sh2add a5, s3, s0
.p2align 2
label15:
	ble a4, s3, label115
.p2align 2
label18:
	lw t0, 0(a5)
	ble a1, t0, label120
	addiw s3, s3, 1
	addi a5, a5, 4
	bgt a4, s3, label18
	j label105
.p2align 2
label21:
	lw a5, 0(a3)
	bge a2, a5, label128
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s3, a4, label21
	sh2add a5, s3, s0
	bgt a4, s3, label18
	j label105
label26:
	bgt s4, a0, label29
	j label28
label36:
	addiw a0, s5, 1
	j label26
label29:
	sh2add a3, a0, s0
	mv a4, s4
	mv s5, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label30:
	bgt a4, s5, label78
label33:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a1, 0(a2)
	mv a1, a0
	j label34
.p2align 2
label78:
	sh2add a3, a4, s0
	blt s5, a4, label82
	sh2add a5, s5, s0
	bgt a4, s5, label89
	j label345
.p2align 2
label82:
	lw a5, 0(a3)
	bge a2, a5, label265
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s5, a4, label82
	sh2add a5, s5, s0
	ble a4, s5, label346
.p2align 2
label89:
	lw t0, 0(a5)
	ble a1, t0, label90
	addiw s5, s5, 1
	addi a5, a5, 4
	bgt a4, s5, label89
	j label33
label34:
	bgt s6, a1, label37
	j label36
label58:
	addiw a1, s7, 1
	j label34
label37:
	sh2add a3, a1, s0
	mv a4, s6
	mv s7, a1
	lw a0, 0(a3)
	addi a2, a0, -1
label38:
	bgt a4, s7, label41
label169:
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	j label56
.p2align 2
label41:
	sh2add a3, a4, s0
	bge s7, a4, label175
.p2align 2
label45:
	lw a5, 0(a3)
	bge a2, a5, label180
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s7, a4, label45
	sh2add a5, s7, s0
	ble a4, s7, label342
.p2align 2
label51:
	lw t0, 0(a5)
	ble a0, t0, label196
	addiw s7, s7, 1
	addi a5, a5, 4
	bgt a4, s7, label51
	j label169
.p2align 2
label175:
	sh2add a5, s7, s0
	bgt a4, s7, label51
	j label169
label56:
	bgt s8, a1, label59
	j label58
label63:
	sh2add a3, s9, s0
	addiw a2, s9, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s9, 1
	j label56
label59:
	sh2add a3, a1, s0
	mv a4, s8
	mv s9, a1
	lw a0, 0(a3)
	addi a2, a0, -1
label60:
	ble a4, s9, label63
.p2align 2
label64:
	sh2add a3, a4, s0
	blt s9, a4, label75
	sh2add a5, s9, s0
.p2align 2
label69:
	ble a4, s9, label234
.p2align 2
label72:
	lw t0, 0(a5)
	ble a0, t0, label73
	addiw s9, s9, 1
	addi a5, a5, 4
	bgt a4, s9, label72
	j label63
.p2align 2
label75:
	lw a5, 0(a3)
	bge a2, a5, label247
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s9, a4, label75
	sh2add a5, s9, s0
	bgt a4, s9, label72
	j label63
label6:
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
label73:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label60
label180:
	sh2add t0, s7, s0
	addiw s7, s7, 1
	sw a5, 0(t0)
	sh2add a5, s7, s0
	bgt a4, s7, label51
	j label169
label265:
	sh2add t0, s5, s0
	addiw s5, s5, 1
	sw a5, 0(t0)
	sh2add a5, s5, s0
	bgt a4, s5, label89
	j label33
label90:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label30
.p2align 2
label234:
	bgt a4, s9, label64
	j label63
.p2align 2
label115:
	bgt a4, s3, label11
	j label105
.p2align 2
label345:
	bgt a4, s5, label78
	j label33
.p2align 2
label342:
	bgt a4, s7, label41
	j label169
.p2align 2
label346:
	bgt a4, s5, label78
	j label33
label247:
	sh2add t0, s9, s0
	addiw s9, s9, 1
	sw a5, 0(t0)
	sh2add a5, s9, s0
	j label69
label196:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label38
label120:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label8
label128:
	sh2add t0, s3, s0
	addiw s3, s3, 1
	sw a5, 0(t0)
	sh2add a5, s3, s0
	j label15
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a2, 3
	li a3, 2
	li a4, 1
	addi t1, sp, 32
	slli a1, a2, 32
	sd ra, 0(sp)
	li a2, 9
	addi a0, a1, 4
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a0, 32(sp)
	slli a0, a3, 32
	li a3, 5
	addi a1, a0, 9
	slli a0, a4, 32
	sd a1, 40(sp)
	li a4, 8
	slli a1, a3, 32
	sd a0, 48(sp)
	addi a0, a1, 6
	slli a1, a4, 32
	sd a0, 56(sp)
	addi a3, a1, 7
	mv a1, zero
	sd a3, 64(sp)
	mv a0, t1
	jal QuickSort
	li s0, 10
	bge a0, s0, label382
	sh2add s1, a0, t1
	mv s2, a0
.p2align 2
label378:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label382
	addi s1, s1, 4
	j label378
label382:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
