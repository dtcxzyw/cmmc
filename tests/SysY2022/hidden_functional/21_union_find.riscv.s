.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
parent:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -80
pcrel141:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel141)
	sd s1, 32(sp)
	sh2add a0, a0, s3
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	lw s1, 0(a0)
	beq s0, s1, label34
	sh2add a1, s1, s3
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label2
label34:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label7:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label11
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label2
label11:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label13
	mv a0, s6
	sh2add a1, s5, s3
	sw s6, 0(a1)
	sh2add a1, s4, s3
	sw s6, 0(a1)
	sh2add a1, s2, s3
	sw s6, 0(a1)
	sh2add a1, s1, s3
	sw s6, 0(a1)
	sh2add a1, s0, s3
	sw s6, 0(a1)
	j label2
label13:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label80
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label15
	mv a0, s8
	sh2add a1, s7, s3
	sw s8, 0(a1)
	sh2add a1, s6, s3
	sw s8, 0(a1)
	sh2add a1, s5, s3
	sw s8, 0(a1)
	sh2add a1, s4, s3
	sw s8, 0(a1)
	sh2add a1, s2, s3
	sw s8, 0(a1)
	sh2add a1, s1, s3
	sw s8, 0(a1)
	sh2add a1, s0, s3
	sw s8, 0(a1)
	j label2
label15:
	jal find
	sh2add a1, s8, s3
	sw a0, 0(a1)
	sh2add a1, s7, s3
	sw a0, 0(a1)
	sh2add a1, s6, s3
	sw a0, 0(a1)
	sh2add a1, s5, s3
	sw a0, 0(a1)
	sh2add a1, s4, s3
	sw a0, 0(a1)
	sh2add a1, s2, s3
	sw a0, 0(a1)
	sh2add a1, s1, s3
	sw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	j label2
label80:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	sh2add a1, s5, s3
	sw s7, 0(a1)
	sh2add a1, s4, s3
	sw s7, 0(a1)
	sh2add a1, s2, s3
	sw s7, 0(a1)
	sh2add a1, s1, s3
	sw s7, 0(a1)
	sh2add a1, s0, s3
	sw s7, 0(a1)
	j label2
label66:
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label2
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	jal getint
	addiw s3, a0, -18
	addiw s2, a0, -3
	mv s0, a0
	jal getint
pcrel551:
	auipc a1, %pcrel_hi(parent)
	mv s4, a0
	addi s1, a1, %pcrel_lo(pcrel551)
	ble s0, zero, label165
	li a1, 3
	ble s0, a1, label217
	li a0, 15
	ble s2, a0, label220
	mv a0, s1
	mv a1, zero
.p2align 2
label146:
	addiw a2, a1, 1
	addiw a3, a1, 2
	addiw t0, a1, 13
	slli a5, a2, 32
	addiw a2, a1, 3
	add.uw a4, a1, a5
	sd a4, 0(a0)
	slli a4, a2, 32
	addiw a2, a1, 4
	add.uw a5, a3, a4
	addiw a3, a1, 5
	sd a5, 8(a0)
	slli a4, a3, 32
	addiw a3, a1, 6
	add.uw a5, a2, a4
	addiw a2, a1, 7
	sd a5, 16(a0)
	slli a5, a2, 32
	addiw a2, a1, 8
	add.uw a4, a3, a5
	addiw a3, a1, 9
	sd a4, 24(a0)
	slli a4, a3, 32
	addiw a3, a1, 10
	add.uw a5, a2, a4
	addiw a4, a1, 11
	sd a5, 32(a0)
	slli a5, a4, 32
	addiw a4, a1, 12
	add.uw a2, a3, a5
	slli a5, t0, 32
	sd a2, 40(a0)
	add.uw a3, a4, a5
	addiw a2, a1, 14
	addiw a4, a1, 15
	sd a3, 48(a0)
	addiw a1, a1, 16
	slli a5, a4, 32
	add.uw a3, a2, a5
	sd a3, 56(a0)
	ble s3, a1, label255
	addi a0, a0, 64
	j label146
label255:
	mv a2, a1
label150:
	ble s2, a2, label260
	sh2add a0, a2, s1
	mv a1, a2
label154:
	addiw a5, a1, 1
	addiw a2, a1, 2
	slli a3, a5, 32
	addiw a5, a1, 3
	add.uw a4, a1, a3
	addiw a1, a1, 4
	slli a3, a5, 32
	sd a4, 0(a0)
	add.uw a4, a2, a3
	sd a4, 8(a0)
	ble s2, a1, label260
	addi a0, a0, 16
	j label154
label260:
	mv a0, a1
label158:
	ble s0, a0, label165
	sh2add a1, a0, s1
label161:
	addiw a2, a0, 1
	sw a0, 0(a1)
	ble s0, a2, label165
	addi a1, a1, 4
	mv a0, a2
	j label161
