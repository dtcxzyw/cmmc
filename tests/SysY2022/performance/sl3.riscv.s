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
	sd s7, 64(sp)
	sd s8, 72(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	addiw a1, s1, -1
pcrel265:
	auipc a0, %pcrel_hi(x)
	li a4, 4294967297
	addiw t0, s1, -4
	addiw a5, s1, -20
	li t3, 16
	li s2, 2400
	mv t5, zero
	li t2, 4
	li a2, -4800
	li s4, 1440000
	addi s3, a0, %pcrel_lo(pcrel265)
	sub a3, zero, s4
	li a0, 1
	mv t1, zero
	mv t4, s3
	bgt s1, zero, label36
label35:
	mv s6, a0
	mv a4, a0
	j label16
.p2align 2
label36:
	mv t6, zero
	bgt s1, zero, label7
	j label6
.p2align 2
label242:
	addiw t5, t5, 1
	mul t1, t5, s4
	add t4, s3, t1
	bgt s1, t5, label36
	j label35
label16:
	mul a5, a4, s4
	addiw t6, a4, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	ble a1, a4, label19
.p2align 2
label100:
	mv s6, a0
	bgt a1, a0, label22
	j label111
label19:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	srliw a2, s1, 31
	add a1, s1, a2
	sraiw a0, a1, 1
	mul a3, a0, s2
	mul a4, a0, s4
	mv a0, s1
	add a2, s3, a4
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
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label111:
	mv a4, t6
	mul a5, t6, s4
	addiw t6, t6, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	bgt a1, a4, label100
	j label19
.p2align 2
label22:
	addiw a6, s6, 1
	mul t2, s6, s2
	mul t0, a6, s2
	add t1, s5, t2
	add a4, t4, t0
	add t0, t5, t2
	add a5, a4, a2
	add t2, t4, t2
	ble a1, a0, label125
	mv t3, a0
.p2align 2
label23:
	sh2add s6, t3, t1
	sh2add s7, t3, t0
	lw a7, 0(s6)
	lw s6, 0(s7)
	sh2add s7, t3, a5
	addw a7, a7, s6
	lw s6, 0(s7)
	sh2add s7, t3, a4
	addw a7, a7, s6
	lw s8, 0(s7)
	addw s6, a7, s8
	sh2add a7, t3, t2
	addiw t3, t3, 1
	lw s7, -4(a7)
	lw s8, 4(a7)
	addw s6, s6, s7
	addw s7, s6, s8
	divw s6, s7, s0
	sw s6, 0(a7)
	bgt a1, t3, label23
	mv s6, a6
	bgt a1, a6, label22
	mv a4, t6
	mul a5, t6, s4
	addiw t6, t6, 1
	add t4, s3, a5
	add t5, t4, s4
	add s5, t4, a3
	bgt a1, a4, label100
	j label19
.p2align 2
label7:
	mul a6, t6, s2
	add t1, t4, a6
	bgt s1, t2, label11
	mv a6, zero
.p2align 2
label8:
	sh2add a7, a6, t1
	addiw a6, a6, 1
	sw a0, 0(a7)
	bgt s1, a6, label8
	addiw t6, t6, 1
	bgt s1, t6, label7
	j label242
.p2align 2
label11:
	ble t0, t3, label58
	mv a6, zero
	j label14
.p2align 2
label12:
	sh2add a7, a6, t1
	addiw a6, a6, 4
	sw a0, 0(a7)
	sw a0, 4(a7)
	sw a0, 8(a7)
	sw a0, 12(a7)
	bgt t0, a6, label12
	sh2add a7, a6, t1
	addiw a6, a6, 1
	sw a0, 0(a7)
	bgt s1, a6, label8
	j label244
.p2align 2
label14:
	sh2add a7, a6, t1
	addiw a6, a6, 16
	sd a4, 0(a7)
	sd a4, 8(a7)
	sd a4, 16(a7)
	sd a4, 24(a7)
	sd a4, 32(a7)
	sd a4, 40(a7)
	sd a4, 48(a7)
	sd a4, 56(a7)
	bgt a5, a6, label14
	sh2add a7, a6, t1
	addiw a6, a6, 4
	sw a0, 0(a7)
	sw a0, 4(a7)
	sw a0, 8(a7)
	sw a0, 12(a7)
	bgt t0, a6, label12
	sh2add a7, a6, t1
	addiw a6, a6, 1
	sw a0, 0(a7)
	bgt s1, a6, label8
	addiw t6, t6, 1
	bgt s1, t6, label7
	addiw t5, t5, 1
	mul t1, t5, s4
	add t4, s3, t1
	bgt s1, t5, label36
	j label35
.p2align 2
label58:
	mv a6, zero
	mv a7, t1
	li a6, 4
	sw a0, 0(t1)
	sw a0, 4(t1)
	sw a0, 8(t1)
	sw a0, 12(t1)
	bgt t0, a6, label12
	sh2add a7, a6, t1
	addiw a6, a6, 1
	sw a0, 0(a7)
	bgt s1, a6, label8
	addiw t6, t6, 1
	bgt s1, t6, label7
	j label252
.p2align 2
label244:
	addiw t6, t6, 1
	bgt s1, t6, label7
.p2align 2
label252:
	addiw t5, t5, 1
	mul t1, t5, s4
	add t4, s3, t1
	bgt s1, t5, label36
	j label35
label6:
	addiw t5, t5, 1
	mul t1, t5, s4
	add t4, s3, t1
	bgt s1, t5, label36
	j label35
.p2align 2
label125:
	mv s6, a6
	bgt a1, a6, label22
	j label111
