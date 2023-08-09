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
	sd s10, 80(sp)
	sd s11, 88(sp)
	sd s9, 96(sp)
	jal getint
pcrel481:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel481)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel482:
	auipc a0, %pcrel_hi(matrix)
	addiw t0, s0, -18
	addiw a5, s0, -3
	addi a4, a0, %pcrel_lo(pcrel482)
	ble s1, zero, label115
	li a1, 3
	ble s1, a1, label331
	addiw a1, s1, -3
	addiw a3, s1, -18
	li a0, 15
	ble a1, a0, label337
	mv a0, a4
	mv a2, zero
	j label85
.p2align 2
label88:
	addi a0, a0, 64
.p2align 2
label85:
	addiw t2, a2, 1
	addiw t5, a2, 3
	slli t3, t2, 32
	addiw t2, a2, 2
	add.uw t1, a2, t3
	slli t3, t5, 32
	sd t1, 0(a0)
	add.uw t4, t2, t3
	addiw t1, a2, 4
	addiw t2, a2, 5
	sd t4, 8(a0)
	slli t4, t2, 32
	addiw t2, a2, 6
	add.uw t3, t1, t4
	addiw t1, a2, 7
	sd t3, 16(a0)
	slli t3, t1, 32
	addiw t1, a2, 8
	add.uw t4, t2, t3
	addiw t2, a2, 9
	sd t4, 24(a0)
	slli t3, t2, 32
	addiw t2, a2, 10
	add.uw t4, t1, t3
	addiw t1, a2, 11
	sd t4, 32(a0)
	slli t4, t1, 32
	addiw t1, a2, 12
	add.uw t3, t2, t4
	addiw t4, a2, 15
	addiw t2, a2, 13
	sd t3, 40(a0)
	slli t3, t2, 32
	addiw t2, a2, 14
	add.uw t5, t1, t3
	addiw a2, a2, 16
	slli t3, t4, 32
	sd t5, 48(a0)
	add.uw t1, t2, t3
	sd t1, 56(a0)
	bgt a3, a2, label88
	mv a3, a2
label89:
	ble a1, a3, label377
	sh2add a0, a3, a4
	mv a2, a3
label93:
	sw a2, 0(a0)
	addiw t1, a2, 1
	addiw a3, a2, 2
	sw t1, 4(a0)
	addiw t1, a2, 3
	sw a3, 8(a0)
	addiw a2, a2, 4
	sw t1, 12(a0)
	ble a1, a2, label377
	addi a0, a0, 16
	j label93
label377:
	mv a0, a2
label97:
	ble s1, a0, label395
	sh2add a1, a0, a4
	j label100
label103:
	addi a1, a1, 4
	mv a0, a2
label100:
	addiw a2, a0, 1
	sw a0, 0(a1)
	bgt s1, a2, label103
label395:
	mv t1, s2
	mv t2, zero
	lw a0, 0(s2)
	mv a3, a4
	mv a1, zero
	divw a2, s1, a0
label5:
	mulw t4, a0, a1
	sh2add t3, t4, a4
	bgt a2, a1, label8
	j label124
.p2align 2
label458:
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	ble a2, a1, label462
.p2align 2
label8:
	mv t5, zero
	bgt a0, zero, label12
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	bgt a2, a1, label8
label124:
	addiw t2, t2, 1
	bgt s0, t2, label80
	j label17
.p2align 2
label14:
	addi t3, t3, 4
	mv t5, t4
	ble a0, t4, label458
.p2align 2
label12:
	addiw t4, t5, 1
	blt a1, t5, label14
	mulw a6, a2, t5
	lw a7, 0(t3)
	mv t5, t4
	sh2add t6, a6, a3
	addi t3, t3, 4
	sw a7, 0(t6)
	bgt a0, t4, label12
	addiw a1, a1, 1
	addi a3, a3, 4
	mulw t4, a0, a1
	sh2add t3, t4, a4
	bgt a2, a1, label8
	addiw t2, t2, 1
	bgt s0, t2, label80
	j label17
.p2align 2
label462:
	addiw t2, t2, 1
	ble s0, t2, label17
.p2align 2
label80:
	addi t1, t1, 4
	mv a3, a4
	mv a1, zero
	mv t4, zero
	mv t3, a4
	lw a0, 0(t1)
	divw a2, s1, a0
	bgt a2, zero, label8
	j label124
label17:
	li a0, 3
	ble s0, a0, label150
	li a0, 15
	ble a5, a0, label172
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
	j label58
.p2align 2
label79:
	addi a0, a0, 64
