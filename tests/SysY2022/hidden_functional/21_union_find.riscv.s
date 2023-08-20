.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
parent:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -80
pcrel143:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel143)
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
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label24
label34:
	mv a0, s0
label24:
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
label5:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	bne s2, s4, label6
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label24
label6:
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label7
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label24
label7:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label8
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label24
label8:
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label9
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
	j label24
label9:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label78
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label13
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
	j label24
label78:
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
	j label24
label13:
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
	j label24
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
pcrel557:
	auipc a1, %pcrel_hi(parent)
	mv s4, a0
	addi s1, a1, %pcrel_lo(pcrel557)
	ble s0, zero, label167
	li a1, 3
	ble s0, a1, label219
	li a0, 15
	ble s2, a0, label222
	mv a0, s1
	mv a1, zero
	j label156
.p2align 2
label159:
	addi a0, a0, 64
.p2align 2
label156:
	addiw a2, a1, 1
	addiw a5, a1, 3
	slli a4, a2, 32
	slli t0, a5, 32
	addiw a2, a1, 2
	add.uw a3, a1, a4
	add.uw a4, a2, t0
	sd a3, 0(a0)
	addiw a2, a1, 5
	addiw a3, a1, 4
	slli a5, a2, 32
	sd a4, 8(a0)
	addiw a2, a1, 6
	add.uw a4, a3, a5
	addiw a5, a1, 7
	sd a4, 16(a0)
	slli t0, a5, 32
	addiw a4, a1, 8
	add.uw a3, a2, t0
	addiw t0, a1, 9
	sd a3, 24(a0)
	slli a5, t0, 32
	addiw a3, a1, 10
	add.uw a2, a4, a5
	addiw a5, a1, 11
	sd a2, 32(a0)
	slli t0, a5, 32
	addiw a2, a1, 12
	add.uw a4, a3, t0
	addiw a3, a1, 13
	sd a4, 40(a0)
	slli a4, a3, 32
	addiw a3, a1, 14
	add.uw a5, a2, a4
	addiw a4, a1, 15
	sd a5, 48(a0)
	addiw a1, a1, 16
	slli a5, a4, 32
	add.uw a2, a3, a5
	sd a2, 56(a0)
	bgt s3, a1, label159
	mv a2, a1
label147:
	ble s2, a2, label226
	sh2add a0, a2, s1
	mv a1, a2
	j label151
label154:
	addi a0, a0, 16
label151:
	addiw a5, a1, 1
	addiw a2, a1, 2
	slli a4, a5, 32
	addiw a5, a1, 3
	add.uw a3, a1, a4
	addiw a1, a1, 4
	sd a3, 0(a0)
	slli a3, a5, 32
	add.uw a4, a2, a3
	sd a4, 8(a0)
	bgt s2, a1, label154
label226:
	mv a0, a1
label160:
	ble s0, a0, label167
	sh2add a1, a0, s1
	j label163
label166:
	addi a1, a1, 4
	mv a0, a2
label163:
	addiw a2, a0, 1
	sw a0, 0(a1)
	bgt s0, a2, label166
label167:
	ble s4, zero, label172
	mv s5, zero
	j label168
.p2align 2
label170:
	sh2add a1, a0, s1
	sw a2, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label172
.p2align 2
label168:
	jal getint
	mv s6, a0
	jal getint
	mv a3, a0
	mv a0, s6
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label170
	addiw s5, s5, 1
	bgt s4, s5, label168
label172:
	ble s0, zero, label310
	li a0, 3
	ble s0, a0, label313
	li a0, 15
	ble s2, a0, label316
	mv a0, s1
	mv a1, zero
	mv a2, zero
	j label176
.p2align 2
label180:
	addi a0, a0, 64
