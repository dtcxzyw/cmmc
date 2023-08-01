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
que:
	.zero	4020
.align 8
inq:
	.zero	4020
.text
.p2align 2
.globl main
main:
	addi sp, sp, -136
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s4, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s6, 960
	li s5, 45
	li s0, -1
	li s4, 9
	addiw a1, a0, -48
pcrel774:
	auipc a2, %pcrel_hi(que)
	li s3, 10
	li s2, 1
	addi t2, a2, %pcrel_lo(pcrel774)
pcrel775:
	auipc a2, %pcrel_hi(inq)
	sd t2, 104(sp)
	addi t0, a2, %pcrel_lo(pcrel775)
pcrel776:
	auipc a2, %pcrel_hi(head)
	sd t0, 112(sp)
	addi t0, a2, %pcrel_lo(pcrel776)
pcrel777:
	auipc a2, %pcrel_hi(to)
	sd t0, 120(sp)
	addi t0, a2, %pcrel_lo(pcrel777)
pcrel778:
	auipc a2, %pcrel_hi(next)
	sd t0, 128(sp)
	addi s1, a2, %pcrel_lo(pcrel778)
	bleu a1, s4, label3
.p2align 2
label2:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label2
label3:
	addiw a0, a0, -48
	bgeu a0, s3, label6
.p2align 2
label5:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label5
label6:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label125
	mv s7, a0
	mv s8, zero
.p2align 2
label7:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s5, label686
	mv a1, s8
.p2align 2
label686:
	bleu a2, s4, label133
	mv s7, a0
	mv s8, a1
	j label7
label133:
	mv s8, a1
label10:
	addiw a1, a0, -48
	bgeu a1, s3, label138
	mv s7, a0
	mv s9, zero
.p2align 2
label86:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s7, a3
	bgeu a1, s3, label13
	mv s7, a0
	j label86
label13:
	subw a0, zero, s9
	mv s7, a0
	bne s8, zero, label688
	mv s7, s9
label688:
	mv a1, zero
.p2align 2
label15:
	ld t0, 120(sp)
	sh2add a0, a1, t0
	addiw a1, a1, 64
	sw s0, 0(a0)
	sw s0, 4(a0)
	sw s0, 8(a0)
	sw s0, 12(a0)
	sw s0, 16(a0)
	sw s0, 20(a0)
	sw s0, 24(a0)
	sw s0, 28(a0)
	sw s0, 32(a0)
	sw s0, 36(a0)
	sw s0, 40(a0)
	sw s0, 44(a0)
	sw s0, 48(a0)
	sw s0, 52(a0)
	sw s0, 56(a0)
	sw s0, 60(a0)
	sw s0, 64(a0)
	sw s0, 68(a0)
	sw s0, 72(a0)
	sw s0, 76(a0)
	sw s0, 80(a0)
	sw s0, 84(a0)
	sw s0, 88(a0)
	sw s0, 92(a0)
	sw s0, 96(a0)
	sw s0, 100(a0)
	sw s0, 104(a0)
	sw s0, 108(a0)
	sw s0, 112(a0)
	sw s0, 116(a0)
	sw s0, 120(a0)
	sw s0, 124(a0)
	sw s0, 128(a0)
	sw s0, 132(a0)
	sw s0, 136(a0)
	sw s0, 140(a0)
	sw s0, 144(a0)
	sw s0, 148(a0)
	sw s0, 152(a0)
	sw s0, 156(a0)
	sw s0, 160(a0)
	sw s0, 164(a0)
	sw s0, 168(a0)
	sw s0, 172(a0)
	sw s0, 176(a0)
	sw s0, 180(a0)
	sw s0, 184(a0)
	sw s0, 188(a0)
	sw s0, 192(a0)
	sw s0, 196(a0)
	sw s0, 200(a0)
	sw s0, 204(a0)
	sw s0, 208(a0)
	sw s0, 212(a0)
	sw s0, 216(a0)
	sw s0, 220(a0)
	sw s0, 224(a0)
	sw s0, 228(a0)
	sw s0, 232(a0)
	sw s0, 236(a0)
	sw s0, 240(a0)
	sw s0, 244(a0)
	sw s0, 248(a0)
	sw s0, 252(a0)
	blt a1, s6, label15
	mv s6, zero
	sh2add a0, a1, t0
	sw s0, 0(a0)
	sw s0, 4(a0)
	sw s0, 8(a0)
	sw s0, 12(a0)
	sw s0, 16(a0)
	sw s0, 20(a0)
	sw s0, 24(a0)
	sw s0, 28(a0)
	sw s0, 32(a0)
	sw s0, 36(a0)
	sw s0, 40(a0)
	sw s0, 44(a0)
	sw s0, 48(a0)
	sw s0, 52(a0)
	sw s0, 56(a0)
	sw s0, 60(a0)
	sw s0, 64(a0)
	sw s0, 68(a0)
	sw s0, 72(a0)
	sw s0, 76(a0)
	sw s0, 80(a0)
	sw s0, 84(a0)
	sw s0, 88(a0)
	sw s0, 92(a0)
	sw s0, 96(a0)
	sw s0, 100(a0)
	sw s0, 104(a0)
	sw s0, 108(a0)
	sw s0, 112(a0)
	sw s0, 116(a0)
	sw s0, 120(a0)
	sw s0, 124(a0)
	sw s0, 128(a0)
	sw s0, 132(a0)
	sw s0, 136(a0)
	sw s0, 140(a0)
	sw s0, 144(a0)
	sw s0, 148(a0)
	sw s0, 152(a0)
	sw s0, 156(a0)
	sw s0, 160(a0)
	sw s0, 164(a0)
	sw s0, 168(a0)
	sw s0, 172(a0)
	sw s0, 176(a0)
	beq s7, zero, label21
