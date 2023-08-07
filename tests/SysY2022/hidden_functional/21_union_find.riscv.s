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
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label12
label22:
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label5:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label11
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label12
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label12
label11:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label12
.p2align 2
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	jal getint
	addiw s3, a0, -20
	addiw s2, a0, -4
	mv s1, a0
	jal getint
pcrel447:
	auipc a1, %pcrel_hi(parent)
	mv s4, a0
	addi s0, a1, %pcrel_lo(pcrel447)
	ble s1, zero, label96
	li a0, 4
	ble s1, a0, label138
	li a0, 16
	ble s2, a0, label79
	mv a0, s0
	mv a1, zero
.p2align 2
label81:
	addiw a2, a1, 1
	slli a4, a2, 32
	addiw a2, a1, 2
	add.uw a3, a1, a4
	addiw a4, a1, 3
	sd a3, 0(a0)
	slli t0, a4, 32
	addiw a3, a1, 4
	add.uw a5, a2, t0
	addiw a2, a1, 5
	sd a5, 8(a0)
	slli a4, a2, 32
	addiw a2, a1, 6
	add.uw a5, a3, a4
	addiw a3, a1, 7
	sd a5, 16(a0)
	slli a5, a3, 32
	addiw a3, a1, 8
	add.uw a4, a2, a5
	addiw a2, a1, 9
	sd a4, 24(a0)
	slli a5, a2, 32
	addiw a2, a1, 10
	add.uw a4, a3, a5
	addiw a3, a1, 11
	sd a4, 32(a0)
	slli a4, a3, 32
	addiw a3, a1, 12
	add.uw a5, a2, a4
	addiw a2, a1, 13
	sd a5, 40(a0)
	slli a5, a2, 32
	addiw a2, a1, 14
	add.uw a4, a3, a5
	addiw a3, a1, 15
	sd a4, 48(a0)
	addiw a1, a1, 16
	slli a4, a3, 32
	add.uw a5, a2, a4
	sd a5, 56(a0)
	ble s3, a1, label176
	addi a0, a0, 64
	j label81
label176:
	sh2add a0, a1, s0
label86:
	sw a1, 0(a0)
	addiw a3, a1, 1
	addiw a2, a1, 2
	sw a3, 4(a0)
	addiw a3, a1, 3
	sw a2, 8(a0)
	addiw a1, a1, 4
	sw a3, 12(a0)
	ble s2, a1, label190
	addi a0, a0, 16
	j label86
label79:
	mv a0, s0
	mv a1, zero
	j label86
label96:
	ble s4, zero, label97
	mv s5, zero
	j label122
label97:
	ble s1, zero, label206
	li a0, 4
	ble s1, a0, label209
	li a0, 16
	ble s2, a0, label106
	mv a0, s0
	mv a1, zero
	mv a2, zero
.p2align 2
label114:
	lw a3, 0(a0)
	addiw t0, a1, 1
	xor t2, a1, a3
	lw a5, 4(a0)
	xor t1, a5, t0
	lw a5, 8(a0)
	sltiu t0, t2, 1
	sltiu a4, t1, 1
	addiw t2, a1, 2
	addw t1, a2, t0
	xor t0, a5, t2
	addw a3, a4, t1
	lw a5, 12(a0)
	sltiu a2, t0, 1
	addiw t0, a1, 3
	addw a4, a3, a2
	xor t1, a5, t0
	addiw t0, a1, 4
	sltiu a3, t1, 1
	lw a5, 16(a0)
	addw a2, a4, a3
	xor t1, a5, t0
	lw a4, 20(a0)
	addiw a5, a1, 5
	sltiu t2, t1, 1
	xor t0, a4, a5
	addw a3, a2, t2
	sltiu t1, t0, 1
	lw a5, 24(a0)
	addiw t2, a1, 8
	addiw t0, a1, 6
	addw a2, a3, t1
	xor t1, a5, t0
	lw a5, 28(a0)
	sltiu a3, t1, 1
	addiw t1, a1, 7
	addw a4, a2, a3
	xor a2, a5, t1
	lw a5, 32(a0)
	sltiu t0, a2, 1
	xor t1, a5, t2
	addw a3, a4, t0
	addiw t2, a1, 12
	addiw a5, a1, 9
	lw a4, 36(a0)
	sltiu t0, t1, 1
	addw a2, a3, t0
	xor t0, a4, a5
	lw a5, 40(a0)
	sltiu t1, t0, 1
	addiw t0, a1, 10
	addw a3, a2, t1
	xor t1, a5, t0
	lw a5, 44(a0)
	sltiu a2, t1, 1
	addiw t1, a1, 11
	addw a4, a3, a2
	xor a3, a5, t1
	lw a5, 48(a0)
	sltiu t0, a3, 1
	xor t1, a5, t2
	addw a2, a4, t0
	lw a4, 52(a0)
	sltiu t0, t1, 1
	addiw t1, a1, 13
	addw a3, a2, t0
	xor t0, a4, t1
	lw a4, 56(a0)
	sltiu a5, t0, 1
	addiw t0, a1, 14
	addw a2, a3, a5
	xor a5, a4, t0
	addiw t0, a1, 15
	sltiu t1, a5, 1
	lw a4, 60(a0)
	addiw a1, a1, 16
	addw a3, a2, t1
	xor a5, a4, t0
	sltiu t1, a5, 1
	addw a2, a3, t1
	ble s3, a1, label351
	addi a0, a0, 64
	j label114
.p2align 2
label122:
	jal getint
	mv s6, a0
	jal getint
	mv a3, a0
	mv a0, s6
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label125
	addiw s5, s5, 1
	bgt s4, s5, label122
	j label97
.p2align 2
label125:
	sh2add a1, a0, s0
	addiw s5, s5, 1
	sw a2, 0(a1)
	bgt s4, s5, label122
	j label97
label106:
	mv a0, s0
	mv a2, zero
	mv a1, zero
label107:
	lw a3, 0(a0)
	addiw t0, a1, 1
	xor t2, a1, a3
	lw a4, 4(a0)
	sltiu t1, t2, 1
	xor t3, a4, t0
	lw t0, 8(a0)
	sltiu a5, t3, 1
	addw t3, a2, t1
	addiw t1, a1, 2
	addw a4, a5, t3
	xor t2, t0, t1
	lw a5, 12(a0)
	addiw t1, a1, 3
	sltiu a2, t2, 1
	addiw a1, a1, 4
	xor t0, a5, t1
	addw a3, a4, a2
	sltiu a4, t0, 1
	addw a2, a3, a4
	ble s2, a1, label111
	addi a0, a0, 16
	j label107
label111:
	sh2add s0, a1, s0
	mv a0, a1
	mv a1, a2
label99:
	lw a3, 0(s0)
	xor a2, a0, a3
	addiw a0, a0, 1
	sltiu a4, a2, 1
	addw a1, a1, a4
	ble s1, a0, label218
	addi s0, s0, 4
	j label99
label218:
	mv a0, a1
label120:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	addi sp, sp, 64
	ret
label190:
	sh2add a0, a1, s0
label92:
	sw a1, 0(a0)
	addiw a1, a1, 1
	ble s1, a1, label96
	addi a0, a0, 4
	j label92
label351:
	sh2add a0, a1, s0
	j label107
label138:
	mv a0, s0
	mv a1, zero
	j label92
label209:
	mv a0, zero
	mv a1, zero
	j label99
label206:
	mv a0, zero
	j label120
