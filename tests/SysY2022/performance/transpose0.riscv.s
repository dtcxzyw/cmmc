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
pcrel292:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel292)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s1, zero, label2
pcrel293:
	auipc a0, %pcrel_hi(matrix)
	mv a1, zero
	addi a0, a0, %pcrel_lo(pcrel293)
	addiw a2, zero, 4
	ble s1, a2, label30
	sh2add a3, zero, a0
	addiw a4, zero, 1
	sw zero, 0(a3)
	sw a4, 4(a3)
	addiw a4, zero, 2
	addiw a1, zero, 3
	sw a4, 8(a3)
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	ble s1, a2, label30
	sh2add a3, a1, a0
	addiw a4, a1, 1
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 2
	addiw a1, a1, 3
	sw a4, 8(a3)
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	ble s1, a2, label30
	sh2add a3, a1, a0
	addiw a4, a1, 1
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 2
	addiw a1, a1, 3
	sw a4, 8(a3)
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	ble s1, a2, label30
	sh2add a3, a1, a0
	addiw a4, a1, 1
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 2
	addiw a1, a1, 3
	sw a4, 8(a3)
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	ble s1, a2, label30
	j label129
label27:
	addiw a2, a1, 4
	ble s1, a2, label30
label129:
	sh2add a3, a1, a0
	addiw a4, a1, 1
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 2
	addiw a1, a1, 3
	sw a4, 8(a3)
	sw a1, 12(a3)
	mv a1, a2
	j label27
label2:
	ble s0, zero, label15
pcrel294:
	auipc a0, %pcrel_hi(matrix)
	mv t0, zero
	addi a2, a0, %pcrel_lo(pcrel294)
	sh2add a0, zero, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mulw a5, a1, zero
	ble a3, zero, label14
	mv a4, zero
	ble a1, zero, label10
	j label13
label240:
	bge a0, a4, label13
label254:
	addiw a4, a4, 1
	ble a1, a4, label10
	j label266
label10:
	addiw a0, a0, 1
	mulw a5, a1, a0
	ble a3, a0, label14
	mv a4, zero
	ble a1, zero, label10
	bge a0, zero, label13
	addiw a4, zero, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	j label240
label266:
	bge a0, a4, label13
	j label254
label13:
	mulw t1, a3, a4
	addw t2, a5, a4
	addw t1, a0, t1
	addiw a4, a4, 1
	sh2add t2, t2, a2
	sh2add t1, t1, a2
	lw t2, 0(t2)
	sw t2, 0(t1)
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	addiw a4, a4, 1
	ble a1, a4, label10
	bge a0, a4, label13
	j label254
label14:
	addiw t0, t0, 1
	ble s0, t0, label15
	sh2add a0, t0, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mulw a5, a1, zero
	ble a3, zero, label14
	mv a4, zero
	ble a1, zero, label10
	j label13
label30:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	ble s1, a1, label2
	j label30
label15:
	ble s0, zero, label80
pcrel295:
	auipc a0, %pcrel_hi(matrix)
	mv a1, zero
	mv a2, zero
	addi a0, a0, %pcrel_lo(pcrel295)
	addiw a3, zero, 4
	ble s0, a3, label20
	j label23
label80:
	mv s0, zero
	j label24
label23:
	sh2add a4, a1, a0
	addiw t1, a1, 1
	lw a5, 0(a4)
	mulw t1, t1, t1
	lw t0, 4(a4)
	mulw t0, t0, t1
	mulw t1, a1, a1
	mulw a5, a5, t1
	addw a2, a2, a5
	lw a5, 8(a4)
	addw a2, t0, a2
	lw a4, 12(a4)
	addiw t0, a1, 2
	addiw a1, a1, 3
	mulw t0, t0, t0
	mulw a1, a1, a1
	mulw a5, a5, t0
	mulw a1, a4, a1
	addw a2, a2, a5
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 4
	ble s0, a3, label20
	j label23
label20:
	sh2add a3, a1, a0
	mulw a4, a1, a1
	lw a3, 0(a3)
	addiw a1, a1, 1
	mulw a3, a3, a4
	addw a2, a2, a3
	ble s0, a1, label98
	j label20
label98:
	mv s0, a2
label24:
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