.p2align 2
label22:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label22
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label47
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label280
	j label279
.p2align 2
label389:
	mv a1, zero
.p2align 2
label63:
	ld t2, 104(sp)
	sh2add a2, a1, t2
	addiw a1, a1, 1
	lw a0, 0(a2)
	ld t0, 112(sp)
	sh2add a2, a0, t0
	sw zero, 0(a2)
	bge a4, a1, label63
.p2align 2
label65:
	mv a0, a3
	jal putint
	mv a0, s3
	jal putch
	bne s7, zero, label22
	j label21
.p2align 2
label66:
	addiw a1, a1, 1
	li a2, 1
	ld t2, 104(sp)
	sh2add t0, a1, t2
	lw a5, 0(t0)
	beq a0, a5, label702
	mv a2, a3
.p2align 2
label702:
	ld t0, 120(sp)
	sh2add a5, a5, t0
	lw a3, 0(a5)
	beq a3, s0, label411
.p2align 2
label70:
	ld t0, 128(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	ld t0, 112(sp)
	sh2add t2, a5, t0
	lw t1, 0(t2)
	beq t1, zero, label71
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label70
	j label735
.p2align 2
label71:
	addiw a4, a4, 1
	ld t2, 104(sp)
	ld t0, 112(sp)
	sh2add t1, a4, t2
	sh2add t2, a5, t0
	sw s2, 0(t2)
	sw a5, 0(t1)
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label70
	mv a3, a2
	bgt a4, a1, label66
	bge a4, zero, label389
	j label65
.p2align 2
label47:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label355
	mv s8, a0
	mv s9, zero
.p2align 2
label83:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s5, label706
	mv a1, s9
.p2align 2
label706:
	bleu a2, s4, label463
	mv s8, a0
	mv s9, a1
	j label83
label360:
	mv s10, zero
	j label51
.p2align 2
label361:
	mv s10, zero
.p2align 2
label80:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s10, s8, a2
	bgeu a1, s3, label51
	mv s8, a0
	j label80
.p2align 2
label463:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s3, label361
	j label360
.p2align 2
label51:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label698
	mv s8, s10
.p2align 2
label698:
	bleu a1, s4, label369
	mv s10, a0
	mv s9, zero
.p2align 2
label77:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s5, label704
	mv a1, s9
.p2align 2
label704:
	bleu a2, s4, label446
	mv s10, a0
	mv s9, a1
	j label77
label374:
	mv s11, zero
	j label56
.p2align 2
label375:
	mv s10, a0
	mv s11, zero
	j label74
label56:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label700
	j label699
.p2align 2
label446:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s3, label375
	j label374
.p2align 2
label74:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s3, label438
	mv s10, a0
	j label74
.p2align 2
label700:
	ld t0, 112(sp)
	mv a4, s2
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	mv a3, zero
	bgt s2, zero, label66
	j label62
.p2align 2
label438:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label700
	mv a0, s11
	ld t0, 112(sp)
	mv a4, s2
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	mv a3, zero
	bgt s2, zero, label66
	j label62
.p2align 2
label735:
	mv a3, a2
	bgt a4, a1, label66
	bge a4, zero, label389
	j label65
label21:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label279:
	mv s9, zero
	j label28
label724:
	mv s10, zero
	j label31
label28:
	addiw a1, a0, -48
	bltu a1, s3, label293
	j label724
.p2align 2
label31:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label692
	mv s8, s10
.p2align 2
label692:
	bleu a1, s4, label301
	mv s10, a0
	mv s9, zero
.p2align 2
label41:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s5, label696
	mv a1, s9
.p2align 2
label696:
	bleu a2, s4, label340
	mv s10, a0
	mv s9, a1
	j label41
label306:
	mv s11, zero
	j label36
.p2align 2
label307:
	mv s10, a0
	mv s11, zero
	j label38
label36:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label694
	j label693
.p2align 2
label38:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s3, label332
	mv s10, a0
	j label38
.p2align 2
label340:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s3, label307
	j label306
.p2align 2
label287:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s3, label724
.p2align 2
label293:
	mv s8, a0
	mv s10, zero
.p2align 2
label44:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s3, label31
	mv s8, a0
	j label44
.p2align 2
label693:
	mv a0, s11
.p2align 2
label694:
	ld t0, 128(sp)
	sh2add a2, s6, s1
	sh2add a1, s6, t0
	sw a0, 0(a1)
	ld t0, 120(sp)
	sh2add a0, a0, t0
	sh2add a3, s8, t0
	lw a4, 0(a3)
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s8, 4(a1)
	lw a1, 0(a0)
	sw a1, 4(a2)
	addiw a2, s6, 1
	addiw s6, s6, 2
	sw a2, 0(a0)
	bne s7, zero, label22
	j label21
.p2align 2
label332:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label694
	j label693
label301:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label307
	j label306
label355:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s3, label361
	j label360
label369:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label375
	j label374
.p2align 2
label411:
	mv a3, a2
	bgt a4, a1, label66
	bge a4, zero, label389
	j label65
label62:
	bge a4, zero, label389
	j label65
label699:
	mv a0, s11
	j label700
label138:
	mv s9, zero
	j label13
label125:
	mv s8, zero
	j label10
.p2align 2
label280:
	mv s8, a0
	mv s9, zero
.p2align 2
label25:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s5, label690
	mv a1, s9
.p2align 2
label690:
	bleu a2, s4, label287
	mv s8, a0
	mv s9, a1
	j label25
