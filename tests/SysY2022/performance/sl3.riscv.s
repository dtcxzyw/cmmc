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
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s7, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	jal getint
	addiw s6, a0, -20
	addiw s7, a0, -4
	addiw s0, a0, -1
	mv s2, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
	li s5, 1440000
	li a4, 16
	li a3, 4
	li s3, 2400
	mv t0, zero
	li a0, 1
pcrel250:
	auipc a1, %pcrel_hi(x)
	sub a2, zero, s5
	addi s4, a1, %pcrel_lo(pcrel250)
	li a1, -4800
	mv t1, zero
	mv a5, s4
	bgt s2, zero, label41
label40:
	mv s7, a0
	mv a3, a0
	j label17
.p2align 2
label41:
	mv t1, zero
	bgt s2, zero, label7
	j label6
.p2align 2
label237:
	addiw t0, t0, 1
	mul t1, t0, s5
	add a5, s4, t1
	bgt s2, t0, label41
	j label40
label17:
	mul a4, a3, s5
	addiw t5, a3, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label106
	j label20
.p2align 2
label7:
	ble s2, zero, label48
	mul t3, t1, s3
	add t2, a5, t3
	bgt s2, a3, label11
	mv t3, zero
.p2align 2
label9:
	sh2add t4, t3, t2
	addiw t3, t3, 1
	sw a0, 0(t4)
	bgt s2, t3, label9
	addiw t1, t1, 1
	bgt s2, t1, label7
	j label237
.p2align 2
label11:
	ble s7, a4, label63
	mv t4, zero
.p2align 2
label12:
	sh2add t3, t4, t2
	sw a0, 0(t3)
	addiw t4, t4, 16
	sw a0, 4(t3)
	sw a0, 8(t3)
	sw a0, 12(t3)
	sw a0, 16(t3)
	sw a0, 20(t3)
	sw a0, 24(t3)
	sw a0, 28(t3)
	sw a0, 32(t3)
	sw a0, 36(t3)
	sw a0, 40(t3)
	sw a0, 44(t3)
	sw a0, 48(t3)
	sw a0, 52(t3)
	sw a0, 56(t3)
	sw a0, 60(t3)
	bgt s6, t4, label12
.p2align 2
label14:
	sh2add t3, t4, t2
	addiw t4, t4, 4
	sw a0, 0(t3)
	sw a0, 4(t3)
	sw a0, 8(t3)
	sw a0, 12(t3)
	bgt s7, t4, label14
	mv t3, t4
	sh2add t4, t4, t2
	addiw t3, t3, 1
	sw a0, 0(t4)
	bgt s2, t3, label9
	addiw t1, t1, 1
	bgt s2, t1, label7
.p2align 2
label239:
	addiw t0, t0, 1
	mul t1, t0, s5
	add a5, s4, t1
	bgt s2, t0, label41
	j label40
.p2align 2
label106:
	mv s7, a0
	bgt s0, a0, label23
	j label117
label20:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s4
	jal putarray
	srliw a2, s2, 31
	add a3, s2, a2
	sraiw a0, a3, 1
	mul a3, a0, s3
	mul a1, a0, s5
	mv a0, s2
	add a2, s4, a1
	add a1, a2, a3
	jal putarray
	addiw a0, s7, -1
	mul a2, a0, s3
	mv a0, s2
	add a1, s6, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label117:
	mv a3, t5
	mul a4, t5, s5
	addiw t5, t5, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label106
	j label20
.p2align 2
label23:
	addiw t6, s7, 1
	mul t1, s7, s3
	mul a5, t6, s3
	add t0, s6, t1
	add a3, t3, a5
	add a5, t4, t1
	add a4, a3, a1
	add t1, t3, t1
	ble s0, a0, label130
	mv t2, a0
.p2align 2
label24:
	sh2add a7, t2, t0
	lw a6, 0(a7)
	sh2add a7, t2, a5
	lw s7, 0(a7)
	sh2add a7, t2, a4
	addw a6, a6, s7
	lw s7, 0(a7)
	sh2add a7, t2, a3
	addw a6, a6, s7
	lw s7, 0(a7)
	addw a7, a6, s7
	sh2add a6, t2, t1
	addiw t2, t2, 1
	lw s7, -4(a6)
	lw s8, 4(a6)
	addw a7, a7, s7
	addw a7, a7, s8
	divw s7, a7, s1
	sw s7, 0(a6)
	bgt s0, t2, label24
	mv s7, t6
	bgt s0, t6, label23
	mv a3, t5
	mul a4, t5, s5
	addiw t5, t5, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label106
	j label20
.p2align 2
label63:
	mv t4, zero
	mv t3, t2
	li t4, 4
	sw a0, 0(t2)
	sw a0, 4(t2)
	sw a0, 8(t2)
	sw a0, 12(t2)
	bgt s7, t4, label14
	mv t3, t4
	sh2add t4, t4, t2
	addiw t3, t3, 1
	sw a0, 0(t4)
	bgt s2, t3, label9
	addiw t1, t1, 1
	bgt s2, t1, label7
	j label239
label6:
	addiw t0, t0, 1
	mul t1, t0, s5
	add a5, s4, t1
	bgt s2, t0, label41
	j label40
.p2align 2
label48:
	addiw t1, t1, 1
	bgt s2, t1, label7
	j label6
.p2align 2
label130:
	mv s7, t6
	bgt s0, t6, label23
	j label117
