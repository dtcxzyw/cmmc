.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
QuickSort:
.p2align 2
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
	bne a2, zero, label354
	mv s2, zero
label354:
	ble s1, a0, label6
	sh2add a3, a0, s0
	mv s3, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
.p2align 2
label72:
	blt s3, a3, label82
	bge s3, a3, label75
.p2align 2
label81:
	sh2add a4, s3, s0
	sh2add t0, a3, s0
	addiw s3, s3, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
	j label14
label12:
	bgt s4, a1, label15
	j label14
.p2align 2
label113:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
label397:
	addiw a1, s5, 1
	j label12
.p2align 2
label400:
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	ble s6, a1, label397
label35:
	sh2add a3, a1, s0
	mv s7, a1
	lw a0, 0(a3)
	mv a3, s6
	addi a2, a0, -1
	ble s6, a1, label171
.p2align 2
label39:
	blt s7, a3, label41
	bgt a3, s7, label49
	ble a3, s7, label432
.p2align 2
label48:
	sh2add t0, s7, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s7, label39
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label16:
	ble a3, s5, label113
.p2align 2
label19:
	bge s5, a3, label117
.p2align 2
label21:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label124
	addiw a3, a3, -1
	blt s5, a3, label21
	bge s5, a3, label400
.p2align 2
label30:
	sh2add a4, s5, s0
	sh2add a5, a3, s0
	addiw s5, s5, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label171:
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	ble s8, a1, label406
label54:
	sh2add a3, a1, s0
	mv s9, a1
	lw a0, 0(a3)
	mv a3, s8
	addi a2, a0, -1
	ble s8, a1, label58
.p2align 2
label59:
	blt s9, a3, label69
	bge s9, a3, label240
.p2align 2
label62:
	sh2add a4, s9, s0
	sh2add t0, a3, s0
	addiw s9, s9, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	ble a3, s9, label65
.p2align 2
label67:
	sh2add a5, s9, s0
	lw a4, 0(a5)
	ble a0, a4, label266
	addiw s9, s9, 1
	bgt a3, s9, label67
label58:
	sh2add a4, s9, s0
	addiw a2, s9, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s9, 1
	j label52
.p2align 2
label66:
	sh2add t0, s9, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s9, label59
	j label58
.p2align 2
label69:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label274
	addiw a3, a3, -1
	blt s9, a3, label69
	bgt a3, s9, label67
	j label58
.p2align 2
label41:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label182
	addiw a3, a3, -1
	blt s7, a3, label41
	bge s7, a3, label409
.p2align 2
label44:
	sh2add a4, s7, s0
	sh2add t0, a3, s0
	addiw s7, s7, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	ble a3, s7, label47
.p2align 2
label49:
	sh2add a5, s7, s0
	lw a4, 0(a5)
	ble a0, a4, label212
	addiw s7, s7, 1
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label409:
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label432:
	bgt a3, s7, label39
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label182:
	blt s7, a3, label44
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
label406:
	addiw a1, s7, 1
	j label32
.p2align 2
label47:
	bgt a3, s7, label48
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label212:
	bgt a3, s7, label48
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label406
.p2align 2
label124:
	blt s5, a3, label30
	bgt a3, s5, label28
	j label399
.p2align 2
label27:
	sh2add t0, s5, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s5, label19
	j label370
.p2align 2
label28:
	sh2add a4, s5, s0
	lw a5, 0(a4)
	ble a0, a5, label148
	addiw s5, s5, 1
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label148:
	bgt a3, s5, label27
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label399:
	bgt a3, s5, label27
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label370:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label117:
	blt s5, a3, label30
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label35
	j label397
.p2align 2
label75:
	ble a3, s3, label287
.p2align 2
label77:
	sh2add a4, s3, s0
	lw a5, 0(a4)
	ble a1, a5, label294
	addiw s3, s3, 1
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	ble s4, a0, label14
label15:
	sh2add a3, a1, s0
	mv s5, a1
	lw a0, 0(a3)
	mv a3, s4
	addi a2, a0, -1
	j label16
.p2align 2
label389:
	bgt a3, s3, label72
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
	j label14
.p2align 2
label294:
	bgt a3, s3, label80
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
label14:
	addiw a0, s3, 1
	li a2, 1
	j label2
.p2align 2
label82:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label317
	addiw a3, a3, -1
	blt s3, a3, label82
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
	j label14
.p2align 2
label317:
	blt s3, a3, label81
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
	j label14
.p2align 2
label287:
	ble a3, s3, label389
.p2align 2
label80:
	sh2add a5, s3, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s3, label72
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label15
	j label14
.p2align 2
label65:
	bgt a3, s9, label66
	j label58
.p2align 2
label240:
	bgt a3, s9, label67
	j label58
.p2align 2
label274:
	blt s9, a3, label62
	bgt a3, s9, label67
	j label58
.p2align 2
label266:
	bgt a3, s9, label66
	j label58
label32:
	bgt s6, a1, label35
	j label397
label52:
	bgt s8, a1, label54
	j label406
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
.globl main
main:
.p2align 2
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 9
	li a3, 7
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a1, 24(sp)
	li a1, 6
	sw a0, 28(sp)
	li a0, 2
	sw a2, 32(sp)
	sw a0, 36(sp)
	li a0, 1
	sw zero, 40(sp)
	sw a0, 44(sp)
	li a0, 5
	sw a1, 48(sp)
	li a1, 8
	sw a0, 52(sp)
	sw a3, 56(sp)
	sw a1, 60(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	li a1, 10
	bge a0, a1, label511
	mv s1, a0
.p2align 2
label509:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label509
label511:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
