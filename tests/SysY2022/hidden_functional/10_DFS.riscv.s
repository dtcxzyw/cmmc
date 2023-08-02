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
pcrel204:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a1
	sd s6, 16(sp)
	addi s6, a2, %pcrel_lo(pcrel204)
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
pcrel205:
	auipc a2, %pcrel_hi(head)
	addi s7, a2, %pcrel_lo(pcrel205)
pcrel206:
	auipc a2, %pcrel_hi(next)
	sh2add a1, a0, s7
	addi s8, a2, %pcrel_lo(pcrel206)
pcrel207:
	auipc a0, %pcrel_hi(to)
	lw s0, 0(a1)
	addi s9, a0, %pcrel_lo(pcrel207)
	j label5
label36:
	mv a0, s4
label2:
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
label5:
	li a1, -1
	beq s0, a1, label48
	sh2add a1, s0, s9
	lw a0, 0(a1)
	sh2add a3, a0, s6
	lw a2, 0(a3)
	bne a2, zero, label8
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s1, 0(a1)
label11:
	li a0, -1
	beq s1, a0, label8
	sh2add a1, s1, s9
	lw a0, 0(a1)
	sh2add a3, a0, s6
	lw a2, 0(a3)
	bne a2, zero, label14
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s3, 0(a1)
	j label17
label8:
	sh2add a0, s0, s8
	lw s0, 0(a0)
	j label5
label14:
	sh2add a0, s1, s8
	lw s1, 0(a0)
	j label11
label17:
	li a0, -1
	beq s3, a0, label14
	sh2add a2, s3, s9
	lw a0, 0(a2)
	sh2add a1, a0, s6
	lw a3, 0(a1)
	beq a3, zero, label21
label20:
	sh2add a0, s3, s8
	lw s3, 0(a0)
	j label17
label21:
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s5, 0(a1)
label23:
	li a0, -1
	beq s5, a0, label20
	sh2add a3, s5, s9
	lw a0, 0(a3)
	sh2add a1, a0, s6
	lw a2, 0(a1)
	beq a2, zero, label26
label136:
	sh2add a1, s5, s8
	lw s5, 0(a1)
	j label23
label26:
	mv a1, s2
	jal same
	bne a0, zero, label36
	j label136
label48:
	mv a0, zero
	j label2
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
	li s2, 45
	li s7, 960
	addiw a1, a0, -48
pcrel993:
	auipc a2, %pcrel_hi(vis)
	li s6, -1
pcrel994:
	auipc a5, %pcrel_hi(to)
pcrel995:
	auipc a4, %pcrel_hi(next)
	li s0, 10
	li s1, 9
	addi a3, a2, %pcrel_lo(pcrel993)
	addi s5, a5, %pcrel_lo(pcrel994)
	addi s4, a4, %pcrel_lo(pcrel995)
	sd a3, 104(sp)
pcrel996:
	auipc a3, %pcrel_hi(head)
	addi a2, a3, %pcrel_lo(pcrel996)
	sd a2, 112(sp)
	li a2, -1
	slli s8, a2, 32
	bleu a1, s1, label307
	mv s3, a0
	mv s9, zero
.p2align 2
label293:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label932
	mv a1, s9
.p2align 2
label932:
	bleu a2, s1, label642
	mv s3, a0
	mv s9, a1
	j label293
label209:
	addiw a1, a0, -48
	bgeu a1, s0, label312
	mv s3, a0
	mv s10, zero
	j label290
label642:
	mv s9, a1
	j label209
.p2align 2
label290:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s3, a3
	bgeu a1, s0, label212
	mv s3, a0
	j label290
label212:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s3, a2
	bne s9, zero, label910
	mv s3, s10
label910:
	bleu a1, s1, label321
	mv s9, a0
	mv s10, zero
.p2align 2
label287:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label930
	mv a1, s10
.p2align 2
label930:
	bleu a2, s1, label625
	mv s9, a0
	mv s10, a1
	j label287
