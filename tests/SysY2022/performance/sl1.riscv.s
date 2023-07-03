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
	mv s1, a0
	addiw s2, a0, -1
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
pcrel351:
	auipc a0, %pcrel_hi(x)
	addi s3, a0, %pcrel_lo(pcrel351)
	mv a2, zero
label2:
	li a0, 1440000
	mul a0, a2, a0
	add a1, s3, a0
	ble s1, a2, label47
	mv a3, zero
	j label4
label47:
	li s5, 1
	mv s4, s5
	j label18
label4:
	ble s1, a3, label51
	j label6
label51:
	addiw a2, a2, 1
	j label2
label6:
	ble s1, zero, label7
	li a0, 2400
	mul a0, a3, a0
	add a0, a1, a0
	mv a5, zero
label9:
	addiw a4, a5, 4
	ble s1, a4, label12
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	j label9
label18:
	li a0, 1440000
	mul a1, s4, a0
	add a2, s3, a1
	sub a1, zero, a0
	add a3, a2, a1
	add a4, a2, a0
	ble s2, s4, label21
	li a1, 1
label22:
	ble s2, a1, label24
	li a0, 1
	ble s2, a0, label112
	li t2, 2400
	mul a0, a1, t2
	add a0, a2, a0
	sub a5, zero, t2
	add a5, a0, a5
	add t0, a0, t2
	mul t1, a1, t2
	add t1, a3, t1
	mul t2, a1, t2
	add t2, a4, t2
	li t4, 1
label27:
	addiw t3, t4, 4
	ble s2, t3, label29
	sh2add t6, t4, t1
	lw a6, 0(t6)
	sh2add t5, t4, t2
	lw a7, 0(t5)
	addw a7, a6, a7
	sh2add a6, t4, a5
	lw s5, 0(a6)
	addw s5, a7, s5
	sh2add a7, t4, t0
	lw s6, 0(a7)
	addw s5, s5, s6
	sh2add t4, t4, a0
	lw s6, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 0(t4)
	lw s6, 4(t6)
	addw s5, s5, s6
	lw s6, 4(t5)
	addw s5, s5, s6
	lw s6, 4(a6)
	addw s5, s5, s6
	lw s6, 4(a7)
	addw s5, s5, s6
	lw s6, 8(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 4(t4)
	lw s6, 8(t6)
	addw s5, s5, s6
	lw s6, 8(t5)
	addw s5, s5, s6
	lw s6, 8(a6)
	addw s5, s5, s6
	lw s6, 8(a7)
	addw s5, s5, s6
	lw s6, 12(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 8(t4)
	lw t6, 12(t6)
	addw t6, s5, t6
	lw t5, 12(t5)
	addw t5, t6, t5
	lw t6, 12(a6)
	addw t5, t5, t6
	lw t6, 12(a7)
	addw t5, t5, t6
	lw t6, 16(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 12(t4)
	mv t4, t3
	j label27
label12:
	addiw a4, a5, 4
	ble s1, a4, label72
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	j label12
label72:
	mv a4, a5
label15:
	sh2add a5, a4, a0
	li t0, 1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble s1, a4, label7
	j label15
label29:
	addiw t3, t4, 4
	ble s2, t3, label130
	j label31
label130:
	mv t3, t4
	j label32
label31:
	sh2add t6, t4, t1
	lw a6, 0(t6)
	sh2add t5, t4, t2
	lw a7, 0(t5)
	addw a7, a6, a7
	sh2add a6, t4, a5
	lw s5, 0(a6)
	addw s5, a7, s5
	sh2add a7, t4, t0
	lw s6, 0(a7)
	addw s5, s5, s6
	sh2add t4, t4, a0
	lw s6, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 0(t4)
	lw s6, 4(t6)
	addw s5, s5, s6
	lw s6, 4(t5)
	addw s5, s5, s6
	lw s6, 4(a6)
	addw s5, s5, s6
	lw s6, 4(a7)
	addw s5, s5, s6
	lw s6, 8(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 4(t4)
	lw s6, 8(t6)
	addw s5, s5, s6
	lw s6, 8(t5)
	addw s5, s5, s6
	lw s6, 8(a6)
	addw s5, s5, s6
	lw s6, 8(a7)
	addw s5, s5, s6
	lw s6, 12(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 8(t4)
	lw t6, 12(t6)
	addw t6, s5, t6
	lw t5, 12(t5)
	addw t5, t6, t5
	lw t6, 12(a6)
	addw t5, t5, t6
	lw t6, 12(a7)
	addw t5, t5, t6
	lw t6, 16(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 12(t4)
	mv t4, t3
	j label29
label32:
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
	ble s2, t3, label112
	j label32
label7:
	addiw a3, a3, 1
	j label4
label112:
	addiw a1, a1, 1
	j label22
label24:
	addiw s4, s4, 1
	mv s5, a1
	j label18
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
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
