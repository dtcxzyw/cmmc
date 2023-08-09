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
	sd s8, 48(sp)
	sd s7, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
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
	addi a4, a0, %pcrel_lo(pcrel439)
	ble s1, zero, label92
	li a0, 4
	ble s1, a0, label96
	addiw a1, s1, -4
	addiw a3, s1, -20
	li a0, 16
	ble a1, a0, label108
	mv a0, a4
	mv a2, zero
	j label10
.p2align 2
label14:
	addi a0, a0, 64
.p2align 2
label10:
	addiw t1, a2, 1
	slli t2, t1, 32
	addiw t1, a2, 2
	add.uw t3, a2, t2
	addiw t2, a2, 3
	sd t3, 0(a0)
	slli t4, t2, 32
	addiw t2, a2, 4
	add.uw t3, t1, t4
	addiw t1, a2, 5
	sd t3, 8(a0)
	slli t4, t1, 32
	addiw t1, a2, 6
	add.uw t3, t2, t4
	addiw t2, a2, 7
	sd t3, 16(a0)
	slli t4, t2, 32
	addiw t2, a2, 8
	add.uw t3, t1, t4
	addiw t1, a2, 9
	sd t3, 24(a0)
	slli t3, t1, 32
	addiw t1, a2, 10
	add.uw t4, t2, t3
	addiw t2, a2, 11
	sd t4, 32(a0)
	slli t3, t2, 32
	addiw t2, a2, 12
	add.uw t4, t1, t3
	addiw t1, a2, 13
	sd t4, 40(a0)
	slli t3, t1, 32
	addiw t1, a2, 14
	add.uw t4, t2, t3
	addiw t2, a2, 15
	sd t4, 48(a0)
	addiw a2, a2, 16
	slli t3, t2, 32
	add.uw t4, t1, t3
	sd t4, 56(a0)
	bgt a3, a2, label14
	sh2add a0, a2, a4
	j label15
label19:
	addi a0, a0, 16
label15:
	sw a2, 0(a0)
	addiw a3, a2, 1
	addiw t1, a2, 2
	sw a3, 4(a0)
	addiw a3, a2, 3
	sw t1, 8(a0)
	addiw a2, a2, 4
	sw a3, 12(a0)
	bgt a1, a2, label19
	sh2add a0, a2, a4
label3:
	sw a2, 0(a0)
	addiw a2, a2, 1
	ble s1, a2, label92
	addi a0, a0, 4
	j label3
label92:
	mv t1, s2
	mv t2, zero
	lw a0, 0(s2)
	mv a3, a4
	mv a1, zero
	divw a2, s1, a0
	mv t4, zero
	mv t3, a4
	bgt a2, zero, label74
	j label28
.p2align 2
label419:
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	ble a2, a1, label423
.p2align 2
label74:
	mv t5, zero
	bgt a0, zero, label79
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	bgt a2, a1, label74
	addiw t2, t2, 1
	bgt s0, t2, label73
	j label29
.p2align 2
label81:
	addi t3, t3, 4
	mv t5, t4
	ble a0, t4, label419
.p2align 2
label79:
	addiw t4, t5, 1
	blt a1, t5, label81
	mulw a7, a2, t5
	lw a6, 0(t3)
	mv t5, t4
	sh2add t6, a7, a3
	addi t3, t3, 4
	sw a6, 0(t6)
	bgt a0, t4, label79
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	bgt a2, a1, label74
	addiw t2, t2, 1
	bgt s0, t2, label73
