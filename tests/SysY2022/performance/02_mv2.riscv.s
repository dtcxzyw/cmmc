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
pcrel486:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel486)
pcrel487:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel487)
pcrel488:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel488)
	ble s0, zero, label9
	ble s0, zero, label8
	li a0, 8040
	mv s6, zero
	mul a0, zero, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label380
label9:
	ble s0, zero, label12
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
	j label386
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label17
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label389
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label28
	mv a3, zero
	ble s0, zero, label52
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	addiw a3, zero, 1
	ble s0, a3, label52
	j label213
label28:
	ble s0, zero, label140
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label41
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label41
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label41
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label41
	j label365
label140:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label37
	mv a3, zero
	ble s0, zero, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	ble s0, a3, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	j label282
label37:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label38
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label17
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label407
label365:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label41
	j label408
label282:
	addiw a3, a3, 1
	ble s0, a3, label33
	j label358
label33:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label37
	mv a3, zero
	ble s0, zero, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	ble s0, a3, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	j label282
label358:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	ble s0, a3, label33
	j label358
label294:
	addiw a3, a3, 1
	ble s0, a3, label52
	j label375
label52:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label28
	mv a3, zero
	ble s0, zero, label52
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	addiw a3, zero, 1
	ble s0, a3, label52
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	j label294
label375:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	j label418
label213:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	j label294
label21:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	j label393
label116:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label28
	mv a3, zero
	ble s0, zero, label52
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	addiw a3, zero, 1
	ble s0, a3, label52
	j label213
label54:
	sh2add t1, a3, s2
	sh2add a5, a1, s1
	addiw a3, a3, 1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	ble s0, a3, label52
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	addiw a3, a3, 1
	ble s0, a3, label52
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label54
	addiw a3, a3, 1
	ble s0, a3, label52
	j label375
label36:
	sh2add t0, a3, s1
	sh2add a5, a1, s2
	addiw a3, a3, 1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	ble s0, a3, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	ble s0, a3, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	ble s0, a3, label33
	j label358
label418:
	addiw a3, a3, 1
	ble s0, a3, label52
	j label375
label393:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label116
	j label393
label301:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label341
label8:
	addiw s4, s4, 1
	ble s0, s4, label9
	ble s0, zero, label8
	li a0, 8040
	mv s6, zero
	mul a0, s4, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label301
label380:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label301
label341:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
label384:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label384
label41:
	addiw a1, a2, 4
	ble s0, a1, label183
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label183
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label183
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label183
	j label409
label183:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label412
label47:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	j label415
label205:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label37
	mv a3, zero
	ble s0, zero, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	ble s0, a3, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label36
	j label282
label415:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label205
	j label415
label17:
	addiw a1, a2, 4
	ble s0, a1, label104
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label104
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label104
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label104
	j label391
label104:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	j label392
label412:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label412
label409:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label183
	j label409
label408:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label41
	j label408
label407:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label348
label38:
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
label389:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
label348:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label390
label392:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	j label392
label390:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label17
	j label390
label391:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label104
	j label391
label386:
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
label388:
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label12
	j label388
