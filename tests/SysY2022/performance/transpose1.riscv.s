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
pcrel348:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel348)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel349:
	auipc a0, %pcrel_hi(matrix)
	addi a1, a0, %pcrel_lo(pcrel349)
	ble s1, zero, label2
	mv a0, zero
	addiw a2, zero, 4
	ble s1, a2, label31
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
	ble s1, a2, label31
	j label158
label31:
	addiw a2, a0, 4
	ble s1, a2, label34
label171:
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
	ble s1, a2, label34
	j label171
label34:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	j label329
label2:
	ble s0, zero, label3
	mv t0, zero
	sh2add a0, zero, s2
	lw a2, 0(a0)
	mv a0, zero
	divw a3, s1, a2
	mulw a5, a2, zero
	ble a3, zero, label27
	mv a4, zero
	ble a2, zero, label23
	j label25
label23:
	addiw a0, a0, 1
	mulw a5, a2, a0
	ble a3, a0, label27
	mv a4, zero
	ble a2, zero, label23
	bge a0, zero, label25
	addiw a4, zero, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	j label296
label25:
	mulw t1, a3, a4
	addw t2, a5, a4
	addw t1, a0, t1
	sh2add t2, t2, a1
	sh2add t1, t1, a1
	lw t2, 0(t2)
	sw t2, 0(t1)
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	j label309
label27:
	addiw t0, t0, 1
	ble s0, t0, label3
	sh2add a0, t0, s2
	lw a2, 0(a0)
	mv a0, zero
	divw a3, s1, a2
	mulw a5, a2, zero
	ble a3, zero, label27
	mv a4, zero
	ble a2, zero, label23
	j label25
label309:
	addiw a4, a4, 1
	ble a2, a4, label23
	bge a0, a4, label25
	j label309
label296:
	bge a0, a4, label25
	j label309
label329:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	ble s1, a0, label2
	j label329
label3:
	ble s0, zero, label51
	mv a3, zero
	mv a2, zero
	addiw a0, zero, 4
	ble s0, a0, label57
	j label9
label57:
	mv a0, a3
	addiw a3, a2, 4
	ble s0, a3, label13
	j label16
label13:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	j label319
label97:
	mv s0, a0
	j label4
label319:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	addiw a2, a2, 1
	mulw a3, a3, a4
	addw a0, a0, a3
	ble s0, a2, label97
	j label319
label16:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t0, 4(a4)
	addiw t1, a2, 1
	mulw t1, t1, t1
	mulw t0, t0, t1
	mulw t1, a2, a2
	mulw a5, a5, t1
	addw a0, a0, a5
	lw a5, 8(a4)
	addw a0, t0, a0
	lw a4, 12(a4)
	addiw t0, a2, 2
	addiw a2, a2, 3
	mulw t0, t0, t0
	mulw a2, a2, a2
	mulw a5, a5, t0
	mulw a2, a4, a2
	addw a0, a0, a5
	addw a0, a0, a2
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label13
	j label16
label9:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t0, 4(a4)
	addiw t1, a2, 1
	mulw t1, t1, t1
	mulw t0, t0, t1
	mulw t1, a2, a2
	mulw a5, a5, t1
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, t0, a3
	lw a4, 12(a4)
	addiw t0, a2, 2
	addiw a2, a2, 3
	mulw t0, t0, t0
	mulw a2, a2, a2
	mulw a5, a5, t0
	mulw a2, a4, a2
	addw a3, a3, a5
	addw a3, a3, a2
	mv a2, a0
	addiw a0, a0, 4
	ble s0, a0, label57
	j label9
label51:
	mv s0, zero
label4:
	li a0, 47
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
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
label158:
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
	ble s1, a2, label31
	j label158
