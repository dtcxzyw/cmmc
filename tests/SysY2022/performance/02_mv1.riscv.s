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
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
pcrel415:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel415)
	ble s0, zero, label9
	ble s0, zero, label5
	li a0, 8040
	mv s4, zero
	mul a0, zero, a0
	add s3, s2, a0
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	j label269
label9:
	ble s0, zero, label13
pcrel416:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel416)
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	j label340
label13:
	li a0, 59
	jal _sysy_starttime
pcrel417:
	auipc a1, %pcrel_hi(C)
pcrel418:
	auipc a0, %pcrel_hi(B)
	addi s1, a1, %pcrel_lo(pcrel417)
	addi a0, a0, %pcrel_lo(pcrel418)
	mv a1, zero
	ble s0, zero, label85
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	j label341
label85:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label18
	mv a4, zero
	ble s0, zero, label36
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, zero, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, a4, 1
	ble s0, a4, label36
	j label288
label39:
	sh2add t2, a4, a0
	sh2add t0, a2, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, a4, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, a4, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	j label322
label288:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	j label322
label36:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label18
	mv a4, zero
	ble s0, zero, label36
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, zero, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, a4, 1
	ble s0, a4, label36
	j label288
label365:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	j label365
label181:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label18
	mv a4, zero
	ble s0, zero, label36
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, zero, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	addiw a4, a4, 1
	ble s0, a4, label36
	j label288
label322:
	addiw a4, a4, 1
	ble s0, a4, label36
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label39
	j label322
label18:
	ble s0, zero, label94
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label22
	sh2add a2, zero, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	j label310
label94:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label32
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	j label224
label310:
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	j label345
label224:
	addiw a4, a4, 1
	ble s0, a4, label31
	j label282
label32:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label33
	ble s0, zero, label85
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	j label356
label43:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label181
	j label365
label22:
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	j label348
label111:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label32
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	j label349
label316:
	addiw a4, a4, 1
	ble s0, a4, label31
	j label351
label29:
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	j label316
label349:
	addiw a4, a4, 1
	ble s0, a4, label31
label282:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	j label316
label31:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label32
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, a4, 1
	ble s0, a4, label31
	j label282
label351:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label29
	j label316
label348:
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label111
	j label348
label5:
	addiw s1, s1, 1
	ble s0, s1, label9
	ble s0, zero, label5
	li a0, 8040
	mv s4, zero
	mul a0, s1, a0
	add s3, s2, a0
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
label269:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
label336:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	j label336
label345:
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label22
	j label345
label356:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	j label327
label33:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label341:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
label327:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
label362:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label43
	j label362
label340:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label13
	j label340
