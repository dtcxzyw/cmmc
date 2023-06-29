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
pcrel349:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel349)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel350:
	auipc a0, %pcrel_hi(matrix)
	addi a0, a0, %pcrel_lo(pcrel350)
	ble s1, zero, label10
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label5
label4:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a1, a1, 3
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label5
	j label4
label5:
	addiw a2, a1, 4
	bge a2, s1, label8
label7:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a1, a1, 3
	sw a1, 12(a3)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label8
	j label7
label8:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	j label320
label10:
	ble s0, zero, label22
	mv a1, zero
	slli a2, zero, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, a4, zero
	bge zero, a5, label15
	mv a3, zero
	bge zero, a4, label21
label19:
	addw t2, a3, t1
	slliw t2, t2, 2
	add t2, a0, t2
	lw t3, 0(t2)
	mulw t4, a5, a3
	addw t4, a2, t4
	slliw t4, t4, 2
	add t4, a0, t4
	sw t3, 0(t4)
	sw t3, 0(t2)
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	j label311
label21:
	addiw a2, a2, 1
	mulw t1, a4, a2
	bge a2, a5, label15
	mv a3, zero
	bge zero, a4, label21
	bge a2, zero, label19
	addiw a3, zero, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	j label311
label15:
	addiw a1, a1, 1
	bge a1, s0, label22
	slli a2, a1, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, a4, zero
	bge zero, a5, label15
	mv a3, zero
	bge zero, a4, label21
	j label19
label22:
	ble s0, zero, label117
	mv a2, zero
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label28
	j label35
label311:
	addiw a3, a3, 1
	bge a3, a4, label21
	bge a2, a3, label19
	j label311
label320:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	j label320
label28:
	addiw a3, a1, 4
	bge a3, s0, label31
	j label34
label31:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	j label330
label141:
	mv s0, a2
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
	j label203
label330:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label141
	j label330
label34:
	slli a4, a1, 2
	add a4, a0, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a1, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a1, a1
	mulw a5, t2, a5
	addw a2, a2, a5
	addw a2, a2, t1
	lw a5, 8(a4)
	addiw t1, a1, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a4, 12(a4)
	addiw a1, a1, 3
	mulw a1, a1, a1
	mulw a1, a1, a4
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label31
	j label34
label35:
	slli a4, a1, 2
	add a4, a0, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a1, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a1, a1
	mulw a5, t2, a5
	addw a2, a2, a5
	addw a2, a2, t1
	lw a5, 8(a4)
	addiw t1, a1, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a4, 12(a4)
	addiw a1, a1, 3
	mulw a1, a1, a1
	mulw a1, a1, a4
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label28
	j label35
label117:
	mv s0, zero
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
label203:
	mv a0, s0
label204:
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
