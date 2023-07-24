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
	mv a0, zero
pcrel274:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel274)
	li a2, 1440000
	mv a3, zero
	mv a1, s3
	bgt s1, zero, label38
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s2, s5, label75
	j label18
label38:
.p2align 2
	mv a2, zero
	bgt s1, zero, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s1, a0, label38
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	ble s2, s5, label18
label75:
	li t0, 1
	j label19
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
label19:
.p2align 2
	bgt s2, t0, label21
	mv s5, t0
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s2, a3, label75
	j label18
label21:
.p2align 2
	addiw a3, t0, 1
	li t1, 2400
	li t3, -4800
	mul t2, t0, t1
	mul a5, a3, t1
	add t0, a2, t2
	add t1, s4, t2
	add a4, a1, a5
	add t2, a1, t2
	add a5, a4, t3
	li t3, 1
	bgt s2, t3, label100
	mv t0, a3
	bgt s2, a3, label21
	mv s5, a3
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s2, a3, label75
	j label18
label100:
.p2align 2
	li t4, 1
	j label22
label7:
.p2align 2
	bgt s1, zero, label8
	addiw a2, a2, 1
	bgt s1, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s1, a0, label38
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s2, s5, label75
	j label18
label9:
.p2align 2
	addiw a4, a5, 4
	bgt s1, a4, label11
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s1, a5, label12
	addiw a2, a2, 1
	bgt s1, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s1, a0, label38
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s2, s5, label75
	j label18
label11:
.p2align 2
	sh2add a5, a5, a3
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	j label9
label12:
.p2align 2
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s1, a5, label12
	addiw a2, a2, 1
	bgt s1, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s1, a0, label38
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s2, s5, label75
	j label18
label22:
.p2align 2
	addiw t3, t4, 4
	bgt s2, t3, label26
label24:
.p2align 2
	sh2add t5, t4, t1
	sh2add t6, t4, t0
	lw t3, 0(t5)
	lw t5, 0(t6)
	sh2add t6, t4, a5
	addw t3, t3, t5
	lw t5, 0(t6)
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
	bgt s2, t4, label24
	mv t0, a3
	bgt s2, a3, label21
	mv s5, a3
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s2, a3, label75
	j label18
label26:
.p2align 2
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
	lw s8, 4(t6)
	lw s7, 4(a6)
	addw s6, s5, s8
	lw s8, 4(a7)
	addw s5, s6, s7
	lw s7, 0(t4)
	addw s6, s5, s8
	addw s5, s6, s7
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
	addw t6, t5, s5
	lw t5, 12(a6)
	addw a6, t6, t5
	lw t6, 12(a7)
	addw t5, a6, t6
	lw a6, 8(t4)
	lw a7, 16(t4)
	addw t6, t5, a6
	addw t5, t6, a7
	divw t6, t5, s0
	sw t6, 12(t4)
	mv t4, t3
	j label22
label8:
.p2align 2
	li a4, 2400
	mv a5, zero
	mul t0, a2, a4
	add a3, a1, t0
	j label9
