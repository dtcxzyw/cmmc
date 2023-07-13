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
pcrel283:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel283)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s1, zero, label8
pcrel284:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel284)
	mv a1, zero
	li a2, 4
	ble s1, a2, label6
	mv a3, a0
	li a4, 1
	li a5, 2
	sw zero, 0(a0)
	sw a4, 4(a0)
	li a4, 3
	sw a5, 8(a0)
	mv a1, a2
	sw a4, 12(a0)
	addiw a2, a2, 4
	ble s1, a2, label6
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	mv a1, a2
	sw a4, 12(a3)
	addiw a2, a2, 4
	ble s1, a2, label6
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	mv a1, a2
	sw a4, 12(a3)
	addiw a2, a2, 4
	ble s1, a2, label6
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	mv a1, a2
	sw a4, 12(a3)
	addiw a2, a2, 4
	ble s1, a2, label6
	j label44
label8:
	ble s0, zero, label21
pcrel285:
	auipc a0, %pcrel_hi(matrix)
	mv t0, zero
	addi a2, a0, %pcrel_lo(pcrel285)
	mv a0, s2
	lw a1, 0(s2)
	mv a0, zero
	divw a3, s1, a1
	mv a5, zero
	ble a3, zero, label14
	mv a4, zero
	ble a1, zero, label17
	j label20
label239:
	bge a0, a4, label20
label251:
	addiw a4, a4, 1
	ble a1, a4, label17
	j label263
label20:
	mulw t3, a3, a4
	addw t2, a0, t3
	addw t3, a5, a4
	sh2add t1, t2, a2
	addiw a4, a4, 1
	sh2add t2, t3, a2
	lw t4, 0(t2)
	sw t4, 0(t1)
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	j label251
label263:
	bge a0, a4, label20
	j label251
label14:
	addiw t0, t0, 1
	ble s0, t0, label21
	sh2add a0, t0, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mv a5, zero
	ble a3, zero, label14
	mv a4, zero
	ble a1, zero, label17
	j label20
label21:
	ble s0, zero, label102
pcrel286:
	auipc a1, %pcrel_hi(matrix)
	mv a3, zero
	addi a0, a1, %pcrel_lo(pcrel286)
	mv a1, zero
	li a2, 4
	ble s0, a2, label28
	j label31
label102:
	mv s0, zero
	j label22
label31:
	sh2add a5, a1, a0
	addiw t1, a1, 1
	lw a4, 0(a5)
	mulw t2, t1, t1
	lw t0, 4(a5)
	addiw t1, a1, 3
	mulw t3, t0, t2
	addw t0, a3, t3
	mulw t3, t1, t1
	lw a3, 8(a5)
	lw a5, 12(a5)
	mulw t2, a5, t3
	addw a5, t0, t2
	addiw t0, a1, 2
	mulw a1, a1, a1
	mulw t1, t0, t0
	mulw t0, a4, a1
	mulw a3, a3, t1
	mv a1, a2
	addw a4, a3, t0
	addw a3, a5, a4
	addiw a2, a2, 4
	ble s0, a2, label28
	j label31
label17:
	addiw a0, a0, 1
	mulw a5, a1, a0
	ble a3, a0, label14
	mv a4, zero
	ble a1, zero, label17
	bge a0, zero, label20
	li a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	bge a0, a4, label20
	addiw a4, a4, 1
	ble a1, a4, label17
	j label239
label3:
	addiw a2, a1, 4
	ble s1, a2, label6
label44:
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	mv a1, a2
	sw a4, 12(a3)
	j label3
label22:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label28:
	sh2add a4, a1, a0
	mulw a5, a1, a1
	lw a2, 0(a4)
	addiw a1, a1, 1
	mulw a4, a2, a5
	addw a3, a3, a4
	ble s0, a1, label121
	j label28
label121:
	mv s0, a3
	j label22
label6:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	ble s1, a1, label8
	j label6
