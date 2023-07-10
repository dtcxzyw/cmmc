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
pcrel607:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel607)
pcrel608:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel608)
	ble s0, zero, label94
	ble s0, zero, label84
	j label411
label94:
	mv s3, zero
	ble s0, zero, label6
	ble s0, zero, label79
	j label412
label6:
	li a0, 65
	jal _sysy_starttime
pcrel609:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel609)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label104
	ble s0, zero, label12
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label17
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label17
	j label542
label104:
	mv a3, zero
	slliw a4, zero, 12
	add a2, s1, a4
	ble s0, zero, label133
	mv a4, zero
	ble s0, zero, label33
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	addiw a4, zero, 1
	ble s0, a4, label33
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	j label421
label133:
	mv a2, zero
	ble s0, zero, label206
	ble s0, zero, label37
	slliw a4, zero, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label41
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label41
	j label577
label549:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	j label522
label457:
	li t1, 4
	mv t3, zero
	j label27
label25:
	ble s0, zero, label32
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label155
	j label457
label27:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label30
	mv t3, t1
	mv t1, t2
	j label27
label30:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	j label30
label155:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t5, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label32
	j label30
label206:
	mv a3, zero
	slliw a4, zero, 12
	add a2, a0, a4
	ble s0, zero, label46
	mv a4, zero
	ble s0, zero, label74
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	addiw a4, zero, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	j label439
label46:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label240
	mv a2, zero
	ble s0, zero, label104
	ble s0, zero, label12
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label17
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label17
	j label542
label240:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label61
	ble s0, zero, label51
	slli a2, zero, 12
	mv a3, zero
	mv a4, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label58
	j label57
label61:
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
label439:
	addiw a4, a4, 1
	ble s0, a4, label74
	j label508
label65:
	ble s0, zero, label66
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label299
	j label440
label299:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t6, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	j label71
label440:
	li t1, 4
	mv t3, zero
label68:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label71
	mv t3, t1
	mv t1, t2
	j label68
label71:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label66
	j label71
label508:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	j label534
label74:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label46
	mv a4, zero
	ble s0, zero, label74
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	addiw a4, zero, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	addiw a4, a4, 1
	ble s0, a4, label74
	j label508
label421:
	addiw a4, a4, 1
	ble s0, a4, label33
label490:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
label522:
	addiw a4, a4, 1
	ble s0, a4, label33
	j label549
label33:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label133
	mv a4, zero
	ble s0, zero, label33
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	addiw a4, zero, 1
	ble s0, a4, label33
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	addiw a4, a4, 1
	ble s0, a4, label33
	j label490
label66:
	addiw a4, a4, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	addiw a4, a4, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	addiw a4, a4, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
label534:
	addiw a4, a4, 1
	ble s0, a4, label74
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label65
	j label534
label32:
	addiw a4, a4, 1
	ble s0, a4, label33
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	addiw a4, a4, 1
	ble s0, a4, label33
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	addiw a4, a4, 1
	ble s0, a4, label33
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label25
	j label522
label577:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label39
label37:
	addiw a2, a2, 1
	ble s0, a2, label206
	ble s0, zero, label37
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label41
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label41
	j label577
label39:
	addiw a4, a5, 4
	ble s0, a4, label41
	j label577
label542:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label17
	j label542
label12:
	addiw a2, a2, 1
	ble s0, a2, label104
	ble s0, zero, label12
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label17
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label17
	j label542
label41:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label37
	j label41
label17:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label12
	j label17
label51:
	addiw a0, a0, 1
	ble s0, a0, label61
	ble s0, zero, label51
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label58
label57:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	lw t1, 4(a3)
	addw a4, a4, a5
	addw t0, a4, t1
	lw a4, 8(a3)
	addw a5, t0, a4
	lw t0, 12(a3)
	mv a3, a2
	addw a4, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label58
	j label57
label58:
	sh2add a2, a3, a1
	addiw a3, a3, 1
	lw a5, 0(a2)
	addw a4, a4, a5
	ble s0, a3, label277
	j label58
label277:
	mv s2, a4
	addiw a0, a0, 1
	ble s0, a0, label61
	ble s0, zero, label51
	slli a2, a0, 12
	mv a3, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label58
	j label57
label84:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label84
	j label411
label79:
	addiw s3, s3, 1
	ble s0, s3, label6
	ble s0, zero, label79
	j label412
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label82:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label82
label412:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label77:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label79
	j label77
