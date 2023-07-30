.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
to:
	.zero	20020
.align 8
next:
	.zero	20020
.align 8
head:
	.zero	4020
.align 8
vis:
	.zero	4020
.text
same:
.p2align 2
	addi sp, sp, -80
pcrel198:
	auipc a2, %pcrel_hi(vis)
	sd s1, 72(sp)
	mv s1, a1
	sd s6, 64(sp)
	addi a1, a2, %pcrel_lo(pcrel198)
	sd s3, 56(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s5, 48(sp)
	li a1, 1
	sd s0, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	sw a1, 0(a2)
	beq a0, s1, label36
pcrel199:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel199)
	sh2add a0, a0, a1
	mv s5, a1
	lw s0, 0(a0)
pcrel200:
	auipc a1, %pcrel_hi(next)
pcrel201:
	auipc a0, %pcrel_hi(to)
	addi s7, a1, %pcrel_lo(pcrel200)
	addi s8, a0, %pcrel_lo(pcrel201)
	j label3
label36:
	li a0, 1
	j label26
label3:
	li a1, -1
	bne s0, a1, label5
	mv a0, zero
label26:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s3, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a1, s0, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label6
label58:
	sh2add a0, s0, s7
	lw s0, 0(a0)
	j label3
label6:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s2, 0(a1)
label8:
	li a0, -1
	beq s2, a0, label58
	sh2add a1, s2, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label11
label81:
	sh2add a1, s2, s7
	lw s2, 0(a1)
	j label8
label11:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s4, 0(a1)
label13:
	li a0, -1
	beq s4, a0, label81
	sh2add a2, s4, s8
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	beq a2, zero, label17
label104:
	sh2add a0, s4, s7
	lw s4, 0(a0)
	j label13
label113:
	sh2add a1, a0, s5
	lw s6, 0(a1)
label19:
	li a0, -1
	beq s6, a0, label104
	sh2add a1, s6, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label23
label130:
	sh2add a0, s6, s7
	lw s6, 0(a0)
	j label19
label23:
	mv a1, s1
	jal same
	bne a0, zero, label36
	j label130
label17:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	j label113
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
pcrel895:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi s0, a2, %pcrel_lo(pcrel895)
pcrel896:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel896)
pcrel897:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel897)
pcrel898:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel898)
	li a2, 9
	bgtu a1, a2, label295
	mv s5, zero
	li a2, 10
	bltu a1, a2, label300
.p2align 2
label862:
	mv s6, zero
	j label209
label295:
	mv s4, a0
	mv s6, zero
	j label280
label300:
	mv s4, a0
	mv s6, zero
.p2align 2
label206:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s6, s4, a4
	bgeu a1, a2, label209
	mv s4, a0
	j label206
label209:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label827
	mv s4, s6
label827:
	li a2, 9
	bgtu a1, a2, label319
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label332
	mv s7, zero
	mv a0, zero
	mv s6, zero
label884:
	mv s6, s7
	mv a2, zero
	j label222
label319:
	mv s6, a0
	mv s7, zero
.p2align 2
label211:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s6, a2, label829
	mv s5, s7
.p2align 2
label829:
	li a2, 9
	bgtu a1, a2, label327
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label332
	mv s7, zero
	mv a0, zero
	mv s6, zero
	bne s5, zero, label831
	j label884
label327:
	mv s6, a0
	mv s7, s5
	j label211
label332:
	mv s6, a0
	mv s7, zero
.p2align 2
label217:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s7, s6, a2
	bltu a1, a3, label341
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label831
	j label884
label341:
	mv s6, a0
	j label217
label831:
	mv a2, zero
