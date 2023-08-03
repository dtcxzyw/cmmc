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
	sd s8, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
pcrel438:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel438)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel439:
	auipc a0, %pcrel_hi(matrix)
	addiw t0, s0, -20
	addiw a5, s0, -4
	addi a1, a0, %pcrel_lo(pcrel439)
	ble s1, zero, label2
	li a0, 4
	ble s1, a0, label294
	addiw a2, s1, -4
	addiw a4, s1, -20
	li a0, 16
	ble a2, a0, label306
	mv a0, a1
	mv a3, zero
.p2align 2
label66:
	addiw t1, a3, 1
	addiw t4, a3, 3
	slli t3, t1, 32
	slli t5, t4, 32
	addiw t1, a3, 2
	add.uw t2, a3, t3
	add.uw t3, t1, t5
	sd t2, 0(a0)
	addiw t1, a3, 5
	addiw t2, a3, 4
	slli t4, t1, 32
	sd t3, 8(a0)
	addiw t1, a3, 6
	add.uw t3, t2, t4
	addiw t2, a3, 7
	sd t3, 16(a0)
	slli t4, t2, 32
	addiw t2, a3, 8
	add.uw t3, t1, t4
	addiw t1, a3, 9
	sd t3, 24(a0)
	slli t4, t1, 32
	addiw t1, a3, 10
	add.uw t3, t2, t4
	addiw t2, a3, 11
	sd t3, 32(a0)
	slli t4, t2, 32
	addiw t2, a3, 12
	add.uw t3, t1, t4
	addiw t1, a3, 13
	sd t3, 40(a0)
	slli t4, t1, 32
	addiw t1, a3, 14
	add.uw t3, t2, t4
	addiw t4, a3, 15
	sd t3, 48(a0)
	addiw a3, a3, 16
	slli t3, t4, 32
	add.uw t2, t1, t3
	sd t2, 56(a0)
	ble a4, a3, label341
	addi a0, a0, 64
	j label66
label2:
	mv t1, s2
	mv t2, zero
	lw a2, 0(s2)
	mv a0, zero
	divw a3, s1, a2
label6:
	mulw a4, a2, a0
	bgt a3, a0, label95
	j label94
label299:
	mv t1, s2
	mv t2, zero
	lw a2, 0(s2)
	mv a0, zero
	divw a3, s1, a2
	j label6
label94:
	addiw t2, t2, 1
	bgt s0, t2, label58
	j label14
.p2align 2
label95:
	mv t3, zero
	ble a2, zero, label10
.p2align 2
label11:
	addiw t4, t3, 1
	blt a0, t3, label105
	mulw a6, a3, t3
	addw t6, a4, t3
	addw a7, a0, a6
	mv t3, t4
	sh2add t5, a7, a1
	sh2add a7, t6, a1
	lw a6, 0(a7)
	sw a6, 0(t5)
	bgt a2, t4, label11
	j label416
.p2align 2
label105:
	mv t3, t4
	bgt a2, t4, label11
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label95
	addiw t2, t2, 1
	ble s0, t2, label14
.p2align 2
label58:
	addi t1, t1, 4
	mv a0, zero
	mv a4, zero
	lw a2, 0(t1)
	divw a3, s1, a2
	bgt a3, zero, label95
	j label94
.p2align 2
label10:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label95
	addiw t2, t2, 1
	bgt s0, t2, label58
	j label14
.p2align 2
label416:
	addiw a0, a0, 1
	mulw a4, a2, a0
	bgt a3, a0, label95
	addiw t2, t2, 1
	bgt s0, t2, label58
label14:
	li a0, 4
	ble s0, a0, label15
	li a0, 16
	ble a5, a0, label137
	mv a0, a1
	li a2, 16
	li a3, 15
	li a4, 14
	li t1, 13
	li t2, 12
	li t3, 11
	li t4, 10
	li t5, 9
	li t6, 8
	li a7, 7
	li s1, 6
	li s2, 5
	li s3, 4
	li s4, 3
	li s6, 2
	mv s5, zero
	li a6, 1
	mv s7, zero
	mv s8, zero
