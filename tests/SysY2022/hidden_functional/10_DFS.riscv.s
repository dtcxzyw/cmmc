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
	addi sp, sp, -88
pcrel205:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a1
	sd s6, 16(sp)
	addi s6, a2, %pcrel_lo(pcrel205)
	sd s1, 24(sp)
	sh2add a1, a0, s6
	sd s4, 32(sp)
	li s4, 1
	sd s7, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s3, 80(sp)
	sw s4, 0(a1)
	beq a0, s2, label36
pcrel206:
	auipc a2, %pcrel_hi(head)
	addi s7, a2, %pcrel_lo(pcrel206)
pcrel207:
	auipc a2, %pcrel_hi(next)
	sh2add a1, a0, s7
	addi s8, a2, %pcrel_lo(pcrel207)
pcrel208:
	auipc a0, %pcrel_hi(to)
	lw s0, 0(a1)
	addi s9, a0, %pcrel_lo(pcrel208)
	j label3
label36:
	mv a0, s4
	j label26
label3:
	li a1, -1
	beq s0, a1, label48
	sh2add a3, s0, s9
	lw a0, 0(a3)
	sh2add a1, a0, s6
	lw a2, 0(a1)
	bne a2, zero, label6
	sw s4, 0(a1)
	beq s2, a0, label36
	j label67
label26:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s7, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s3, 80(sp)
	addi sp, sp, 88
	ret
label6:
	sh2add a0, s0, s8
	lw s0, 0(a0)
	j label3
label67:
	sh2add a1, a0, s7
	lw s1, 0(a1)
label9:
	li a0, -1
	beq s1, a0, label6
	sh2add a1, s1, s9
	lw a0, 0(a1)
	sh2add a3, a0, s6
	lw a2, 0(a3)
	bne a2, zero, label12
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s3, 0(a1)
	j label15
label12:
	sh2add a0, s1, s8
	lw s1, 0(a0)
	j label9
label15:
	li a0, -1
	beq s3, a0, label12
	sh2add a1, s3, s9
	lw a0, 0(a1)
	sh2add a3, a0, s6
	lw a2, 0(a3)
	beq a2, zero, label19
label18:
	sh2add a0, s3, s8
	lw s3, 0(a0)
	j label15
label19:
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s5, 0(a1)
label21:
	li a0, -1
	beq s5, a0, label18
	sh2add a2, s5, s9
	lw a0, 0(a2)
	sh2add a3, a0, s6
	lw a1, 0(a3)
	beq a1, zero, label25
label24:
	sh2add a0, s5, s8
	lw s5, 0(a0)
	j label21
label25:
	mv a1, s2
	jal same
	bne a0, zero, label36
	j label24
label48:
	mv a0, zero
	j label26
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s4, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s3, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s7, 960
	addiw a1, a0, -48
	li s0, 10
pcrel992:
	auipc a4, %pcrel_hi(vis)
pcrel993:
	auipc a2, %pcrel_hi(to)
	li s6, -1
	li s1, 9
	li s2, 45
	addi a3, a4, %pcrel_lo(pcrel992)
	addi s5, a2, %pcrel_lo(pcrel993)
pcrel994:
	auipc a4, %pcrel_hi(head)
	sd a3, 104(sp)
	addi a2, a4, %pcrel_lo(pcrel994)
pcrel995:
	auipc a3, %pcrel_hi(next)
	sd a2, 112(sp)
	addi s4, a3, %pcrel_lo(pcrel995)
	li a2, -1
	slli s8, a2, 32
	bleu a1, s1, label308
	mv s3, a0
	mv s9, zero
.p2align 2
label294:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label933
	mv a1, s9
.p2align 2
label933:
	bleu a2, s1, label643
	mv s3, a0
	mv s9, a1
	j label294
label210:
	addiw a1, a0, -48
	bltu a1, s0, label314
	j label313
label643:
	mv s9, a1
	j label210
label308:
	mv s9, zero
	j label210
label314:
	mv s3, a0
	mv s10, zero
.p2align 2
label213:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s3, a4
	bgeu a1, s0, label216
	mv s3, a0
	j label213
label216:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s3, a2
	bne s9, zero, label911
	mv s3, s10
label911:
	bleu a1, s1, label331
	mv s9, a0
	mv s10, zero
.p2align 2
label218:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label913
	mv a1, s10
.p2align 2
label913:
	bleu a2, s1, label339
	mv s9, a0
	mv s10, a1
	j label218
label339:
	mv s9, a1
label221:
	addiw a2, a0, -48
	bgeu a2, s0, label344
	mv s10, a0
	mv s11, zero
.p2align 2
label224:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s0, label227
	mv s10, a0
	j label224
label227:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label915
	mv a1, s11
label915:
	ld a2, 112(sp)
	mv a3, zero
	mv a0, a2
.p2align 2
label229:
	add.uw a2, s6, s8
	addiw a3, a3, 64
	sd a2, 0(a0)
	sd a2, 8(a0)
	sd a2, 16(a0)
	sd a2, 24(a0)
	sd a2, 32(a0)
	sd a2, 40(a0)
	sd a2, 48(a0)
	sd a2, 56(a0)
	sd a2, 64(a0)
	sd a2, 72(a0)
	sd a2, 80(a0)
	sd a2, 88(a0)
	sd a2, 96(a0)
	sd a2, 104(a0)
	sd a2, 112(a0)
	sd a2, 120(a0)
	sd a2, 128(a0)
	sd a2, 136(a0)
	sd a2, 144(a0)
	sd a2, 152(a0)
	sd a2, 160(a0)
	sd a2, 168(a0)
	sd a2, 176(a0)
	sd a2, 184(a0)
	sd a2, 192(a0)
	sd a2, 200(a0)
	sd a2, 208(a0)
	sd a2, 216(a0)
	sd a2, 224(a0)
	sd a2, 232(a0)
	sd a2, 240(a0)
	sd a2, 248(a0)
	bge a3, s7, label232
	addi a0, a0, 256
	j label229
