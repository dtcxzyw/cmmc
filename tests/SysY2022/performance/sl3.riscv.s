.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	addiw a1, s1, -1
pcrel250:
	auipc a0, %pcrel_hi(x)
	addiw a5, s1, -4
	li a2, -4800
	addiw a4, s1, -20
	li s2, 2400
	mv t3, zero
	li t0, 4
	li t1, 16
	li s4, 1440000
	addi s3, a0, %pcrel_lo(pcrel250)
	sub a3, zero, s4
	li a0, 1
	mv t4, zero
	mv t2, s3
	bgt s1, zero, label41
label40:
	mv s6, a0
	mv a4, a0
	j label17
.p2align 2
label41:
	mv t4, zero
	bgt s1, zero, label7
	j label6
.p2align 2
label237:
	addiw t3, t3, 1
	mul t4, t3, s4
	add t2, s3, t4
	bgt s1, t3, label41
	j label40
label17:
	mul a5, a4, s4
	addiw t6, a4, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	bgt a1, a4, label106
	j label20
.p2align 2
label7:
	ble s1, zero, label48
	mul t6, t4, s2
	add t5, t2, t6
	bgt s1, t0, label11
	mv t6, zero
.p2align 2
label9:
	sh2add a6, t6, t5
	addiw t6, t6, 1
	sw a0, 0(a6)
	bgt s1, t6, label9
	addiw t4, t4, 1
	bgt s1, t4, label7
	j label237
.p2align 2
label11:
	ble a5, t1, label63
	mv a6, zero
.p2align 2
label12:
	sh2add t6, a6, t5
	sw a0, 0(t6)
	addiw a6, a6, 16
	sw a0, 4(t6)
	sw a0, 8(t6)
	sw a0, 12(t6)
	sw a0, 16(t6)
	sw a0, 20(t6)
	sw a0, 24(t6)
	sw a0, 28(t6)
	sw a0, 32(t6)
	sw a0, 36(t6)
	sw a0, 40(t6)
	sw a0, 44(t6)
	sw a0, 48(t6)
	sw a0, 52(t6)
	sw a0, 56(t6)
	sw a0, 60(t6)
	bgt a4, a6, label12
.p2align 2
label14:
	sh2add t6, a6, t5
	addiw a6, a6, 4
	sw a0, 0(t6)
	sw a0, 4(t6)
	sw a0, 8(t6)
	sw a0, 12(t6)
	bgt a5, a6, label14
	mv t6, a6
	sh2add a6, a6, t5
	addiw t6, t6, 1
	sw a0, 0(a6)
	bgt s1, t6, label9
	addiw t4, t4, 1
	bgt s1, t4, label7
.p2align 2
label239:
	addiw t3, t3, 1
	mul t4, t3, s4
	add t2, s3, t4
	bgt s1, t3, label41
	j label40
.p2align 2
label106:
	mv s6, a0
	bgt a1, a0, label23
	j label117
label20:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	srliw a2, s1, 31
	add a3, s1, a2
	sraiw a0, a3, 1
	mul a3, a0, s2
	mul a1, a0, s4
	mv a0, s1
	add a2, s3, a1
	add a1, a2, a3
	jal putarray
	addiw a0, s6, -1
	mul a2, a0, s2
	mv a0, s1
	add a1, s5, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	addi sp, sp, 80
	ret
label117:
	mv a4, t6
	mul a5, t6, s4
	addiw t6, t6, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	bgt a1, a4, label106
	j label20
.p2align 2
label23:
	addiw a6, s6, 1
	mul t2, s6, s2
	mul t0, a6, s2
	add t1, s5, t2
	add a4, t4, t0
	add t0, t5, t2
	add a5, a4, a2
	add t2, t4, t2
	ble a1, a0, label130
	mv t3, a0
.p2align 2
label24:
	sh2add s6, t3, t1
	sh2add s8, t3, t0
	lw a7, 0(s6)
	sh2add s6, t3, a5
	lw s7, 0(s8)
	sh2add s8, t3, a4
	addw a7, a7, s7
	lw s7, 0(s6)
	addw a7, a7, s7
	lw s7, 0(s8)
	addw s6, a7, s7
	sh2add a7, t3, t2
	addiw t3, t3, 1
	lw s7, -4(a7)
	lw s8, 4(a7)
	addw s6, s6, s7
	addw s7, s6, s8
	divw s6, s7, s0
	sw s6, 0(a7)
	bgt a1, t3, label24
	mv s6, a6
	bgt a1, a6, label23
	mv a4, t6
	mul a5, t6, s4
	addiw t6, t6, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	bgt a1, a4, label106
	j label20
.p2align 2
label63:
	mv a6, zero
	mv t6, t5
	li a6, 4
	sw a0, 0(t5)
	sw a0, 4(t5)
	sw a0, 8(t5)
	sw a0, 12(t5)
	bgt a5, a6, label14
	mv t6, a6
	sh2add a6, a6, t5
	addiw t6, t6, 1
	sw a0, 0(a6)
	bgt s1, t6, label9
	addiw t4, t4, 1
	bgt s1, t4, label7
	j label239
label6:
	addiw t3, t3, 1
	mul t4, t3, s4
	add t2, s3, t4
	bgt s1, t3, label41
	j label40
.p2align 2
label48:
	addiw t4, t4, 1
	bgt s1, t4, label7
	j label6
.p2align 2
label130:
	mv s6, a6
	bgt a1, a6, label23
	j label117
