.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	864000000
.align 4
y:
	.zero	864000000
.text
.globl main
main:
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s0, 40(sp)
	sd s5, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	addiw s2, a0, -1
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
pcrel433:
	auipc a0, %pcrel_hi(x)
	addi s3, a0, %pcrel_lo(pcrel433)
pcrel434:
	auipc a0, %pcrel_hi(y)
	addi a3, a0, %pcrel_lo(pcrel434)
	mv a4, zero
	li a0, 1440000
	mul a1, zero, a0
	add a2, s3, a1
	mul a0, zero, a0
	add a5, a3, a0
	bge zero, s1, label51
	mv t1, zero
	bge zero, s1, label17
	ble s1, zero, label7
	li a1, 2400
	mul a0, zero, a1
	add a0, a2, a0
	mul a1, zero, a1
	add a1, a5, a1
	mv t5, zero
	addiw t2, zero, 4
	bge t2, s1, label68
	j label11
label51:
	li s5, 1
	mv s4, s5
	li a0, 1440000
	mul a1, s5, a0
	add a2, s3, a1
	sub a1, zero, a0
	add a3, a2, a1
	add a4, a2, a0
	bge s5, s2, label21
	li a1, 1
	bge a1, s2, label24
	li a0, 1
	ble s2, a0, label35
label26:
	li t3, 2400
	mul a0, a1, t3
	add a0, a2, a0
	sub a5, zero, t3
	add a5, a0, a5
	add t1, a0, t3
	mul t2, a1, t3
	add t2, a3, t2
	mul t3, a1, t3
	add t3, a4, t3
	li t5, 1
	addiw t4, t5, 4
	bge t4, s2, label29
	j label34
label29:
	addiw t4, t5, 4
	bge t4, s2, label148
	j label33
label148:
	mv t4, t5
label31:
	sh2add t5, t4, t2
	lw t5, 0(t5)
	sh2add t6, t4, t3
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t6, t4, a5
	lw t6, 0(t6)
	addw t5, t5, t6
	sh2add t6, t4, t1
	lw t6, 0(t6)
	addw t6, t5, t6
	sh2add t5, t4, a0
	lw a6, -4(t5)
	addw t6, t6, a6
	lw a6, 4(t5)
	addw t6, t6, a6
	divw t6, t6, s0
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s2, label35
	j label31
