.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
que:
	.zero	4020
.align 4
inq:
	.zero	4020
.text
.globl main
main:
	addi sp, sp, -96
	sd s3, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s4, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	slti a1, a0, 48
	li a2, 57
	slt a3, a2, a0
pcrel641:
	auipc a2, %pcrel_hi(que)
	or a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel641)
pcrel642:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel642)
pcrel643:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel643)
pcrel644:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel644)
pcrel645:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel645)
	beq a1, zero, label3
label2:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label3
	j label2
label3:
	addiw a1, a0, -48
	li a0, 10
	bgeu a1, a0, label6
	j label5
label6:
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label131
	mv s6, zero
	j label7
label131:
	mv s6, zero
	addiw a0, s5, -48
	li a1, 10
	bgeu a0, a1, label145
label556:
	mv s7, zero
	j label13
label7:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label522
	mv a1, s6
label522:
	beq a2, zero, label140
	mv s5, a0
	mv s6, a1
	j label7
label140:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label145
	j label556
label145:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label524
	mv s5, zero
	mv a1, zero
	j label18
label13:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s7, s5, a4
	bgeu a1, a2, label16
	mv s5, a0
	j label13
label18:
	sh2add a0, a1, s4
	li a2, -1
	addiw a1, a1, 16
	sw a2, 0(a0)
	sw a2, 4(a0)
	sw a2, 8(a0)
	sw a2, 12(a0)
	sw a2, 16(a0)
	sw a2, 20(a0)
	sw a2, 24(a0)
	sw a2, 28(a0)
	sw a2, 32(a0)
	sw a2, 36(a0)
	sw a2, 40(a0)
	sw a2, 44(a0)
	sw a2, 48(a0)
	sw a2, 52(a0)
	sw a2, 56(a0)
	sw a2, 60(a0)
	li a0, 992
	bge a1, a0, label20
	j label18
label20:
	sh2add a0, a1, s4
	mv s6, zero
	li a1, -1
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	beq s5, zero, label90
label24:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label26
label25:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label26
	j label25
label75:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label90
	j label24
label5:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label6
	j label5
label26:
	li a1, 81
	bne a0, a1, label28
	jal getch
	li a2, 57
	mv s7, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label309
	mv s8, zero
	j label52
label309:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label323
label563:
	mv s9, zero
	j label58
label52:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s7, a3, label534
	mv a2, s8
label534:
	beq a1, zero, label318
	mv s7, a0
	mv s8, a2
	j label52
label318:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label323
	j label563
label323:
	mv s9, zero
	j label61
label58:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label61
	mv s7, a0
	j label58
label61:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label536
	mv s7, s9
label536:
	beq a1, zero, label344
	mv s8, a0
	mv s9, zero
	j label87
label344:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label349
label348:
	mv s10, zero
	j label84
label349:
	mv s10, zero
label66:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label538
	mv a0, s10
	j label538
label84:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bgeu a1, a3, label66
	mv s9, a0
	j label84
label87:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label542
	mv a2, s9
label542:
	beq a1, zero, label425
	mv s8, a0
	mv s9, a2
	j label87
label425:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label349
	j label348
label538:
	sh2add a1, s7, s0
	li a4, 1
	sw a4, 0(a1)
	mv a1, zero
	sw s7, 4(s3)
	mv a3, zero
	ble a4, zero, label72
	li a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label540
	mv a2, zero
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	j label608
label72:
	blt a4, zero, label75
	mv a0, zero
	mv a2, s3
	li a0, 1
	lw a1, 0(s3)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
label73:
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label75
	j label73
label540:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
label608:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	j label624
label387:
	mv a3, a2
	ble a4, a1, label72
	addiw a1, a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label540
	mv a2, a3
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	j label608
label82:
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	j label620
label628:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
	j label620
label624:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label82
label620:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label387
	j label628
label28:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label224
	mv s8, zero
	j label48
label224:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label229
label228:
	mv s9, zero
	j label32
label229:
	mv s9, zero
	j label35
label32:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s9, s7, a2
	bgeu a1, a3, label35
	mv s7, a0
	j label32
label35:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label526
	mv s7, s9
label526:
	beq a1, zero, label250
	mv s8, a0
	mv s9, zero
	j label37
label250:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label264
label559:
	mv s10, zero
	j label43
label37:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label528
	mv a2, s9
label528:
	beq a1, zero, label259
	mv s8, a0
	mv s9, a2
	j label37
label259:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label264
	j label559
label264:
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label530
label560:
	mv a0, s10
	j label530
label43:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s10, s9, a3
	bgeu a1, a2, label46
	mv s9, a0
	j label43
label48:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s7, a3, label532
	mv a2, s8
label532:
	beq a1, zero, label302
	mv s7, a0
	mv s8, a2
	j label48
label302:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label229
	j label228
label46:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label530
	j label560
label530:
	sh2add a1, s6, s1
	addiw s5, s5, -1
	sh2add a3, s7, s4
	sw a0, 0(a1)
	sh2add a2, s6, s2
	lw a4, 0(a3)
	sh2add a0, a0, s4
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	lw a1, 0(a0)
	sw a1, 4(a2)
	addiw a2, s6, 1
	addiw s6, s6, 2
	sw a2, 0(a0)
	beq s5, zero, label90
	j label24
label16:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label524
	mv s5, s7
label524:
	mv a1, zero
	j label18
label90:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s4, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s3, 88(sp)
	addi sp, sp, 96
	ret