label165:
	ble s4, zero, label170
	mv s5, zero
	j label166
.p2align 2
label298:
	addiw s5, s5, 1
	ble s4, s5, label170
.p2align 2
label166:
	jal getint
	mv s6, a0
	jal getint
	mv a3, a0
	mv a0, s6
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	beq a2, a0, label298
	sh2add a1, a0, s1
	sw a2, 0(a1)
	addiw s5, s5, 1
	bgt s4, s5, label166
label170:
	ble s0, zero, label308
	li a3, 3
	ble s0, a3, label311
	li a0, 15
	ble s2, a0, label330
	mv a0, s1
	mv a1, zero
	mv a2, zero
.p2align 2
label186:
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
	addiw t2, a1, 5
	addiw a5, a1, 3
	lw a4, 12(a0)
	sltiu t1, t0, 1
	addw a2, a3, t1
	xor t1, a4, a5
	lw a5, 16(a0)
	sltiu t0, t1, 1
	addiw t1, a1, 4
	addw a3, a2, t0
	xor a2, a5, t1
	lw a5, 20(a0)
	sltiu t0, a2, 1
	addw a4, a3, t0
	lw a3, 24(a0)
	xor t0, a5, t2
	addiw t2, a1, 8
	addiw a5, a1, 6
	sltiu t1, t0, 1
	addw a2, a4, t1
	xor t1, a3, a5
	lw a5, 28(a0)
	sltiu t0, t1, 1
	addiw t1, a1, 7
	addw a4, a2, t0
	xor a2, a5, t1
	lw a5, 32(a0)
	sltiu t0, a2, 1
	addw a3, a4, t0
	lw a4, 36(a0)
	xor t0, a5, t2
	sltiu t1, t0, 1
	addiw t0, a1, 9
	addw a2, a3, t1
	xor t1, a4, t0
	lw a4, 40(a0)
	sltiu a5, t1, 1
	addiw t1, a1, 10
	addw a3, a2, a5
	xor a5, a4, t1
	lw a4, 44(a0)
	sltiu t0, a5, 1
	addiw a5, a1, 11
	addw a2, a3, t0
	xor t1, a4, a5
	addiw a5, a1, 12
	sltiu t0, t1, 1
	lw a4, 48(a0)
	addw a3, a2, t0
	xor t0, a4, a5
	lw a5, 52(a0)
	sltiu t1, t0, 1
	addiw t0, a1, 13
	addw a2, a3, t1
	addiw t1, a1, 14
	xor a3, a5, t0
	lw a5, 56(a0)
	sltiu t2, a3, 1
	xor t0, a5, t1
	addw a4, a2, t2
	lw a5, 60(a0)
	sltiu a2, t0, 1
	addiw t0, a1, 15
	addw a3, a4, a2
	addiw a1, a1, 16
	xor t1, a5, t0
	sltiu a4, t1, 1
	addw a2, a3, a4
	ble s3, a1, label429
	addi a0, a0, 64
	j label186
label429:
	mv a3, a1
	mv a4, a2
label191:
	ble s2, a3, label434
	sh2add a0, a3, s1
	mv a2, a4
	mv a1, a3
label200:
	lw a4, 0(a0)
	addiw t1, a1, 1
	xor t0, a1, a4
	lw a5, 4(a0)
	xor t2, a5, t1
	lw a5, 8(a0)
	sltiu t1, t0, 1
	sltiu a3, t2, 1
	addw t2, a2, t1
	addiw a2, a1, 2
	addw a4, a3, t2
	xor t1, a5, a2
	lw a5, 12(a0)
	sltiu t0, t1, 1
	addiw t1, a1, 3
	addw a3, a4, t0
	addiw a1, a1, 4
	xor a4, a5, t1
	sltiu t0, a4, 1
	addw a2, a3, t0
	ble s2, a1, label463
	addi a0, a0, 16
	j label200
label463:
	mv a0, a2
label174:
	ble s0, a1, label171
	sh2add a0, a1, s1
label179:
	lw a4, 0(a0)
	xor a5, a1, a4
	addiw a1, a1, 1
	sltiu a3, a5, 1
	addw a2, a2, a3
	ble s0, a1, label326
	addi a0, a0, 4
	j label179
label326:
	mv a0, a2
label171:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	addi sp, sp, 64
	ret
label434:
	mv a0, a2
	j label174
label330:
	mv a3, zero
	mv a4, zero
	mv a2, zero
	mv a1, zero
	j label191
label308:
	mv a0, zero
	j label171
label311:
	mv a2, zero
	mv a1, zero
	mv a0, zero
	j label174
label217:
	mv a0, zero
	j label158
label220:
	mv a2, zero
	mv a1, zero
	j label150
