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
vis:
	.zero	4020
.text
same:
.p2align 2
	addi sp, sp, -64
pcrel103:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel103)
	sd s3, 40(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s4, 32(sp)
	li a1, 1
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	sw a1, 0(a2)
	beq a0, s1, label24
pcrel104:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel104)
	sh2add a2, a0, a1
	mv s4, a1
pcrel105:
	auipc a0, %pcrel_hi(next)
	lw s0, 0(a2)
	addi s5, a0, %pcrel_lo(pcrel105)
pcrel106:
	auipc a0, %pcrel_hi(to)
	addi s6, a0, %pcrel_lo(pcrel106)
label3:
	li a1, -1
	bne s0, a1, label5
	mv a0, zero
label14:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
label5:
	sh2add a2, s0, s6
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	beq a2, zero, label6
label46:
	sh2add a0, s0, s5
	lw s0, 0(a0)
	j label3
label6:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label24
	sh2add a1, a0, s4
	lw s2, 0(a1)
label8:
	li a0, -1
	beq s2, a0, label46
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label11
label69:
	sh2add a1, s2, s5
	lw s2, 0(a1)
	j label8
label11:
	mv a1, s1
	jal same
	beq a0, zero, label69
label24:
	li a0, 1
	j label14
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s2, 72(sp)
	sd s3, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
pcrel631:
	auipc a2, %pcrel_hi(vis)
	or a1, a1, a3
	addi s0, a2, %pcrel_lo(pcrel631)
pcrel632:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel632)
pcrel633:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel633)
pcrel634:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel634)
	bne a1, zero, label201
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label215
	j label596
label201:
	mv s4, a0
	mv s5, zero
.p2align 2
label108:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label561
	mv a1, s5
.p2align 2
label561:
	bne a2, zero, label210
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label215
	j label596
label210:
	mv s4, a0
	mv s5, a1
	j label108
label215:
	mv s4, a0
	mv s6, zero
	j label185
label114:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label563
	mv s4, s6
label563:
	bne a1, zero, label226
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label240
	mv s7, zero
	mv a0, zero
	mv s5, zero
label619:
	mv s5, s7
	mv a2, zero
	j label127
label226:
	mv s5, a0
	mv s6, zero
.p2align 2
label116:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label565
	mv a1, s6
.p2align 2
label565:
	bne a2, zero, label235
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label240
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label567
	j label619
label235:
	mv s5, a0
	mv s6, a1
	j label116
label240:
	mv s5, a0
	mv s7, zero
.p2align 2
label122:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s5, a3
	bltu a1, a2, label251
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label567
	j label619
label251:
	mv s5, a0
	j label122
label567:
	mv a2, zero
.p2align 2
label127:
	sh2add a0, a2, s1
	li a1, -1
	addiw a2, a2, 16
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
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	li a0, 992
	blt a2, a0, label127
	sh2add a0, a2, s1
	mv s6, zero
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
	beq s5, zero, label133
.p2align 2
label134:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label134
	li a1, 81
	bne a0, a1, label136
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label397
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label402
.p2align 2
label610:
	mv s9, zero
	j label163
.p2align 2
label397:
	mv s9, a0
	mv s7, zero
	j label182
.p2align 2
label402:
	mv s7, a0
	mv s9, zero
	j label179
.p2align 2
label163:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label577
	mv s7, s9
.p2align 2
label577:
	bne a1, zero, label412
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label417
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bgt s4, zero, label423
	j label170
.p2align 2
label412:
	mv s9, a0
	mv s8, zero
	j label176
.p2align 2
label417:
	mv s9, a0
	mv s10, zero
	j label173
.p2align 2
label579:
	ble s4, zero, label170
.p2align 2
label423:
	li a2, 1
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label171
	j label170
.p2align 2
label173:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label443
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label579
	mv a1, s10
	bgt s4, zero, label423
	j label170
.p2align 2
label443:
	mv s9, a0
	j label173
.p2align 2
label176:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label581
	mv a2, s8
.p2align 2
label581:
	bne a1, zero, label452
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label417
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bne s8, zero, label579
	bgt s4, zero, label423
	j label170
.p2align 2
label452:
	mv s9, a0
	mv s8, a2
	j label176
.p2align 2
label179:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label163
	mv s7, a0
	j label179
.p2align 2
label182:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label583
	mv s8, s7
.p2align 2
label583:
	bne a1, zero, label472
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label402
	j label610
.p2align 2
label472:
	mv s9, a0
	mv s7, s8
	j label182
.p2align 2
label185:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s6, s4, a2
	bgeu a1, a3, label114
	mv s4, a0
	j label185
label133:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label136:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label312
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label317
	j label603
.p2align 2
label312:
	mv s9, a0
	mv s7, zero
	j label156
.p2align 2
label317:
	mv s7, a0
	mv s9, zero
	j label153
.p2align 2
label140:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label569
	mv s7, s9
.p2align 2
label569:
	bne a1, zero, label327
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label341
	mv s10, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label621:
	mv a0, s10
	j label573
.p2align 2
label327:
	mv s9, a0
	mv s8, zero
.p2align 2
label142:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label571
	mv a2, s8
.p2align 2
label571:
	bne a1, zero, label336
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label341
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label573
	j label621
.p2align 2
label336:
	mv s9, a0
	mv s8, a2
	j label142
.p2align 2
label341:
	mv s9, a0
	mv s10, zero
	j label150
.p2align 2
label573:
	sh2add a1, s6, s2
	addiw s5, s5, -1
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s6, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	addiw a1, s6, 1
	lw a3, 0(a0)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s5, zero, label134
	j label133
.p2align 2
label150:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label370
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label573
	j label621
.p2align 2
label370:
	mv s9, a0
	j label150
.p2align 2
label153:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label140
	mv s7, a0
	j label153
.p2align 2
label156:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label575
	mv s8, s7
.p2align 2
label575:
	bne a1, zero, label390
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label317
	j label603
.p2align 2
label390:
	mv s9, a0
	mv s7, s8
	j label156
.p2align 2
label603:
	mv s9, zero
	j label140
.p2align 2
label170:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label134
	j label133
.p2align 2
label596:
	mv s6, zero
	j label114
.p2align 2
label171:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label171
	j label170
