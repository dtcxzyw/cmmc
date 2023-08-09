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
	bne a2, zero, label318
	mv s2, zero
label318:
	ble s1, a0, label6
	sh2add a3, a0, s0
	mv a4, s1
	mv s3, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label8
.p2align 2
label331:
	lw t0, 0(a5)
	ble a1, t0, label348
.p2align 2
label24:
	addiw s3, s3, 1
	addi a5, a5, 4
	bgt a4, s3, label331
.p2align 2
label8:
	ble a4, s3, label105
	sh2add a3, a4, s0
	bge s3, a4, label111
.p2align 2
label15:
	lw a5, 0(a3)
	bge a2, a5, label116
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s3, a4, label15
	sh2add a5, s3, s0
	ble a4, s3, label8
	lw t0, 0(a5)
	bgt a1, t0, label24
	j label348
.p2align 2
label111:
	sh2add a5, s3, s0
	ble a4, s3, label8
	lw t0, 0(a5)
	bgt a1, t0, label24
	j label348
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
label105:
	sh2add a2, s3, s0
	addiw s4, s3, -1
	sw a1, 0(a2)
label26:
	bgt s4, a0, label29
	addiw a0, s3, 1
	li a2, 1
	j label2
label29:
	sh2add a3, a0, s0
	mv a4, s4
	mv s5, a0
	lw a1, 0(a3)
	addi a2, a1, -1
.p2align 2
label30:
	ble a4, s5, label153
	sh2add a3, a4, s0
	blt s5, a4, label37
	sh2add a5, s5, s0
	lw t0, 0(a5)
	ble a1, t0, label350
.p2align 2
label46:
	addiw s5, s5, 1
	addi a5, a5, 4
	ble a4, s5, label30
	lw t0, 0(a5)
	bgt a1, t0, label46
label350:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label30
.p2align 2
label37:
	lw a5, 0(a3)
	bge a2, a5, label164
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s5, a4, label37
	sh2add a5, s5, s0
	ble a4, s5, label30
	lw t0, 0(a5)
	bgt a1, t0, label46
	j label350
label153:
	sh2add a2, s5, s0
	addiw s6, s5, -1
	sw a1, 0(a2)
label48:
	bgt s6, a0, label51
	addiw a0, s5, 1
	j label26
label116:
	sh2add t0, s3, s0
	addiw s3, s3, 1
	sw a5, 0(t0)
	sh2add a5, s3, s0
	ble a4, s3, label8
	lw t0, 0(a5)
	bgt a1, t0, label24
	j label348
label164:
	sh2add t0, s5, s0
	addiw s5, s5, 1
	sw a5, 0(t0)
	sh2add a5, s5, s0
	ble a4, s5, label30
	lw t0, 0(a5)
	bgt a1, t0, label46
	j label350
label348:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label8
label51:
	sh2add a3, a0, s0
	mv a4, s6
	mv s7, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label52
.p2align 2
label334:
	lw t0, 0(a5)
	ble a1, t0, label218
.p2align 2
label64:
	addiw s7, s7, 1
	addi a5, a5, 4
	bgt a4, s7, label334
.p2align 2
label52:
	ble a4, s7, label201
	sh2add a3, a4, s0
	blt s7, a4, label66
	sh2add a5, s7, s0
.p2align 2
label60:
	ble a4, s7, label52
	lw t0, 0(a5)
	bgt a1, t0, label64
	j label218
.p2align 2
label66:
	lw a5, 0(a3)
	bge a2, a5, label226
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s7, a4, label66
	sh2add a5, s7, s0
	ble a4, s7, label52
	lw t0, 0(a5)
	bgt a1, t0, label64
	j label218
label201:
	sh2add a2, s7, s0
	addiw s8, s7, -1
	sw a1, 0(a2)
	mv a1, a0
label70:
	ble s8, a1, label240
	sh2add a3, a1, s0
	mv a4, s8
	mv s9, a1
	lw a0, 0(a3)
	addi a2, a0, -1
	j label73
.p2align 2
label254:
	sh2add a5, s9, s0
	bgt a4, s9, label345
.p2align 2
label73:
	ble a4, s9, label90
	sh2add a3, a4, s0
	bge s9, a4, label254
.p2align 2
label80:
	lw a5, 0(a3)
	bge a2, a5, label81
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s9, a4, label80
	sh2add a5, s9, s0
	ble a4, s9, label73
	lw t0, 0(a5)
	bgt a0, t0, label88
	j label353
.p2align 2
label345:
	lw t0, 0(a5)
	ble a0, t0, label353
.p2align 2
label88:
	addiw s9, s9, 1
	addi a5, a5, 4
	ble a4, s9, label73
	lw t0, 0(a5)
	bgt a0, t0, label88
label353:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label73
label90:
	sh2add a3, s9, s0
	addiw a2, s9, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s9, 1
	j label70
label81:
	sh2add t0, s9, s0
	addiw s9, s9, 1
	sw a5, 0(t0)
	sh2add a5, s9, s0
	ble a4, s9, label73
	lw t0, 0(a5)
	bgt a0, t0, label88
	j label353
label218:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label52
label226:
	sh2add t0, s7, s0
	addiw s7, s7, 1
	sw a5, 0(t0)
	sh2add a5, s7, s0
	j label60
label240:
	addiw a0, s7, 1
	j label48
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
	bge a0, s0, label384
	sh2add s1, a0, t1
	mv s2, a0
.p2align 2
label380:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label384
	addi s1, s1, 4
	j label380
label384:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
