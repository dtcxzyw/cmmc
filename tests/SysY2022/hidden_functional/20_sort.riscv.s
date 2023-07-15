.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
c:
	.zero	400020
.text
.globl main
main:
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a1, 57
	mv s0, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label77
	mv s1, zero
	j label2
label77:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label91
label387:
	mv s2, zero
	j label8
label2:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label361
	mv a1, s1
label361:
	beq a2, zero, label86
	mv s0, a0
	mv s1, a1
	j label2
label86:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label91
	j label387
label91:
	mv a0, zero
	subw a1, zero, zero
	mv s2, a1
	bne s0, zero, label363
	mv s2, zero
pcrel571:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel571)
pcrel572:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel572)
pcrel573:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel573)
	j label26
label430:
	mv s4, zero
	j label13
label363:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label363)
pcrel574:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel574)
pcrel575:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel575)
	beq s2, zero, label26
	j label430
label13:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label122
	mv s6, zero
	j label15
label122:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label136
label389:
	mv s7, zero
	j label23
label15:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label365
	mv a2, s6
label365:
	beq a1, zero, label131
	mv s5, a0
	mv s6, a2
	j label15
label131:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label136
	j label389
label136:
	mv s7, zero
label21:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label367
	mv a0, s7
label367:
	sh2add a1, s4, s0
	sh2add a2, s4, s3
	sw a0, 0(a1)
	sh2add a1, s4, s1
	sw a0, 0(a2)
	addiw s4, s4, 1
	sw a0, 0(a1)
	beq s2, s4, label26
	j label13
label26:
	mv a0, zero
	ble s2, zero, label29
	li a2, 1
	mv a1, a2
	ble s2, a2, label314
	sh2add a4, a2, s0
	mv a5, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(s0)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	j label532
label23:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s7, s6, a3
	bgeu a1, a2, label21
	mv s6, a0
	j label23
label29:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(label29)
	li a1, -100
label30:
	ble s2, a2, label171
	sh2add a5, a2, s3
	addiw a2, a2, 1
	lw a3, 0(a5)
	max a1, a1, a3
	sh2add a4, a3, a0
	lw a5, 0(a4)
	addiw t0, a5, 1
	sw t0, 0(a4)
	j label30
label171:
	mv a4, zero
	mv a2, zero
	blt a1, zero, label37
	mv a5, a0
	lw a3, 0(a0)
	beq a3, zero, label61
	mv a5, s3
	addiw a3, a3, -1
	li a4, 1
	sw zero, 0(s3)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label61
	j label534
label541:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	j label529
label314:
	mv a0, a2
	ble s2, a2, label29
	addiw a2, a2, 1
	mv a1, a2
	ble s2, a2, label314
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	j label541
label71:
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
label529:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label314
	j label529
label532:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label71
	j label541
label534:
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
label63:
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	j label63
label37:
	mv a1, zero
	ble s2, zero, label50
	li a0, 1
	ble s2, a0, label193
	mv a2, a0
	mv a4, zero
	addiw a3, a0, 4
	ble s2, a3, label45
	sh2add a5, a0, s1
	mv t2, s1
	lw t0, 0(a5)
	mv a5, a0
	lw t1, 0(s1)
	blt t0, t1, label369
	mv a5, zero
	mv t0, s1
	addiw a4, a0, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(s1)
	mv t0, a4
	blt t1, t2, label371
	mv t0, zero
	mv a5, s1
	addiw a4, a0, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(s1)
	blt t1, a5, label373
	mv a4, zero
	mv a5, s1
	addiw a2, a0, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(s1)
	mv a5, a2
	blt t0, t1, label375
	j label552
label395:
	mv a0, zero
	j label51
label50:
	beq s2, zero, label255
	j label395
label255:
	mv a1, zero
	subw a0, zero, s2
	beq a0, zero, label278
	mv a2, s3
	lw a3, 0(s3)
	beq a3, zero, label56
label421:
	li a0, 1
	j label58
label278:
	li a0, -123
	j label58
label56:
	sh2add a0, a1, s1
	lw a2, 0(a0)
	beq a2, zero, label57
	li a0, 2
	j label58
