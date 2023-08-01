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
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel392:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel392)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel393:
	auipc a0, %pcrel_hi(matrix)
	addiw t0, s0, -20
	addiw a5, s0, -4
	addi a1, a0, %pcrel_lo(pcrel393)
	ble s1, zero, label63
	li a2, 4
	ble s1, a2, label67
	addiw a2, s1, -4
	addiw a3, s1, -20
	li a4, 16
	ble a2, a4, label73
	mv a0, zero
.p2align 2
label4:
	sh2add a4, a0, a1
	addiw t2, a0, 1
	addiw t1, a0, 2
	addiw t3, a0, 3
	sw a0, 0(a4)
	sw t2, 4(a4)
	addiw t2, a0, 4
	sw t1, 8(a4)
	addiw t1, a0, 5
	sw t3, 12(a4)
	sw t2, 16(a4)
	addiw t2, a0, 6
	sw t1, 20(a4)
	addiw t1, a0, 7
	sw t2, 24(a4)
	addiw t2, a0, 8
	sw t1, 28(a4)
	addiw t1, a0, 9
	sw t2, 32(a4)
	addiw t2, a0, 10
	sw t1, 36(a4)
	addiw t1, a0, 11
	sw t2, 40(a4)
	addiw t2, a0, 12
	sw t1, 44(a4)
	addiw t1, a0, 13
	sw t2, 48(a4)
	addiw t2, a0, 14
	sw t1, 52(a4)
	addiw t1, a0, 15
	sw t2, 56(a4)
	addiw a0, a0, 16
	sw t1, 60(a4)
	bgt a3, a0, label4
label6:
	sh2add a3, a0, a1
	addiw a4, a0, 1
	addiw t1, a0, 2
	sw a0, 0(a3)
	sw a4, 4(a3)
	addiw a4, a0, 3
	sw t1, 8(a3)
	addiw a0, a0, 4
	sw a4, 12(a3)
	bgt a2, a0, label6
label8:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bgt s1, a0, label8
	mv t1, zero
.p2align 2
label11:
	sh2add a0, t1, s2
	lw a2, 0(a0)
	mv a0, zero
	divw a3, s1, a2
.p2align 2
label13:
	mulw a4, a2, a0
	bgt a3, a0, label140
	j label139
.p2align 2
label378:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label140
	addiw t1, t1, 1
	bgt s0, t1, label11
label21:
	li a2, 4
	bgt s0, a2, label28
	j label166
.p2align 2
label22:
	sh2add t1, a2, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	mulw a5, a0, t0
	addw a0, a0, a4
	addw a3, a3, a5
	addiw a4, a4, 2
	bgt s0, a2, label22
	subw a1, zero, a3
	li a0, 47
	max s0, a1, a3
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label28:
	li a2, 16
	ble a5, a2, label183
	li a0, 16
	li a2, 15
	li a3, 14
	li a4, 13
	li t1, 12
	li t2, 11
	li t3, 10
	li t4, 9
	li t5, 8
	li a6, 7
	li a7, 6
	li s1, 5
	li s3, 4
	li s4, 3
	li s5, 2
	mv s2, zero
	li t6, 1
	mv s6, zero
	mv s7, zero