.p2align 2
label58:
	lw s10, 0(a0)
	addw s9, s5, a6
	addiw s7, s7, 16
	addiw a6, a6, 32
	lw s11, 4(a0)
	mulw s9, s11, s9
	mulw s11, s5, s10
	addiw s10, s6, 2
	addw s9, s9, s11
	addiw s6, s6, 64
	addw s11, s5, s10
	lw s10, 8(a0)
	mulw s10, s11, s10
	addiw s11, s4, 6
	addw s10, s9, s10
	addiw s4, s4, 96
	addw s9, s5, s11
	lw s11, 12(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s9, s3, 12
	addiw s3, s3, 128
	addw s10, s5, s9
	lw s9, 16(a0)
	mulw s9, s10, s9
	addiw s10, s2, 20
	addw s9, s11, s9
	addiw s2, s2, 160
	addw s11, s5, s10
	lw s10, 20(a0)
	mulw s10, s11, s10
	addw s10, s9, s10
	addiw s9, s1, 30
	addiw s1, s1, 192
	addw s11, s5, s9
	lw s9, 24(a0)
	mulw s9, s11, s9
	addw s9, s10, s9
	addiw s10, a7, 42
	addiw a7, a7, 224
	addw s11, s5, s10
	lw s10, 28(a0)
	mulw s10, s11, s10
	addiw s11, t6, 56
	addw s10, s9, s10
	addiw t6, t6, 256
	addw s9, s5, s11
	lw s11, 32(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s9, t5, 72
	addiw t5, t5, 288
	addw s10, s5, s9
	lw s9, 36(a0)
	mulw s9, s10, s9
	addiw s10, t4, 90
	addw s9, s11, s9
	addiw t4, t4, 320
	addw s11, s5, s10
	lw s10, 40(a0)
	mulw s10, s11, s10
	addiw s11, t3, 110
	addw s10, s9, s10
	addiw t3, t3, 352
	addw s9, s5, s11
	lw s11, 44(a0)
	mulw s9, s9, s11
	addw s11, s10, s9
	addiw s9, t2, 132
	addiw t2, t2, 384
	addw s10, s5, s9
	lw s9, 48(a0)
	mulw s9, s10, s9
	addiw s10, t1, 156
	addw s9, s11, s9
	addiw t1, t1, 416
	addw s11, s5, s10
	lw s10, 52(a0)
	mulw s10, s11, s10
	addw s10, s9, s10
	addiw s9, a3, 182
	addiw a3, a3, 448
	addw s11, s5, s9
	lw s9, 56(a0)
	mulw s9, s11, s9
	addw s9, s10, s9
	addiw s10, a2, 210
	addiw a2, a2, 480
	addw s11, s5, s10
	lw s10, 60(a0)
	mulw s10, s11, s10
	addw s10, s9, s10
	addw s8, s8, s10
	addiw s10, a1, 240
	addiw a1, a1, 512
	addw s5, s5, s10
	bgt t0, s7, label79
	mv a3, s5
	mv a1, a6
	mv a2, s7
	mv t0, s8
label35:
	ble a5, a2, label176
	sh2add a0, a2, a4
label50:
	lw t1, 0(a0)
	addw t6, a1, a3
	lw t3, 4(a0)
	mulw t5, a3, t1
	mulw t4, t3, t6
	addiw t6, a1, 1
	addw t2, t4, t5
	sh1add t3, t6, a3
	lw t5, 8(a0)
	sh1add t6, a1, a1
	lw a6, 12(a0)
	mulw t4, t3, t5
	addiw t3, t6, 6
	addw t1, t2, t4
	addw t2, a3, t3
	mulw t4, t2, a6
	slliw t2, a1, 2
	addw t5, t1, t4
	addiw a1, a1, 8
	addi t3, t2, 12
	addiw t1, a2, 4
	addw t0, t0, t5
	addw a3, a3, t3
	ble a5, t1, label209
	addi a0, a0, 16
	mv a2, t1
	j label50
label209:
	mv a2, a1
	mv a0, t0
	mv a5, t0
	mv a1, a3
	mv a3, t1
label18:
	ble s0, a3, label154
	sh2add a0, a3, a4
	mv a4, a3
	mv a3, a5
	j label27
label33:
	addi a0, a0, 4
label27:
	lw t0, 0(a0)
	addiw a4, a4, 1
	mulw a5, a1, t0
	addw a1, a1, a2
	addw a3, a3, a5
	addiw a2, a2, 2
	bgt s0, a4, label33
label24:
	subw a1, zero, a3
	li a0, 47
	max s0, a1, a3
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
	ld s10, 80(sp)
	ld s11, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 104
	ret
label176:
	mv a2, a6
	mv a1, s5
	mv a0, s8
	mv a3, s7
	mv a5, s8
	j label18
label115:
	mv t1, s2
	mv t2, zero
	lw a0, 0(s2)
	mv a3, a4
	mv a1, zero
	divw a2, s1, a0
	j label5
label337:
	mv a3, zero
	mv a2, zero
	j label89
label154:
	mv a3, a0
	j label24
label150:
	mv a5, zero
	mv a3, zero
	li a2, 1
	mv a1, zero
	mv a0, zero
	j label18
label172:
	mv a3, zero
	li a1, 1
	mv a2, zero
	mv t0, zero
	mv a6, zero
	mv s5, zero
	mv s8, zero
	mv s7, zero
	j label35
label331:
	mv a0, zero
	j label97
