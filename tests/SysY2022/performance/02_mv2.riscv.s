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
pcrel491:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel491)
pcrel492:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel492)
pcrel493:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel493)
	ble s0, zero, label4
	ble s0, zero, label52
	li a0, 8040
	mv s6, zero
	mul a0, zero, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	j label338
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
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
label338:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
label427:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label52
	j label427
label4:
	ble s0, zero, label7
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
label387:
	jal getint
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label7
	j label387
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label12
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	j label388
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label29
	mv a3, zero
	ble s0, zero, label28
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, zero, 1
	ble s0, a3, label28
label126:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	j label277
label28:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label29
	mv a3, zero
	ble s0, zero, label28
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, zero, 1
	ble s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	j label277
label29:
	ble s0, zero, label148
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label43
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label415
label43:
	addiw a1, a2, 4
	ble s0, a1, label196
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label196
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label196
	j label373
label148:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label38
	mv a3, zero
	ble s0, zero, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	ble s0, a3, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
label284:
	addiw a3, a3, 1
	ble s0, a3, label34
label363:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	ble s0, a3, label34
	j label363
label38:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label39
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label12
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	j label414
label422:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	j label422
label213:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label38
	mv a3, zero
	ble s0, zero, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	ble s0, a3, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	j label284
label34:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label38
	mv a3, zero
	ble s0, zero, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	ble s0, a3, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	j label284
label277:
	addiw a3, a3, 1
	ble s0, a3, label28
label354:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, a3, 1
	ble s0, a3, label28
	j label354
label37:
	sh2add t0, a3, s1
	sh2add a5, a1, s2
	addiw a3, a3, 1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	ble s0, a3, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	ble s0, a3, label34
	j label363
label27:
	sh2add t0, a3, s2
	sh2add a5, a1, s1
	addiw a3, a3, 1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	ble s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, a3, 1
	ble s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, a3, 1
	ble s0, a3, label28
	j label354
label373:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label196
	j label418
label196:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	j label419
label48:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label213
	j label422
label12:
	addiw a1, a2, 4
	ble s0, a1, label90
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label90
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label90
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label90
	j label390
label90:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label16
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label16
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label16
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label16
	j label391
label16:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	j label392
label102:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label29
	mv a3, zero
	ble s0, zero, label28
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label27
	addiw a3, zero, 1
	ble s0, a3, label28
	j label126
label392:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s0, a1, label102
	j label392
label419:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	j label419
label418:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label196
	j label418
label415:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label415
label388:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
label346:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
label389:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	j label389
label414:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label12
	j label346
label39:
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
label390:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label90
	j label390
label391:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label16
	j label391
