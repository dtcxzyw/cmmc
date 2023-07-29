.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
matrix:
	.zero	80000000
.align 8
a:
	.zero	400000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -104
	sd s3, 96(sp)
	sd s4, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel426:
	auipc a1, %pcrel_hi(a)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel426)
	mv s4, a0
	jal getarray
	addiw s2, a0, -20
	addiw s1, a0, -4
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	bgt s3, zero, label2
	j label10
label3:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bgt s3, a1, label3
	j label10
label5:
	addiw a1, s3, -4
	addiw a3, s3, -20
	li a2, 16
	bgt a1, a2, label85
	mv a3, zero
	j label6
label85:
	mv a2, zero
	j label8
label6:
	sh2add a4, a3, a0
	addiw a2, a3, 1
	addiw a5, a3, 2
	sw a3, 0(a4)
	sw a2, 4(a4)
	addiw a2, a3, 3
	sw a5, 8(a4)
	addiw a3, a3, 4
	sw a2, 12(a4)
	bgt a1, a3, label6
	mv a1, a3
	j label3
label8:
	sh2add a4, a2, a0
	addiw a5, a2, 1
	addiw t0, a2, 2
	addiw t1, a2, 4
	sw a2, 0(a4)
	sw a5, 4(a4)
	addiw a5, a2, 3
	sw t0, 8(a4)
	addiw t0, a2, 5
	sw a5, 12(a4)
	addiw a5, a2, 6
	sw t1, 16(a4)
	sw t0, 20(a4)
	addiw t0, a2, 7
	sw a5, 24(a4)
	addiw a5, a2, 8
	sw t0, 28(a4)
	addiw t0, a2, 9
	sw a5, 32(a4)
	addiw a5, a2, 10
	sw t0, 36(a4)
	addiw t0, a2, 11
	sw a5, 40(a4)
	addiw a5, a2, 12
	sw t0, 44(a4)
	addiw t0, a2, 13
	sw a5, 48(a4)
	addiw a5, a2, 14
	sw t0, 52(a4)
	addiw t0, a2, 15
	sw a5, 56(a4)
	addiw a2, a2, 16
	sw t0, 60(a4)
	bgt a3, a2, label8
	mv a3, a2
	j label6
label10:
	ble s0, zero, label141
pcrel427:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel427)
	mv a1, zero
.p2align 2
label47:
	sh2add a2, a1, s4
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s3, a3
	mv t0, zero
	bgt a4, zero, label326
	addiw a1, a1, 1
	bgt s0, a1, label47
	bgt s0, zero, label14
	j label141
.p2align 2
label55:
	blt a2, a5, label57
	mulw t2, a4, a5
	addw t3, a2, t2
	addw t2, t0, a5
	sh2add t1, t3, a0
	addiw a5, a5, 1
	sh2add t4, t2, a0
	lw t3, 0(t4)
	sw t3, 0(t1)
	bgt a3, a5, label55
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label326
	addiw a1, a1, 1
	bgt s0, a1, label47
	bgt s0, zero, label14
	j label141
.p2align 2
label57:
	addiw a5, a5, 1
	bgt a3, a5, label55
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label326
	addiw a1, a1, 1
	bgt s0, a1, label47
	bgt s0, zero, label14
label141:
	mv s0, zero
	j label12
.p2align 2
label326:
	mv a5, zero
	bgt a3, zero, label55
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label326
	addiw a1, a1, 1
	bgt s0, a1, label47
	ble s0, zero, label141
label14:
	auipc a1, %pcrel_hi(matrix)
	li a2, 4
	addi a0, a1, %pcrel_lo(label14)
	bgt s0, a2, label20
	mv a1, zero
	li a4, 1
	mv a2, zero
	mv a3, zero
	j label15
label12:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s4, 88(sp)
	ld s3, 96(sp)
	addi sp, sp, 104
	ret
label15:
	sh2add t1, a2, a0
	addiw a2, a2, 1
	lw a5, 0(t1)
	mulw t0, a1, a5
	addw a1, a1, a4
	addw a3, a3, t0
	addiw a4, a4, 2
	bgt s0, a2, label15
	mv s0, a3
	j label12
label20:
	li a1, 16
	bgt s1, a1, label165
	mv s7, zero
	mv s6, zero
	li a1, 1
	mv t6, zero
	j label21
