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
	li a2, 57
	mv s0, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label77
	mv s1, zero
	j label69
label77:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label82
label81:
	mv s2, zero
	j label5
label82:
	mv a0, zero
	subw a1, zero, zero
	mv s2, a1
	bne s0, zero, label361
	mv s2, zero
pcrel574:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel574)
pcrel575:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel575)
pcrel576:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel576)
	j label23
label69:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label377
	mv a1, s1
label377:
	beq a2, zero, label329
	mv s0, a0
	mv s1, a1
	j label69
label329:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label82
	j label81
label388:
	mv s7, zero
	j label20
label12:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label363
	mv a2, s6
label363:
	beq a1, zero, label122
	mv s5, a0
	mv s6, a2
	j label12
label122:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label127
	j label388
label127:
	mv s7, zero
label18:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label365
	mv a0, s7
label365:
	sh2add a1, s4, s0
	sh2add a2, s4, s3
	sw a0, 0(a1)
	sh2add a1, s4, s1
	sw a0, 0(a2)
	addiw s4, s4, 1
	sw a0, 0(a1)
	beq s2, s4, label23
	j label10
label23:
	mv a0, zero
	ble s2, zero, label26
	li a2, 1
	mv a1, a2
	ble s2, a2, label305
	sh2add a4, a2, s0
	mv a5, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(s0)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	j label531
label20:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label18
	mv s6, a0
	j label20
label26:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(label26)
	li a1, -100
label27:
	ble s2, a2, label162
	sh2add a5, a2, s3
	addiw a2, a2, 1
	lw a3, 0(a5)
	max a1, a1, a3
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, 1
	sw a5, 0(a4)
	j label27
label162:
	mv a4, zero
	mv a2, zero
	blt a1, zero, label34
	mv a5, a0
	lw a3, 0(a0)
	beq a3, zero, label58
	mv a5, s3
	addiw a3, a3, -1
	li a4, 1
	sw zero, 0(s3)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw zero, 0(a5)
	beq a3, zero, label58
	j label533
label305:
	mv a0, a2
	ble s2, a2, label26
	addiw a2, a2, 1
	mv a1, a2
	ble s2, a2, label305
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	j label540
label531:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
label540:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
label528:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	j label528
label533:
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	j label60
label58:
	addiw a2, a2, 1
	blt a1, a2, label34
	sh2add a5, a2, a0
	lw a3, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	j label533
label60:
	sh2add a5, a4, s3
	addiw a3, a3, -1
	addiw a4, a4, 1
	sw a2, 0(a5)
	beq a3, zero, label58
	j label60
label68:
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label68
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble s2, a1, label305
	j label528
label34:
	mv a0, zero
	ble s2, zero, label37
	li a1, 1
	ble s2, a1, label225
	mv a2, a1
	mv a4, zero
	addiw a3, a1, 4
	ble s2, a3, label52
	sh2add a5, a1, s1
	mv t2, s1
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(s1)
	blt t0, t1, label367
	mv a5, zero
	mv t0, s1
	addiw a4, a1, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(s1)
	blt t1, t0, label369
	mv a4, zero
	mv t0, s1
	addiw a5, a1, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(s1)
	blt t1, t0, label371
	mv a5, zero
	mv a4, s1
	addiw a2, a1, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(s1)
	mv a4, a2
	blt t0, t1, label373
	j label551
label37:
	beq s2, zero, label182
	mv a0, zero
	j label38
label182:
	mv a1, zero
	subw a0, zero, s2
	beq a0, zero, label205
	mv a2, s3
	lw a3, 0(s3)
	beq a3, zero, label43
	j label416
label551:
	mv a4, a5
label373:
	mv a2, a3
	addiw a3, a3, 4
	ble s2, a3, label52
