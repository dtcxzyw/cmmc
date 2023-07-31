.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	sd s3, 48(sp)
	jal getint
	addiw s4, a0, -20
	addiw s5, a0, -4
	addiw s0, a0, -1
	mv s2, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
pcrel236:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel236)
	mv a1, zero
	li a2, 1440000
	mv a3, zero
	mv a0, s3
	bgt s2, zero, label41
label40:
	li s5, 1
	mv a0, s5
	j label17
.p2align 2
label41:
	mv a2, zero
	bgt s2, zero, label7
	j label6
.p2align 2
label223:
	addiw a1, a1, 1
	li a2, 1440000
	mul a3, a1, a2
	add a0, s3, a3
	bgt s2, a1, label41
	j label40
label17:
	li a3, 1440000
	sub a2, zero, a3
	mul a4, a0, a3
	add a1, s3, a4
	addiw a4, a0, 1
	add a3, a1, a3
	add s4, a1, a2
	ble s0, a0, label20
.p2align 2
label106:
	li a5, 1
	bgt s0, a5, label23
	j label117
label20:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s3
	jal putarray
	li s0, 2400
	li a3, 1440000
	srliw a2, s2, 31
	add a1, s2, a2
	sraiw a0, a1, 1
	mul a2, a0, a3
	add a1, s3, a2
	mul a2, a0, s0
	mv a0, s2
	add a1, a1, a2
	jal putarray
	addiw a0, s5, -1
	mul a2, a0, s0
	mv a0, s2
	add a1, s4, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label117:
	mv s5, a5
	mv a0, a4
	li a3, 1440000
	sub a2, zero, a3
	mul a4, a4, a3
	add a1, s3, a4
	addiw a4, a0, 1
	add a3, a1, a3
	add s4, a1, a2
	bgt s0, a0, label106
	j label20
.p2align 2
label23:
	addiw t0, a5, 1
	li t1, 2400
	li t3, -4800
	mul t2, a5, t1
	mul a2, t0, t1
	add a5, a3, t2
	add t1, s4, t2
	add a0, a1, a2
	add t2, a1, t2
	add a2, a0, t3
	li t3, 1
	ble s0, t3, label130
.p2align 2
label24:
	sh2add t5, t3, t1
	sh2add t6, t3, a5
	lw t4, 0(t5)
	sh2add a6, t3, a0
	lw t5, 0(t6)
	sh2add t6, t3, a2
	addw t4, t4, t5
	lw t5, 0(t6)
	lw t6, 0(a6)
	addw t4, t4, t5
	addw t5, t4, t6
	sh2add t4, t3, t2
	addiw t3, t3, 1
	lw a6, -4(t4)
	lw t6, 4(t4)
	addw t5, t5, a6
	addw a6, t5, t6
	divw t5, a6, s1
	sw t5, 0(t4)
	bgt s0, t3, label24
	mv a5, t0
	bgt s0, t0, label23
	mv s5, t0
	mv a0, a4
	li a3, 1440000
	sub a2, zero, a3
	mul a4, a4, a3
	add a1, s3, a4
	addiw a4, a0, 1
	add a3, a1, a3
	add s4, a1, a2
	bgt s0, a0, label106
	j label20
.p2align 2
label7:
	ble s2, zero, label48
	li a5, 2400
	mul a4, a2, a5
	li a5, 4
	add a3, a0, a4
	bgt s2, a5, label11
	mv a4, zero
.p2align 2
label9:
	sh2add a5, a4, a3
	li t0, 1
	addiw a4, a4, 1
	sw t0, 0(a5)
	bgt s2, a4, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
	j label223
.p2align 2
label11:
	li a5, 16
	ble s5, a5, label63
	mv a5, zero
.p2align 2
label12:
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 16
	sw t0, 0(a4)
	sw t0, 4(a4)
	sw t0, 8(a4)
	sw t0, 12(a4)
	sw t0, 16(a4)
	sw t0, 20(a4)
	sw t0, 24(a4)
	sw t0, 28(a4)
	sw t0, 32(a4)
	sw t0, 36(a4)
	sw t0, 40(a4)
	sw t0, 44(a4)
	sw t0, 48(a4)
	sw t0, 52(a4)
	sw t0, 56(a4)
	sw t0, 60(a4)
	bgt s4, a5, label12
	mv a4, a5
.p2align 2
label14:
	sh2add t0, a4, a3
	li a5, 1
	addiw a4, a4, 4
	sw a5, 0(t0)
	sw a5, 4(t0)
	sw a5, 8(t0)
	sw a5, 12(t0)
	bgt s5, a4, label14
	sh2add a5, a4, a3
	li t0, 1
	addiw a4, a4, 1
	sw t0, 0(a5)
	bgt s2, a4, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
label225:
	addiw a1, a1, 1
	li a2, 1440000
	mul a3, a1, a2
	add a0, s3, a3
	bgt s2, a1, label41
	j label40
.p2align 2
label63:
	mv a4, zero
	mv t0, a3
	li a5, 1
	li a4, 4
	sw a5, 0(a3)
	sw a5, 4(a3)
	sw a5, 8(a3)
	sw a5, 12(a3)
	bgt s5, a4, label14
	sh2add a5, a4, a3
	li t0, 1
	addiw a4, a4, 1
	sw t0, 0(a5)
	bgt s2, a4, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
	j label225
label6:
	addiw a1, a1, 1
	li a2, 1440000
	mul a3, a1, a2
	add a0, s3, a3
	bgt s2, a1, label41
	j label40
.p2align 2
label130:
	mv a5, t0
	bgt s0, t0, label23
	j label117
.p2align 2
label48:
	addiw a2, a2, 1
	bgt s2, a2, label7
	j label6
