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
	addi sp, sp, -88
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
	sd s9, 80(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	li t6, 1
	addiw a0, s1, -1
	addiw t0, s1, -4
	li t1, 4
	addiw a5, s1, -20
pcrel309:
	auipc a1, %pcrel_hi(x)
	mv t5, zero
	li t2, 16
	li a3, -75
	li a4, 75
	slli t3, t6, 32
	addi s3, a1, %pcrel_lo(pcrel309)
	slli a2, a3, 6
	slli s2, a4, 5
	li a1, 1
	mv t4, s3
	lui a4, 1048224
	addiw a3, a4, 1792
	addi a4, t3, 1
	sub s4, zero, a3
	bgt s1, zero, label24
label5:
	add t2, s3, s4
	mv s6, a1
	mv a4, a1
	add s5, t2, a3
	add a5, t2, s4
	addiw t3, a1, 1
	bgt a0, a1, label10
	j label23
.p2align 2
label24:
	mv t3, t4
	mv t6, zero
	bgt s1, zero, label28
	j label126
.p2align 2
label280:
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label28:
	bgt s1, t1, label34
	j label130
.p2align 2
label32:
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label28
	j label280
.p2align 2
label34:
	ble t0, t2, label35
	mv a6, t3
	mv a7, zero
.p2align 2
label42:
	sd a4, 0(a6)
	addiw a7, a7, 16
	sd a4, 8(a6)
	sd a4, 16(a6)
	sd a4, 24(a6)
	sd a4, 32(a6)
	sd a4, 40(a6)
	sd a4, 48(a6)
	sd a4, 56(a6)
	ble a5, a7, label173
	addi a6, a6, 64
	j label42
.p2align 2
label36:
	sw a1, 0(a6)
	addiw a7, a7, 4
	sw a1, 4(a6)
	sw a1, 8(a6)
	sw a1, 12(a6)
	ble t0, a7, label150
.p2align 2
label39:
	addi a6, a6, 16
	j label36
.p2align 2
label173:
	sh2add a6, a7, t3
	sw a1, 0(a6)
	addiw a7, a7, 4
	sw a1, 4(a6)
	sw a1, 8(a6)
	sw a1, 12(a6)
	bgt t0, a7, label39
	sh2add a6, a7, t3
	sw a1, 0(a6)
	addiw a7, a7, 1
	bgt s1, a7, label33
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label28
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label29:
	sw a1, 0(a6)
	addiw a7, a7, 1
	ble s1, a7, label32
.p2align 2
label33:
	addi a6, a6, 4
	j label29
.p2align 2
label150:
	sh2add a6, a7, t3
	sw a1, 0(a6)
	addiw a7, a7, 1
	bgt s1, a7, label33
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label28
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label35:
	mv a6, t3
	mv a7, zero
	j label36
.p2align 2
label10:
	add a4, a5, s2
	mv s6, a1
	bgt a0, a1, label14
	j label70
.p2align 2
label277:
	add t2, t2, s4
	mv a4, t3
	add s5, t2, a3
	add a5, t2, s4
	addiw t3, t3, 1
	bgt a0, a4, label10
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
	addiw a2, s6, -1
	mul a3, a2, s2
	add a1, s5, a3
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
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label14:
	addiw t4, s6, 1
	mul t6, s6, s2
	mul t1, t4, s2
	add t5, s5, t6
	add a5, t2, t1
	add t1, t2, t6
	add t0, a5, a2
	ble a0, a1, label82
	addi t5, t5, 4
	mv t6, a1
.p2align 2
label16:
	lw a7, 0(t5)
	sh2add s6, t6, a4
	sh2add s8, t6, t0
	lw s7, 0(s6)
	addw a6, a7, s7
	sh2add s7, t6, a5
	lw a7, 0(s8)
	lw s8, 0(s7)
	addw s6, a6, a7
	sh2add a6, t6, t1
	addw a7, s6, s8
	addiw t6, t6, 1
	lw s9, -4(a6)
	lw s7, 4(a6)
	addw s6, a7, s9
	addw s8, s6, s7
	divw a7, s8, s0
	sw a7, 0(a6)
	bgt a0, t6, label20
	add a4, a4, s2
	mv s6, t4
	bgt a0, t4, label14
	j label277
.p2align 2
label20:
	addi t5, t5, 4
	j label16
label70:
	add t2, t2, s4
	mv a4, t3
	add s5, t2, a3
	add a5, t2, s4
	addiw t3, t3, 1
	bgt a0, a4, label10
	j label23
.p2align 2
label82:
	add a4, a4, s2
	mv s6, t4
	bgt a0, t4, label14
	j label70
label126:
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label130:
	mv a6, t3
	mv a7, zero
	j label29