label29:
	li a0, 4
	ble s0, a0, label178
	li a0, 16
	ble a5, a0, label182
	mv a0, a4
	li a1, 16
	li a2, 15
	li a3, 14
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
label41:
	lw s9, 0(a0)
	addw s11, s5, a6
	addiw s7, s7, 16
	addiw a6, a6, 32
	lw s10, 4(a0)
	mulw s9, s5, s9
	mulw s11, s10, s11
	addw s10, s11, s9
	addiw s9, s6, 2
	lw s11, 8(a0)
	addiw s6, s6, 64
	addw s9, s5, s9
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
	addiw s11, a7, 42
	addw s10, s9, s10
	addiw a7, a7, 224
	addw s11, s5, s11
	lw s9, 28(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s10, t6, 56
	lw s9, 32(a0)
	addiw t6, t6, 256
	addw s10, s5, s10
	mulw s10, s9, s10
	addw s9, s11, s10
	addiw s11, t5, 72
	lw s10, 36(a0)
	addiw t5, t5, 288
	addw s11, s5, s11
	mulw s10, s10, s11
	addw s11, s9, s10
	addiw s10, t4, 90
	lw s9, 40(a0)
	addiw t4, t4, 320
	addw s10, s5, s10
	mulw s9, s9, s10
	addw s10, s11, s9
	addiw s11, t3, 110
	lw s9, 44(a0)
	addiw t3, t3, 352
	addw s11, s5, s11
	mulw s11, s9, s11
	addw s9, s10, s11
	addiw s10, t2, 132
	lw s11, 48(a0)
	addiw t2, t2, 384
	addw s10, s5, s10
	mulw s10, s11, s10
	addiw s11, t1, 156
	addw s10, s9, s10
	addiw t1, t1, 416
	addw s11, s5, s11
	lw s9, 52(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s10, a3, 182
	lw s9, 56(a0)
	addiw a3, a3, 448
	addw s10, s5, s10
	mulw s9, s9, s10
	lw s10, 60(a0)
	addw s9, s11, s9
	addiw s11, a2, 210
	addiw a2, a2, 480
	addw s11, s5, s11
	mulw s11, s10, s11
	addw s10, s9, s11
	addiw s9, a1, 240
	addw s8, s8, s10
	addiw a1, a1, 512
	addw s5, s5, s9
	ble t0, s7, label62
	addi a0, a0, 64
	j label41
.p2align 2
label423:
	addiw t2, t2, 1
	ble s0, t2, label29
.p2align 2
label73:
	addi t1, t1, 4
	mv a3, a4
	mv a1, zero
	mv t4, zero
	mv t3, a4
	lw a0, 0(t1)
	divw a2, s1, a0
	bgt a2, zero, label74
label28:
	addiw t2, t2, 1
	bgt s0, t2, label73
	j label29
label62:
	sh2add a0, s7, a4
label31:
	lw a1, 0(a0)
	addw t1, a6, s5
	sh1add t3, a6, a6
	addiw s7, s7, 4
	lw t0, 4(a0)
	mulw t2, s5, a1
	mulw a3, t0, t1
	addiw t1, a6, 1
	addw a2, a3, t2
	sh1add t0, t1, s5
	lw a3, 8(a0)
	lw t1, 12(a0)
	mulw t2, t0, a3
	addiw a3, t3, 6
	addw a1, a2, t2
	addw a2, s5, a3
	mulw t0, a2, t1
	slliw a2, a6, 2
	addw a3, a1, t0
	addiw a6, a6, 8
	addi a1, a2, 12
	addw s8, s8, a3
	addw s5, s5, a1
	ble a5, s7, label37
	addi a0, a0, 16
	j label31
label37:
	sh2add a4, s7, a4
	mv a1, s5
	mv a0, a6
label64:
	lw a3, 0(a4)
	addiw s7, s7, 1
	mulw a2, a1, a3
	addw a1, a1, a0
	addw s8, s8, a2
	addiw a0, a0, 2
	ble s0, s7, label70
	addi a4, a4, 4
	j label64
label70:
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
	ld s8, 48(sp)
	ld s7, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label96:
	mv a0, a4
	mv a2, zero
	j label3
label182:
	mv a0, a4
	mv s8, zero
	mv s7, zero
	li a6, 1
	mv s5, zero
	j label31
label108:
	mv a0, a4
	mv a2, zero
	j label15
label178:
	mv a1, zero
	li a0, 1
	mv s7, zero
	mv s8, zero
	j label64
