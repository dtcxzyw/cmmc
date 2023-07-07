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
pcrel630:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel630)
pcrel631:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel631)
	ble s0, zero, label94
	ble s0, zero, label5
	slli a0, zero, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	j label414
label94:
	mv s3, zero
	ble s0, zero, label16
	ble s0, zero, label12
	slli a0, zero, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
	j label418
label16:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel632:
	auipc a0, %pcrel_hi(C)
	addi a0, a0, %pcrel_lo(pcrel632)
	mv a3, zero
	ble s0, zero, label132
	ble s0, zero, label22
	j label420
label132:
	mv a3, zero
	slliw a2, zero, 12
	add a2, s1, a2
	ble s0, zero, label161
	mv a4, zero
	ble s0, zero, label43
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label43
	j label164
label35:
	ble s0, zero, label42
	slliw t0, a4, 12
	li t1, 4
	add t0, a0, t0
	ble s0, t1, label183
	j label477
label183:
	mv t1, zero
label37:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
label532:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label42
	j label532
label42:
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	j label429
label477:
	li t1, 4
	mv t3, zero
label39:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label37
	mv t3, t1
	mv t1, t2
	j label39
label429:
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	j label429
label164:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	j label429
label43:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, s1, a2
	ble s0, a3, label161
	mv a4, zero
	ble s0, zero, label43
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label43
	j label164
label161:
	mv a3, zero
	ble s0, zero, label234
	ble s0, zero, label47
	slliw a2, zero, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label245
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label245
	j label488
label518:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label143
	j label468
label234:
	mv a3, zero
	slliw a2, zero, 12
	add a2, a0, a2
	ble s0, zero, label56
	mv a4, zero
	ble s0, zero, label84
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	addiw a4, zero, 1
	j label72
label488:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label245
	j label541
label56:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label268
	mv a3, zero
	ble s0, zero, label132
	ble s0, zero, label22
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label143
	j label518
label268:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label71
	ble s0, zero, label69
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label282
	j label65
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
label72:
	ble s0, a4, label84
	j label308
label75:
	ble s0, zero, label82
	slliw t0, a4, 12
	li t1, 4
	add t0, s1, t0
	ble s0, t1, label326
	j label450
label326:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t4, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
label556:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	j label556
label450:
	li t1, 4
	mv t3, zero
label77:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label80
	mv t3, t1
	mv t1, t2
	j label77
label80:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label82
	j label556
label308:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	j label449
label84:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, a0, a2
	ble s0, a3, label56
	mv a4, zero
	ble s0, zero, label84
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	addiw a4, zero, 1
	ble s0, a4, label84
	j label308
label551:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	j label449
label245:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label47
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label47
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label47
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label47
label542:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label47
	j label542
label143:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label22
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label22
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label22
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label22
label525:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label22
	j label525
label449:
	addiw a4, a4, 1
	ble s0, a4, label84
	j label551
label82:
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label75
	j label449
label541:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label245
	j label541
label22:
	addiw a3, a3, 1
	ble s0, a3, label132
	ble s0, zero, label22
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label143
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label143
label468:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label143
label522:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label143
	j label522
label47:
	addiw a3, a3, 1
	ble s0, a3, label234
	ble s0, zero, label47
	slliw a2, a3, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label245
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label245
	j label488
label282:
	mv a2, a4
	sh2add a4, a4, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label304
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label304
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label304
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label304
label549:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label304
	j label549
label304:
	mv s2, a3
label69:
	addiw a0, a0, 1
	ble s0, a0, label71
	ble s0, zero, label69
	slli a1, a0, 12
	mv a4, zero
	mv a3, s2
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label282
	j label65
label5:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label5
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
label414:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
label510:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	j label510
label12:
	addiw s3, s3, 1
	ble s0, s3, label16
	ble s0, zero, label12
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
label418:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
label516:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label12
	j label516
label65:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	lw a4, 12(a4)
	addw a3, a3, a5
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	ble s0, a2, label282
	j label65
label420:
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label143
	j label518
