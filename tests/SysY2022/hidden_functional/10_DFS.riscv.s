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
	sh2add a2, s0, s9
	lw a0, 0(a2)
	sh2add a1, a0, s6
	lw a3, 0(a1)
	bne a3, zero, label58
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s1, 0(a1)
label10:
	li a0, -1
	beq s1, a0, label58
	sh2add a2, s1, s9
	lw a0, 0(a2)
	sh2add a3, a0, s6
	lw a1, 0(a3)
	bne a1, zero, label13
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s3, 0(a1)
	j label16
label13:
	sh2add a0, s1, s8
	lw s1, 0(a0)
	j label10
label16:
	li a0, -1
	beq s3, a0, label13
	sh2add a3, s3, s9
	lw a0, 0(a3)
	sh2add a1, a0, s6
	lw a2, 0(a1)
	beq a2, zero, label20
label19:
	sh2add a0, s3, s8
	lw s3, 0(a0)
	j label16
label20:
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s5, 0(a1)
label22:
	li a0, -1
	beq s5, a0, label19
	sh2add a1, s5, s9
	lw a0, 0(a1)
	sh2add a3, a0, s6
	lw a2, 0(a3)
	beq a2, zero, label25
label133:
	sh2add a1, s5, s8
	lw s5, 0(a1)
	j label22
label25:
	mv a1, s2
	jal same
	bne a0, zero, label36
	j label133
label58:
	sh2add a0, s0, s8
	lw s0, 0(a0)
	j label5
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
	addiw a1, a0, -48
	li s7, 960
pcrel991:
	auipc a4, %pcrel_hi(vis)
	li s0, 10
pcrel992:
	auipc a2, %pcrel_hi(to)
	li s1, 9
	li s6, -1
	addi a3, a4, %pcrel_lo(pcrel991)
	addi s5, a2, %pcrel_lo(pcrel992)
pcrel993:
	auipc a4, %pcrel_hi(head)
	sd a3, 104(sp)
	addi a2, a4, %pcrel_lo(pcrel993)
pcrel994:
	auipc a3, %pcrel_hi(next)
	sd a2, 112(sp)
	addi s4, a3, %pcrel_lo(pcrel994)
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
	bltu a1, s0, label313
	j label312
label642:
	mv s9, a1
	j label209
label313:
	mv s3, a0
	mv s10, zero
.p2align 2
label290:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s10, s3, a2
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
label214:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label912
	mv a1, s10
.p2align 2
label912:
	bleu a2, s1, label329
	mv s9, a0
	mv s10, a1
	j label214
label329:
	mv s9, a1
label217:
	addiw a2, a0, -48
	bgeu a2, s0, label334
	mv s10, a0
	mv s11, zero
.p2align 2
label220:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label223
	mv s10, a0
	j label220
label223:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label914
	mv a1, s11
label914:
	ld a2, 112(sp)
	mv a3, zero
	mv a0, a2
.p2align 2
label225:
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
	bge a3, s7, label228
	addi a0, a0, 256
	j label225
label228:
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
	beq a1, zero, label234
.p2align 2
label235:
	jal getch
	xori a4, a0, 85
	xori a2, a0, 81
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	bne a2, zero, label235
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label260
	j label237
.p2align 2
label526:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label922
.p2align 2
label950:
	mv a0, s11
.p2align 2
label922:
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
	bne s7, zero, label235
	j label234
.p2align 2
label260:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label556
	mv s8, a0
	mv s9, zero
.p2align 2
label286:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label930
	mv a1, s9
.p2align 2
label930:
	bleu a2, s1, label624
	mv s8, a0
	mv s9, a1
	j label286
.p2align 2
label237:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label482
	mv s8, a0
	mv s9, zero
.p2align 2
label238:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label916
	mv a1, s9
.p2align 2
label916:
	bleu a2, s1, label490
	mv s8, a0
	mv s9, a1
	j label238
.p2align 2
label490:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label948
.p2align 2
label496:
	mv s10, zero
.p2align 2
label257:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bgeu a1, s0, label244
	mv s8, a0
	j label257
.p2align 2
label244:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label918
	mv s8, s10
.p2align 2
label918:
	bleu a1, s1, label504
	mv s9, a0
	mv s10, zero
.p2align 2
label246:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label920
	mv a1, s10
.p2align 2
label920:
	bleu a2, s1, label512
	mv s9, a0
	mv s10, a1
	j label246
.p2align 2
label512:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label949
.p2align 2
label518:
	mv s10, a0
	mv s11, zero
.p2align 2
label252:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label526
	mv s10, a0
	j label252
label561:
	mv s10, zero
	j label264
.p2align 2
label562:
	mv s10, zero
	j label283
.p2align 2
label624:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label562
	j label561
.p2align 2
label283:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bgeu a1, s0, label264
	mv s8, a0
	j label283
.p2align 2
label264:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label924
	mv s8, s10
.p2align 2
label924:
	bleu a1, s1, label570
	mv s9, a0
	mv s10, zero
.p2align 2
label280:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label928
	mv a1, s10
.p2align 2
label928:
	bleu a2, s1, label607
	mv s9, a0
	mv s10, a1
	j label280
label575:
	mv s11, zero
	j label269
.p2align 2
label576:
	mv s10, a0
	mv s11, zero
	j label277
label269:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label926
	j label925
.p2align 2
label277:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label599
	mv s10, a0
	j label277
.p2align 2
label607:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label576
	j label575
label925:
	mv a1, s11
.p2align 2
label926:
	ble s3, zero, label271
.p2align 2
label272:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
.p2align 2
label273:
	sw zero, 0(a0)
	addiw a2, a2, 1
	blt s3, a2, label271
	addi a0, a0, 4
	j label273
.p2align 2
label271:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label235
	j label234
.p2align 2
label599:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label926
	mv a1, s11
	bgt s3, zero, label272
	j label271
label504:
	mv s9, zero
	j label249
label949:
	mv s11, zero
	j label255
label249:
	addiw a2, a0, -48
	bltu a2, s0, label518
	j label949
label255:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label922
	j label950
label234:
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
label556:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label562
	j label561
label482:
	mv s8, a0
	mv s9, zero
	j label241
label948:
	mv s10, zero
	j label244
label241:
	addiw a0, s8, -48
	bltu a0, s0, label496
	j label948
label570:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label576
	j label575
label307:
	mv s9, zero
	j label209
label312:
	mv s10, zero
	j label212
label321:
	mv s9, zero
	j label217
label334:
	mv s11, zero
	j label223
