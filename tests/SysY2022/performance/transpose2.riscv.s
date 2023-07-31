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
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s4, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel405:
	auipc a1, %pcrel_hi(a)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel405)
	mv s4, a0
	jal getarray
	addiw s1, a0, -4
	addiw s2, a0, -20
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel406:
	auipc a2, %pcrel_hi(matrix)
	addi a1, a2, %pcrel_lo(pcrel406)
	ble s3, zero, label10
	li a2, 4
	ble s3, a2, label70
	addiw a2, s3, -4
	addiw a3, s3, -20
	li a4, 16
	ble a2, a4, label76
	mv a0, zero
	j label6
label4:
	sh2add a3, a0, a1
	addiw a4, a0, 1
	addiw a5, a0, 2
	sw a0, 0(a3)
	sw a4, 4(a3)
	addiw a4, a0, 3
	sw a5, 8(a3)
	addiw a0, a0, 4
	sw a4, 12(a3)
	bgt a2, a0, label4
	j label8
label6:
	sh2add a4, a0, a1
	addiw a5, a0, 1
	addiw t0, a0, 2
	addiw t1, a0, 5
	sw a0, 0(a4)
	sw a5, 4(a4)
	addiw a5, a0, 3
	sw t0, 8(a4)
	addiw t0, a0, 4
	sw a5, 12(a4)
	addiw a5, a0, 6
	sw t0, 16(a4)
	addiw t0, a0, 7
	sw t1, 20(a4)
	addiw t1, a0, 14
	sw a5, 24(a4)
	addiw a5, a0, 8
	sw t0, 28(a4)
	addiw t0, a0, 9
	sw a5, 32(a4)
	addiw a5, a0, 10
	sw t0, 36(a4)
	addiw t0, a0, 11
	sw a5, 40(a4)
	addiw a5, a0, 12
	sw t0, 44(a4)
	addiw t0, a0, 13
	sw a5, 48(a4)
	addiw a5, a0, 15
	sw t0, 52(a4)
	addiw a0, a0, 16
	sw t1, 56(a4)
	sw a5, 60(a4)
	bgt a3, a0, label6
	j label4
label8:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bgt s3, a0, label8
label10:
	ble s0, zero, label22
	mv a5, zero
.p2align 2
label12:
	sh2add a0, a5, s4
	lw a2, 0(a0)
	mv a0, zero
	divw a3, s3, a2
	mv a4, zero
	ble a3, zero, label146
.p2align 2
label147:
	mv t0, zero
	ble a2, zero, label384
.p2align 2
label20:
	addiw t1, t0, 1
	blt a0, t0, label162
	mulw t3, a3, t0
	addw t5, a4, t0
	addw t4, a0, t3
	sh2add t0, t5, a1
	sh2add t2, t4, a1
	lw t3, 0(t0)
	mv t0, t1
	sw t3, 0(t2)
	bgt a2, t1, label20
	j label390
.p2align 2
label162:
	mv t0, t1
	bgt a2, t1, label20
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label147
	addiw a5, a5, 1
	bgt s0, a5, label12
label22:
	bgt s0, zero, label25
	j label172
label23:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label25:
	li a2, 4
	ble s0, a2, label177
	li a0, 16
	ble s1, a0, label181
	li a2, 15
	li a3, 14
	li a4, 13
	li a5, 12
	li t0, 11
	li t1, 10
	li t2, 9
	li t3, 8
	li t5, 7
	li a6, 6
	li a7, 5
	li s3, 4
	li s4, 3
	li s5, 2
	mv t6, zero
	li t4, 1
	mv s6, zero
	mv s7, zero
	j label32
label27:
	sh2add a0, s6, a1
	addw t0, t4, t6
	addiw s6, s6, 4
	lw a2, 0(a0)
	lw a4, 4(a0)
	mulw a5, t6, a2
	mulw a3, a4, t0
	addiw a4, t4, 1
	addw a2, a3, a5
	lw a5, 8(a0)
	sh1add a3, a4, t6
	lw a0, 12(a0)
	mulw a4, a3, a5
	sh1add a5, t4, t4
	addw a2, a2, a4
	addiw a4, a5, 6
	addw a3, t6, a4
	mulw a4, a3, a0
	slliw a0, t4, 2
	addw a2, a2, a4
	addiw t4, t4, 8
	addw s7, s7, a2
	addi a2, a0, 12
	addw t6, t6, a2
	bgt s1, s6, label27
	mv a0, t6
	mv a4, t4
	mv a2, s6
	mv a3, s7
	j label52
label32:
	sh2add s8, s6, a1
	addw s11, t6, t4
	addiw s6, s6, 16
	addiw t4, t4, 32
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
	mulw s10, s10, s11
	addiw s11, s3, 12
	addw s9, s9, s10
	addiw s3, s3, 128
	addw s11, t6, s11
	lw s10, 16(s8)
	mulw s11, s10, s11
	lw s10, 20(s8)
	addw s9, s9, s11
	addiw s11, a7, 20
	addiw a7, a7, 160
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 24(s8)
	addw s9, s9, s11
	addiw s11, a6, 30
	addiw a6, a6, 192
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 28(s8)
	addw s9, s9, s11
	addiw s11, t5, 42
	addiw t5, t5, 224
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 32(s8)
	addw s9, s9, s11
	addiw s11, t3, 56
	addiw t3, t3, 256
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
	mulw s11, s10, s11
	lw s10, 44(s8)
	addw s9, s9, s11
	addiw s11, t0, 110
	addiw t0, t0, 352
	addw s11, t6, s11
	mulw s11, s10, s11
	lw s10, 48(s8)
	addw s9, s9, s11
	addiw s11, a5, 132
	addiw a5, a5, 384
	addw s11, t6, s11
	mulw s10, s10, s11
	addiw s11, a4, 156
	addw s9, s9, s10
	addiw a4, a4, 416
	addw s11, t6, s11
	lw s10, 52(s8)
	mulw s10, s10, s11
	addiw s11, a3, 182
	addw s9, s9, s10
	addiw a3, a3, 448
	addw s11, t6, s11
	lw s10, 56(s8)
	lw s8, 60(s8)
	mulw s10, s10, s11
	addw s9, s9, s10
	addiw s10, a2, 210
	addiw a2, a2, 480
	addw s10, t6, s10
	mulw s11, s8, s10
	addw s8, s9, s11
	addiw s9, a0, 240
	addw s7, s7, s8
	addiw a0, a0, 512
	addw t6, t6, s9
	bgt s2, s6, label32
	j label27
label52:
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw t0, 0(a5)
	mulw t1, a0, t0
	addw a0, a0, a4
	addw a3, a3, t1
	addiw a4, a4, 2
	bgt s0, a2, label52
	mv s0, a3
	j label23
.p2align 2
label390:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label147
	addiw a5, a5, 1
	bgt s0, a5, label12
	j label22
.p2align 2
label384:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label147
	addiw a5, a5, 1
	bgt s0, a5, label12
	j label22
label146:
	addiw a5, a5, 1
	bgt s0, a5, label12
	j label22
label181:
	mv s7, zero
	mv s6, zero
	li t4, 1
	mv t6, zero
	j label27
label177:
	mv a0, zero
	li a4, 1
	mv a2, zero
	mv a3, zero
	j label52
label70:
	mv a0, zero
	j label8
label172:
	mv s0, zero
	j label23
label76:
	mv a0, zero
	j label4
