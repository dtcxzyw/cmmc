.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
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
pcrel503:
	auipc a0, %pcrel_hi(x)
	addi s3, a0, %pcrel_lo(pcrel503)
	mv a2, zero
	li a0, 1440000
	mul a0, zero, a0
	add a1, s3, a0
	ble s1, zero, label47
	mv a3, zero
	ble s1, zero, label35
	ble s1, zero, label34
	li a0, 2400
	mul a0, zero, a0
	add a0, a1, a0
	mv a5, zero
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label468
label47:
	li s5, 1
	mv s4, s5
	li a0, 1440000
	mul a1, s5, a0
	add a2, s3, a1
	sub a1, zero, a0
	add a3, a2, a1
	add a4, a2, a0
	ble s2, s5, label7
	li a1, 1
	ble s2, a1, label10
	li a0, 1
	ble s2, a0, label12
	j label13
label7:
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
label29:
	addiw a4, a5, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	j label476
label290:
	mv a4, a5
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
label479:
	sh2add a5, a4, a0
	li t1, 1
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	j label479
label468:
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label445
label476:
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	j label476
label445:
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label459
label35:
	addiw a2, a2, 1
	li a0, 1440000
	mul a0, a2, a0
	add a1, s3, a0
	ble s1, a2, label47
	mv a3, zero
	ble s1, zero, label35
	ble s1, zero, label34
	li a0, 2400
	mul a0, zero, a0
	add a0, a1, a0
	mv a5, zero
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label445
label459:
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
label473:
	sh2add a5, a5, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label473
label10:
	addiw s4, s4, 1
	mv s5, a1
	li a0, 1440000
	mul a1, s4, a0
	add a2, s3, a1
	sub a1, zero, a0
	add a3, a2, a1
	add a4, a2, a0
	ble s2, s4, label7
	li a1, 1
	ble s2, a1, label10
	li a0, 1
	ble s2, a0, label12
label13:
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
	ble s2, t4, label16
label21:
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
	ble s2, t4, label16
	j label21
label16:
	addiw t4, t5, 4
	ble s2, t4, label93
	j label20
label93:
	mv t4, t5
label18:
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
	ble s2, t4, label12
	j label18
label20:
	sh2add t6, t5, t2
	lw a7, 0(t6)
	sh2add a6, t5, t3
	lw s5, 0(a6)
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
	lw s7, 4(t6)
	addw s6, s6, s7
	lw s7, 4(a6)
	addw s6, s6, s7
	lw s7, 4(a7)
	addw s6, s6, s7
	lw s7, 4(s5)
	addw s6, s6, s7
	lw s7, 8(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 4(t5)
	lw s7, 8(t6)
	addw s6, s6, s7
	lw s7, 8(a6)
	addw s6, s6, s7
	lw s7, 8(a7)
	addw s6, s6, s7
	lw s7, 8(s5)
	addw s6, s6, s7
	lw s7, 12(t5)
	addw s6, s6, s7
	divw s6, s6, s0
	sw s6, 8(t5)
	lw t6, 12(t6)
	addw t6, s6, t6
	lw a6, 12(a6)
	addw t6, t6, a6
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
	ble s2, t4, label93
	j label20
label34:
	addiw a3, a3, 1
	ble s1, a3, label35
	ble s1, zero, label34
	li a0, 2400
	mul a0, a3, a0
	add a0, a1, a0
	mv a5, zero
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t1, 1
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t1, 0(a5)
	sw t1, 4(a5)
	sw t1, 8(a5)
	sw t1, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label459
label12:
	addiw a1, a1, 1
	ble s2, a1, label10
	li a0, 1
	ble s2, a0, label12
	j label13
