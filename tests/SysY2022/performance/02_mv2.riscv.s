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
pcrel464:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel464)
pcrel465:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel465)
pcrel466:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel466)
	ble s0, zero, label4
	ble s0, zero, label52
	li a0, 8040
	mv s6, zero
	mul a0, zero, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
label325:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
label405:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	j label405
label52:
	addiw s4, s4, 1
	ble s0, s4, label4
	ble s0, zero, label52
	li a0, 8040
	mv s6, zero
	mul a0, s4, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	j label325
label4:
	ble s0, zero, label7
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	j label369
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label370
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label12
	mv a3, zero
	ble s0, zero, label36
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, zero, 1
	ble s0, a3, label36
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	j label281
label12:
	ble s0, zero, label89
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label26
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label26
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label26
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label26
	j label339
label89:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label15
	mv a3, zero
	ble s0, zero, label22
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	ble s0, a3, label22
	j label373
label339:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label26
	j label380
label26:
	addiw a1, a2, 4
	ble s0, a1, label136
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label136
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label136
	j label342
label136:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label31
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label31
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label31
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label31
	j label384
label31:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	j label387
label373:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
label271:
	addiw a3, a3, 1
	ble s0, a3, label22
	j label334
label20:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label22
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	ble s0, a3, label22
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	ble s0, a3, label22
label334:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	ble s0, a3, label22
	j label334
label153:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label15
	mv a3, zero
	ble s0, zero, label22
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	ble s0, a3, label22
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	j label271
label22:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label15
	mv a3, zero
	ble s0, zero, label22
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	ble s0, a3, label22
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label20
	j label271
label281:
	addiw a3, a3, 1
	ble s0, a3, label36
	j label349
label47:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	j label399
label206:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label12
	mv a3, zero
	ble s0, zero, label36
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, zero, 1
	ble s0, a3, label36
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	j label281
label36:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label12
	mv a3, zero
	ble s0, zero, label36
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, zero, 1
	ble s0, a3, label36
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	j label281
label349:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, a3, 1
	ble s0, a3, label36
	j label349
label38:
	sh2add t0, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label36
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, a3, 1
	ble s0, a3, label36
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	addiw a3, a3, 1
	ble s0, a3, label36
	j label349
label387:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label153
	j label387
label399:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	j label399
label380:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label26
	j label380
label342:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label136
label383:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label136
	j label383
label384:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label31
	j label384
label370:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label353
label15:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label16
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label353
label16:
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
label353:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label394
label43:
	addiw a1, a2, 4
	ble s0, a1, label194
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label397
label194:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label398
label397:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label397
label398:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label398
label394:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label394
label369:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	j label369
