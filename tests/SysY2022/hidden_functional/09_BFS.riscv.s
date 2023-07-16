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
	li a3, 57
	slt a2, a3, a0
pcrel633:
	auipc a3, %pcrel_hi(que)
	or a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel633)
pcrel634:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel634)
pcrel635:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel635)
pcrel636:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel636)
pcrel637:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel637)
	beq a1, zero, label2
label88:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label2
	j label88
label2:
	addiw a1, a0, -48
	li a0, 10
	bgeu a1, a0, label5
label4:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label5
	j label4
label5:
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label122
	mv s6, zero
	j label6
label122:
	mv s6, zero
	addiw a0, s5, -48
	li a1, 10
	bgeu a0, a1, label136
label544:
	mv s7, zero
	j label12
label6:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label511
	mv a1, s6
label511:
	beq a2, zero, label131
	mv s5, a0
	mv s6, a1
	j label6
label131:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label136
	j label544
label136:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label513
	mv s5, zero
	mv a1, zero
	j label17
label513:
	mv a1, zero
label17:
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
	bge a1, a0, label19
	j label17
label12:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s7, s5, a4
	bgeu a1, a2, label15
	mv s5, a0
	j label12
label19:
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
	beq s5, zero, label23
	j label24
label23:
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
label24:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label25
	j label24
label25:
	li a1, 81
	bne a0, a1, label26
	j label49
label26:
	jal getch
	li a2, 57
	mv s7, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label208
	mv s8, zero
	j label27
label208:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label222
label546:
	mv s9, zero
	j label46
label27:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s7, a3, label515
	mv a2, s8
label515:
	beq a1, zero, label217
	mv s7, a0
	mv s8, a2
	j label27
label217:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label222
	j label546
label222:
	mv s9, zero
	j label33
label46:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label33
	mv s7, a0
	j label46
label49:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label293
	mv s8, zero
	j label85
label293:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label298
	j label297
label68:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label23
	j label24
label297:
	mv s9, zero
	j label53
label298:
	mv s9, zero
	j label56
label85:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s7, a3, label531
	mv a2, s8
label531:
	beq a1, zero, label409
	mv s7, a0
	mv s8, a2
	j label85
label409:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label298
	j label297
label53:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s9, s7, a4
	bgeu a1, a2, label56
	mv s7, a0
	j label53
label33:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label517
	mv s7, s9
label517:
	beq a1, zero, label232
	mv s8, a0
	mv s9, zero
	j label43
label232:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label237
label236:
	mv s10, zero
	j label38
label237:
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label519
	j label547
label38:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s10, s9, a2
	bgeu a1, a3, label41
	mv s9, a0
	j label38
label519:
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
	beq s5, zero, label23
	j label24
label43:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label521
	mv a2, s9
label521:
	beq a1, zero, label275
	mv s8, a0
	mv s9, a2
	j label43
label275:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label237
	j label236
label547:
	mv a0, s10
	j label519
label41:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label519
	j label547
label56:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label523
	mv s7, s9
label523:
	beq a1, zero, label319
	mv s8, a0
	mv s9, zero
	j label82
label319:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label324
label323:
	mv s10, zero
	j label79
label324:
	mv s10, zero
label61:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label525
	mv a0, s10
label525:
	sh2add a1, s7, s0
	li a4, 1
	sw a4, 0(a1)
	mv a1, zero
	sw s7, 4(s3)
	mv a3, zero
	ble a4, zero, label67
	li a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label527
	mv a2, zero
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	j label603
label67:
	blt a4, zero, label68
	mv a0, zero
	mv a5, s3
	li a0, 1
	lw a2, 0(s3)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	j label69
label79:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s10, s9, a3
	bgeu a1, a2, label61
	mv s9, a0
	j label79
label82:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label529
	mv a2, s9
label529:
	beq a1, zero, label400
	mv s8, a0
	mv s9, a2
	j label82
label400:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label324
	j label323
label527:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	j label597
label362:
	mv a3, a2
	ble a4, a1, label67
	addiw a1, a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label527
	mv a2, a3
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	j label597
label76:
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	j label608
label603:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
label597:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
label608:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label362
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	j label608
label69:
	sh2add a5, a0, s3
	addiw a0, a0, 1
	lw a2, 0(a5)
	sh2add a1, a2, s0
	sw zero, 0(a1)
	blt a4, a0, label68
	j label69
label15:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label513
	mv s5, s7
	j label513
