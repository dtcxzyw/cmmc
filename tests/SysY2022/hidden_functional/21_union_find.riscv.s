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
pcrel142:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel142)
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
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label9
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label24
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label24
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label10
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
label10:
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label11
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
label11:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	bne s7, s8, label12
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
label12:
	sh2add a1, s8, s3
	lw a0, 0(a1)
	beq s8, a0, label87
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
label87:
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
pcrel512:
	auipc a1, %pcrel_hi(parent)
	mv s4, a0
	addi s0, a1, %pcrel_lo(pcrel512)
	ble s1, zero, label163
	li a0, 4
	ble s1, a0, label145
	li a0, 16
	ble s2, a0, label208
	mv a0, s0
	mv a1, zero
.p2align 2
label154:
	addiw a2, a1, 1
	addiw t0, a1, 3
	slli a4, a2, 32
	addiw a2, a1, 2
	add.uw a3, a1, a4
	slli a4, t0, 32
	sd a3, 0(a0)
	addiw t0, a1, 9
	add.uw a5, a2, a4
	addiw a3, a1, 4
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
	slli a2, t0, 32
	sd a4, 24(a0)
	add.uw a5, a3, a2
	addiw a4, a1, 10
	addiw a2, a1, 11
	sd a5, 32(a0)
	slli a3, a2, 32
	addiw a2, a1, 12
	add.uw a5, a4, a3
	addiw a3, a1, 13
	sd a5, 40(a0)
	slli a5, a3, 32
	addiw a3, a1, 14
	add.uw a4, a2, a5
	addiw a5, a1, 15
	sd a4, 48(a0)
	addiw a1, a1, 16
	slli a2, a5, 32
	add.uw a4, a3, a2
	sd a4, 56(a0)
	ble s3, a1, label257
	addi a0, a0, 64
	j label154
label257:
	sh2add a0, a1, s0
label147:
	sw a1, 0(a0)
	addiw a2, a1, 1
	addiw a3, a1, 2
	sw a2, 4(a0)
	addiw a2, a1, 3
	sw a3, 8(a0)
	addiw a1, a1, 4
	sw a2, 12(a0)
	ble s2, a1, label150
	addi a0, a0, 16
	j label147
label150:
	sh2add a0, a1, s0
label159:
	sw a1, 0(a0)
	addiw a1, a1, 1
	ble s1, a1, label163
	addi a0, a0, 4
	j label159
label163:
	ble s4, zero, label168
	mv s5, zero
	j label164
.p2align 2
label167:
	sh2add a1, a0, s0
	addiw s5, s5, 1
	sw a2, 0(a1)
	ble s4, s5, label168
.p2align 2
label164:
	jal getint
	mv s6, a0
	jal getint
	mv a3, a0
	mv a0, s6
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label167
	addiw s5, s5, 1
	bgt s4, s5, label164
label168:
	ble s1, zero, label288
	li a0, 4
	ble s1, a0, label291
	li a0, 16
	ble s2, a0, label177
	mv a0, s0
	mv a1, zero
	mv a2, zero
	j label185
.p2align 2
label189:
	addi a0, a0, 64
.p2align 2
label185:
	lw a3, 0(a0)
	addiw t0, a1, 1
	xor t2, a1, a3
	lw a5, 4(a0)
	xor t1, a5, t0
	lw a5, 8(a0)
	sltiu t0, t2, 1
	sltiu a4, t1, 1
	addw t1, a2, t0
	addiw t0, a1, 2
	addw a3, a4, t1
	lw a4, 12(a0)
	xor t1, a5, t0
	addiw t0, a1, 3
	sltiu t2, t1, 1
	xor t1, a4, t0
	addw a2, a3, t2
	addiw t0, a1, 4
	sltiu a5, t1, 1
	addiw t2, a1, 12
	addw a3, a2, a5
	lw a4, 16(a0)
	xor t1, a4, t0
	lw a4, 20(a0)
	sltiu a5, t1, 1
	addiw t1, a1, 5
	addw a2, a3, a5
	xor a5, a4, t1
	addiw t1, a1, 6
	sltiu t0, a5, 1
	lw a4, 24(a0)
	addw a3, a2, t0
	xor t0, a4, t1
	addiw t1, a1, 7
	sltiu a5, t0, 1
	lw a4, 28(a0)
	addw a2, a3, a5
	xor t0, a4, t1
	addiw t1, a1, 8
	sltiu a5, t0, 1
	lw a4, 32(a0)
	addw a3, a2, a5
	xor a5, a4, t1
	lw a4, 36(a0)
	sltiu t0, a5, 1
	addiw a5, a1, 9
	addw a2, a3, t0
	xor t1, a4, a5
	lw a5, 40(a0)
	sltiu t0, t1, 1
	addiw t1, a1, 10
	addw a3, a2, t0
	xor t0, a5, t1
	addiw t1, a1, 11
	sltiu a2, t0, 1
	lw a5, 44(a0)
	addw a4, a3, a2
	xor t0, a5, t1
	lw a5, 48(a0)
	sltiu a3, t0, 1
	xor t1, a5, t2
	addw a2, a4, a3
	sltiu t0, t1, 1
	lw a4, 52(a0)
	addiw t1, a1, 13
	addw a3, a2, t0
	xor t0, a4, t1
	addiw t1, a1, 14
	sltiu a5, t0, 1
	lw a4, 56(a0)
	addw a2, a3, a5
	xor t0, a4, t1
	addiw t1, a1, 15
	sltiu a5, t0, 1
	lw a4, 60(a0)
	addiw a1, a1, 16
	addw a3, a2, a5
	xor t0, a4, t1
	sltiu a5, t0, 1
	addw a2, a3, a5
	bgt s3, a1, label189
	sh2add a0, a1, s0
	j label178
label183:
	addi a0, a0, 16
label178:
	lw a3, 0(a0)
	addiw t1, a1, 1
	xor t2, a1, a3
	lw a5, 4(a0)
	xor t0, a5, t1
	lw a5, 8(a0)
	sltiu t1, t2, 1
	sltiu a4, t0, 1
	addw t0, a2, t1
	addiw a2, a1, 2
	addw a3, a4, t0
	xor t0, a5, a2
	lw a5, 12(a0)
	sltiu t1, t0, 1
	addiw t0, a1, 3
	addw a4, a3, t1
	addiw a1, a1, 4
	xor a3, a5, t0
	sltiu t1, a3, 1
	addw a2, a4, t1
	bgt s2, a1, label183
	sh2add s0, a1, s0
	mv a0, a1
	mv a1, a2
label170:
	lw a3, 0(s0)
	xor a4, a0, a3
	addiw a0, a0, 1
	sltiu a2, a4, 1
	addw a1, a1, a2
	ble s1, a0, label300
	addi s0, s0, 4
	j label170
label300:
	mv a0, a1
label191:
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
label145:
	mv a0, s0
	mv a1, zero
	j label159
label177:
	mv a0, s0
	mv a2, zero
	mv a1, zero
	j label178
label291:
	mv a0, zero
	mv a1, zero
	j label170
label208:
	mv a0, s0
	mv a1, zero
	j label147
label288:
	mv a0, zero
	j label191
