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
	sd s3, 136(sp)
	addi s3, sp, 72
	sd s0, 168(sp)
	sd s5, 64(sp)
	sd s4, 160(sp)
	sd s2, 152(sp)
	sd ra, 144(sp)
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
pcrel382:
	auipc a0, %pcrel_hi(e)
	addi s2, a0, %pcrel_lo(pcrel382)
	li a0, 1
	blt s0, a0, label4
	slli a3, a0, 6
	li a2, 1
	add a1, s2, a3
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	j label317
label4:
	ble s4, zero, label7
	li s5, 1
	j label5
label202:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
label317:
	mv a3, zero
	beq a0, a2, label202
	j label335
label36:
	addiw a0, a0, 1
	blt s0, a0, label4
	slli a3, a0, 6
	li a2, 1
	add a1, s2, a3
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	j label317
label335:
	li a3, 65535
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	blt s0, a2, label36
	mv a3, zero
	beq a0, a2, label202
	j label335
label5:
	jal getint
	slli a1, a0, 6
	add s6, s2, a1
	jal getint
	sh2add s6, a0, s6
	jal getint
	addiw s5, s5, 1
	sw a0, 0(s6)
	blt s4, s5, label7
	j label5
label7:
	addi a2, s2, 64
	addiw a0, s0, -1
	ble s0, zero, label10
	li a1, 1
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	j label339
label10:
	li a1, 1
	sw a1, 76(sp)
	blt a0, a1, label29
	li a3, 65535
	mv a2, zero
	li a4, 1
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	mv t0, a3
	mv t1, a4
	mv t1, zero
	addiw a4, a4, 1
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	j label252
label214:
	li s2, 1
	j label30
label17:
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	blt s0, a3, label24
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
label310:
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	j label346
label24:
	addiw a1, a1, 1
	blt a0, a1, label29
	li a3, 65535
	mv a2, zero
	li a4, 1
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	mv t0, a3
	mv t1, a4
	mv t1, zero
	addiw a4, a4, 1
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	j label252
label29:
	ble s0, zero, label32
	j label214
label21:
	addiw a3, a3, 1
	blt s0, a3, label24
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	bge a4, a5, label21
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	ble a5, a4, label21
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
	j label310
label157:
	mv a5, zero
	mv t0, a3
label198:
	mv t1, a4
	bne a5, zero, label200
	mv t1, a2
label200:
	addiw a4, a4, 1
	mv a3, t0
	mv a2, t1
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	j label252
label283:
	mv t1, a2
	addiw a4, a4, 1
	mv a3, t0
	blt s0, a4, label17
	sh2add a5, a4, s1
	lw t0, 0(a5)
	ble a3, t0, label157
	sh2add t2, a4, s3
	lw t1, 0(t2)
	sltiu a5, t1, 1
	bne a5, zero, label198
	mv t0, a3
	mv t1, a4
	j label283
label252:
	mv t0, a3
	mv t1, a4
	bne a5, zero, label200
	j label283
label346:
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label24
	j label310
label30:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	blt s0, s2, label32
	j label30
label339:
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
label8:
	sh2add a5, a1, a2
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	blt s0, a1, label10
	j label8
label32:
	li a0, 10
	jal putch
	ld ra, 144(sp)
	mv a0, zero
	ld s2, 152(sp)
	ld s4, 160(sp)
	ld s5, 64(sp)
	ld s0, 168(sp)
	ld s3, 136(sp)
	ld s6, 176(sp)
	ld s1, 184(sp)
	addi sp, sp, 192
	ret