.p2align 2
label29:
	sh2add s8, s6, a1
	addw s11, s2, t6
	addiw s6, s6, 16
	addiw t6, t6, 32
	lw s9, 0(s8)
	lw s10, 4(s8)
	mulw s11, s10, s11
	mulw s10, s2, s9
	addw s9, s11, s10
	addiw s11, s5, 2
	lw s10, 8(s8)
	addiw s5, s5, 64
	addw s11, s2, s11
	mulw s10, s10, s11
	addiw s11, s4, 6
	addw s9, s9, s10
	addiw s4, s4, 96
	addw s11, s2, s11
	lw s10, 12(s8)
	mulw s11, s10, s11
	lw s10, 16(s8)
	addw s9, s9, s11
	addiw s11, s3, 12
	addiw s3, s3, 128
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 20(s8)
	addw s9, s9, s11
	addiw s11, s1, 20
	addiw s1, s1, 160
	addw s11, s2, s11
	mulw s10, s10, s11
	addiw s11, a7, 30
	addw s9, s9, s10
	addiw a7, a7, 192
	addw s11, s2, s11
	lw s10, 24(s8)
	mulw s11, s10, s11
	lw s10, 28(s8)
	addw s9, s9, s11
	addiw s11, a6, 42
	addiw a6, a6, 224
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 32(s8)
	addw s9, s9, s11
	addiw s11, t5, 56
	addiw t5, t5, 256
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 36(s8)
	addw s9, s9, s11
	addiw s11, t4, 72
	addiw t4, t4, 288
	addw s11, s2, s11
	mulw s10, s10, s11
	addiw s11, t3, 90
	addw s9, s9, s10
	addiw t3, t3, 320
	addw s11, s2, s11
	lw s10, 40(s8)
	mulw s11, s10, s11
	lw s10, 44(s8)
	addw s9, s9, s11
	addiw s11, t2, 110
	addiw t2, t2, 352
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 48(s8)
	addw s9, s9, s11
	addiw s11, t1, 132
	addiw t1, t1, 384
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 52(s8)
	addw s9, s9, s11
	addiw s11, a4, 156
	addiw a4, a4, 416
	addw s11, s2, s11
	mulw s11, s10, s11
	lw s10, 56(s8)
	addw s9, s9, s11
	lw s8, 60(s8)
	addiw s11, a3, 182
	addiw a3, a3, 448
	addw s11, s2, s11
	mulw s10, s10, s11
	addiw s11, a2, 210
	addw s9, s9, s10
	addiw a2, a2, 480
	addw s10, s2, s11
	mulw s8, s8, s10
	addw s9, s9, s8
	addiw s8, a0, 240
	addw s7, s7, s9
	addiw a0, a0, 512
	addw s2, s2, s8
	bgt t0, s6, label29
label49:
	sh2add a0, s6, a1
	addw t0, t6, s2
	addiw s6, s6, 4
	lw a2, 0(a0)
	lw a3, 4(a0)
	mulw a4, a3, t0
	addiw t0, t6, 1
	mulw a3, s2, a2
	addw a2, a4, a3
	lw a4, 8(a0)
	sh1add a3, t0, s2
	sh1add t0, t6, t6
	mulw t1, a3, a4
	addiw a4, t0, 6
	addw a2, a2, t1
	lw t0, 12(a0)
	addw a3, s2, a4
	mulw a0, a3, t0
	addw a2, a2, a0
	slliw a0, t6, 2
	addw s7, s7, a2
	addiw t6, t6, 8
	addi a2, a0, 12
	addw s2, s2, a2
	bgt a5, s6, label49
	mv a0, s2
	mv a4, t6
	mv a2, s6
	mv a3, s7
	j label22
.p2align 2
label140:
	mv t2, zero
	ble a2, zero, label143
.p2align 2
label17:
	addiw t3, t2, 1
	blt a0, t2, label149
	mulw t5, a3, t2
	addw a6, a4, t2
	addw t6, a0, t5
	sh2add t2, a6, a1
	sh2add t4, t6, a1
	lw t5, 0(t2)
	mv t2, t3
	sw t5, 0(t4)
	bgt a2, t3, label17
	j label378
.p2align 2
label149:
	mv t2, t3
	bgt a2, t3, label17
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label140
	addiw t1, t1, 1
	bgt s0, t1, label11
	j label21
.p2align 2
label143:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label140
	addiw t1, t1, 1
	bgt s0, t1, label11
	j label21
label139:
	addiw t1, t1, 1
	bgt s0, t1, label11
	j label21
label166:
	mv a0, zero
	li a4, 1
	mv a2, zero
	mv a3, zero
	j label22
label67:
	mv a0, zero
	j label8
label183:
	mv s7, zero
	mv s6, zero
	li t6, 1
	mv s2, zero
	j label49
label73:
	mv a0, zero
	j label6
label63:
	mv t1, zero
	mv a0, s2
	lw a2, 0(s2)
	mv a0, zero
	divw a3, s1, a2
	j label13