label33:
	sh2add a6, t5, t2
	lw a7, 0(a6)
	sh2add t6, t5, t3
	lw s5, 0(t6)
	addw s5, a7, s5
	sh2add a7, t5, a5
	lw s6, 0(a7)
	addw s6, s5, s6
	sh2add s5, t5, t1
	lw s7, 0(s5)
	addw s6, s6, s7
	sh2add t5, t5, a0
	lw s7, -4(t5)
	addw s6, s6, s7
	lw s7, 4(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 0(t5)
	lw s7, 4(a6)
	addw s6, s6, s7
	lw s7, 4(t6)
	addw s6, s6, s7
	lw s7, 4(a7)
	addw s6, s6, s7
	lw s7, 4(s5)
	addw s6, s6, s7
	lw s7, 8(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 4(t5)
	lw s7, 8(a6)
	addw s6, s6, s7
	lw s7, 8(t6)
	addw s6, s6, s7
	lw s7, 8(a7)
	addw s6, s6, s7
	lw s7, 8(s5)
	addw s6, s6, s7
	lw s7, 12(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 8(t5)
	lw a6, 12(a6)
	addw a6, s6, a6
	lw t6, 12(t6)
	addw t6, a6, t6
	lw a6, 12(a7)
	addw t6, t6, a6
	lw a6, 12(s5)
	addw t6, t6, a6
	lw a6, 16(t5)
	addw t6, t6, a6
	divw t6, t6, s0
	sw t6, 12(t5)
	mv t5, t4
	addiw t4, t4, 4
	bge t4, s2, label148
	j label33
label34:
	sh2add a6, t5, t2
	lw a7, 0(a6)
	sh2add t6, t5, t3
	lw s5, 0(t6)
	addw s5, a7, s5
	sh2add a7, t5, a5
	lw s6, 0(a7)
	addw s6, s5, s6
	sh2add s5, t5, t1
	lw s7, 0(s5)
	addw s6, s6, s7
	sh2add t5, t5, a0
	lw s7, -4(t5)
	addw s6, s6, s7
	lw s7, 4(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 0(t5)
	lw s7, 4(a6)
	addw s6, s6, s7
	lw s7, 4(t6)
	addw s6, s6, s7
	lw s7, 4(a7)
	addw s6, s6, s7
	lw s7, 4(s5)
	addw s6, s6, s7
	lw s7, 8(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 4(t5)
	lw s7, 8(a6)
	addw s6, s6, s7
	lw s7, 8(t6)
	addw s6, s6, s7
	lw s7, 8(a7)
	addw s6, s6, s7
	lw s7, 8(s5)
	addw s6, s6, s7
	lw s7, 12(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 8(t5)
	lw a6, 12(a6)
	addw a6, s6, a6
	lw t6, 12(t6)
	addw t6, a6, t6
	lw a6, 12(a7)
	addw t6, t6, a6
	lw a6, 12(s5)
	addw t6, t6, a6
	lw a6, 16(t5)
	addw t6, t6, a6
	divw t6, t6, s0
	sw t6, 12(t5)
	mv t5, t4
	addiw t4, t4, 4
	bge t4, s2, label29
	j label34
label35:
	addiw a1, a1, 1
	bge a1, s2, label24
	li a0, 1
	ble s2, a0, label35
	j label26
label68:
	mv t3, t5
	addiw t2, t5, 4
	bge t2, s1, label83
	j label14
label83:
	mv t2, t3
	sh2add t3, t3, a0
	li t4, 1
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	sh2add t3, t2, a0
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	j label430
label14:
	sh2add t4, t3, a0
	li t5, 1
	sw t5, 0(t4)
	sh2add t3, t3, a1
	sw zero, 0(t3)
	sw t5, 4(t4)
	sw zero, 4(t3)
	sw t5, 8(t4)
	sw zero, 8(t3)
	sw t5, 12(t4)
	sw zero, 12(t3)
	mv t3, t2
	addiw t2, t2, 4
	bge t2, s1, label83
	j label14
label430:
	sh2add t3, t2, a0
	li t4, 1
	sw t4, 0(t3)
	sh2add t3, t2, a1
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label7
	j label430
label7:
	addiw t1, t1, 1
	bge t1, s1, label17
	ble s1, zero, label7
	li a1, 2400
	mul a0, t1, a1
	add a0, a2, a0
	mul a1, t1, a1
	add a1, a5, a1
	mv t5, zero
	addiw t2, zero, 4
	bge t2, s1, label68
label11:
	sh2add t3, t5, a0
	li t4, 1
	sw t4, 0(t3)
	sh2add t5, t5, a1
	sw zero, 0(t5)
	sw t4, 4(t3)
	sw zero, 4(t5)
	sw t4, 8(t3)
	sw zero, 8(t5)
	sw t4, 12(t3)
	sw zero, 12(t5)
	mv t5, t2
	addiw t2, t2, 4
	bge t2, s1, label68
	j label11
label17:
	addiw a4, a4, 1
	li a0, 1440000
	mul a1, a4, a0
	add a2, s3, a1
	mul a0, a4, a0
	add a5, a3, a0
	bge a4, s1, label51
	mv t1, zero
	bge zero, s1, label17
	ble s1, zero, label7
	li a1, 2400
	mul a0, zero, a1
	add a0, a2, a0
	mul a1, zero, a1
	add a1, a5, a1
	mv t5, zero
	addiw t2, zero, 4
	bge t2, s1, label68
	j label11
label24:
	addiw s4, s4, 1
	mv s5, a1
	li a0, 1440000
	mul a1, s4, a0
	add a2, s3, a1
	sub a1, zero, a0
	add a3, a2, a1
	add a4, a2, a0
	bge s4, s2, label21
	li a1, 1
	bge a1, s2, label24
	li a0, 1
	ble s2, a0, label35
	j label26
label21:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a0, a0, 1
	li s2, 1440000
	mul a1, a0, s2
	add a1, s3, a1
	li s0, 2400
	mul a0, a0, s0
	add a1, a1, a0
	mv a0, s1
	jal putarray
	addiw a0, s4, -1
	mul a0, a0, s2
	add a0, s3, a0
	addiw a1, s5, -1
	mul a1, a1, s0
	add a1, a0, a1
	mv a0, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
