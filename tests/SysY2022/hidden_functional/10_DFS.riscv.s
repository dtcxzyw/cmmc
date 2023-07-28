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
pcrel113:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel113)
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
pcrel114:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel114)
	sh2add a0, a0, a1
	mv s4, a1
	lw s0, 0(a0)
pcrel115:
	auipc a1, %pcrel_hi(next)
pcrel116:
	auipc a0, %pcrel_hi(to)
	addi s5, a1, %pcrel_lo(pcrel115)
	addi s6, a0, %pcrel_lo(pcrel116)
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
	sh2add a1, s0, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label6
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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
pcrel641:
	auipc a3, %pcrel_hi(vis)
	or a1, a1, a2
	addi s0, a3, %pcrel_lo(pcrel641)
pcrel642:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel642)
pcrel643:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel643)
pcrel644:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel644)
	bne a1, zero, label211
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label225
	j label606
label211:
	mv s4, a0
	mv s5, zero
.p2align 2
label118:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label571
	mv a1, s5
.p2align 2
label571:
	bne a2, zero, label220
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label225
	j label606
label220:
	mv s4, a0
	mv s5, a1
	j label118
label225:
	mv s4, a0
	mv s6, zero
	j label195
label124:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label573
	mv s4, s6
label573:
	bne a1, zero, label236
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label250
	mv a0, zero
	mv a1, zero
	mv s5, zero
label629:
	mv s5, a0
	mv a2, zero
	j label137
label236:
	mv s5, a0
	mv s6, zero
.p2align 2
label126:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label575
	mv a1, s6
.p2align 2
label575:
	bne a2, zero, label245
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label250
	mv a0, zero
	mv a1, zero
	mv s5, zero
	bne s6, zero, label577
	j label629
label245:
	mv s5, a0
	mv s6, a1
	j label126
label250:
	mv s5, a0
	mv s7, zero
.p2align 2
label132:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s7, a2
	addi a3, a4, -48
	addw s7, s5, a3
	bltu a1, a2, label259
	mv a0, s7
	subw a1, zero, s7
	mv s5, a1
	bne s6, zero, label577
	j label629
label259:
	mv s5, a0
	j label132
label577:
	mv a2, zero
.p2align 2
label137:
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
	blt a2, a0, label137
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
	beq s5, zero, label143
.p2align 2
label144:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label144
	li a1, 81
	bne a0, a1, label146
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label401
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label406
.p2align 2
label620:
	mv s9, zero
	j label173
.p2align 2
label401:
	mv s9, a0
	mv s7, zero
	j label192
.p2align 2
label406:
	mv s7, a0
	mv s9, zero
	j label189
.p2align 2
label173:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label587
	mv s7, s9
.p2align 2
label587:
	bne a1, zero, label416
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label421
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bgt s4, zero, label427
	j label180
.p2align 2
label416:
	mv s9, a0
	mv s8, zero
	j label186
.p2align 2
label421:
	mv s9, a0
	mv s10, zero
	j label183
.p2align 2
label589:
	ble s4, zero, label180
.p2align 2
label427:
	li a2, 1
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label181
	j label180
.p2align 2
label183:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s10, a2
	addi a3, a4, -48
	addw s10, s9, a3
	bltu a1, a2, label445
	mv a0, s10
	subw a2, zero, s10
	mv a1, a2
	bne s8, zero, label589
	mv a1, s10
	bgt s4, zero, label427
	j label180
.p2align 2
label445:
	mv s9, a0
	j label183
.p2align 2
label186:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s9, a3, label591
	mv a2, s8
.p2align 2
label591:
	bne a1, zero, label454
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label421
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s8, zero, label589
	bgt s4, zero, label427
	j label180
.p2align 2
label454:
	mv s9, a0
	mv s8, a2
	j label186
.p2align 2
label189:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s9, a2
	addi a4, a3, -48
	addw s9, s7, a4
	bgeu a1, a2, label173
	mv s7, a0
	j label189
.p2align 2
label192:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label593
	mv s8, s7
.p2align 2
label593:
	bne a1, zero, label472
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label406
	j label620
.p2align 2
label472:
	mv s9, a0
	mv s7, s8
	j label192
.p2align 2
label195:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s6, a2
	addi a3, a4, -48
	addw s6, s4, a3
	bgeu a1, a2, label124
	mv s4, a0
	j label195
label143:
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
label146:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label320
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label325
	j label613
.p2align 2
label320:
	mv s9, a0
	mv s7, zero
	j label166
.p2align 2
label325:
	mv s7, a0
	mv s9, zero
	j label163
.p2align 2
label150:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label579
	mv s7, s9
.p2align 2
label579:
	bne a1, zero, label335
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label349
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label631:
	mv a1, a0
	j label583
.p2align 2
label335:
	mv s9, a0
	mv s8, zero
.p2align 2
label152:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s9, a3, label581
	mv a2, s8
.p2align 2
label581:
	bne a1, zero, label344
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label349
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s8, zero, label583
	j label631
.p2align 2
label344:
	mv s9, a0
	mv s8, a2
	j label152
.p2align 2
label349:
	mv s9, a0
	mv s10, zero
	j label160
.p2align 2
label583:
	sh2add a0, s6, s2
	addiw s5, s5, -1
	sh2add a3, s7, s1
	sw a1, 0(a0)
	sh2add a2, s6, s3
	lw a4, 0(a3)
	sh2add a1, a1, s1
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a0)
	lw a0, 0(a1)
	sw a0, 4(a2)
	addiw a2, s6, 1
	addiw s6, s6, 2
	sw a2, 0(a1)
	bne s5, zero, label144
	j label143
.p2align 2
label160:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s10, a2
	addi a3, a4, -48
	addw s10, s9, a3
	bltu a1, a2, label376
	mv a0, s10
	subw a2, zero, s10
	mv a1, a2
	bne s8, zero, label583
	j label631
.p2align 2
label376:
	mv s9, a0
	j label160
.p2align 2
label163:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s9, a2
	addi a4, a3, -48
	addw s9, s7, a4
	bgeu a1, a2, label150
	mv s7, a0
	j label163
.p2align 2
label166:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label585
	mv s8, s7
.p2align 2
label585:
	bne a1, zero, label394
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label325
	j label613
.p2align 2
label394:
	mv s9, a0
	mv s7, s8
	j label166
.p2align 2
label613:
	mv s9, zero
	j label150
.p2align 2
label180:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label144
	j label143
.p2align 2
label606:
	mv s6, zero
	j label124
.p2align 2
label181:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label181
	j label180
