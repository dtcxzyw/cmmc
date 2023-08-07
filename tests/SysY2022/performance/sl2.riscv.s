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
	addi sp, sp, -96
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
	sd s10, 88(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	lui a4, 1048224
	addiw a0, s1, -1
	addiw t0, s1, -4
	addiw a5, s1, -20
	li t1, 4
pcrel306:
	auipc a1, %pcrel_hi(x)
	mv t5, zero
	li t6, 1
	li a3, 75
	li t2, 16
	addi s3, a1, %pcrel_lo(pcrel306)
	slli t3, t6, 32
	slli s2, a3, 5
	li a1, 1
	mv t4, s3
	addiw a3, a4, 1792
	sub a2, zero, s2
	addi a4, t3, 1
	sub s4, zero, a3
	bgt s1, zero, label24
label5:
	add t3, s3, s4
	mv s6, a1
	mv a4, a1
	add s5, t3, a3
	add t2, t3, s4
	addiw t4, a1, 1
	bgt a0, a1, label10
	j label23
.p2align 2
label24:
	mv t3, t4
	mv t6, zero
	bgt s1, zero, label29
	j label28
.p2align 2
label280:
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label29:
	bgt s1, t1, label36
	j label30
.p2align 2
label34:
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label29
	j label280
.p2align 2
label36:
	ble t0, t2, label143
	mv a6, t3
	mv a7, zero
.p2align 2
label44:
	sd a4, 0(a6)
	addiw a7, a7, 16
	sd a4, 8(a6)
	sd a4, 16(a6)
	sd a4, 24(a6)
	sd a4, 32(a6)
	sd a4, 40(a6)
	sd a4, 48(a6)
	sd a4, 56(a6)
	ble a5, a7, label174
	addi a6, a6, 64
	j label44
.p2align 2
label37:
	sw a1, 0(a6)
	addiw a7, a7, 4
	sw a1, 4(a6)
	sw a1, 8(a6)
	sw a1, 12(a6)
	ble t0, a7, label151
.p2align 2
label40:
	addi a6, a6, 16
	j label37
.p2align 2
label174:
	sh2add a6, a7, t3
	addiw a7, a7, 4
	sw a1, 0(a6)
	sw a1, 4(a6)
	sw a1, 8(a6)
	sw a1, 12(a6)
	bgt t0, a7, label40
	sh2add a6, a7, t3
	addiw a7, a7, 1
	sw a1, 0(a6)
	bgt s1, a7, label35
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label29
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label31:
	sw a1, 0(a6)
	addiw a7, a7, 1
	ble s1, a7, label34
.p2align 2
label35:
	addi a6, a6, 4
	j label31
.p2align 2
label151:
	sh2add a6, a7, t3
	addiw a7, a7, 1
	sw a1, 0(a6)
	bgt s1, a7, label35
	addiw t6, t6, 1
	add t3, t3, s2
	bgt s1, t6, label29
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label30:
	mv a6, t3
	mv a7, zero
	j label31
.p2align 2
label10:
	add a4, t3, s2
	mv t5, a1
	bgt a0, a1, label14
	j label70
.p2align 2
label277:
	add t3, t3, s4
	mv s6, t5
	mv a4, t4
	add t2, t3, s4
	add s5, t3, a3
	addiw t4, t4, 1
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
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label14:
	add a5, a4, s2
	add t0, a4, a2
	mul a6, t5, s2
	addiw t5, t5, 1
	add t6, s5, a6
	add t1, t2, a6
	ble a0, a1, label15
	addi t6, t6, 4
	mv a6, a1
.p2align 2
label17:
	lw s6, 0(t6)
	sh2add s7, a6, t1
	sh2add s9, a6, t0
	lw s8, 0(s7)
	lw s10, 0(s9)
	addw a7, s6, s8
	sh2add s8, a6, a5
	addw s7, a7, s10
	lw s9, 0(s8)
	sh2add a7, a6, a4
	addw s6, s7, s9
	addiw a6, a6, 1
	lw s10, -4(a7)
	lw s9, 4(a7)
	addw s7, s6, s10
	addw s8, s7, s9
	divw s6, s8, s0
	sw s6, 0(a7)
	bgt a0, a6, label21
	add a4, a4, s2
	bgt a0, t5, label14
	j label277
.p2align 2
label21:
	addi t6, t6, 4
	j label17
label70:
	add t3, t3, s4
	mv s6, t5
	mv a4, t4
	add t2, t3, s4
	add s5, t3, a3
	addiw t4, t4, 1
	bgt a0, a4, label10
	j label23
.p2align 2
label15:
	add a4, a4, s2
	bgt a0, t5, label14
	j label70
label28:
	addiw t5, t5, 1
	add t4, t4, s4
	bgt s1, t5, label24
	j label5
.p2align 2
label143:
	mv a6, t3
	mv a7, zero
	j label37
