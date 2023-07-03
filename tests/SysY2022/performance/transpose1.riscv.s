.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.globl main
main:
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel375:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel375)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel376:
	auipc a0, %pcrel_hi(matrix)
	addi a1, a0, %pcrel_lo(pcrel376)
	ble s1, zero, label10
	mv a0, zero
	addiw a2, zero, 4
	ble s1, a2, label4
	sh2add a3, zero, a1
	sw zero, 0(a3)
	addiw a4, zero, 1
	sw a4, 4(a3)
	addiw a4, zero, 2
	sw a4, 8(a3)
	addiw a0, zero, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	ble s1, a2, label4
	j label48
label4:
	addiw a2, a0, 4
	ble s1, a2, label7
	j label53
label7:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	j label339
label10:
	ble s0, zero, label11
	mv t0, zero
	sh2add a0, zero, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	ble a3, zero, label29
	mv a4, zero
	ble a2, zero, label35
	j label34
label314:
	bge a0, a4, label34
	j label330
label35:
	addiw a0, a0, 1
	mulw a5, a2, a0
	ble a3, a0, label29
	mv a4, zero
	ble a2, zero, label35
	bge a0, zero, label34
	addiw a4, zero, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	j label314
label29:
	addiw t0, t0, 1
	ble s0, t0, label11
	sh2add a0, t0, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	ble a3, zero, label29
	mv a4, zero
	ble a2, zero, label35
label34:
	mulw t1, a3, a4
	addw t1, a0, t1
	sh2add t1, t1, a1
	addw t2, a5, a4
	sh2add t2, t2, a1
	lw t2, 0(t2)
	sw t2, 0(t1)
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
label330:
	addiw a4, a4, 1
	ble a2, a4, label35
	bge a0, a4, label34
	j label330
label339:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label10
	j label339
label11:
	ble s0, zero, label84
	mv a3, zero
	mv a2, zero
	addiw a0, zero, 4
	ble s0, a0, label90
	j label17
label84:
	mv s0, zero
	j label12
label17:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t0, 4(a4)
	addiw t1, a2, 1
	mulw t1, t1, t1
	mulw t0, t0, t1
	mulw t1, a2, a2
	mulw a5, a5, t1
	addw a3, a3, a5
	addw a3, t0, a3
	lw a5, 8(a4)
	addiw t0, a2, 2
	mulw t0, t0, t0
	mulw a5, a5, t0
	addw a3, a3, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a4, a2
	addw a3, a3, a2
	mv a2, a0
	addiw a0, a0, 4
	ble s0, a0, label90
	j label17
label12:
	li a0, 47
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label90:
	mv a0, a3
	addiw a3, a2, 4
	ble s0, a3, label22
	j label21
label22:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	j label343
label154:
	mv s0, a0
	j label12
label343:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	ble s0, a2, label154
	j label343
label21:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t0, 4(a4)
	addiw t1, a2, 1
	mulw t1, t1, t1
	mulw t0, t0, t1
	mulw t1, a2, a2
	mulw a5, a5, t1
	addw a0, a0, a5
	addw a0, t0, a0
	lw a5, 8(a4)
	addiw t0, a2, 2
	mulw t0, t0, t0
	mulw a5, a5, t0
	addw a0, a0, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a4, a2
	addw a0, a0, a2
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	j label21
label53:
	sh2add a3, a0, a1
	sw a0, 0(a3)
	addiw a4, a0, 1
	sw a4, 4(a3)
	addiw a4, a0, 2
	sw a4, 8(a3)
	addiw a0, a0, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	ble s1, a2, label7
	j label53
label48:
	sh2add a3, a0, a1
	sw a0, 0(a3)
	addiw a4, a0, 1
	sw a4, 4(a3)
	addiw a4, a0, 2
	sw a4, 8(a3)
	addiw a0, a0, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	ble s1, a2, label4
	j label48
