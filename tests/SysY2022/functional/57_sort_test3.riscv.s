.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
QuickSort:
	addi sp, sp, -48
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	mv s1, a2
	sd s3, 24(sp)
	mv s3, zero
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	mv s2, zero
label2:
	bgt s1, a1, label6
	j label23
label7:
	bgt a3, s4, label11
	sh2add a4, s4, s0
	addiw a2, s4, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s4, 1
	subw a0, zero, s3
	li s3, 1
	and s2, s2, a0
	j label2
label11:
	blt s4, a3, label13
label15:
	bge s4, a3, label16
	sh2add a5, a3, s0
	sh2add t0, s4, s0
	lw a4, 0(a5)
	addiw s4, s4, 1
	sw a4, 0(t0)
label16:
	bgt a3, s4, label18
label20:
	bgt a3, s4, label21
	j label7
label23:
	subw a1, zero, s3
	ld ra, 0(sp)
	and a0, s2, a1
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label21:
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label7
label18:
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	j label16
label13:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	j label11
label6:
	sh2add a3, a1, s0
	mv s4, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	j label7
.globl main
main:
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 9
	li a3, 5
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
	li a0, 7
	sw a1, 24(sp)
	li a1, 8
	sw a3, 28(sp)
	sw a0, 32(sp)
	sw a1, 36(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	li a1, 10
	bge a0, a1, label99
	mv s1, a0
label97:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label97
label99:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
