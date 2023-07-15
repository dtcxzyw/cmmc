.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
e:
	.zero	1024
.text
.globl main
main:
	addi sp, sp, -192
	sd s1, 184(sp)
	addi s1, sp, 0
	sd s6, 176(sp)
	sd s3, 168(sp)
	addi s3, sp, 72
	sd s0, 160(sp)
	sd s5, 152(sp)
	sd s4, 136(sp)
	sd s2, 144(sp)
	sd ra, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s4, a0
pcrel406:
	auipc a0, %pcrel_hi(e)
	addi s2, a0, %pcrel_lo(pcrel406)
	li a0, 1
	blt s0, a0, label8
	slli a2, a0, 6
	add a1, s2, a2
	ble s0, zero, label5
	li a2, 1
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	j label323
label215:
	li s5, 1
	j label9
label8:
	ble s4, zero, label11
	j label215
label9:
	jal getint
	slli a1, a0, 6
	add s6, s2, a1
	jal getint
	sh2add s6, a0, s6
	jal getint
	addiw s5, s5, 1
	sw a0, 0(s6)
	blt s4, s5, label11
	j label9
label5:
	addiw a0, a0, 1
	blt s0, a0, label8
	slli a2, a0, 6
	add a1, s2, a2
	ble s0, zero, label5
	li a2, 1
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
label323:
	mv a3, zero
	beq a0, a2, label201
	j label341
label201:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	j label323
label341:
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label5
	mv a3, zero
	beq a0, a2, label201
	j label341
label11:
	addi a2, s2, 64
	addiw a0, s0, -1
	ble s0, zero, label14
	li a1, 1
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	j label364
label14:
	li a1, 1
	sw a1, 76(sp)
	blt a0, a1, label33
	li a3, 65535
	mv a2, zero
	li a4, 1
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
	mv t0, a3
	mv t1, a4
	mv t1, zero
	addiw a4, a4, 1
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
	j label264
label223:
	li s2, 1
	j label35
label33:
	ble s0, zero, label34
	j label223
label21:
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	blt s0, a3, label28
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label331
label28:
	addiw a1, a1, 1
	blt a0, a1, label33
	li a3, 65535
	mv a2, zero
	li a4, 1
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
	mv t0, a3
	mv t1, a4
	mv t1, zero
	addiw a4, a4, 1
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
	j label264
label331:
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label331
label25:
	addiw a3, a3, 1
	blt s0, a3, label28
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label25
	sh2add t0, a3, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label25
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label331
label172:
	mv a5, zero
	mv t0, a3
label203:
	mv t1, a4
	bne a5, zero, label205
	mv t1, a2
label205:
	addiw a4, a4, 1
	mv a3, t0
	mv a2, t1
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
label264:
	mv t0, a3
	mv t1, a4
	bne a5, zero, label205
label300:
	mv t1, a2
	addiw a4, a4, 1
	mv a3, t0
	blt s0, a4, label21
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label172
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label203
	mv t0, a3
	mv t1, a4
	j label300
label35:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	blt s0, s2, label34
	j label35
label364:
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
label12:
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label14
	j label12
label34:
	li a0, 10
	jal putch
	ld ra, 64(sp)
	mv a0, zero
	ld s2, 144(sp)
	ld s4, 136(sp)
	ld s5, 152(sp)
	ld s0, 160(sp)
	ld s3, 168(sp)
	ld s6, 176(sp)
	ld s1, 184(sp)
	addi sp, sp, 192
	ret
