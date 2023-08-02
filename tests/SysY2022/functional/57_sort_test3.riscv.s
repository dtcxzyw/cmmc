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
	bne a2, zero, label290
	mv s2, zero
label290:
	bgt s1, a0, label6
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
label6:
	sh2add a3, a0, s0
	mv s3, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
label7:
	bgt a3, s3, label10
label89:
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	j label21
.p2align 2
label10:
	blt s3, a3, label12
	ble a3, s3, label302
.p2align 2
label17:
	sh2add a5, s3, s0
	lw a4, 0(a5)
	ble a1, a4, label18
	addiw s3, s3, 1
	bgt a3, s3, label17
	j label89
label21:
	ble s4, a0, label126
	sh2add a3, a0, s0
	mv s5, a0
	lw a1, 0(a3)
	mv a3, s4
	addi a2, a1, -1
label24:
	bgt a3, s5, label64
	j label27
.p2align 2
label12:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	blt s3, a3, label12
	bgt a3, s3, label17
	j label89
label27:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a1, 0(a2)
	mv a1, a0
label28:
	bgt s6, a1, label31
	addiw a0, s5, 1
	j label21
.p2align 2
label64:
	blt s5, a3, label66
	bgt a3, s5, label71
	j label313
.p2align 2
label66:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label67
	addiw a3, a3, -1
	blt s5, a3, label66
	ble a3, s5, label326
.p2align 2
label71:
	sh2add a5, s5, s0
	lw a4, 0(a5)
	ble a1, a4, label257
	addiw s5, s5, 1
	bgt a3, s5, label71
	j label27
label31:
	sh2add a3, a1, s0
	mv s7, a1
	lw a0, 0(a3)
	mv a3, s6
	addi a2, a0, -1
label32:
	bgt a3, s7, label54
label35:
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	j label36
.p2align 2
label54:
	blt s7, a3, label61
.p2align 2
label56:
	ble a3, s7, label209
.p2align 2
label58:
	sh2add a5, s7, s0
	lw a4, 0(a5)
	ble a0, a4, label59
	addiw s7, s7, 1
	bgt a3, s7, label58
	j label35
label36:
	bgt s8, a1, label39
	j label38
.p2align 2
label43:
	blt s9, a3, label45
	bgt a3, s9, label50
	j label306
.p2align 2
label45:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label46
	addiw a3, a3, -1
	blt s9, a3, label45
	ble a3, s9, label321
.p2align 2
label50:
	sh2add a5, s9, s0
	lw a4, 0(a5)
	ble a0, a4, label51
	addiw s9, s9, 1
	bgt a3, s9, label50
label53:
	sh2add a3, s9, s0
	addiw a2, s9, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s9, 1
	j label36
.p2align 2
label61:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label62
	addiw a3, a3, -1
	blt s7, a3, label61
	bgt a3, s7, label58
	j label35
label38:
	addiw a1, s7, 1
	j label28
label39:
	sh2add a3, a1, s0
	mv s9, a1
	lw a0, 0(a3)
	mv a3, s8
	addi a2, a0, -1
label40:
	bgt a3, s9, label43
	j label53
label13:
	sh2add a5, s3, s0
	addiw s3, s3, 1
	sw a4, 0(a5)
	bgt a3, s3, label17
	j label89
label18:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label7
label51:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label40
label46:
	sh2add a5, s9, s0
	addiw s9, s9, 1
	sw a4, 0(a5)
	bgt a3, s9, label50
	j label53
label67:
	sh2add a5, s5, s0
	addiw s5, s5, 1
	sw a4, 0(a5)
	bgt a3, s5, label71
	j label27
label59:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label32
label62:
	sh2add a5, s7, s0
	addiw s7, s7, 1
	sw a4, 0(a5)
	j label56
.p2align 2
label209:
	bgt a3, s7, label54
	j label35
.p2align 2
label302:
	bgt a3, s3, label10
	j label89
.p2align 2
label306:
	bgt a3, s9, label43
	j label53
.p2align 2
label313:
	bgt a3, s5, label64
	j label27
.p2align 2
label321:
	bgt a3, s9, label43
	j label53
.p2align 2
label326:
	bgt a3, s5, label64
	j label27
label257:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label24
label126:
	addiw a0, s3, 1
	li a2, 1
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 12884901892
	li a2, 9
	li a1, 4294967296
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a0, 32(sp)
	li a0, 8589934601
	sd a0, 40(sp)
	li a0, 21474836486
	sd a1, 48(sp)
	li a1, 34359738375
	sd a0, 56(sp)
	sd a1, 64(sp)
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
