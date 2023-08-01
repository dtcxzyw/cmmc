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
.p2align 2
same:
	addi sp, sp, -80
pcrel203:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a1
	sd s6, 16(sp)
	addi a1, a2, %pcrel_lo(pcrel203)
	sd s3, 24(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s5, 32(sp)
	li a1, 1
	sd s0, 40(sp)
	sd s7, 48(sp)
	sd s8, 56(sp)
	sd s2, 64(sp)
	sd s4, 72(sp)
	sw a1, 0(a2)
	beq a0, s1, label36
pcrel204:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel204)
	sh2add a0, a0, a1
	mv s5, a1
	lw s0, 0(a0)
pcrel205:
	auipc a1, %pcrel_hi(next)
pcrel206:
	auipc a0, %pcrel_hi(to)
	addi s7, a1, %pcrel_lo(pcrel205)
	addi s8, a0, %pcrel_lo(pcrel206)
	j label5
label36:
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s7, 48(sp)
	ld s8, 56(sp)
	ld s2, 64(sp)
	ld s4, 72(sp)
	addi sp, sp, 80
	ret
label5:
	li a1, -1
	beq s0, a1, label48
	sh2add a2, s0, s8
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	bne a2, zero, label58
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s2, 0(a1)
label10:
	li a0, -1
	beq s2, a0, label58
	sh2add a1, s2, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label13
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s4, 0(a1)
	j label16
label13:
	sh2add a0, s2, s7
	lw s2, 0(a0)
	j label10
label16:
	li a0, -1
	beq s4, a0, label13
	sh2add a2, s4, s8
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	beq a2, zero, label20
label19:
	sh2add a0, s4, s7
	lw s4, 0(a0)
	j label16
label20:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s6, 0(a1)
label22:
	li a0, -1
	beq s6, a0, label19
	sh2add a1, s6, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label25
label133:
	sh2add a1, s6, s7
	lw s6, 0(a1)
	j label22
label25:
	mv a1, s1
	jal same
	bne a0, zero, label36
	j label133
label58:
	sh2add a0, s0, s7
	lw s0, 0(a0)
	j label5
label48:
	mv a0, zero
	j label2
.p2align 2
.globl main
main:
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
pcrel910:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi s0, a2, %pcrel_lo(pcrel910)
pcrel911:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel911)
pcrel912:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel912)
pcrel913:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel913)
	li a2, 9
	bleu a1, a2, label299
	mv s4, a0
	mv s5, zero
.p2align 2
label208:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s4, a3, label832
	mv a1, s5
.p2align 2
label832:
	li a3, 9
	bleu a2, a3, label307
	mv s4, a0
	mv s5, a1
	j label208
label307:
	mv s5, a1
label211:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label312
	mv s4, a0
	mv s6, zero
.p2align 2
label214:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s6, s4, a2
	bgeu a1, a3, label217
	mv s4, a0
	j label214
label217:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label834
	mv s4, s6
label834:
	li a2, 9
	bleu a1, a2, label331
	mv s6, a0
	mv s5, zero
.p2align 2
label219:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s6, a3, label836
	mv a1, s5
.p2align 2
label836:
	li a3, 9
	bleu a2, a3, label339
	mv s6, a0
	mv s5, a1
	j label219
label339:
	mv s5, a1
label222:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label344
	mv s6, a0
	mv s7, zero
.p2align 2
label225:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label228
	mv s6, a0
	j label225
label228:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label838
	mv s6, s7
label838:
	mv a2, zero
.p2align 2
label230:
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
	blt a2, a0, label230
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
	beq s6, zero, label236
.p2align 2
label237:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label237
	addiw s6, s6, -1
	li a1, 81
	beq a0, a1, label262
	j label239
.p2align 2
label843:
	mv a0, s10
.p2align 2
label844:
	sh2add a1, s5, s2
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s5, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s5, 0(a3)
	sw s7, 4(a1)
	addiw a1, s5, 1
	lw a3, 0(a0)
	addiw s5, s5, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s6, zero, label237
	j label236
.p2align 2
label547:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label844
	j label843
.p2align 2
label262:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label570
	mv s7, a0
	mv s8, zero
.p2align 2
label285:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s7, a3, label854
	mv a2, s8
.p2align 2
label854:
	li a3, 9
	bleu a1, a3, label637
	mv s7, a0
	mv s8, a2
	j label285
label575:
	mv s9, zero
	j label266
.p2align 2
label576:
	mv s7, a0
	mv s9, zero
.p2align 2
label282:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label266
	mv s7, a0
	j label282
.p2align 2
label637:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label576
	j label575
.p2align 2
label239:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label494
	mv s7, a0
	mv s8, zero
.p2align 2
label240:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s7, a3, label840
	mv a2, s8
.p2align 2
label840:
	li a3, 9
	bleu a1, a3, label502
	mv s7, a0
	mv s8, a2
	j label240
.p2align 2
label266:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label848
	mv s7, s9
.p2align 2
label848:
	li a2, 9
	bleu a1, a2, label584
	mv s9, a0
	mv s8, zero
.p2align 2
label279:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label852
	mv a2, s8
.p2align 2
label852:
	li a3, 9
	bleu a1, a3, label620
	mv s9, a0
	mv s8, a2
	j label279
label589:
	mv s10, zero
	j label271
.p2align 2
label590:
	mv s9, a0
	mv s10, zero
	j label276
label271:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label850
	j label849
.p2align 2
label276:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s9, a4
	bgeu a1, a2, label612
	mv s9, a0
	j label276
.p2align 2
label620:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label590
	j label589
.p2align 2
label850:
	ble s4, zero, label275
.p2align 2
label596:
	li a2, 1
.p2align 2
label273:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label273
.p2align 2
label275:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label237
	j label236
.p2align 2
label612:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label850
	mv a1, s10
	bgt s4, zero, label596
	j label275
.p2align 2
label502:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label867
.p2align 2
label508:
	mv s7, a0
	mv s9, zero
.p2align 2
label259:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s9, s7, a2
	bgeu a1, a3, label246
	mv s7, a0
	j label259
.p2align 2
label246:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label842
	mv s7, s9
.p2align 2
label842:
	li a2, 9
	bleu a1, a2, label516
	mv s9, a0
	mv s8, zero
.p2align 2
label256:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label846
	mv a2, s8
.p2align 2
label846:
	li a3, 9
	bleu a1, a3, label555
	mv s9, a0
	mv s8, a2
	j label256
label521:
	mv s10, zero
	j label251
.p2align 2
label522:
	mv s9, a0
	mv s10, zero
	j label253
label251:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label844
	j label843
.p2align 2
label253:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s9, a3
	bgeu a1, a2, label547
	mv s9, a0
	j label253
.p2align 2
label555:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label522
	j label521
label236:
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
label516:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label522
	j label521
label494:
	mv s8, zero
	j label243
label867:
	mv s9, zero
	j label246
label243:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label508
	j label867
label570:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label576
	j label575
label584:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label590
	j label589
label299:
	mv s5, zero
	j label211
label312:
	mv s6, zero
	j label217
label849:
	mv a1, s10
	j label850
label331:
	mv s5, zero
	j label222
label344:
	mv s7, zero
	j label228