.p2align 2
label26:
	lw s9, 0(a0)
	addw s10, s5, a6
	addiw s7, s7, 16
	addiw a6, a6, 32
	lw s11, 4(a0)
	mulw s10, s11, s10
	mulw s11, s5, s9
	addiw s9, s6, 2
	addw s10, s10, s11
	addiw s6, s6, 64
	addw s9, s5, s9
	lw s11, 8(a0)
	mulw s9, s11, s9
	addiw s11, s4, 6
	addw s9, s10, s9
	addiw s4, s4, 96
	addw s11, s5, s11
	lw s10, 12(a0)
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, s3, 12
	lw s9, 16(a0)
	addiw s3, s3, 128
	addw s10, s5, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, s2, 20
	lw s9, 20(a0)
	addiw s2, s2, 160
	addw s11, s5, s11
	mulw s11, s9, s11
	addw s9, s10, s11
	addiw s10, s1, 30
	lw s11, 24(a0)
	addiw s1, s1, 192
	addw s10, s5, s10
	mulw s10, s11, s10
	lw s11, 28(a0)
	addw s10, s9, s10
	addiw s9, a7, 42
	addiw a7, a7, 224
	addw s9, s5, s9
	mulw s9, s11, s9
	lw s11, 32(a0)
	addw s9, s10, s9
	addiw s10, t6, 56
	addiw t6, t6, 256
	addw s10, s5, s10
	mulw s10, s11, s10
	lw s11, 36(a0)
	addw s10, s9, s10
	addiw s9, t5, 72
	addiw t5, t5, 288
	addw s9, s5, s9
	mulw s9, s11, s9
	lw s11, 40(a0)
	addw s9, s10, s9
	addiw s10, t4, 90
	addiw t4, t4, 320
	addw s10, s5, s10
	mulw s10, s11, s10
	addiw s11, t3, 110
	addw s10, s9, s10
	addiw t3, t3, 352
	addw s11, s5, s11
	lw s9, 44(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s10, t2, 132
	lw s9, 48(a0)
	addiw t2, t2, 384
	addw s10, s5, s10
	mulw s10, s9, s10
	addw s9, s11, s10
	addiw s11, t1, 156
	lw s10, 52(a0)
	addiw t1, t1, 416
	addw s11, s5, s11
	mulw s10, s10, s11
	lw s11, 56(a0)
	addw s10, s9, s10
	addiw s9, a4, 182
	addiw a4, a4, 448
	addw s9, s5, s9
	mulw s9, s11, s9
	lw s11, 60(a0)
	addw s9, s10, s9
	addiw s10, a3, 210
	addiw a3, a3, 480
	addw s10, s5, s10
	mulw s10, s11, s10
	addiw s11, a2, 240
	addw s10, s9, s10
	addiw a2, a2, 512
	addw s5, s5, s11
	addw s8, s8, s10
	ble t0, s7, label252
	addi a0, a0, 64
	j label26
label252:
	sh2add a0, s7, a1
label49:
	lw a2, 0(a0)
	addw t1, a6, s5
	addiw s7, s7, 4
	lw a4, 4(a0)
	mulw t2, s5, a2
	mulw t0, a4, t1
	addiw t1, a6, 1
	addw a3, t0, t2
	sh1add a4, t1, s5
	lw t2, 8(a0)
	sh1add t0, a6, a6
	addiw t1, t0, 6
	mulw t3, a4, t2
	lw a4, 12(a0)
	addw a2, a3, t3
	addw a3, s5, t1
	mulw t2, a3, a4
	slliw a3, a6, 2
	addw t0, a2, t2
	addiw a6, a6, 8
	addi a2, a3, 12
	addw s8, s8, t0
	addw s5, s5, a2
	ble a5, s7, label286
	addi a0, a0, 16
	j label49
label15:
	mv a2, zero
	li a0, 1
	mv s7, zero
	mv s8, zero
.p2align 2
label16:
	lw a3, 0(a1)
	addiw s7, s7, 1
	mulw a4, a2, a3
	addw a2, a2, a0
	addw s8, s8, a4
	addiw a0, a0, 2
	ble s0, s7, label22
	addi a1, a1, 4
	j label16
label22:
	subw a1, zero, s8
	li a0, 47
	max s0, a1, s8
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s8, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
label341:
	sh2add a0, a3, a1
label71:
	sw a3, 0(a0)
	addiw a4, a3, 1
	addiw t1, a3, 2
	sw a4, 4(a0)
	addiw a4, a3, 3
	sw t1, 8(a0)
	addiw a3, a3, 4
	sw a4, 12(a0)
	ble a2, a3, label74
	addi a0, a0, 16
	j label71
label60:
	sw a3, 0(a0)
	addiw a3, a3, 1
	ble s1, a3, label299
	addi a0, a0, 4
	j label60
label74:
	sh2add a0, a3, a1
	j label60
label137:
	mv a0, a1
	mv s8, zero
	mv s7, zero
	li a6, 1
	mv s5, zero
	j label49
label286:
	sh2add a1, s7, a1
	mv a2, s5
	mv a0, a6
	j label16
label294:
	mv a0, a1
	mv a3, zero
	j label60
label306:
	mv a0, a1
	mv a3, zero
	j label71
