.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
parent:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label13
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	jal getint
	mv s0, a0
	jal getint
pcrel241:
	auipc a1, %pcrel_hi(parent)
	mv s2, a0
	addi s1, a1, %pcrel_lo(pcrel241)
	ble s0, zero, label85
	li a1, 4
	ble s0, a1, label104
	addiw a1, s0, -4
	addiw a2, s0, -20
	li a0, 16
	ble a1, a0, label110
	mv a0, zero
.p2align 2
label79:
	sh2add a3, a0, s1
	addiw a4, a0, 1
	addiw t2, a0, 3
	slli a5, a4, 32
	addiw a4, a0, 2
	add.uw t0, a0, a5
	slli a5, t2, 32
	sd t0, 0(a3)
	addiw t2, a0, 7
	add.uw t1, a4, a5
	addiw t0, a0, 4
	addiw a5, a0, 5
	sd t1, 8(a3)
	slli t1, a5, 32
	addiw a5, a0, 6
	add.uw a4, t0, t1
	slli t1, t2, 32
	sd a4, 16(a3)
	add.uw t0, a5, t1
	addiw a4, a0, 8
	addiw a5, a0, 9
	sd t0, 24(a3)
	slli t1, a5, 32
	addiw a5, a0, 10
	add.uw t0, a4, t1
	addiw a4, a0, 11
	sd t0, 32(a3)
	slli t1, a4, 32
	addiw a4, a0, 12
	add.uw t0, a5, t1
	addiw a5, a0, 13
	sd t0, 40(a3)
	slli t1, a5, 32
	addiw a5, a0, 14
	add.uw t0, a4, t1
	addiw t1, a0, 15
	sd t0, 48(a3)
	addiw a0, a0, 16
	slli t0, t1, 32
	add.uw a4, a5, t0
	sd a4, 56(a3)
	bgt a2, a0, label79
	mv a2, a0
label81:
	sh2add a3, a2, s1
	addiw a0, a2, 1
	addiw a4, a2, 2
	sw a2, 0(a3)
	sw a0, 4(a3)
	addiw a0, a2, 3
	sw a4, 8(a3)
	addiw a2, a2, 4
	sw a0, 12(a3)
	bgt a1, a2, label81
	mv a0, a2
label83:
	sh2add a1, a0, s1
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s0, a0, label83
label85:
	ble s2, zero, label171
	mv s3, zero
	j label86
label171:
	mv a1, zero
	mv a0, zero
	j label90
.p2align 2
label86:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label88
	addiw s3, s3, 1
	bgt s2, s3, label86
	j label171
.p2align 2
label88:
	sh2add a1, a0, s1
	sw a2, 0(a1)
	addiw s3, s3, 1
	bgt s2, s3, label86
	j label171
.p2align 2
label90:
	ble s0, a0, label94
	sh2add a3, a0, s1
	lw a2, 0(a3)
	xor a5, a0, a2
	addiw a0, a0, 1
	sltiu a4, a5, 1
	addw a1, a1, a4
	j label90
label94:
	mv a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label110:
	mv a2, zero
	j label81
label104:
	mv a0, zero
	j label83