label400:
	sh2add a5, a2, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a2
	lw t1, 0(t2)
	blt t0, t1, label367
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a2, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label369
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a2, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label371
	mv a5, a4
	sh2add a4, a4, s1
	addiw a2, a2, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a2
	blt t0, t1, label373
	mv a4, a5
	mv a2, a3
	addiw a3, a3, 4
	ble s2, a3, label52
	j label400
label225:
	mv a3, a0
	sh2add a0, a0, s1
	sh2add a3, a3, s1
	lw a2, 0(a0)
	lw a4, 0(a3)
	sw a4, 0(a0)
	mv a0, a1
	sw a2, 0(a3)
	ble s2, a1, label37
	addiw a1, a1, 1
	ble s2, a1, label225
	mv a2, a1
	mv a4, a0
	addiw a3, a1, 4
	ble s2, a3, label52
	sh2add a5, a1, s1
	sh2add t2, a0, s1
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label367
	mv a5, a0
	sh2add t0, a0, s1
	addiw a4, a1, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label369
	mv a4, a0
	sh2add t0, a0, s1
	addiw a5, a1, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label371
	mv a5, a0
	sh2add a4, a0, s1
	addiw a2, a1, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a2
	blt t0, t1, label373
	j label551
label367:
	sh2add t0, a5, s1
	addiw a4, a2, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label369
	mv a4, a5
label369:
	sh2add t0, a4, s1
	addiw a5, a2, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label371
	mv a5, a4
label371:
	sh2add a4, a5, s1
	addiw a2, a2, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a2
	blt t0, t1, label373
	j label551
label55:
	sh2add a0, a0, s1
	sh2add a3, a3, s1
	lw a2, 0(a0)
	lw a4, 0(a3)
	sw a4, 0(a0)
	mv a0, a1
	sw a2, 0(a3)
	ble s2, a1, label37
	addiw a1, a1, 1
	ble s2, a1, label225
	mv a2, a1
	mv a4, a0
	addiw a3, a1, 4
	ble s2, a3, label52
	sh2add a5, a1, s1
	sh2add t2, a0, s1
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label367
	mv a5, a0
	sh2add t0, a0, s1
	addiw a4, a1, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label369
	mv a4, a0
	sh2add t0, a0, s1
	addiw a5, a1, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label371
	mv a5, a0
	sh2add a4, a0, s1
	addiw a2, a1, 3
	sh2add t2, a2, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a2
	blt t0, t1, label373
	j label551
label52:
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label375
	mv a3, a4
label375:
	addiw a2, a2, 1
	ble s2, a2, label55
	mv a4, a3
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label375
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label55
	sh2add a3, a2, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label375
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label55
	sh2add a3, a2, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label375
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label55
label519:
	mv a4, a3
	sh2add a3, a2, s1
	sh2add t1, a4, s1
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	blt a5, t0, label375
	mv a3, a4
	addiw a2, a2, 1
	ble s2, a2, label55
	j label519
label429:
	mv s4, zero
	j label10
label5:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s2, s1, a4
	bgeu a1, a2, label93
	mv s1, a0
	j label5
label93:
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label361
	mv s2, a0
label361:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label361)
pcrel577:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel577)
pcrel578:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel578)
	beq s2, zero, label23
	j label429
label10:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label113
	mv s6, zero
	j label12
label113:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label127
	j label388
label38:
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
	beq a1, zero, label200
	j label38
label200:
	mv a1, zero
	subw a0, zero, s2
	beq a0, zero, label205
	mv a2, s3
	lw a3, 0(s3)
	beq a3, zero, label43
	j label416
label205:
	li a0, -123
label45:
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
label416:
	li a0, 1
	j label45
label43:
	sh2add a0, a1, s1
	lw a2, 0(a0)
	beq a2, zero, label44
	li a0, 2
	j label45
label44:
	addiw a1, a1, 1
	subw a0, a1, s2
	beq a0, zero, label205
	sh2add a2, a1, s3
	lw a3, 0(a2)
	beq a3, zero, label43
	j label416
