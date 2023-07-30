.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
QuickSort:
.p2align 2
	addi sp, sp, -88
	sd s0, 80(sp)
	mv s0, a0
	sd s5, 72(sp)
	mv a0, a1
	sd s1, 64(sp)
	mv s1, a2
	sd s6, 56(sp)
	mv a2, zero
	sd s2, 48(sp)
	sd s3, 40(sp)
	sd s4, 32(sp)
	sd s7, 24(sp)
	sd s8, 16(sp)
	sd s9, 8(sp)
	sd ra, 0(sp)
	mv s2, zero
label2:
	subw a1, zero, a2
	and s2, s2, a1
	ble s1, a0, label6
	sh2add a3, a0, s0
	mv s3, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
	j label8
label6:
	mv a0, s2
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s8, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label8:
	bgt a3, s3, label72
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
label408:
	addiw a0, s3, 1
	li a2, 1
	j label2
.p2align 2
label72:
	blt s3, a3, label82
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
.p2align 2
label82:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	blt a2, a5, label83
	blt s3, a3, label81
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
.p2align 2
label80:
	sh2add t0, s3, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s3, label72
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
label12:
	ble s4, a1, label408
label106:
	sh2add a3, a1, s0
	mv s5, a1
	lw a0, 0(a3)
	mv a3, s4
	addi a2, a0, -1
	bgt s4, a1, label19
	sh2add a2, a1, s0
	addiw s6, a1, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
label409:
	addiw a1, s5, 1
	j label12
.p2align 2
label19:
	blt s5, a3, label21
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
	j label409
.p2align 2
label28:
	sh2add a5, s5, s0
	lw a4, 0(a5)
	bgt a0, a4, label29
	bgt a3, s5, label27
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
	j label409
.p2align 2
label27:
	sh2add t0, s5, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s5, label19
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	ble s6, a1, label409
label164:
	sh2add a3, a1, s0
	mv s7, a1
	lw a0, 0(a3)
	mv a3, s6
	addi a2, a0, -1
	bgt s6, a1, label39
	sh2add a2, a1, s0
	addiw s8, a1, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
label421:
	addiw a1, s7, 1
	j label32
.p2align 2
label39:
	blt s7, a3, label41
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label44:
	sh2add a4, s7, s0
	sh2add t0, a3, s0
	addiw s7, s7, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label49:
	sh2add a5, s7, s0
	lw a4, 0(a5)
	bgt a0, a4, label50
	bgt a3, s7, label48
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label48:
	sh2add a5, s7, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s7, label39
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	ble s8, a1, label421
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
	bgt a3, s9, label67
	j label58
.p2align 2
label69:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label70
	blt s9, a3, label62
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
label62:
	sh2add a4, s9, s0
	sh2add t0, a3, s0
	addiw s9, s9, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	ble a3, s9, label58
.p2align 2
label67:
	sh2add a5, s9, s0
	lw a4, 0(a5)
	bgt a0, a4, label68
	ble a3, s9, label58
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s9, label59
	j label58
.p2align 2
label50:
	addiw s7, s7, 1
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label41:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label42
	blt s7, a3, label44
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label42:
	addiw a3, a3, -1
	blt s7, a3, label41
	bgt a3, s7, label49
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a0, 0(a2)
	bgt s8, a1, label54
	j label421
.p2align 2
label21:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	blt a2, a5, label22
	blt s5, a3, label30
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
	j label409
.p2align 2
label22:
	addiw a3, a3, -1
	blt s5, a3, label21
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
	j label409
.p2align 2
label29:
	addiw s5, s5, 1
	bgt a3, s5, label28
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a0, 0(a2)
	bgt s6, a1, label164
	j label409
.p2align 2
label83:
	addiw a3, a3, -1
	blt s3, a3, label82
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
.p2align 2
label77:
	sh2add a4, s3, s0
	lw a5, 0(a4)
	bgt a1, a5, label78
	bgt a3, s3, label80
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
.p2align 2
label78:
	addiw s3, s3, 1
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
.p2align 2
label68:
	addiw s9, s9, 1
	bgt a3, s9, label67
	j label58
.p2align 2
label70:
	addiw a3, a3, -1
	blt s9, a3, label69
	bgt a3, s9, label67
	j label58
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
	bgt s6, a1, label164
	j label409
.p2align 2
label81:
	sh2add a4, s3, s0
	sh2add a5, a3, s0
	addiw s3, s3, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s3, label77
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
	mv a1, a0
	bgt s4, a0, label106
	j label408
label52:
	bgt s8, a1, label54
	j label421
label32:
	bgt s6, a1, label164
	j label409
.globl main
main:
.p2align 2
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 9
	li a3, 7
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a1, 0(sp)
	li a1, 6
	sw a0, 4(sp)
	li a0, 2
	sw a2, 8(sp)
	sw a0, 12(sp)
	li a0, 1
	sw zero, 16(sp)
	sw a0, 20(sp)
	li a0, 5
	sw a1, 24(sp)
	li a1, 8
	sw a0, 28(sp)
	sw a3, 32(sp)
	sw a1, 36(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	li a1, 10
	bge a0, a1, label528
	mv s1, a0
.p2align 2
label526:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label526
label528:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
