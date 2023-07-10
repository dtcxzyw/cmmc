.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	864000000
.text
.globl main
main:
	addi sp, sp, -88
	sd s1, 80(sp)
	sd s6, 72(sp)
	sd s2, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s4, 32(sp)
	sd s7, 24(sp)
	sd s8, 16(sp)
	sd s9, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s2, a0, -1
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
pcrel308:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel308)
	mv a1, zero
	li a2, 1440000
	mul a3, zero, a2
	add a0, s3, a3
	ble s1, zero, label38
	mv a2, zero
	ble s1, zero, label14
	ble s1, zero, label7
	li a4, 2400
	mv a5, zero
	mul t0, zero, a4
	add a3, a0, t0
	addiw a4, zero, 4
	ble s1, a4, label11
	sh2add a5, zero, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	j label300
label38:
	li s5, 1
	mv a4, s5
	li a2, 1440000
	sub a3, zero, a2
	mul a1, s5, a2
	add a0, s3, a1
	add a1, a0, a2
	add s4, a0, a3
	addiw a2, s5, 1
	ble s2, s5, label18
	li t2, 1
	ble s2, t2, label87
label21:
	addiw a3, t2, 1
	li t3, 2400
	li t0, -4800
	mul t5, t2, t3
	mul t4, t2, t3
	mul t1, t2, t3
	mul a5, a3, t3
	add t2, a0, t5
	li t3, 1
	add a4, a0, a5
	add a5, a4, t0
	add t0, a1, t1
	add t1, s4, t4
	ble s2, t3, label100
	li t4, 1
	addiw t3, t4, 4
	ble s2, t3, label24
	j label26
label100:
	mv t2, a3
	ble s2, a3, label87
	j label21
label300:
	sh2add a5, a5, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	j label300
label14:
	addiw a1, a1, 1
	li a2, 1440000
	mul a3, a1, a2
	add a0, s3, a3
	ble s1, a1, label38
	mv a2, zero
	ble s1, zero, label14
	ble s1, zero, label7
	li a4, 2400
	mv a5, zero
	mul t0, zero, a4
	add a3, a0, t0
	addiw a4, zero, 4
	ble s1, a4, label11
	sh2add a5, zero, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	j label300
label26:
	sh2add t5, t4, t1
	sh2add t6, t4, t0
	lw a6, 0(t5)
	lw s5, 0(t6)
	addw a7, a6, s5
	sh2add a6, t4, a5
	lw s6, 0(a6)
	addw s5, a7, s6
	sh2add a7, t4, a4
	sh2add t4, t4, t2
	lw s6, 0(a7)
	lw s7, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s7
	addw s7, s5, s6
	divw s8, s7, s0
	sw s8, 0(t4)
	lw s5, 4(t5)
	lw s7, 4(t6)
	lw s8, 4(a6)
	addw s6, s5, s7
	lw s9, 4(a7)
	addw s5, s6, s8
	lw s7, 0(t4)
	addw s6, s5, s9
	addw s5, s6, s7
	lw s6, 8(t4)
	addw s7, s5, s6
	divw s5, s7, s0
	sw s5, 4(t4)
	lw s6, 8(t5)
	lw s7, 8(t6)
	lw s8, 8(a6)
	addw s5, s6, s7
	addw s6, s5, s8
	lw s5, 8(a7)
	lw s8, 4(t4)
	addw s7, s6, s5
	lw s6, 12(t4)
	addw s5, s7, s8
	addw s7, s5, s6
	divw s5, s7, s0
	sw s5, 8(t4)
	lw t5, 12(t5)
	lw s5, 12(t6)
	lw a6, 12(a6)
	addw t6, t5, s5
	lw a7, 12(a7)
	addw t5, t6, a6
	lw a6, 8(t4)
	addw t6, t5, a7
	lw a7, 16(t4)
	addw t5, t6, a6
	addw t6, t5, a7
	divw t5, t6, s0
	sw t5, 12(t4)
	mv t4, t3
	addiw t3, t3, 4
	ble s2, t3, label24
	j label26
label7:
	addiw a2, a2, 1
	ble s1, a2, label14
	ble s1, zero, label7
	li a4, 2400
	mv a5, zero
	mul t0, a2, a4
	add a3, a0, t0
	addiw a4, zero, 4
	ble s1, a4, label11
	sh2add a5, zero, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label11
	j label300
label11:
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	ble s1, a5, label7
	j label11
label18:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	li s0, 2400
	srliw a2, s1, 31
	add a1, s1, a2
	li a2, 1440000
	sraiw a0, a1, 1
	mul a3, a0, a2
	mul a2, a0, s0
	add a1, s3, a3
	mv a0, s1
	add a1, a1, a2
	jal putarray
	addiw a0, s5, -1
	mul a2, a0, s0
	mv a0, s1
	add a1, s4, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s8, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s2, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	addi sp, sp, 88
	ret
label87:
	mv s5, t2
	mv a4, a2
	li a2, 1440000
	sub a3, zero, a2
	mul a1, a4, a2
	add a0, s3, a1
	add a1, a0, a2
	add s4, a0, a3
	addiw a2, a4, 1
	ble s2, a4, label18
	li t2, 1
	ble s2, t2, label87
	j label21
label24:
	sh2add t5, t4, t1
	sh2add t6, t4, t0
	lw t3, 0(t5)
	sh2add a6, t4, a4
	lw t5, 0(t6)
	sh2add t6, t4, a5
	addw t3, t3, t5
	lw t5, 0(t6)
	lw t6, 0(a6)
	addw t3, t3, t5
	addw t5, t3, t6
	sh2add t3, t4, t2
	addiw t4, t4, 1
	lw t6, -4(t3)
	lw a6, 4(t3)
	addw t5, t5, t6
	addw t6, t5, a6
	divw t5, t6, s0
	sw t5, 0(t3)
	ble s2, t4, label134
	j label24
label134:
	mv t2, a3
	ble s2, a3, label87
	j label21
