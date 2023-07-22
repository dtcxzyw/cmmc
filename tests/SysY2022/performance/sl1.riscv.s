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
pcrel309:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel309)
	mv a1, zero
	li a3, 1440000
	mv a2, zero
	mv a0, s3
	ble s1, zero, label38
	li a5, 2400
	mv a4, zero
	mv a5, zero
	mv a3, s3
	li a4, 4
	ble s1, a4, label12
	mv a5, s3
	li t0, 1
	sw t0, 0(s3)
	sw t0, 4(s3)
	sw t0, 8(s3)
	sw t0, 12(s3)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, s3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, s3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	j label300
label38:
	li s5, 1
	mv a4, s5
	li a1, 1440000
	sub a2, zero, a1
	mul a3, s5, a1
	add a0, s3, a3
	add a1, a0, a1
	add s4, a0, a2
	addiw a2, s5, 1
	ble s2, s5, label18
	li t0, 1
	ble s2, t0, label87
	j label21
label300:
	sh2add a5, a5, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	j label9
label6:
	addiw a1, a1, 1
	li a3, 1440000
	mul a2, a1, a3
	add a0, s3, a2
	ble s1, a1, label38
	mv a2, zero
	ble s1, zero, label6
	li a5, 2400
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s1, a4, label12
	mv a5, a0
	li t0, 1
	sw t0, 0(a0)
	sw t0, 4(a0)
	sw t0, 8(a0)
	sw t0, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	j label300
label9:
	addiw a4, a5, 4
	ble s1, a4, label12
	j label300
label21:
	addiw a3, t0, 1
	li t1, 2400
	li t3, -4800
	mul t2, t0, t1
	mul a5, a3, t1
	add t0, a1, t2
	add t1, s4, t2
	add a4, a0, a5
	add t2, a0, t2
	add a5, a4, t3
	li t3, 1
	ble s2, t3, label100
	li t4, 1
	addiw t3, t4, 4
	ble s2, t3, label24
	j label26
label100:
	mv t0, a3
	ble s2, a3, label87
	j label21
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
	addw s5, s5, s6
	lw s6, -4(t4)
	lw s7, 4(t4)
	addw s5, s5, s6
	addw s8, s5, s7
	divw s6, s8, s0
	sw s6, 0(t4)
	lw s5, 4(t5)
	lw s7, 4(t6)
	lw s8, 4(a6)
	addw s6, s5, s7
	lw s7, 4(a7)
	addw s5, s6, s8
	lw s8, 0(t4)
	addw s6, s5, s7
	addw s5, s6, s8
	lw s6, 8(t4)
	addw s7, s5, s6
	divw s5, s7, s0
	sw s5, 4(t4)
	lw s6, 8(t5)
	lw s7, 8(t6)
	lw s9, 8(a6)
	addw s5, s6, s7
	lw s8, 8(a7)
	addw s6, s5, s9
	lw s7, 4(t4)
	addw s5, s6, s8
	lw s8, 12(t4)
	addw s6, s5, s7
	addw s5, s6, s8
	divw s6, s5, s0
	sw s6, 8(t4)
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
label14:
	addiw a2, a2, 1
	ble s1, a2, label6
	ble s1, zero, label14
	li a5, 2400
	mul a4, a2, a5
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s1, a4, label12
	mv a5, a3
	li t0, 1
	sw t0, 0(a3)
	sw t0, 4(a3)
	sw t0, 8(a3)
	sw t0, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	sh2add a5, a5, a3
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label12
	j label300
label12:
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	ble s1, a5, label14
	j label12
label24:
	sh2add t6, t4, t1
	sh2add t5, t4, t0
	lw t3, 0(t6)
	sh2add a6, t4, a5
	lw t6, 0(t5)
	lw t5, 0(a6)
	addw t3, t3, t6
	sh2add t6, t4, a4
	addw t3, t3, t5
	lw a6, 0(t6)
	addw t5, t3, a6
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
	mv t0, a3
	ble s2, a3, label87
	j label21
label87:
	mv s5, t0
	mv a4, a2
	li a1, 1440000
	sub a2, zero, a1
	mul a3, a4, a1
	add a0, s3, a3
	add a1, a0, a1
	add s4, a0, a2
	addiw a2, a4, 1
	ble s2, a4, label18
	li t0, 1
	ble s2, t0, label87
	j label21
label18:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	li s0, 2400
	li a3, 1440000
	srliw a2, s1, 31
	add a1, s1, a2
	sraiw a0, a1, 1
	mul a2, a0, a3
	add a1, s3, a2
	mul a2, a0, s0
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