label57:
	addiw a1, a1, 1
	subw a0, a1, s2
	beq a0, zero, label278
	sh2add a2, a1, s3
	lw a3, 0(a2)
	beq a3, zero, label56
	j label421
label58:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
label61:
	addiw a2, a2, 1
	blt a1, a2, label37
	sh2add a5, a2, a0
	lw a3, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label61
	j label534
label552:
	mv a5, a4
	j label375
label193:
	mv a3, a1
	sh2add a1, a1, s1
	sh2add a3, a3, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	ble s2, a0, label50
	addiw a0, a0, 1
	ble s2, a0, label193
	mv a2, a0
	mv a4, a1
	addiw a3, a0, 4
	ble s2, a3, label45
	sh2add a5, a0, s1
	sh2add t2, a1, s1
	lw t0, 0(a5)
	mv a5, a0
	lw t1, 0(t2)
	blt t0, t1, label369
	mv a5, a1
	sh2add t0, a1, s1
	addiw a4, a0, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label371
	mv t0, a1
	sh2add a5, a1, s1
	addiw a4, a0, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(a5)
	blt t1, a5, label373
	mv a4, a1
	sh2add a5, a1, s1
	addiw a2, a0, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a2
	blt t0, t1, label375
	j label552
label45:
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label377
	mv a3, a4
	j label377
label369:
	sh2add t0, a5, s1
	addiw a4, a2, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label371
	mv t0, a5
label371:
	sh2add a5, t0, s1
	addiw a4, a2, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(a5)
	blt t1, a5, label373
	mv a4, t0
label373:
	sh2add a5, a4, s1
	addiw a2, a2, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a2
	blt t0, t1, label375
	j label552
label375:
	mv a2, a3
	mv a4, a5
	addiw a3, a3, 4
	ble s2, a3, label45
label399:
	sh2add a5, a2, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a2
	lw t1, 0(t2)
	blt t0, t1, label369
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a2, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label371
	mv t0, a5
	sh2add a5, a5, s1
	addiw a4, a2, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(a5)
	blt t1, a5, label373
	mv a4, t0
	sh2add a5, t0, s1
	addiw a2, a2, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a2
	blt t0, t1, label375
	mv a5, a4
	mv a2, a3
	addiw a3, a3, 4
	ble s2, a3, label45
	j label399
label377:
	addiw a2, a2, 1
	ble s2, a2, label48
	mv a4, a3
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label377
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label48
	sh2add a3, a2, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label377
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label48
	sh2add a3, a2, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label377
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label48
label520:
	mv a4, a3
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label377
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label48
	j label520
label48:
	sh2add a1, a1, s1
	sh2add a3, a3, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	ble s2, a0, label50
	addiw a0, a0, 1
	ble s2, a0, label193
	mv a2, a0
	mv a4, a1
	addiw a3, a0, 4
	ble s2, a3, label45
	sh2add a5, a0, s1
	sh2add t2, a1, s1
	lw t0, 0(a5)
	mv a5, a0
	lw t1, 0(t2)
	blt t0, t1, label369
	mv a5, a1
	sh2add t0, a1, s1
	addiw a4, a0, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label371
	mv t0, a1
	sh2add a5, a1, s1
	addiw a4, a0, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(a5)
	blt t1, a5, label373
	mv a4, a1
	sh2add a5, a1, s1
	addiw a2, a0, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a2
	blt t0, t1, label375
	j label552
label8:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s2, s1, a2
	bgeu a1, a3, label102
	mv s1, a0
	j label8
label102:
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label363
	mv s2, a0
	j label363
label51:
	sh2add a2, a0, s3
	sh2add a4, a0, s0
	lw a3, 0(a2)
	lw a1, 0(a4)
	subw a3, a3, a1
	sw a3, 0(a2)
	sh2add a2, a0, s1
	addiw a0, a0, 1
	lw a4, 0(a2)
	subw a3, a4, a3
	subw a1, a3, a1
	sw a1, 0(a2)
	subw a1, s2, a0
	beq a1, zero, label273
	j label51
label273:
	mv a1, zero
	subw a0, zero, s2
	beq a0, zero, label278
	mv a2, s3
	lw a3, 0(s3)
	beq a3, zero, label56
	j label421
