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
	addi sp, sp, -64
pcrel116:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel116)
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
pcrel117:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel117)
	sh2add a2, a0, a1
	mv s4, a1
pcrel118:
	auipc a0, %pcrel_hi(next)
	lw s0, 0(a2)
	addi s5, a0, %pcrel_lo(pcrel118)
pcrel119:
	auipc a0, %pcrel_hi(to)
	addi s6, a0, %pcrel_lo(pcrel119)
	li a1, -1
	beq s0, a1, label105
label5:
	sh2add a2, s0, s6
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	beq a2, zero, label6
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a1, -1
	bne s0, a1, label5
label105:
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
label24:
	li a0, 1
	j label14
label6:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label24
	sh2add a1, a0, s4
	lw s2, 0(a1)
	li a0, -1
	bne s2, a0, label10
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a1, -1
	bne s0, a1, label5
	j label105
label10:
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label11
	sh2add a1, s2, s5
	lw s2, 0(a1)
	li a0, -1
	bne s2, a0, label10
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a1, -1
	bne s0, a1, label5
	j label105
label11:
	mv a1, s1
	jal same
	bne a0, zero, label24
	sh2add a1, s2, s5
	lw s2, 0(a1)
	li a0, -1
	bne s2, a0, label10
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a1, -1
	bne s0, a1, label5
	j label105
.globl main
main:
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
pcrel644:
	auipc a2, %pcrel_hi(vis)
	or a1, a1, a3
	addi s0, a2, %pcrel_lo(pcrel644)
pcrel645:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel645)
pcrel646:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel646)
pcrel647:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel647)
	bne a1, zero, label214
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label228
	j label609
label214:
	mv s4, a0
	mv s5, zero
label121:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label574
	mv a1, s5
label574:
	bne a2, zero, label223
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label228
	j label609
label223:
	mv s4, a0
	mv s5, a1
	j label121
label228:
	mv s4, a0
	mv s6, zero
	j label198
label127:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label576
	mv s4, s6
label576:
	bne a1, zero, label239
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label253
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
label632:
	mv s5, s7
	mv a2, zero
	j label140
label239:
	mv s5, a0
	mv s6, zero
label129:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label578
	mv a1, s6
label578:
	bne a2, zero, label248
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label253
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label580
	j label632
label248:
	mv s5, a0
	mv s6, a1
	j label129
label253:
	mv s5, a0
	mv s7, zero
label135:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s5, a3
	bltu a1, a2, label264
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label580
	j label632
label264:
	mv s5, a0
	j label135
label580:
	mv a2, zero
label140:
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
	blt a2, a0, label140
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
	beq s5, zero, label146
label147:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label147
	li a1, 81
	bne a0, a1, label149
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label410
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label415
label623:
	mv s9, zero
	j label176
label410:
	mv s9, a0
	mv s7, zero
	j label195
label415:
	mv s7, a0
	mv s9, zero
	j label192
label176:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label590
	mv s7, s9
label590:
	bne a1, zero, label425
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label430
	mv s10, zero
	subw a0, zero, zero
	mv a1, a0
	mv a1, zero
	bgt s4, zero, label436
	j label183
label425:
	mv s9, a0
	mv s8, zero
	j label189
label430:
	mv s9, a0
	mv s10, zero
	j label186
label592:
	ble s4, zero, label183
label436:
	li a2, 1
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label184
	j label183
label186:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label456
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label592
	mv a1, s10
	bgt s4, zero, label436
	j label183
label456:
	mv s9, a0
	j label186
label189:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label594
	mv a2, s8
label594:
	bne a1, zero, label465
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label430
	mv s10, zero
	subw a0, zero, zero
	mv a1, a0
	bne s8, zero, label592
	mv a1, zero
	bgt s4, zero, label436
	j label183
label465:
	mv s9, a0
	mv s8, a2
	j label189
label192:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label176
	mv s7, a0
	j label192
label195:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label596
	mv s8, s7
label596:
	bne a1, zero, label485
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label415
	j label623
label485:
	mv s9, a0
	mv s7, s8
	j label195
label198:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s6, s4, a2
	bgeu a1, a3, label127
	mv s4, a0
	j label198
label146:
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
label149:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label325
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label330
	j label616
label325:
	mv s9, a0
	mv s7, zero
	j label169
label330:
	mv s7, a0
	mv s9, zero
	j label166
label153:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label582
	mv s7, s9
label582:
	bne a1, zero, label340
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label354
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
label634:
	mv a0, s10
	j label586
label340:
	mv s9, a0
	mv s8, zero
label155:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label584
	mv a2, s8
label584:
	bne a1, zero, label349
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label354
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label586
	j label634
label349:
	mv s9, a0
	mv s8, a2
	j label155
label354:
	mv s9, a0
	mv s10, zero
	j label163
label586:
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
	bne s5, zero, label147
	j label146
label163:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label383
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label586
	j label634
label383:
	mv s9, a0
	j label163
label166:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label153
	mv s7, a0
	j label166
label169:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label588
	mv s8, s7
label588:
	bne a1, zero, label403
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label330
	j label616
label403:
	mv s9, a0
	mv s7, s8
	j label169
label616:
	mv s9, zero
	j label153
label183:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label147
	j label146
label609:
	mv s6, zero
	j label127
label184:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label184
	j label183