label165:
	li a1, 16
	li a2, 15
	li a3, 14
	li a4, 13
	li a5, 12
	li t0, 11
	li t1, 10
	li t2, 9
	li t4, 8
	li t5, 7
	li a6, 6
	li a7, 5
	li s3, 4
	li s4, 3
	li s5, 2
	mv t6, zero
	li t3, 1
	mv s6, zero
	mv s7, zero
	j label26
label21:
	sh2add a2, s6, a0
	addw t0, a1, t6
	sh1add t1, a1, a1
	addiw s6, s6, 4
	lw a3, 0(a2)
	lw a4, 4(a2)
	mulw a5, a4, t0
	addiw t0, a1, 1
	mulw a4, t6, a3
	addw a3, a5, a4
	lw a5, 8(a2)
	sh1add a4, t0, t6
	mulw t0, a4, a5
	addiw a5, t1, 6
	addw a3, a3, t0
	addw a4, t6, a5
	lw t0, 12(a2)
	mulw a5, a4, t0
	addiw a4, a1, 8
	addw a2, a3, a5
	slliw a3, a1, 2
	addw s7, s7, a2
	addi a2, a3, 12
	addw t6, t6, a2
	bgt s1, s6, label198
	mv a1, t6
	mv a2, s6
	mv a3, s7
	j label15
label198:
	mv a1, a4
	j label21
label26:
	sh2add s8, s6, a0
	addw s11, t6, t3
	addiw s6, s6, 16
	addiw t3, t3, 32
	lw s9, 0(s8)
	lw s10, 4(s8)
	mulw s11, s10, s11
	mulw s10, t6, s9
	addw s9, s11, s10
	addiw s11, s5, 2
	lw s10, 8(s8)
	addiw s5, s5, 64
	addw s11, t6, s11
	mulw s10, s10, s11
	addiw s11, s4, 6
	addw s9, s9, s10
	addiw s4, s4, 96
	addw s11, t6, s11
	lw s10, 12(s8)
	mulw s11, s10, s11
	lw s10, 16(s8)
	addw s9, s9, s11
	addiw s11, s3, 12
	addiw s3, s3, 128
	addw s11, t6, s11
	mulw s10, s10, s11
	addiw s11, a7, 20
	addw s9, s9, s10
	addiw a7, a7, 160
	addw s11, t6, s11
	lw s10, 20(s8)
	mulw s10, s10, s11
	addiw s11, a6, 30
	addw s9, s9, s10
	addiw a6, a6, 192
	addw s11, t6, s11
	lw s10, 24(s8)
	mulw s11, s10, s11
	lw s10, 28(s8)
	addw s9, s9, s11
	addiw s11, t5, 42
	addiw t5, t5, 224
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 32(s8)
	addw s9, s9, s11
	addiw s11, t4, 56
	addiw t4, t4, 256
	addw s11, t6, s11
	mulw s10, s10, s11
	addiw s11, t2, 72
	addw s9, s9, s10
	addiw t2, t2, 288
	addw s11, t6, s11
	lw s10, 36(s8)
	mulw s10, s10, s11
	addiw s11, t1, 90
	addw s9, s9, s10
	addiw t1, t1, 320
	addw s11, t6, s11
	lw s10, 40(s8)
	mulw s10, s10, s11
	addiw s11, t0, 110
	addw s9, s9, s10
	addiw t0, t0, 352
	addw s11, t6, s11
	lw s10, 44(s8)
	mulw s10, s10, s11
	addiw s11, a5, 132
	addw s9, s9, s10
	addiw a5, a5, 384
	addw s11, t6, s11
	lw s10, 48(s8)
	mulw s11, s10, s11
	lw s10, 52(s8)
	addw s9, s9, s11
	addiw s11, a4, 156
	addiw a4, a4, 416
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 56(s8)
	addw s9, s9, s11
	lw s8, 60(s8)
	addiw s11, a3, 182
	addiw a3, a3, 448
	addw s11, t6, s11
	mulw s10, s10, s11
	addw s9, s9, s10
	addiw s10, a2, 210
	addiw a2, a2, 480
	addw s11, t6, s10
	mulw s8, s8, s11
	addw s9, s9, s8
	addiw s8, a1, 240
	addw s7, s7, s9
	addiw a1, a1, 512
	addw t6, t6, s8
	bgt s2, s6, label26
	mv a1, t3
	j label21
label2:
	auipc a1, %pcrel_hi(matrix)
	li a2, 4
	addi a0, a1, %pcrel_lo(label2)
	bgt s3, a2, label5
	mv a1, zero
	j label3
