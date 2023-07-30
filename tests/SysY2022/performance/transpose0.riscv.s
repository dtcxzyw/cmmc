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
pcrel414:
	auipc a1, %pcrel_hi(a)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel414)
	mv s4, a0
	jal getarray
	addiw s1, a0, -4
	addiw s2, a0, -20
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel415:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel415)
	bgt s3, zero, label2
	j label10
label3:
	addiw a1, s3, -4
	addiw a3, s3, -20
	li a2, 16
	bgt a1, a2, label77
	mv a3, zero
	j label4
label77:
	mv a2, zero
	j label6
label4:
	sh2add a4, a3, a0
	addiw a2, a3, 1
	addiw a5, a3, 2
	sw a3, 0(a4)
	sw a2, 4(a4)
	addiw a2, a3, 3
	sw a5, 8(a4)
	addiw a3, a3, 4
	sw a2, 12(a4)
	bgt a1, a3, label4
	mv a1, a3
	j label8
label6:
	sh2add a4, a2, a0
	addiw a5, a2, 1
	addiw t0, a2, 2
	addiw t1, a2, 3
	sw a2, 0(a4)
	sw a5, 4(a4)
	addiw a5, a2, 4
	sw t0, 8(a4)
	addiw t0, a2, 5
	sw t1, 12(a4)
	sw a5, 16(a4)
	addiw a5, a2, 6
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
	bgt a3, a2, label6
	mv a3, a2
	j label4
label8:
	sh2add a3, a1, a0
	sw a1, 0(a3)
	addiw a1, a1, 1
	bgt s3, a1, label8
label10:
	bgt s0, zero, label11
	j label22
label390:
	mv s0, zero
	j label23
label22:
	bgt s0, zero, label25
	j label390
.p2align 2
label147:
	mv t0, zero
	bgt a3, zero, label20
	addiw a2, a2, 1
	mulw a5, a3, a2
	bgt a4, a2, label147
	addiw a1, a1, 1
	bgt s0, a1, label12
	bgt s0, zero, label25
	j label390
.p2align 2
label20:
	addiw t1, t0, 1
	blt a2, t0, label162
	mulw t3, a4, t0
	addw t0, a5, t0
	addw t4, a2, t3
	sh2add t2, t4, a0
	sh2add t4, t0, a0
	mv t0, t1
	lw t3, 0(t4)
	sw t3, 0(t2)
	bgt a3, t1, label20
	addiw a2, a2, 1
	mulw a5, a3, a2
	bgt a4, a2, label147
	addiw a1, a1, 1
	bgt s0, a1, label12
	bgt s0, zero, label25
	j label390
.p2align 2
label162:
	mv t0, t1
	bgt a3, t1, label20
	addiw a2, a2, 1
	mulw a5, a3, a2
	bgt a4, a2, label147
	addiw a1, a1, 1
	bgt s0, a1, label12
	ble s0, zero, label390
label25:
	li a2, 4
	bgt s0, a2, label26
	mv a1, zero
	li a4, 1
	mv a2, zero
	mv a3, zero
	j label52
.p2align 2
label12:
	sh2add a2, a1, s4
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s3, a3
	mv a5, zero
	bgt a4, zero, label147
	addiw a1, a1, 1
	bgt s0, a1, label12
	bgt s0, zero, label25
	j label390
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
label26:
	li a1, 16
	bgt s1, a1, label182
	mv s7, zero
	mv s6, zero
	li a1, 1
	mv t6, zero
	j label27
label182:
	li a1, 16
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
	sh2add a2, s6, a0
	addw t1, a1, t6
	addiw s6, s6, 4
	lw a3, 0(a2)
	lw a5, 4(a2)
	mulw t0, t6, a3
	mulw a4, a5, t1
	addiw a5, a1, 1
	addw a3, a4, t0
	lw t0, 8(a2)
	sh1add a4, a5, t6
	lw a2, 12(a2)
	mulw a5, a4, t0
	sh1add t0, a1, a1
	addw a3, a3, a5
	addiw a5, t0, 6
	addw a4, t6, a5
	mulw a5, a4, a2
	addiw a4, a1, 8
	slliw a2, a1, 2
	addw a3, a3, a5
	addw s7, s7, a3
	addi a3, a2, 12
	addw t6, t6, a3
	bgt s1, s6, label215
	mv a1, t6
	mv a2, s6
	mv a3, s7
	j label52
label215:
	mv a1, a4
	j label27
label52:
	sh2add t0, a2, a0
	addiw a2, a2, 1
	lw a5, 0(t0)
	mulw t1, a1, a5
	addw a1, a1, a4
	addw a3, a3, t1
	addiw a4, a4, 2
	bgt s0, a2, label52
	mv s0, a3
	j label23
label32:
	sh2add s8, s6, a0
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
	addiw s9, a1, 240
	addw s7, s7, s8
	addiw a1, a1, 512
	addw t6, t6, s9
	bgt s2, s6, label32
	mv a1, t4
	j label27
label2:
	li a2, 4
	bgt s3, a2, label3
	mv a1, zero
	j label8
label11:
	mv a1, zero
	j label12