.p2align 2
label176:
	ld a4, 0(a0)
	addiw t1, a1, 1
	srai t0, a4, 32
	sext.w a3, a4
	xor t2, t0, t1
	xor t3, a1, a3
	sltiu a5, t2, 1
	sltiu t0, t3, 1
	ld a3, 8(a0)
	addw t1, a2, t0
	addiw t0, a1, 2
	sext.w a2, a3
	addw a4, a5, t1
	xor t2, a2, t0
	addiw t0, a1, 3
	srai a2, a3, 32
	sltiu t1, t2, 1
	addw a5, a4, t1
	xor a4, a2, t0
	ld a2, 16(a0)
	sltiu t1, a4, 1
	sext.w t0, a2
	addw a3, a5, t1
	addiw a5, a1, 4
	xor t2, t0, a5
	srai a5, a2, 32
	sltiu t1, t2, 1
	ld a2, 24(a0)
	addiw t2, a1, 5
	addw a4, a3, t1
	xor t1, a5, t2
	sext.w a5, a2
	sltiu t0, t1, 1
	addiw t1, a1, 6
	addw a3, a4, t0
	xor t0, a5, t1
	srai a5, a2, 32
	sltiu t2, t0, 1
	ld a2, 32(a0)
	addiw t0, a1, 7
	addw a4, a3, t2
	xor t2, a5, t0
	addiw t0, a1, 8
	sext.w a5, a2
	sltiu t1, t2, 1
	xor t2, a5, t0
	addw a3, a4, t1
	srai a5, a2, 32
	sltiu t1, t2, 1
	ld a2, 40(a0)
	addiw t2, a1, 9
	addw a4, a3, t1
	xor t1, a5, t2
	sext.w a5, a2
	sltiu t0, t1, 1
	addiw t1, a1, 10
	addw a3, a4, t0
	xor t2, a5, t1
	srai a5, a2, 32
	sltiu t0, t2, 1
	ld a2, 48(a0)
	addiw t2, a1, 11
	addw a4, a3, t0
	xor t1, a5, t2
	addiw t2, a1, 12
	sext.w a5, a2
	sltiu t0, t1, 1
	addw a3, a4, t0
	xor t0, a5, t2
	addiw t2, a1, 13
	srai a5, a2, 32
	sltiu t1, t0, 1
	ld a2, 56(a0)
	addw a4, a3, t1
	xor t1, a5, t2
	addiw t2, a1, 14
	sext.w a5, a2
	sltiu t0, t1, 1
	addw a3, a4, t0
	xor t0, a5, t2
	addiw t2, a1, 15
	srai a5, a2, 32
	sltiu t1, t0, 1
	addiw a1, a1, 16
	addw a4, a3, t1
	xor a3, a5, t2
	sltiu t0, a3, 1
	addw a2, a4, t0
	bgt s3, a1, label180
	mv a3, a1
	mv a4, a2
label181:
	ble s2, a3, label420
	sh2add a0, a3, s1
	mv a2, a4
	mv a1, a3
label187:
	ld a4, 0(a0)
	addiw t3, a1, 1
	srai t0, a4, 32
	sext.w a3, a4
	xor t1, t0, t3
	xor t2, a1, a3
	sltiu a5, t1, 1
	sltiu t0, t2, 1
	ld a3, 8(a0)
	addw t1, a2, t0
	addiw t0, a1, 2
	sext.w a2, a3
	addw a4, a5, t1
	xor t1, a2, t0
	srai t0, a3, 32
	sltiu t2, t1, 1
	addiw t1, a1, 3
	addw a5, a4, t2
	addiw a1, a1, 4
	xor a4, t0, t1
	sltiu a3, a4, 1
	addw a2, a5, a3
	ble s2, a1, label420
	addi a0, a0, 16
	j label187
label420:
	mv a0, a2
label195:
	ble s0, a1, label205
	sh2add a0, a1, s1
	j label200
label204:
	addi a0, a0, 4
label200:
	lw a4, 0(a0)
	xor a3, a1, a4
	addiw a1, a1, 1
	sltiu a5, a3, 1
	addw a2, a2, a5
	bgt s0, a1, label204
	mv a0, a2
label205:
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
label219:
	mv a0, zero
	j label160
label310:
	mv a0, zero
	j label205
label316:
	mv a3, zero
	mv a4, zero
	mv a2, zero
	mv a1, zero
	j label181
label222:
	mv a2, zero
	mv a1, zero
	j label147
label313:
	mv a2, zero
	mv a1, zero
	mv a0, zero
	j label195
