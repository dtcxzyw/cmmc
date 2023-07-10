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
pcrel289:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel289)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s1, zero, label8
pcrel290:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel290)
	mv a1, zero
	addiw a2, zero, 4
	ble s1, a2, label6
	sh2add a3, zero, a0
	addiw a4, zero, 1
	addiw a5, zero, 2
	sw zero, 0(a3)
	sw a4, 4(a3)
	addiw a4, zero, 3
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
label8:
	ble s0, zero, label21
pcrel291:
	auipc a0, %pcrel_hi(matrix)
	mv t0, zero
	addi a2, a0, %pcrel_lo(pcrel291)
	sh2add a0, zero, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mulw a5, a1, zero
	ble a3, zero, label20
	mv a4, zero
	ble a1, zero, label16
label19:
	mulw t2, a3, a4
	addw t3, a0, t2
	addw t2, a5, a4
	sh2add t1, t3, a2
	addiw a4, a4, 1
	sh2add t3, t2, a2
	lw t4, 0(t3)
	sw t4, 0(t1)
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	j label255
label242:
	bge a0, a4, label19
label255:
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	j label255
label16:
	addiw a0, a0, 1
	mulw a5, a1, a0
	ble a3, a0, label20
	mv a4, zero
	ble a1, zero, label16
	bge a0, zero, label19
	addiw a4, zero, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	bge a0, a4, label19
	addiw a4, a4, 1
	ble a1, a4, label16
	j label242
label20:
	addiw t0, t0, 1
	ble s0, t0, label21
	sh2add a0, t0, s2
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s1, a1
	mulw a5, a1, zero
	ble a3, zero, label20
	mv a4, zero
	ble a1, zero, label16
	j label19
label21:
	ble s0, zero, label102
pcrel292:
	auipc a1, %pcrel_hi(matrix)
	mv a3, zero
	addi a0, a1, %pcrel_lo(pcrel292)
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label26
label29:
	sh2add a4, a1, a0
	addiw t1, a1, 1
	mulw t3, a1, a1
	lw a5, 0(a4)
	mulw t2, t1, t1
	lw t0, 4(a4)
	mulw a5, a5, t3
	mulw t0, t0, t2
	addw t1, a3, a5
	lw a5, 8(a4)
	addw a3, t0, t1
	lw a4, 12(a4)
	addiw t0, a1, 2
	addiw a1, a1, 3
	mulw t1, t0, t0
	mulw a5, a5, t1
	addw a3, a3, a5
	mulw a5, a1, a1
	mv a1, a2
	mulw a4, a4, a5
	addw a3, a3, a4
	addiw a2, a2, 4
	ble s0, a2, label26
	j label29
label26:
	sh2add a5, a1, a0
	mulw a4, a1, a1
	lw a2, 0(a5)
	addiw a1, a1, 1
	mulw a5, a2, a4
	addw a3, a3, a5
	ble s0, a1, label120
	j label26
label120:
	mv s0, a3
	j label30
label6:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	ble s1, a1, label8
	j label6
label102:
	mv s0, zero
label30:
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