label232:
	ld a2, 112(sp)
	mv s7, a1
	sh2add a0, a3, a2
	sw s6, 0(a0)
	sw s6, 4(a0)
	sw s6, 8(a0)
	sw s6, 12(a0)
	sw s6, 16(a0)
	sw s6, 20(a0)
	sw s6, 24(a0)
	sw s6, 28(a0)
	sw s6, 32(a0)
	sw s6, 36(a0)
	sw s6, 40(a0)
	sw s6, 44(a0)
	sw s6, 48(a0)
	sw s6, 52(a0)
	sw s6, 56(a0)
	sw s6, 60(a0)
	sw s6, 64(a0)
	sw s6, 68(a0)
	sw s6, 72(a0)
	sw s6, 76(a0)
	sw s6, 80(a0)
	sw s6, 84(a0)
	sw s6, 88(a0)
	sw s6, 92(a0)
	sw s6, 96(a0)
	sw s6, 100(a0)
	sw s6, 104(a0)
	sw s6, 108(a0)
	sw s6, 112(a0)
	sw s6, 116(a0)
	sw s6, 120(a0)
	sw s6, 124(a0)
	sw s6, 128(a0)
	sw s6, 132(a0)
	sw s6, 136(a0)
	sw s6, 140(a0)
	sw s6, 144(a0)
	sw s6, 148(a0)
	sw s6, 152(a0)
	sw s6, 156(a0)
	sw s6, 160(a0)
	sw s6, 164(a0)
	sw s6, 168(a0)
	sw s6, 172(a0)
	sw s6, 176(a0)
	mv s6, zero
	beq a1, zero, label238
.p2align 2
label239:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label239
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label264
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label493
	j label492
.p2align 2
label920:
	mv a0, s11
.p2align 2
label921:
	sw a0, 0(s5)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	sh2add a3, s8, a2
	addiw a0, s6, 1
	lw a4, 0(a3)
	sw a4, 0(s4)
	sw s6, 0(a3)
	addiw s6, s6, 2
	sw s8, 4(s5)
	addi s5, s5, 8
	lw a2, 0(a1)
	sw a2, 4(s4)
	addi s4, s4, 8
	sw a0, 0(a1)
	bne s7, zero, label239
	j label238
.p2align 2
label552:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label921
	j label920
.p2align 2
label264:
	jal getch
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, s1, label566
	mv s9, zero
.p2align 2
label290:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label931
	mv a1, s9
.p2align 2
label931:
	bleu a2, s1, label634
	mv s8, a0
	mv s9, a1
	j label290
label571:
	mv s10, zero
	j label268
.p2align 2
label572:
	mv s10, zero
	j label287
.p2align 2
label634:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label572
	j label571
.p2align 2
label287:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s10, s8, a2
	bgeu a1, s0, label268
	mv s8, a0
	j label287
.p2align 2
label268:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label925
	mv s8, s10
.p2align 2
label925:
	bleu a1, s1, label580
	mv s9, a0
	mv s10, zero
.p2align 2
label284:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label929
	mv a1, s10
.p2align 2
label929:
	bleu a2, s1, label617
	mv s9, a0
	mv s10, a1
	j label284
label585:
	mv s11, zero
	j label276
.p2align 2
label586:
	mv s10, a0
	mv s11, zero
	j label273
label276:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label927
	j label926
.p2align 2
label617:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label586
	j label585
label926:
	mv a1, s11
.p2align 2
label927:
	ble s3, zero, label278
.p2align 2
label279:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
.p2align 2
label280:
	sw zero, 0(a0)
	addiw a2, a2, 1
	blt s3, a2, label278
	addi a0, a0, 4
	j label280
.p2align 2
label273:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label594
	mv s10, a0
	j label273
.p2align 2
label278:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label239
	j label238
.p2align 2
label594:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label927
	mv a1, s11
	bgt s3, zero, label279
	j label278
label580:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label586
	j label585
label238:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s3, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label566:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label572
	j label571
label492:
	mv s9, zero
	j label245
label949:
	mv s10, zero
	j label251
label245:
	addiw a2, a0, -48
	bltu a2, s0, label506
	j label949
.p2align 2
label500:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label949
.p2align 2
label506:
	mv s8, a0
	mv s10, zero
.p2align 2
label248:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, s0, label251
	mv s8, a0
	j label248
.p2align 2
label251:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label919
	mv s8, s10
.p2align 2
label919:
	bleu a1, s1, label523
	mv s9, a0
	mv s10, zero
.p2align 2
label261:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label923
	mv a1, s10
.p2align 2
label923:
	bleu a2, s1, label560
	mv s9, a0
	mv s10, a1
	j label261
label528:
	mv s11, zero
	j label256
.p2align 2
label529:
	mv s10, a0
	mv s11, zero
	j label258
label256:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label921
	j label920
.p2align 2
label560:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label529
	j label528
.p2align 2
label258:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label552
	mv s10, a0
	j label258
label523:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label529
	j label528
label313:
	mv s10, zero
	j label216
label331:
	mv s9, zero
	j label221
.p2align 2
label493:
	mv s8, a0
	mv s9, zero
.p2align 2
label242:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label917
	mv a1, s9
.p2align 2
label917:
	bleu a2, s1, label500
	mv s8, a0
	mv s9, a1
	j label242
label344:
	mv s11, zero
	j label227
