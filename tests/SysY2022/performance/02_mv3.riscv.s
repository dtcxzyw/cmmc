.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel485:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel485)
pcrel486:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel486)
pcrel487:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel487)
	ble s0, zero, label9
	ble s0, zero, label5
	li a0, 8040
	mv s6, zero
	mul a0, zero, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label302
label9:
	ble s0, zero, label10
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
	j label387
label10:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label15
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label388
label86:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label26
	mv a3, zero
	ble s0, zero, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, zero, 1
	ble s0, a3, label50
label205:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label52
label294:
	addiw a3, a3, 1
	ble s0, a3, label50
	j label374
label50:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label26
	mv a3, zero
	ble s0, zero, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, zero, 1
	ble s0, a3, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	j label294
label394:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	j label394
label113:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label26
	mv a3, zero
	ble s0, zero, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, zero, 1
	ble s0, a3, label50
	j label205
label26:
	ble s0, zero, label132
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label40
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label40
	j label365
label132:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label35
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	j label283
label35:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label36
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label15
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label407
label36:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label365:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label40
	j label408
label52:
	sh2add t1, a3, s2
	sh2add a5, a1, s1
	addiw a3, a3, 1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	ble s0, a3, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, a3, 1
	ble s0, a3, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, a3, 1
	ble s0, a3, label50
	j label374
label358:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, a3, 1
	ble s0, a3, label31
	j label358
label34:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	addiw a3, a3, 1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, a3, 1
	ble s0, a3, label31
	j label358
label283:
	addiw a3, a3, 1
	ble s0, a3, label31
	j label358
label31:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label35
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	j label283
label374:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label52
	addiw a3, a3, 1
	ble s0, a3, label50
	j label374
label15:
	addiw a1, a2, 4
	ble s0, a1, label96
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label96
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label96
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label96
	j label390
label96:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	j label391
label20:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label113
	j label394
label5:
	addiw s4, s4, 1
	ble s0, s4, label9
	ble s0, zero, label5
	li a0, 8040
	mv s6, zero
	mul a0, s4, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
label302:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
label385:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label5
	j label385
label40:
	addiw a1, a2, 4
	ble s0, a1, label180
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label180
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label180
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label180
	j label411
label180:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label44
	j label412
label44:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	j label413
label192:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label35
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label34
	j label283
label413:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label192
	j label413
label412:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label44
	j label412
label411:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label180
	j label411
label408:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label40
	j label408
label347:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label389
label407:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label347
label388:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label347
label390:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label96
	j label390
label389:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label15
	j label389
label391:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	j label391
label387:
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
label422:
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label10
	j label422