label214:
	addiw a1, a0, -48
	bltu a1, s0, label327
	j label326
label625:
	mv s9, a1
	j label214
label327:
	mv s10, a0
	mv s11, zero
.p2align 2
label284:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label217
	mv s10, a0
	j label284
label217:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label912
	mv a1, s11
label912:
	ld a2, 112(sp)
	mv a3, zero
	mv a0, a2
.p2align 2
label219:
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
	bge a3, s7, label222
	addi a0, a0, 256
	j label219
label222:
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
	beq a1, zero, label228
.p2align 2
label229:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label229
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label254
	j label231
.p2align 2
label501:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label918
.p2align 2
label949:
	mv a0, s11
.p2align 2
label918:
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
	bne s7, zero, label229
	j label228
.p2align 2
label254:
	jal getch
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, s1, label539
	mv s9, zero
.p2align 2
label280:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label928
	mv a1, s9
.p2align 2
label928:
	bleu a2, s1, label607
	mv s8, a0
	mv s9, a1
	j label280
.p2align 2
label231:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label465
	mv s8, a0
	mv s9, zero
.p2align 2
label232:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label914
	mv a1, s9
.p2align 2
label914:
	bleu a2, s1, label473
	mv s8, a0
	mv s9, a1
	j label232
.p2align 2
label473:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label948
.p2align 2
label479:
	mv s10, zero
.p2align 2
label251:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label238
	mv s8, a0
	j label251
.p2align 2
label238:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label916
	mv s8, s10
.p2align 2
label916:
	bleu a1, s1, label487
	mv s9, a0
	mv s10, zero
.p2align 2
label248:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label920
	mv a1, s10
.p2align 2
label920:
	bleu a2, s1, label524
	mv s9, a0
	mv s10, a1
	j label248
label492:
	mv s11, zero
	j label246
.p2align 2
label493:
	mv s10, a0
	mv s11, zero
.p2align 2
label243:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label501
	mv s10, a0
	j label243
label246:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label918
	j label949
.p2align 2
label524:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label493
	j label492
label544:
	mv s10, zero
	j label258
.p2align 2
label545:
	mv s10, zero
	j label277
.p2align 2
label607:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label545
	j label544
.p2align 2
label277:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, s0, label258
	mv s8, a0
	j label277
.p2align 2
label258:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label922
	mv s8, s10
.p2align 2
label922:
	bleu a1, s1, label553
	mv s9, a0
	mv s10, zero
.p2align 2
label274:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label926
	mv a1, s10
.p2align 2
label926:
	bleu a2, s1, label590
	mv s9, a0
	mv s10, a1
	j label274
label558:
	mv s11, zero
	j label263
.p2align 2
label559:
	mv s10, a0
	mv s11, zero
	j label271
label263:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label924
	j label923
.p2align 2
label271:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label582
	mv s10, a0
	j label271
.p2align 2
label590:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label559
	j label558
.p2align 2
label924:
	ble s3, zero, label265
.p2align 2
label266:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
	j label267
.p2align 2
label582:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label924
	mv a1, s11
	bgt s3, zero, label266
	j label265
.p2align 2
label267:
	sw zero, 0(a0)
	addiw a2, a2, 1
	blt s3, a2, label265
	addi a0, a0, 4
	j label267
.p2align 2
label265:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label229
	j label228
label539:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label545
	j label544
label487:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label493
	j label492
label465:
	mv s8, a0
	mv s9, zero
	j label235
label948:
	mv s10, zero
	j label238
label235:
	addiw a0, s8, -48
	bltu a0, s0, label479
	j label948
label228:
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
label553:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label559
	j label558
label326:
	mv s11, zero
	j label217
label307:
	mv s9, zero
	j label209
label312:
	mv s10, zero
	j label212
label923:
	mv a1, s11
	j label924
label321:
	mv s9, zero
	j label214
