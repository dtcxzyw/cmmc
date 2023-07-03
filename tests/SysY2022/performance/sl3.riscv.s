.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	864000000
.text
.globl main
main:
	addi sp, sp, -64
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s2, a0, -1
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	mv a2, zero
pcrel501:
	auipc a0, %pcrel_hi(x)
	addi s3, a0, %pcrel_lo(pcrel501)
	li a0, 1440000
	mul a0, zero, a0
	add a1, s3, a0
	ble s1, zero, label47
	mv a3, zero
	ble s1, zero, label35
	ble s1, zero, label34
	li a0, 2400
	mv a5, zero
	mul a0, zero, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label466
label47:
	li s5, 1
	mv s4, s5
	li a0, 1440000
	mul a1, s5, a0
	add a2, s3, a1
	add a4, a2, a0
	sub a1, zero, a0
	add a3, a2, a1
	ble s2, s5, label7
	li a1, 1
	ble s2, a1, label10
	li a0, 1
	ble s2, a0, label12
	j label13
label457:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label471
label475:
	sh2add a5, a4, a0
	li t0, 1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	j label475
label34:
	addiw a3, a3, 1
	ble s1, a3, label35
	ble s1, zero, label34
	li a0, 2400
	mv a5, zero
	mul a0, a3, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label457
label29:
	addiw a4, a5, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	j label474
label290:
	mv a4, a5
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	sh2add a5, a4, a0
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label34
	j label475
label466:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
label443:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label457
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
	mv a5, zero
	mul a0, zero, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label29
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label443
label471:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label29
	j label471
label474:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label290
	j label474
label13:
	li t2, 2400
	li t4, 1
	sub a5, zero, t2
	mul a0, a1, t2
	mul t1, a1, t2
	add a0, a2, a0
	add t1, a3, t1
	add t0, a0, t2
	add a5, a0, a5
	mul t2, a1, t2
	add t2, a4, t2
	addiw t3, t4, 4
	ble s2, t3, label16
label21:
	sh2add t5, t4, t1
	lw a6, 0(t5)
	sh2add t6, t4, t2
	lw a7, 0(t6)
	addw a7, a6, a7
	sh2add a6, t4, a5
	lw s5, 0(a6)
	addw s5, a7, s5
	sh2add a7, t4, t0
	lw s6, 0(a7)
	sh2add t4, t4, a0
	addw s5, s5, s6
	lw s6, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 0(t4)
	lw s6, 4(t5)
	addw s5, s5, s6
	lw s6, 4(t6)
	addw s5, s5, s6
	lw s6, 4(a6)
	addw s5, s5, s6
	lw s6, 4(a7)
	addw s5, s5, s6
	lw s6, 8(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 4(t4)
	lw s6, 8(t5)
	addw s5, s5, s6
	lw s6, 8(t6)
	addw s5, s5, s6
	lw s6, 8(a6)
	addw s5, s5, s6
	lw s6, 8(a7)
	addw s5, s5, s6
	lw s6, 12(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 8(t4)
	lw t5, 12(t5)
	lw t6, 12(t6)
	addw t5, s5, t5
	addw t5, t5, t6
	lw t6, 12(a6)
	addw t5, t5, t6
	lw t6, 12(a7)
	addw t5, t5, t6
	lw t6, 16(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 12(t4)
	mv t4, t3
	addiw t3, t3, 4
	ble s2, t3, label16
	j label21
label16:
	addiw t3, t4, 4
	ble s2, t3, label93
	j label20
label93:
	mv t3, t4
	j label18
label20:
	sh2add t5, t4, t1
	lw a6, 0(t5)
	sh2add t6, t4, t2
	lw a7, 0(t6)
	addw a7, a6, a7
	sh2add a6, t4, a5
	lw s5, 0(a6)
	addw s5, a7, s5
	sh2add a7, t4, t0
	lw s6, 0(a7)
	sh2add t4, t4, a0
	addw s5, s5, s6
	lw s6, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 0(t4)
	lw s6, 4(t5)
	addw s5, s5, s6
	lw s6, 4(t6)
	addw s5, s5, s6
	lw s6, 4(a6)
	addw s5, s5, s6
	lw s6, 4(a7)
	addw s5, s5, s6
	lw s6, 8(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 4(t4)
	lw s6, 8(t5)
	addw s5, s5, s6
	lw s6, 8(t6)
	addw s5, s5, s6
	lw s6, 8(a6)
	addw s5, s5, s6
	lw s6, 8(a7)
	addw s5, s5, s6
	lw s6, 12(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 8(t4)
	lw t5, 12(t5)
	lw t6, 12(t6)
	addw t5, s5, t5
	addw t5, t5, t6
	lw t6, 12(a6)
	addw t5, t5, t6
	lw t6, 12(a7)
	addw t5, t5, t6
	lw t6, 16(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 12(t4)
	mv t4, t3
	addiw t3, t3, 4
	ble s2, t3, label93
	j label20
label18:
	sh2add t4, t3, t1
	lw t4, 0(t4)
	sh2add t5, t3, t2
	lw t5, 0(t5)
	addw t4, t4, t5
	sh2add t5, t3, a5
	lw t5, 0(t5)
	addw t4, t4, t5
	sh2add t5, t3, t0
	lw t5, 0(t5)
	addw t5, t4, t5
	sh2add t4, t3, a0
	lw t6, -4(t4)
	addw t5, t5, t6
	lw t6, 4(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 0(t4)
	addiw t3, t3, 1
	ble s2, t3, label12
	j label18
label12:
	addiw a1, a1, 1
	ble s2, a1, label10
	li a0, 1
	ble s2, a0, label12
	j label13
label10:
	addiw s4, s4, 1
	mv s5, a1
	li a0, 1440000
	mul a1, s4, a0
	add a2, s3, a1
	add a4, a2, a0
	sub a1, zero, a0
	add a3, a2, a1
	ble s2, s4, label7
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
	li s0, 2400
	li s2, 1440000
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a0, a0, 1
	mul a1, a0, s2
	mul a0, a0, s0
	add a1, s3, a1
	add a1, a1, a0
	mv a0, s1
	jal putarray
	addiw a1, s5, -1
	addiw a0, s4, -1
	mul a1, a1, s0
	mul a0, a0, s2
	add a0, s3, a0
	add a1, a0, a1
	mv a0, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
