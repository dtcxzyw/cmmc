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
	addi sp, sp, -104
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
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	li a6, 1
	lui a5, 1048224
	li t3, 15
pcrel326:
	auipc a1, %pcrel_hi(x)
	addiw a0, s1, -1
	li a3, 2
	addiw t0, s1, -18
	addiw t1, s1, -3
	mv t6, zero
	li t2, 3
	li a4, 75
	slli t5, a6, 32
	addi s3, a1, %pcrel_lo(pcrel326)
	slli s2, a4, 5
	li a1, 1
	mv t4, s3
	addiw a4, a5, 1792
	sub a2, zero, s2
	addi a5, t5, 1
	sub s4, zero, a4
	bgt s1, zero, label24
	j label5
.p2align 2
label297:
	addiw t6, t6, 1
	add t4, t4, s4
	ble s1, t6, label5
.p2align 2
label24:
	mv t5, t4
	mv a6, zero
	bgt s1, zero, label28
	addiw t6, t6, 1
	add t4, t4, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label185:
	addiw a6, a6, 1
	add t5, t5, s2
	ble s1, a6, label297
.p2align 2
label28:
	ble s1, t2, label132
	ble t1, t3, label136
	mv a7, t5
	mv s5, zero
.p2align 2
label31:
	addiw s5, s5, 16
	sd a5, 0(a7)
	sd a5, 8(a7)
	sd a5, 16(a7)
	sd a5, 24(a7)
	sd a5, 32(a7)
	sd a5, 40(a7)
	sd a5, 48(a7)
	sd a5, 56(a7)
	ble t0, s5, label156
	addi a7, a7, 64
	j label31
.p2align 2
label156:
	mv s6, s5
	ble t1, s5, label293
.p2align 2
label38:
	sh2add a7, s6, t5
	mv s5, s6
	j label39
.p2align 2
label42:
	addi a7, a7, 16
.p2align 2
label39:
	addiw s5, s5, 4
	sw a1, 0(a7)
	sw a1, 4(a7)
	sw a1, 8(a7)
	sw a1, 12(a7)
	bgt t1, s5, label42
	ble s1, s5, label295
.p2align 2
label46:
	sh2add a7, s5, t5
.p2align 2
label47:
	addiw s5, s5, 1
	sw a1, 0(a7)
	ble s1, s5, label185
	addi a7, a7, 4
	j label47
.p2align 2
label293:
	bgt s1, s5, label46
	addiw a6, a6, 1
	add t5, t5, s2
	bgt s1, a6, label28
	addiw t6, t6, 1
	add t4, t4, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label132:
	mv s5, zero
	bgt s1, zero, label46
	addiw a6, a6, 1
	add t5, t5, s2
	bgt s1, a6, label28
	addiw t6, t6, 1
	add t4, t4, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label136:
	mv s6, zero
	mv s5, zero
	bgt t1, zero, label38
	bgt s1, zero, label46
	addiw a6, a6, 1
	add t5, t5, s2
	bgt s1, a6, label28
	addiw t6, t6, 1
	add t4, t4, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label295:
	addiw a6, a6, 1
	add t5, t5, s2
	bgt s1, a6, label28
	addiw t6, t6, 1
	add t4, t4, s4
	bgt s1, t6, label24
label5:
	add t4, s3, s4
	mv s6, a1
	mv a5, a1
	add s5, t4, a4
	add t3, t4, s4
	addiw t5, a1, 1
	bgt a0, a1, label10
	j label23
.p2align 2
label300:
	add t4, t4, s4
	mv s6, t6
	mv a5, t5
	add t3, t4, s4
	add s5, t4, a4
	addiw t5, t5, 1
	ble a0, a5, label23
.p2align 2
label10:
	add a5, t4, s2
	mv t6, a1
	bgt a0, a1, label14
label73:
	add t4, t4, s4
	mv s6, t6
	mv a5, t5
	add t3, t4, s4
	add s5, t4, a4
	addiw t5, t5, 1
	bgt a0, a5, label10
	j label23
.p2align 2
label20:
	addi a6, a6, 4
.p2align 2
label17:
	sh2add s7, a7, t0
	lw s8, 0(a6)
	sh2add s9, a7, t2
	lw s10, 0(s7)
	lw s7, 0(s9)
	addw s6, s8, s10
	sh2add s10, a7, t1
	addw s8, s6, s7
	lw s9, 0(s10)
	sh2add s6, a7, a5
	addw s7, s8, s9
	addiw a7, a7, 1
	lw s10, -4(s6)
	lw s9, 4(s6)
	addw s8, s7, s10
	addw s11, s8, s9
	divw s7, s11, s0
	sw s7, 0(s6)
	bgt a0, a7, label20
	add a5, a5, s2
	ble a0, t6, label300
.p2align 2
label14:
	mul a7, t6, s2
	add t1, a5, s2
	add t2, a5, a2
	addiw t6, t6, 1
	add a6, s5, a7
	add t0, t3, a7
	blt a0, a3, label15
	addi a6, a6, 4
	mv a7, a1
	j label17
.p2align 2
label15:
	add a5, a5, s2
	bgt a0, t6, label14
	j label73
label23:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	srliw a3, s1, 31
	add a1, s1, a3
	sraiw a2, a1, 1
	mul a4, a2, s2
	mul a0, a2, s4
	add a3, s3, a0
	mv a0, s1
	add a1, a3, a4
	jal putarray
	mv a0, s1
	addiw a3, s6, -1
	mul a2, a3, s2
	add a1, s5, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
