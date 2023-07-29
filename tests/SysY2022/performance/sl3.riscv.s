.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	864000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd s1, 88(sp)
	sd s6, 80(sp)
	sd s3, 72(sp)
	sd s5, 64(sp)
	sd s0, 56(sp)
	sd s2, 48(sp)
	sd s4, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s2, a0, -5
	addiw s5, a0, -4
	addiw s3, a0, -1
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	mv a0, zero
pcrel302:
	auipc a1, %pcrel_hi(x)
	addi s4, a1, %pcrel_lo(pcrel302)
	li a3, 1440000
	mv a2, zero
	mv a1, s4
	bgt s1, zero, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
label17:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s4
	jal putarray
	li s0, 2400
	srliw a2, s1, 31
	add a1, s1, a2
	li a2, 1440000
	sraiw a0, a1, 1
	mul a3, a0, a2
	mul a2, a0, s0
	add a1, s4, a3
	mv a0, s1
	add a1, a1, a2
	jal putarray
	addiw a0, s6, -1
	mul a2, a0, s0
	mv a0, s1
	add a1, s5, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s0, 56(sp)
	ld s5, 64(sp)
	ld s3, 72(sp)
	ld s6, 80(sp)
	ld s1, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label20:
	addiw a3, t0, 1
	li a4, 1
	bgt s3, a4, label21
	mv t0, a3
	bgt s3, a3, label20
	mv s6, a3
	mv a3, a0
	li a2, 1440000
	sub a0, zero, a2
	mul a4, a3, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, a3, 1
	bgt s3, a3, label81
	j label17
.p2align 2
label21:
	li t1, 2400
	li t3, -4800
	mul t2, t0, t1
	mul a5, a3, t1
	add t0, a1, t2
	add t1, s5, t2
	add a4, a1, a5
	add t2, a2, t2
	add a5, a4, t3
	li t3, 5
	bgt s3, t3, label109
	li t4, 1
	j label22
.p2align 2
label109:
	li t3, 1
	j label24
.p2align 2
label22:
	sh2add t6, t4, t1
	sh2add t5, t4, t2
	lw t3, 0(t6)
	sh2add a6, t4, a4
	lw t6, 0(t5)
	sh2add t5, t4, a5
	addw t3, t3, t6
	lw t6, 0(t5)
	addw t3, t3, t6
	lw t6, 0(a6)
	addw t5, t3, t6
	sh2add t3, t4, t0
	addiw t4, t4, 1
	lw t6, -4(t3)
	lw a6, 4(t3)
	addw t5, t5, t6
	addw t6, t5, a6
	divw t5, t6, s0
	sw t5, 0(t3)
	bgt s3, t4, label22
	mv t0, a3
	bgt s3, a3, label20
	mv s6, a3
	mv a3, a0
	li a2, 1440000
	sub a0, zero, a2
	mul a4, a3, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, a3, 1
	bgt s3, a3, label81
	j label17
.p2align 2
label24:
	sh2add t5, t3, t1
	sh2add t6, t3, t2
	lw t4, 0(t5)
	sh2add a6, t3, a5
	lw a7, 0(t6)
	addw t4, t4, a7
	lw a7, 0(a6)
	addw t4, t4, a7
	sh2add a7, t3, a4
	lw s7, 0(a7)
	addw s6, t4, s7
	sh2add t4, t3, t0
	lw s7, -4(t4)
	lw s8, 4(t4)
	addw s6, s6, s7
	addw s7, s6, s8
	divw s9, s7, s0
	sw s9, 0(t4)
	lw s6, 4(t5)
	lw s8, 4(t6)
	lw s9, 4(a6)
	addw s7, s6, s8
	lw s8, 4(a7)
	addw s6, s7, s9
	lw s9, 0(t4)
	addw s7, s6, s8
	lw s10, 8(t4)
	addw s6, s7, s9
	addw s7, s6, s10
	divw s8, s7, s0
	sw s8, 4(t4)
	lw s6, 8(t5)
	lw s8, 8(t6)
	lw s9, 8(a6)
	addw s7, s6, s8
	lw s8, 8(a7)
	addw s6, s7, s9
	lw s9, 4(t4)
	addw s7, s6, s8
	lw s8, 12(t4)
	addw s6, s7, s9
	addw s7, s6, s8
	divw s6, s7, s0
	sw s6, 8(t4)
	lw t5, 12(t5)
	lw s6, 12(t6)
	lw a6, 12(a6)
	addw t6, t5, s6
	addw t5, t6, a6
	lw a6, 12(a7)
	lw a7, 8(t4)
	addw t6, t5, a6
	addw t5, t6, a7
	lw t6, 16(t4)
	addw a6, t5, t6
	divw t5, a6, s0
	sw t5, 12(t4)
	addiw t4, t3, 4
	ble s2, t4, label22
	mv t3, t4
	j label24
.p2align 2
label6:
	bgt s1, zero, label8
	addiw a2, a2, 1
	bgt s1, a2, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
.p2align 2
label8:
	li a5, 2400
	li t0, 4
	mul a4, a2, a5
	add a3, a1, a4
	bgt s1, t0, label54
	mv a5, zero
	mv t0, a3
	li a4, 1
	li a5, 1
	sw a4, 0(a3)
	bgt s1, a5, label9
	addiw a2, a2, 1
	bgt s1, a2, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
.p2align 2
label9:
	sh2add t0, a5, a3
	li a4, 1
	addiw a5, a5, 1
	sw a4, 0(t0)
	bgt s1, a5, label9
	addiw a2, a2, 1
	bgt s1, a2, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
.p2align 2
label11:
	sh2add a5, a4, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	addiw a5, a4, 4
	bgt s5, a5, label71
	sh2add t0, a5, a3
	li a4, 1
	addiw a5, a5, 1
	sw a4, 0(t0)
	bgt s1, a5, label9
	addiw a2, a2, 1
	bgt s1, a2, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
.p2align 2
label71:
	mv a4, a5
	j label11
label81:
	li t0, 1
	bgt s3, t0, label20
	mv s6, t0
	mv a3, a0
	li a2, 1440000
	sub a0, zero, a2
	mul a4, a3, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, a3, 1
	bgt s3, a3, label81
	j label17
.p2align 2
label54:
	mv a4, zero
	mv a5, a3
	li t0, 1
	sw t0, 0(a3)
	sw t0, 4(a3)
	sw t0, 8(a3)
	sw t0, 12(a3)
	li a5, 4
	bgt s5, a5, label71
	sh2add t0, a5, a3
	li a4, 1
	addiw a5, a5, 1
	sw a4, 0(t0)
	bgt s1, a5, label9
	addiw a2, a2, 1
	bgt s1, a2, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
.p2align 2
label41:
	mv a2, zero
	bgt s1, zero, label6
	addiw a0, a0, 1
	li a3, 1440000
	mul a2, a0, a3
	add a1, s4, a2
	bgt s1, a0, label41
	li s6, 1
	mv a3, s6
	li a2, 1440000
	sub a0, zero, a2
	mul a4, s6, a2
	add a1, s4, a4
	add a2, a1, a2
	add s5, a1, a0
	addiw a0, s6, 1
	bgt s3, s6, label81
	j label17
