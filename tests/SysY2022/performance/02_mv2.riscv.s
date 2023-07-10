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
pcrel388:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel388)
	ble s0, zero, label9
	ble s0, zero, label8
	j label209
label9:
	ble s0, zero, label10
	j label210
label10:
	li a0, 59
	jal _sysy_starttime
pcrel389:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel389)
pcrel390:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel390)
	mv a1, zero
	ble s0, zero, label75
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label39
	sh2add a3, zero, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	j label346
label75:
	mv a2, zero
	li a5, 8040
	mulw a4, zero, a5
	add a3, s2, a4
	ble s0, zero, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
label325:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	j label341
label33:
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	ble s0, a2, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	j label325
label341:
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	j label341
label35:
	sh2add t2, a4, a0
	sh2add t0, a2, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw t1, t1, a5
	sw t1, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	j label341
label39:
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	ble s0, a3, label166
	j label39
label166:
	mv a2, zero
	li a5, 8040
	mulw a4, zero, a5
	add a3, s2, a4
	ble s0, zero, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label33
	j label325
label15:
	ble s0, zero, label84
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label19
	sh2add a2, zero, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	j label348
label84:
	mv a2, zero
	li a5, 8040
	mulw a4, zero, a5
	add a3, s2, a4
	ble s0, zero, label29
	mv a4, zero
	ble s0, zero, label28
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, zero, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	j label319
label352:
	addiw a4, a4, 1
	ble s0, a4, label28
	j label319
label336:
	addiw a4, a4, 1
	ble s0, a4, label28
	j label353
label26:
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw t3, a5, t2
	addw a5, t1, t3
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label336
label19:
	sh2add a2, a4, a0
	addiw a4, a4, 1
	sw zero, 0(a2)
	ble s0, a4, label101
	j label19
label101:
	mv a2, zero
	li a5, 8040
	mulw a4, zero, a5
	add a3, s2, a4
	ble s0, zero, label29
	mv a4, zero
	ble s0, zero, label28
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, zero, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label352
label29:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label30
	ble s0, zero, label75
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label39
	sh2add a3, zero, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	j label346
label319:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label336
label28:
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	ble s0, a2, label29
	mv a4, zero
	ble s0, zero, label28
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, zero, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	addiw a4, a4, 1
	ble s0, a4, label28
	j label319
label353:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label336
label348:
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	j label348
label346:
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label39
	j label346
label8:
	addiw s1, s1, 1
	ble s0, s1, label9
	ble s0, zero, label8
label209:
	li a1, 8040
	mv s4, zero
	mul a0, s1, a1
	add s3, s2, a0
label6:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label8
	j label6
label30:
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
label210:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label210)
label43:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label10
	j label43
