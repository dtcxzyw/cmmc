.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel610:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel610)
pcrel611:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel611)
	ble s0, zero, label94
	j label411
label94:
	mv s3, zero
	ble s0, zero, label16
	j label447
label16:
	li a0, 65
	jal _sysy_starttime
pcrel612:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel612)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label132
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label26
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label26
	j label546
label132:
	mv a3, zero
	mv a4, zero
	mv a2, s1
	ble s0, zero, label161
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label35
	li a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label35
	j label423
label161:
	mv a2, zero
	ble s0, zero, label234
	mv a4, zero
	mv a5, zero
	mv a3, s1
	li a4, 4
	ble s0, a4, label52
	mv a5, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label52
	j label580
label234:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	ble s0, zero, label56
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label75
	li a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	j label512
label75:
	ble s0, zero, label76
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label327
	li t1, 4
	mv t3, zero
	j label80
label327:
	mv t1, zero
	j label78
label80:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label78
	mv t3, t1
	mv t1, t2
	j label80
label78:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label76
	j label78
label56:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label268
	mv a2, zero
	ble s0, zero, label132
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label26
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label26
	j label546
label268:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label71
	mv a2, zero
	mv a4, zero
	mv a3, zero
	mv a1, s1
	li a2, 4
	ble s0, a2, label65
	j label68
label512:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
label538:
	addiw a4, a4, 1
	ble s0, a4, label84
	j label569
label84:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label56
	mv a4, zero
	ble s0, zero, label84
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label75
	li a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	j label512
label569:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	j label538
label492:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
label523:
	addiw a4, a4, 1
	ble s0, a4, label43
	j label552
label43:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label161
	mv a4, zero
	ble s0, zero, label43
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label35
	li a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	j label492
label552:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	j label523
label423:
	addiw a4, a4, 1
	ble s0, a4, label43
	j label492
label35:
	ble s0, zero, label42
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label183
	li t1, 4
	mv t3, zero
	j label39
label183:
	mv t1, zero
	j label37
label39:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label37
	mv t3, t1
	mv t1, t2
	j label39
label37:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
	j label37
label42:
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	j label523
label76:
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	j label538
label580:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label52
	j label580
label546:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label26
	j label546
label47:
	addiw a2, a2, 1
	ble s0, a2, label234
	ble s0, zero, label47
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	li a4, 4
	ble s0, a4, label52
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label52
	j label580
label22:
	addiw a2, a2, 1
	ble s0, a2, label132
	ble s0, zero, label22
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s0, a4, label26
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label26
	j label546
label52:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label47
	j label52
label26:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label22
	j label26
label68:
	sh2add a5, a4, a1
	lw a4, 0(a5)
	lw t1, 4(a5)
	addw t0, a3, t1
	lw a3, 8(a5)
	lw t1, 12(a5)
	addw a5, t0, t1
	addw t0, a4, a3
	mv a4, a2
	addw a3, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label65
	j label68
label65:
	sh2add a5, a4, a1
	addiw a4, a4, 1
	lw a2, 0(a5)
	addw a3, a3, a2
	ble s0, a4, label291
	j label65
label291:
	mv s2, a3
	addiw a0, a0, 1
	ble s0, a0, label71
	ble s0, zero, label69
	slli a2, a0, 12
	mv a4, zero
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label65
	j label68
label8:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label8
	j label411
label15:
	addiw s3, s3, 1
	ble s0, s3, label16
	ble s0, zero, label15
	j label447
label69:
	addiw a0, a0, 1
	ble s0, a0, label71
	ble s0, zero, label69
	slli a2, a0, 12
	mv a4, zero
	mv a3, s2
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label65
	j label68
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label6:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label6
label447:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label13:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label15
	j label13
label71:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
