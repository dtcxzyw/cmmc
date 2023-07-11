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
pcrel407:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel407)
	ble s0, zero, label9
	ble s0, zero, label8
	j label209
label9:
	ble s0, zero, label10
	j label210
label10:
	li a0, 59
	jal _sysy_starttime
pcrel408:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel408)
pcrel409:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel409)
	mv a1, zero
	ble s0, zero, label75
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label40
	sh2add a3, zero, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
label362:
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	j label37
label75:
	mv a2, zero
	li a4, 8040
	mulw a5, zero, a4
	add a3, s2, a5
	ble s0, zero, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	j label337
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
	j label364
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
	j label331
label29:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label30
	ble s0, zero, label75
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label40
	sh2add a3, zero, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	j label362
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
label37:
	addiw a2, a3, 4
	ble s0, a2, label40
	j label362
label337:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	j label355
label40:
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	ble s0, a3, label171
	j label40
label171:
	mv a2, zero
	li a4, 8040
	mulw a5, zero, a4
	add a3, s2, a5
	ble s0, zero, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	j label337
label355:
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	j label355
label36:
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw t3, a5, t1
	addw a5, t2, t3
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	j label355
label33:
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	ble s0, a2, label15
	mv a4, zero
	ble s0, zero, label33
	sh2add t0, zero, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, zero, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label36
	addiw a4, a4, 1
	ble s0, a4, label33
	j label337
label331:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label350
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
	j label331
label350:
	addiw a4, a4, 1
	ble s0, a4, label28
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label26
	j label350
label26:
	sh2add t1, a4, s1
	sh2add t0, a2, a0
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw t2, t2, a5
	sw t2, 0(t0)
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
	j label350
label364:
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label19
	j label364
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
	addiw a4, a4, 1
	ble s0, a4, label28
	j label331
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
