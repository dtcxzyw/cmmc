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
pcrel626:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel626)
pcrel627:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel627)
	ble s0, zero, label94
	ble s0, zero, label8
	slli a0, zero, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label504
label94:
	mv s3, zero
	ble s0, zero, label11
	ble s0, zero, label84
	slli a0, zero, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label452
label11:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel628:
	auipc a0, %pcrel_hi(C)
	addi a0, a0, %pcrel_lo(pcrel628)
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label73
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label348
	j label510
label118:
	mv a3, zero
	slliw a2, zero, 12
	add a2, s1, a2
	ble s0, zero, label124
	mv a4, zero
	ble s0, zero, label30
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	j label459
label124:
	mv a3, zero
	ble s0, zero, label197
	ble s0, zero, label40
	slliw a2, zero, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label207
	j label206
label463:
	li t1, 4
	mv t3, zero
	j label27
label22:
	ble s0, zero, label23
	slliw t0, a4, 12
	li t1, 4
	add t0, a0, t0
	ble s0, t1, label147
	j label463
label147:
	mv t1, zero
label25:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label23
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label23
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label23
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label23
	j label516
label27:
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
	ble s0, t2, label25
	mv t3, t1
	mv t1, t2
	j label27
label516:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label23
	j label516
label510:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label348
	j label496
label43:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label231
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label73
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label348
	j label510
label231:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label47
	ble s0, zero, label57
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label245
	j label53
label47:
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
label271:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	j label439
label71:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, a0, a2
	ble s0, a3, label43
	mv a4, zero
	ble s0, zero, label71
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	addiw a4, zero, 1
	ble s0, a4, label71
	j label271
label496:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label348
	j label546
label487:
	li t1, 4
	mv t3, zero
	j label66
label63:
	ble s0, zero, label64
	slliw t0, a4, 12
	li t1, 4
	add t0, s1, t0
	ble s0, t1, label291
	j label487
label291:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t4, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	j label541
label66:
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
	ble s0, t2, label69
	mv t3, t1
	mv t1, t2
	j label66
label541:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	j label541
label69:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label64
	j label541
label439:
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	j label439
label197:
	mv a3, zero
	slliw a2, zero, 12
	add a2, a0, a2
	ble s0, zero, label43
	mv a4, zero
	ble s0, zero, label71
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	addiw a4, zero, 1
	ble s0, a4, label71
	j label271
label127:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	j label419
label30:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, s1, a2
	ble s0, a3, label124
	mv a4, zero
	ble s0, zero, label30
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	addiw a4, zero, 1
	ble s0, a4, label30
	j label127
label459:
	addiw a4, a4, 1
	ble s0, a4, label30
	j label127
label206:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label207
	j label473
label207:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label40
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label40
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label40
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label40
label525:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label40
	j label525
label40:
	addiw a3, a3, 1
	ble s0, a3, label197
	ble s0, zero, label40
	slliw a2, a3, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label207
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label207
	j label473
label348:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label73
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label73
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label73
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label73
label547:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label73
	j label547
label64:
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	addiw a4, a4, 1
	ble s0, a4, label71
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label63
	j label439
label419:
	addiw a4, a4, 1
	ble s0, a4, label30
	j label511
label23:
	addiw a4, a4, 1
	ble s0, a4, label30
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	addiw a4, a4, 1
	ble s0, a4, label30
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	j label419
label511:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label22
	j label419
label473:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label207
label524:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label207
	j label524
label546:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label348
	j label546
label73:
	addiw a3, a3, 1
	ble s0, a3, label118
	ble s0, zero, label73
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label348
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label348
	j label496
label413:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label457
label8:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label8
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label413
label457:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label507
label504:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label413
label507:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label507
label452:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label502
label84:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label84
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label452
label502:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
label552:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label552
label267:
	mv s2, a3
label57:
	addiw a0, a0, 1
	ble s0, a0, label47
	ble s0, zero, label57
	slli a1, a0, 12
	mv a4, zero
	mv a3, s2
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label245
	j label53
label533:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label267
	j label533
label245:
	mv a2, a4
	sh2add a4, a4, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label267
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label267
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label267
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label267
	j label533
label53:
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
	ble s0, a2, label245
	j label53
