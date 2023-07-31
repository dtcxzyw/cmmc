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
pcrel204:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a1
	sd s6, 16(sp)
	addi a1, a2, %pcrel_lo(pcrel204)
	sd s3, 24(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s0, 32(sp)
	li a1, 1
	sd s5, 40(sp)
	sd s7, 48(sp)
	sd s8, 56(sp)
	sd s2, 64(sp)
	sd s4, 72(sp)
	sw a1, 0(a2)
	beq a0, s1, label36
pcrel205:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel205)
	sh2add a0, a0, a1
	mv s6, a1
	lw s0, 0(a0)
pcrel206:
	auipc a1, %pcrel_hi(next)
pcrel207:
	auipc a0, %pcrel_hi(to)
	addi s7, a1, %pcrel_lo(pcrel206)
	addi s8, a0, %pcrel_lo(pcrel207)
	j label3
label36:
	li a0, 1
	j label26
label3:
	li a1, -1
	beq s0, a1, label48
	sh2add a1, s0, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label58
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	j label64
label26:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s8, 56(sp)
	ld s2, 64(sp)
	ld s4, 72(sp)
	addi sp, sp, 80
	ret
label64:
	sh2add a1, a0, s6
	lw s2, 0(a1)
label8:
	li a0, -1
	beq s2, a0, label58
	sh2add a1, s2, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label81
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s6
	lw s4, 0(a1)
label13:
	li a0, -1
	beq s4, a0, label81
	sh2add a2, s4, s8
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	beq a2, zero, label17
label16:
	sh2add a0, s4, s7
	lw s4, 0(a0)
	j label13
label17:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s6
	lw s5, 0(a1)
label19:
	li a0, -1
	beq s5, a0, label16
	sh2add a1, s5, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label23
label22:
	sh2add a0, s5, s7
	lw s5, 0(a0)
	j label19
label23:
	mv a1, s1
	jal same
	bne a0, zero, label36
	j label22
label58:
	sh2add a0, s0, s7
	lw s0, 0(a0)
	j label3
label81:
	sh2add a1, s2, s7
	lw s2, 0(a1)
	j label8
label48:
	mv a0, zero
	j label26
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getch
pcrel909:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi s0, a2, %pcrel_lo(pcrel909)
pcrel910:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel910)
pcrel911:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel911)
pcrel912:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel912)
	li a2, 9
	bleu a1, a2, label300
	mv s4, a0
	mv s5, zero
.p2align 2
label286:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s4, a3, label855
	mv a1, s5
.p2align 2
label855:
	li a3, 9
	bleu a2, a3, label638
	mv s4, a0
	mv s5, a1
	j label286
label209:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label306
	j label305
label638:
	mv s5, a1
	j label209
label306:
	mv s4, a0
	mv s6, zero
.p2align 2
label212:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s6, s4, a4
	bgeu a1, a2, label215
	mv s4, a0
	j label212
label215:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label833
	mv s4, s6
label833:
	li a2, 9
	bleu a1, a2, label324
	mv s6, a0
	mv s5, zero
.p2align 2
label217:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s6, a3, label835
	mv a1, s5
.p2align 2
label835:
	li a3, 9
	bleu a2, a3, label332
	mv s6, a0
	mv s5, a1
	j label217
label332:
	mv s5, a1
label220:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label337
	mv s6, a0
	mv s7, zero
.p2align 2
label223:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s7, s6, a2
	bgeu a1, a3, label226
	mv s6, a0
	j label223
label226:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label837
	mv s6, s7
label837:
	mv a2, zero
.p2align 2
label228:
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
	blt a2, a0, label228
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
	bne s6, zero, label235
label234:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label235:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label235
	addiw s6, s6, -1
	li a1, 81
	bne a0, a1, label237
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label564
	j label563
label850:
	mv a1, s10
.p2align 2
label851:
	ble s4, zero, label279
.p2align 2
label606:
	li a2, 1
.p2align 2
label277:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label277
.p2align 2
label279:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label235
	j label234
.p2align 2
label237:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label487
	mv s7, a0
	mv s8, zero
.p2align 2
label257:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s7, a3, label845
	mv a2, s8
.p2align 2
label845:
	li a3, 9
	bleu a1, a3, label557
	mv s7, a0
	mv s8, a2
	j label257
label492:
	mv s9, zero
	j label244
.p2align 2
label493:
	mv s9, zero
.p2align 2
label241:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label244
	mv s7, a0
	j label241
.p2align 2
label557:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label493
	j label492
.p2align 2
label244:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label839
	mv s7, s9
.p2align 2
label839:
	li a2, 9
	bleu a1, a2, label510
	mv s9, a0
	mv s8, zero
.p2align 2
label246:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label841
	mv a2, s8
.p2align 2
label841:
	li a3, 9
	bleu a1, a3, label518
	mv s9, a0
	mv s8, a2
	j label246
.p2align 2
label518:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label868
.p2align 2
label524:
	mv s9, a0
	mv s10, zero
.p2align 2
label254:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s9, a4
	bgeu a1, a2, label549
	mv s9, a0
	j label254
.p2align 2
label842:
	mv a0, s10
.p2align 2
label843:
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
	bne s6, zero, label235
	j label234
.p2align 2
label549:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label843
	j label842
label487:
	mv s7, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label493
	j label492
label510:
	mv s8, zero
	j label249
label868:
	mv s10, zero
	j label252
label249:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label524
	j label868
label252:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label843
	j label842
label563:
	mv s8, zero
	j label264
label872:
	mv s9, zero
	j label270
label264:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label577
	j label872
.p2align 2
label571:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label872
.p2align 2
label577:
	mv s7, a0
	mv s9, zero
.p2align 2
label267:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label270
	mv s7, a0
	j label267
.p2align 2
label270:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label849
	mv s7, s9
.p2align 2
label849:
	li a2, 9
	bleu a1, a2, label594
	mv s9, a0
	mv s8, zero
.p2align 2
label283:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label853
	mv a2, s8
.p2align 2
label853:
	li a3, 9
	bleu a1, a3, label630
	mv s9, a0
	mv s8, a2
	j label283
label599:
	mv s10, zero
	j label275
.p2align 2
label600:
	mv s9, a0
	mv s10, zero
	j label280
label275:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label851
	j label850
.p2align 2
label280:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bgeu a1, a2, label622
	mv s9, a0
	j label280
.p2align 2
label630:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label600
	j label599
.p2align 2
label622:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label851
	mv a1, s10
	bgt s4, zero, label606
	j label279
label594:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label600
	j label599
label337:
	mv s7, zero
	j label226
label324:
	mv s5, zero
	j label220
label305:
	mv s6, zero
	j label215
.p2align 2
label564:
	mv s7, a0
	mv s8, zero
.p2align 2
label261:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s7, a3, label847
	mv a2, s8
.p2align 2
label847:
	li a3, 9
	bleu a1, a3, label571
	mv s7, a0
	mv s8, a2
	j label261
label300:
	mv s5, zero
	j label209
