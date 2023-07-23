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
pcrel314:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel314)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s1, zero, label8
pcrel315:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel315)
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
	j label48
label3:
	addiw a2, a1, 4
	ble s1, a2, label6
label48:
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
label8:
	ble s0, zero, label21
pcrel316:
	auipc a0, %pcrel_hi(matrix)
	mv t0, zero
	addi a2, a0, %pcrel_lo(pcrel316)
	mv a0, s2
	lw a1, 0(s2)
	mv a0, zero
	divw a3, s1, a1
	mv a5, zero
	ble a3, zero, label20
	mv a4, zero
	ble a1, zero, label19
	j label18
label260:
	bge a0, a4, label18
label275:
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	j label275
label18:
	mulw t2, a3, a4
	addw t3, a0, t2
	addw t2, a5, a4
	sh2add t1, t3, a2
	addiw a4, a4, 1
	sh2add t4, t2, a2
	lw t3, 0(t4)
	sw t3, 0(t1)
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	j label275
label20:
	addiw t0, t0, 1
	ble s0, t0, label21
	sh2add a0, t0, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mv a5, zero
	ble a3, zero, label20
	mv a4, zero
	ble a1, zero, label19
	j label18
label19:
	addiw a0, a0, 1
	mulw a5, a1, a0
	ble a3, a0, label20
	mv a4, zero
	ble a1, zero, label19
	bge a0, zero, label18
	li a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	bge a0, a4, label18
	addiw a4, a4, 1
	ble a1, a4, label19
	j label260
label6:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	ble s1, a1, label8
	j label6
label21:
	ble s0, zero, label106
pcrel317:
	auipc a1, %pcrel_hi(matrix)
	li a2, 1
	mv a5, zero
	addi a0, a1, %pcrel_lo(pcrel317)
	mv a4, zero
	mv a1, zero
	li a3, 4
	ble s0, a3, label31
label30:
	sh2add a5, a5, a0
	addw t3, a1, a2
	lw t0, 0(a5)
	lw t2, 4(a5)
	mulw t0, a1, t0
	mulw t1, t2, t3
	addiw t2, a1, 2
	addw t3, a4, t0
	sh1add t0, a2, t2
	addw a4, t1, t3
	lw t1, 8(a5)
	lw a5, 12(a5)
	mulw t2, t0, t1
	sh1add t1, a2, a2
	addw a4, a4, t2
	addiw t2, a1, 6
	addw t0, t1, t2
	mulw t1, t0, a5
	addiw a5, a1, 12
	addw a4, a4, t1
	sh2add a1, a2, a5
	mv a5, a3
	addiw a2, a2, 8
	addiw a3, a3, 4
	ble s0, a3, label31
	j label30
label297:
	mv a4, a3
label31:
	sh2add a3, a5, a0
	addiw a5, a5, 1
	lw t0, 0(a3)
	mulw t1, a1, t0
	addw a1, a1, a2
	addw a3, a4, t1
	addiw a2, a2, 2
	ble s0, a5, label155
	j label297
label155:
	mv s0, a3
	j label22
label106:
	mv s0, zero
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
