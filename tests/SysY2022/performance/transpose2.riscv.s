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
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel408:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel408)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel409:
	auipc a0, %pcrel_hi(matrix)
	addiw t0, s0, -20
	addiw a5, s0, -4
	addi a1, a0, %pcrel_lo(pcrel409)
	ble s1, zero, label63
	li a2, 4
	ble s1, a2, label67
	addiw a2, s1, -4
	addiw a3, s1, -20
	li a0, 16
	ble a2, a0, label73
	mv a0, zero
.p2align 2
label4:
	sh2add a4, a0, a1
	addiw t2, a0, 1
	slli t1, t2, 32
	addiw t2, a0, 2
	add.uw t3, a0, t1
	addiw t1, a0, 3
	sd t3, 0(a4)
	slli t4, t1, 32
	addiw t1, a0, 4
	add.uw t3, t2, t4
	addiw t2, a0, 5
	sd t3, 8(a4)
	slli t3, t2, 32
	addiw t2, a0, 6
	add.uw t4, t1, t3
	addiw t1, a0, 7
	sd t4, 16(a4)
	slli t3, t1, 32
	addiw t1, a0, 8
	add.uw t4, t2, t3
	addiw t2, a0, 9
	sd t4, 24(a4)
	slli t3, t2, 32
	addiw t2, a0, 10
	add.uw t4, t1, t3
	addiw t1, a0, 11
	sd t4, 32(a4)
	slli t4, t1, 32
	addiw t1, a0, 12
	add.uw t3, t2, t4
	addiw t4, a0, 15
	addiw t2, a0, 13
	sd t3, 40(a4)
	slli t3, t2, 32
	addiw t2, a0, 14
	add.uw t5, t1, t3
	addiw a0, a0, 16
	slli t3, t4, 32
	sd t5, 48(a4)
	add.uw t1, t2, t3
	sd t1, 56(a4)
	bgt a3, a0, label4
	mv a3, a0
label6:
	sh2add a4, a3, a1
	addiw t1, a3, 1
	addiw a0, a3, 2
	sw a3, 0(a4)
	sw t1, 4(a4)
	addiw t1, a3, 3
	sw a0, 8(a4)
	addiw a3, a3, 4
	sw t1, 12(a4)
	bgt a2, a3, label6
	mv a0, a3
label8:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bgt s1, a0, label8
	mv t1, zero
.p2align 2
label11:
	sh2add a4, t1, s2
	mv a0, zero
	lw a2, 0(a4)
	divw a3, s1, a2
.p2align 2
label13:
	mulw a4, a2, a0
	bgt a3, a0, label140
	j label139
.p2align 2
label394:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label140
	addiw t1, t1, 1
	bgt s0, t1, label11
label21:
	li a3, 4
	bgt s0, a3, label28
	j label166
.p2align 2
label22:
	sh2add t0, a3, a1
	addiw a3, a3, 1
	lw a4, 0(t0)
	mulw a5, a0, a4
	addw a0, a0, a2
	addw s7, s7, a5
	addiw a2, a2, 2
	bgt s0, a3, label22
	subw a1, zero, s7
	li a0, 47
	max s0, a1, s7
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
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
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
	li s2, 4
	li s3, 3
	li s5, 2
	mv s4, zero
	li t6, 1
	mv s6, zero
	mv s7, zero
.p2align 2
label29:
	sh2add s8, s6, a1
	addw s11, s4, t6
	addiw s6, s6, 16
	addiw t6, t6, 32
	lw s10, 0(s8)
	lw s9, 4(s8)
	mulw s11, s9, s11
	mulw s9, s4, s10
	addiw s10, s5, 2
	addw s9, s11, s9
	addiw s5, s5, 64
	addw s10, s4, s10
	lw s11, 8(s8)
	mulw s10, s11, s10
	lw s11, 12(s8)
	addw s10, s9, s10
	addiw s9, s3, 6
	addiw s3, s3, 96
	addw s9, s4, s9
	mulw s9, s11, s9
	lw s11, 16(s8)
	addw s9, s10, s9
	addiw s10, s2, 12
	addiw s2, s2, 128
	addw s10, s4, s10
	mulw s10, s11, s10
	lw s11, 20(s8)
	addw s10, s9, s10
	addiw s9, s1, 20
	addiw s1, s1, 160
	addw s9, s4, s9
	mulw s9, s11, s9
	addiw s11, a7, 30
	addw s9, s10, s9
	addiw a7, a7, 192
	addw s11, s4, s11
	lw s10, 24(s8)
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, a6, 42
	lw s9, 28(s8)
	addiw a6, a6, 224
	addw s10, s4, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, t5, 56
	lw s9, 32(s8)
	addiw t5, t5, 256
	addw s11, s4, s11
	mulw s9, s9, s11
	addiw s11, t4, 72
	addw s9, s10, s9
	addiw t4, t4, 288
	addw s11, s4, s11
	lw s10, 36(s8)
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, t3, 90
	lw s9, 40(s8)
	addiw t3, t3, 320
	addw s10, s4, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, t2, 110
	lw s9, 44(s8)
	addiw t2, t2, 352
	addw s11, s4, s11
	mulw s11, s9, s11
	addw s9, s10, s11
	addiw s10, t1, 132
	lw s11, 48(s8)
	addiw t1, t1, 384
	addw s10, s4, s10
	mulw s10, s11, s10
	lw s11, 52(s8)
	addw s10, s9, s10
	addiw s9, a4, 156
	addiw a4, a4, 416
	addw s9, s4, s9
	mulw s9, s11, s9
	lw s11, 56(s8)
	addw s9, s10, s9
	addiw s10, a3, 182
	addiw a3, a3, 448
	addw s10, s4, s10
	mulw s10, s11, s10
	lw s11, 60(s8)
	addw s10, s9, s10
	addiw s8, a2, 210
	addiw a2, a2, 480
	addw s9, s4, s8
	mulw s8, s11, s9
	addiw s9, a0, 240
	addw s8, s10, s8
	addiw a0, a0, 512
	addw s4, s4, s9
	addw s7, s7, s8
	bgt t0, s6, label29
label49:
	sh2add a0, s6, a1
	addw t1, t6, s4
	addiw s6, s6, 4
	lw a2, 0(a0)
	lw a4, 4(a0)
	mulw t2, s4, a2
	mulw t0, a4, t1
	addiw t1, t6, 1
	addw a3, t0, t2
	sh1add a4, t1, s4
	lw t0, 8(a0)
	sh1add t1, t6, t6
	mulw t2, a4, t0
	addiw a4, t1, 6
	addw a2, a3, t2
	lw t2, 12(a0)
	addw a3, s4, a4
	slliw a0, t6, 2
	addiw t6, t6, 8
	mulw t0, a3, t2
	addw a4, a2, t0
	addi a2, a0, 12
	addw s7, s7, a4
	addw s4, s4, a2
	bgt a5, s6, label49
	mv a0, s4
	mv a2, t6
	mv a3, s6
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
	mv t2, t3
	sh2add t5, a6, a1
	sh2add t4, t6, a1
	lw t6, 0(t5)
	sw t6, 0(t4)
	bgt a2, t3, label17
	j label394
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
	li a2, 1
	mv a3, zero
	mv s7, zero
	j label22
label67:
	mv a0, zero
	j label8
label183:
	mv s7, zero
	mv s6, zero
	li t6, 1
	mv s4, zero
	j label49
label73:
	mv a3, zero
	j label6
label63:
	mv t1, zero
	mv a4, s2
	mv a0, zero
	lw a2, 0(s2)
	divw a3, s1, a2
	j label13
