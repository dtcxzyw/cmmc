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
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	li a6, 1
	lui a5, 1048224
	addiw a0, s1, -1
	addiw t1, s1, -4
pcrel307:
	auipc a1, %pcrel_hi(x)
	li t3, 16
	mv t6, zero
	addiw t0, s1, -20
	li a4, 75
	li t2, 4
	li a3, 2
	slli t4, a6, 32
	addi s3, a1, %pcrel_lo(pcrel307)
	slli s2, a4, 5
	li a1, 1
	mv t5, s3
	addiw a4, a5, 1792
	sub a2, zero, s2
	addi a5, t4, 1
	sub s4, zero, a4
	bgt s1, zero, label24
	j label5
.p2align 2
label131:
	mv a7, t4
	li s5, 1
	sw a1, 0(t4)
	bgt s1, s5, label48
	addiw a6, a6, 1
	add t4, t4, s2
	bgt s1, a6, label29
.p2align 2
label283:
	addiw t6, t6, 1
	add t5, t5, s4
	ble s1, t6, label5
.p2align 2
label24:
	mv t4, t5
	mv a6, zero
	bgt s1, zero, label29
	addiw t6, t6, 1
	add t5, t5, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label36:
	addi a7, a7, 64
.p2align 2
label33:
	sd a5, 0(a7)
	addiw s5, s5, 16
	sd a5, 8(a7)
	sd a5, 16(a7)
	sd a5, 24(a7)
	sd a5, 32(a7)
	sd a5, 40(a7)
	sd a5, 48(a7)
	sd a5, 56(a7)
	bgt t0, s5, label36
	sh2add a7, s5, t4
	addiw s5, s5, 4
	sw a1, 0(a7)
	sw a1, 4(a7)
	sw a1, 8(a7)
	sw a1, 12(a7)
	ble t1, s5, label288
.p2align 2
label42:
	addi a7, a7, 16
	sw a1, 0(a7)
	addiw s5, s5, 4
	sw a1, 4(a7)
	sw a1, 8(a7)
	sw a1, 12(a7)
	bgt t1, s5, label42
	sh2add a7, s5, t4
	addiw s5, s5, 1
	sw a1, 0(a7)
	ble s1, s5, label282
.p2align 2
label48:
	addi a7, a7, 4
	sw a1, 0(a7)
	addiw s5, s5, 1
	bgt s1, s5, label48
	addiw a6, a6, 1
	add t4, t4, s2
	ble s1, a6, label283
.p2align 2
label29:
	ble s1, t2, label131
	ble t1, t3, label31
	mv a7, t4
	mv s5, zero
	j label33
.p2align 2
label31:
	mv a7, t4
	li s5, 4
	sw a1, 0(t4)
	sw a1, 4(t4)
	sw a1, 8(t4)
	sw a1, 12(t4)
	bgt t1, s5, label42
	sh2add a7, s5, t4
	addiw s5, s5, 1
	sw a1, 0(a7)
	bgt s1, s5, label48
	addiw a6, a6, 1
	add t4, t4, s2
	bgt s1, a6, label29
	j label289
.p2align 2
label288:
	sh2add a7, s5, t4
	addiw s5, s5, 1
	sw a1, 0(a7)
	bgt s1, s5, label48
	addiw a6, a6, 1
	add t4, t4, s2
	bgt s1, a6, label29
	addiw t6, t6, 1
	add t5, t5, s4
	bgt s1, t6, label24
	j label5
.p2align 2
label282:
	addiw a6, a6, 1
	add t4, t4, s2
	bgt s1, a6, label29
.p2align 2
label289:
	addiw t6, t6, 1
	add t5, t5, s4
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
label285:
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
	bgt a0, a1, label15
label14:
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
	lw s7, 0(a6)
	sh2add s9, a7, t2
	sh2add s11, a7, t1
	lw s8, 0(s9)
	sh2add s9, a7, t0
	lw s10, 0(s11)
	addw s6, s7, s8
	lw s11, 0(s9)
	addw s8, s6, s10
	sh2add s6, a7, a5
	addw s7, s8, s11
	addiw a7, a7, 1
	lw s9, -4(s6)
	lw s11, 4(s6)
	addw s8, s7, s9
	addw s10, s8, s11
	divw s7, s10, s0
	sw s7, 0(s6)
	bgt a0, a7, label20
	add a5, a5, s2
	ble a0, t6, label285
.p2align 2
label15:
	add t0, a5, s2
	add t1, a5, a2
	mul a7, t6, s2
	addiw t6, t6, 1
	add a6, s5, a7
	add t2, t3, a7
	blt a0, a3, label82
	addi a6, a6, 4
	mv a7, a1
	j label17
.p2align 2
label82:
	add a5, a5, s2
	bgt a0, t6, label15
	j label14
label23:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	srliw a0, s1, 31
	add a1, s1, a0
	mv a0, s1
	sraiw a2, a1, 1
	mul a4, a2, s2
	mul a5, a2, s4
	add a3, s3, a5
	add a1, a3, a4
	jal putarray
	mv a0, s1
	addiw a2, s6, -1
	mul a3, a2, s2
	add a1, s5, a3
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
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
