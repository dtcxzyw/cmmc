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
	mv s0, a0
pcrel477:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel477)
pcrel478:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel478)
pcrel479:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel479)
	mv s4, zero
	ble s0, zero, label4
	ble s0, zero, label52
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
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
label331:
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
label416:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	j label416
label52:
	addiw s4, s4, 1
	ble s0, s4, label4
	ble s0, zero, label52
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
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
	j label331
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
	j label377
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
	j label378
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label18:
	ble s0, zero, label110
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label32
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label32
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label32
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label32
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label32
	j label395
label110:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	j label386
label25:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
	j label344
label27:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label28
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
	j label394
label28:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label32:
	addiw a1, a2, 4
	ble s0, a1, label157
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label157
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label157
	j label354
label157:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label36
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label36
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label36
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label36
	j label399
label344:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
	j label344
label386:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
label275:
	addiw a3, a3, 1
	ble s0, a3, label26
	j label344
label36:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	j label400
label169:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	j label275
label26:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	j label275
label269:
	addiw a3, a3, 1
	ble s0, a3, label14
	j label338
label16:
	sh2add t0, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	j label338
label411:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	j label411
label211:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label14:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label338:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	j label338
label400:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label169
	j label400
label395:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label32
	j label395
label354:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label157
label398:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label157
	j label398
label399:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label36
	j label399
label378:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label360
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
	j label407
label194:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	j label408
label48:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label211
	j label411
label394:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
label360:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
label404:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label404
label407:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label407
label408:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label48
	j label408
label377:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	j label377