.p2align 2
label222:
	sh2add a0, a2, s1
	li a1, -1
	addiw a2, a2, 64
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
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	sw a1, 180(a0)
	sw a1, 184(a0)
	sw a1, 188(a0)
	sw a1, 192(a0)
	sw a1, 196(a0)
	sw a1, 200(a0)
	sw a1, 204(a0)
	sw a1, 208(a0)
	sw a1, 212(a0)
	sw a1, 216(a0)
	sw a1, 220(a0)
	sw a1, 224(a0)
	sw a1, 228(a0)
	sw a1, 232(a0)
	sw a1, 236(a0)
	sw a1, 240(a0)
	sw a1, 244(a0)
	sw a1, 248(a0)
	sw a1, 252(a0)
	li a0, 960
	blt a2, a0, label222
	sh2add a0, a2, s1
	mv s5, zero
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
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	bne s6, zero, label229
label228:
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
label229:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label229
	addiw s6, s6, -1
	li a1, 81
	beq a0, a1, label254
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label482
	mv s8, zero
	li a2, 10
	bltu a1, a2, label487
	j label868
.p2align 2
label482:
	mv s9, a0
	mv s7, zero
	j label251
.p2align 2
label487:
	mv s7, a0
	mv s9, zero
.p2align 2
label235:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s9, s7, a2
	bgeu a1, a3, label238
	mv s7, a0
	j label235
.p2align 2
label238:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label833
	mv s7, s9
.p2align 2
label833:
	li a2, 9
	bgtu a1, a2, label505
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label518
	mv s10, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label886:
	mv a0, s10
	j label837
.p2align 2
label505:
	mv s9, a0
	mv s8, zero
.p2align 2
label240:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label835
	mv a2, s8
.p2align 2
label835:
	li a3, 9
	bgtu a1, a3, label513
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label518
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label837
	j label886
.p2align 2
label513:
	mv s9, a0
	mv s8, a2
	j label240
.p2align 2
label518:
	mv s9, a0
	mv s10, zero
	j label248
.p2align 2
label837:
	sh2add a1, s5, s2
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s5, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s5, 0(a3)
	sw s7, 4(a1)
	lw a1, 0(a0)
	sw a1, 4(a2)
	addiw a2, s5, 1
	addiw s5, s5, 2
	sw a2, 0(a0)
	bne s6, zero, label229
	j label228
.p2align 2
label248:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label544
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label837
	j label886
.p2align 2
label544:
	mv s9, a0
	j label248
.p2align 2
label251:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label839
	mv s8, s7
.p2align 2
label839:
	li a2, 9
	bgtu a1, a2, label552
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label487
	j label868
.p2align 2
label552:
	mv s9, a0
	mv s7, s8
	j label251
.p2align 2
label254:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label558
	mv s8, zero
	li a2, 10
	bltu a1, a2, label571
.p2align 2
label875:
	mv s9, zero
	j label264
.p2align 2
label558:
	mv s9, a0
	mv s7, zero
.p2align 2
label255:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label841
	mv s8, s7
.p2align 2
label841:
	li a2, 9
	bgtu a1, a2, label566
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label571
	j label875
.p2align 2
label566:
	mv s9, a0
	mv s7, s8
	j label255
.p2align 2
label571:
	mv s7, a0
	mv s9, zero
.p2align 2
label261:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label264
	mv s7, a0
	j label261
.p2align 2
label264:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label843
	mv s7, s9
.p2align 2
label843:
	li a2, 9
	bgtu a1, a2, label589
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label594
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bgt s4, zero, label600
	j label273
.p2align 2
label589:
	mv s9, a0
	mv s8, zero
	j label277
.p2align 2
label594:
	mv s9, a0
	mv s10, zero
	j label274
.p2align 2
label845:
	ble s4, zero, label273
.p2align 2
label600:
	li a2, 1
.p2align 2
label271:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label271
.p2align 2
label273:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label229
	j label228
.p2align 2
label274:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label617
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label845
	mv a1, s10
	bgt s4, zero, label600
	j label273
.p2align 2
label617:
	mv s9, a0
	j label274
.p2align 2
label277:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label847
	mv a2, s8
.p2align 2
label847:
	li a3, 9
	bgtu a1, a3, label625
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label594
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bne s8, zero, label845
	bgt s4, zero, label600
	j label273
.p2align 2
label625:
	mv s9, a0
	mv s8, a2
	j label277
.p2align 2
label280:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label849
	mv s5, s6
.p2align 2
label849:
	li a2, 9
	bgtu a1, a2, label633
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label300
	j label862
label633:
	mv s4, a0
	mv s6, s5
	j label280
.p2align 2
label868:
	mv s9, zero
	j label238
