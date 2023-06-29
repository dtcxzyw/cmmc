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
pcrel347:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel347)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel348:
	auipc a0, %pcrel_hi(matrix)
	addi a1, a0, %pcrel_lo(pcrel348)
	ble s1, zero, label10
	mv a0, zero
	addiw a2, zero, 4
	bge a2, s1, label5
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
	bge a2, s1, label5
	j label48
label5:
	addiw a2, a0, 4
	bge a2, s1, label8
	j label61
label8:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	j label318
label10:
	ble s0, zero, label22
	mv t1, zero
	sh2add a0, zero, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	bge zero, a3, label15
	mv a4, zero
	bge zero, a2, label18
	j label20
label298:
	bge a0, a4, label20
label310:
	addiw a4, a4, 1
	bge a4, a2, label18
	j label322
label20:
	addw t2, a4, a5
	sh2add t2, t2, a1
	lw t3, 0(t2)
	mulw t4, a3, a4
	addw t4, a0, t4
	sh2add t4, t4, a1
	sw t3, 0(t4)
	sw t3, 0(t2)
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	j label310
label15:
	addiw t1, t1, 1
	bge t1, s0, label22
	sh2add a0, t1, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	bge zero, a3, label15
	mv a4, zero
	bge zero, a2, label18
	j label20
label18:
	addiw a0, a0, 1
	mulw a5, a2, a0
	bge a0, a3, label15
	mv a4, zero
	bge zero, a2, label18
	bge a0, zero, label20
	addiw a4, zero, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	bge a0, a4, label20
	addiw a4, a4, 1
	bge a4, a2, label18
	j label298
label22:
	ble s0, zero, label117
	mv a3, zero
	mv a2, zero
	addiw a0, zero, 4
	bge a0, s0, label122
	j label33
label117:
	mv s0, zero
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
	j label224
label322:
	bge a0, a4, label20
	j label310
label318:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label10
	j label318
label122:
	mv a0, a3
	addiw a3, a2, 4
	bge a3, s0, label29
	j label32
label33:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a2, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a2, a2
	mulw a5, t2, a5
	addw a3, a3, a5
	addw a3, a3, t1
	lw a5, 8(a4)
	addiw t1, a2, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a3, a3, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a2, a4
	addw a3, a3, a2
	mv a2, a0
	addiw a0, a0, 4
	bge a0, s0, label122
	j label33
label29:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	j label327
label138:
	mv s0, a0
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
	j label224
label327:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a4, a3
	addw a0, a3, a0
	addiw a2, a2, 1
	bge a2, s0, label138
	j label327
label32:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a2, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a2, a2
	mulw a5, t2, a5
	addw a0, a0, a5
	addw a0, a0, t1
	lw a5, 8(a4)
	addiw t1, a2, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a0, a0, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a2, a4
	addw a0, a0, a2
	mv a2, a3
	addiw a3, a3, 4
	bge a3, s0, label29
	j label32
label61:
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
	bge a2, s1, label8
	j label61
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
	bge a2, s1, label5
	j label48
label224:
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
