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
pcrel608:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel608)
pcrel609:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel609)
	ble s0, zero, label94
	j label411
label94:
	mv s3, zero
	ble s0, zero, label6
	j label412
label6:
	li a0, 65
	jal _sysy_starttime
pcrel610:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel610)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label104
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label73
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label73
	j label544
label104:
	mv a3, zero
	mv a4, zero
	mv a2, s1
	ble s0, zero, label110
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label17
	li a4, 1
	ble s0, a4, label25
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label17
	addiw a4, a4, 1
	ble s0, a4, label25
	j label488
label110:
	mv a2, zero
	ble s0, zero, label183
	mv a4, zero
	mv a5, zero
	mv a3, s1
	li a4, 4
	ble s0, a4, label33
	mv a5, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label33
	j label576
label183:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	ble s0, zero, label38
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label58
	li a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label58
	addiw a4, a4, 1
	ble s0, a4, label66
	j label507
label563:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	j label534
label473:
	li t1, 4
	mv t3, zero
	j label61
label58:
	ble s0, zero, label59
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label277
	j label473
label277:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	ble s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
label64:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label59
	j label64
label61:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label64
	mv t3, t1
	mv t1, t2
	j label61
label488:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
label521:
	addiw a4, a4, 1
	ble s0, a4, label25
	j label546
label454:
	li t1, 4
	mv t3, zero
	j label21
label17:
	ble s0, zero, label24
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label132
	j label454
label21:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label19
	mv t3, t1
	mv t1, t2
	j label21
label25:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label110
	mv a4, zero
	ble s0, zero, label25
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label17
	li a4, 1
	ble s0, a4, label25
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
	addiw a4, a4, 1
	ble s0, a4, label25
	j label488
label19:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label24
	j label19
label24:
	addiw a4, a4, 1
	ble s0, a4, label25
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
	addiw a4, a4, 1
	ble s0, a4, label25
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
	addiw a4, a4, 1
	ble s0, a4, label25
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
	j label521
label507:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	j label534
label66:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label38
	mv a4, zero
	ble s0, zero, label66
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label58
	li a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	addiw a4, a4, 1
	ble s0, a4, label66
	j label507
label546:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label17
	j label521
label534:
	addiw a4, a4, 1
	ble s0, a4, label66
	j label563
label59:
	addiw a4, a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	addiw a4, a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	addiw a4, a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label58
	j label534
label132:
	mv t1, zero
	j label19
label576:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label33
	j label576
label544:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label70
label38:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label217
	mv a2, zero
	ble s0, zero, label104
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label73
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label73
	j label544
label217:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label53
	mv a2, zero
	mv a3, zero
	mv a4, zero
	mv a1, s1
	li a2, 4
	ble s0, a2, label50
	j label49
label53:
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
label70:
	addiw a4, a5, 4
	ble s0, a4, label73
	j label544
label29:
	addiw a2, a2, 1
	ble s0, a2, label183
	ble s0, zero, label29
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	li a4, 4
	ble s0, a4, label33
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label33
	j label576
label68:
	addiw a2, a2, 1
	ble s0, a2, label104
	ble s0, zero, label68
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s0, a4, label73
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label73
	j label544
label33:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label29
	j label33
label73:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label68
	j label73
label49:
	sh2add a3, a3, a1
	lw t0, 0(a3)
	lw t1, 4(a3)
	addw a5, a4, t0
	lw t0, 8(a3)
	addw a4, a5, t1
	lw t1, 12(a3)
	addw a5, a4, t0
	mv a3, a2
	addw a4, a5, t1
	addiw a2, a2, 4
	ble s0, a2, label50
	j label49
label50:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label254
	j label50
label254:
	mv s2, a4
	addiw a0, a0, 1
	ble s0, a0, label53
	ble s0, zero, label43
	slli a2, a0, 12
	mv a3, zero
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label50
	j label49
label43:
	addiw a0, a0, 1
	ble s0, a0, label53
	ble s0, zero, label43
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label50
	j label49
label81:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label81
	j label411
label76:
	addiw s3, s3, 1
	ble s0, s3, label6
	ble s0, zero, label76
	j label412
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label83:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label81
	j label83
label412:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label78:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label76
	j label78
