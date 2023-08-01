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
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getch
pcrel759:
	auipc a2, %pcrel_hi(que)
	addiw a1, a0, -48
	addi s3, a2, %pcrel_lo(pcrel759)
pcrel760:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel760)
pcrel761:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel761)
pcrel762:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel762)
pcrel763:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel763)
	li a2, 9
	bleu a1, a2, label3
.p2align 2
label2:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label2
label3:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label6
.p2align 2
label5:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label5
label6:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label125
	mv s6, a0
	mv s5, zero
.p2align 2
label86:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label698
	mv a2, s5
.p2align 2
label698:
	li a3, 9
	bleu a1, a3, label472
	mv s6, a0
	mv s5, a2
	j label86
label7:
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label130
	mv s7, zero
	j label10
label472:
	mv s6, a0
	mv s5, a2
	j label7
.p2align 2
label10:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label13
	mv s6, a0
	j label10
label13:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label678
	mv s6, s7
label678:
	mv a2, zero
.p2align 2
label15:
	sh2add a0, a2, s4
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
	blt a2, a0, label15
	sh2add a0, a2, s4
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
	beq s6, zero, label85
.p2align 2
label21:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label21
	addiw s6, s6, -1
	li a1, 81
	beq a0, a1, label23
	j label62
.p2align 2
label38:
	addiw a1, a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label684
	mv a2, a3
.p2align 2
label684:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label322
.p2align 2
label42:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label43
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label42
	j label723
.p2align 2
label43:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label42
	mv a3, a2
	bgt a4, a1, label38
	blt a4, zero, label49
.p2align 2
label345:
	mv a1, zero
.p2align 2
label47:
	sh2add a0, a1, s3
	addiw a1, a1, 1
	lw a2, 0(a0)
	sh2add a5, a2, s0
	sw zero, 0(a5)
	bge a4, a1, label47
.p2align 2
label49:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label21
	j label85
.p2align 2
label62:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label394
	mv s7, a0
	mv s8, zero
.p2align 2
label63:
	jal getch
	li a3, 45
	li a2, 1
	addiw a1, a0, -48
	beq s7, a3, label690
	mv a2, s8
.p2align 2
label690:
	li a3, 9
	bleu a1, a3, label402
	mv s7, a0
	mv s8, a2
	j label63
.p2align 2
label402:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label718
.p2align 2
label408:
	mv s7, a0
	mv s9, zero
.p2align 2
label69:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label72
	mv s7, a0
	j label69
.p2align 2
label23:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label280
	mv s7, a0
	mv s8, zero
.p2align 2
label59:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s7, a3, label688
	mv a2, s8
.p2align 2
label688:
	li a3, 9
	bleu a1, a3, label388
	mv s7, a0
	mv s8, a2
	j label59
.p2align 2
label72:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label692
	mv s7, s9
.p2align 2
label692:
	li a2, 9
	bleu a1, a2, label425
	mv s9, a0
	mv s8, zero
.p2align 2
label74:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label694
	mv a2, s8
.p2align 2
label694:
	li a3, 9
	bleu a1, a3, label433
	mv s9, a0
	mv s8, a2
	j label74
label285:
	mv s9, zero
	j label27
.p2align 2
label286:
	mv s9, zero
	j label56
.p2align 2
label388:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label286
	j label285
.p2align 2
label56:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label27
	mv s7, a0
	j label56
.p2align 2
label27:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label680
	mv s7, s9
.p2align 2
label680:
	li a2, 9
	bleu a1, a2, label294
	mv s9, a0
	mv s8, zero
.p2align 2
label53:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label686
	mv a2, s8
.p2align 2
label686:
	li a3, 9
	bleu a1, a3, label371
	mv s9, a0
	mv s8, a2
	j label53
label299:
	mv s10, zero
	j label32
.p2align 2
label300:
	mv s9, a0
	mv s10, zero
	j label50
label32:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label682
	j label681
.p2align 2
label371:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label300
	j label299
.p2align 2
label50:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bgeu a1, a3, label363
	mv s9, a0
	j label50
.p2align 2
label433:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label719
.p2align 2
label439:
	mv s9, a0
	mv s10, zero
.p2align 2
label80:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bgeu a1, a3, label447
	mv s9, a0
	j label80
.p2align 2
label682:
	sh2add a1, s7, s0
	li a4, 1
	sw a4, 0(a1)
	mv a1, zero
	sw s7, 4(s3)
	mv a3, zero
	bgt a4, zero, label38
label309:
	bge a4, zero, label345
	j label49
.p2align 2
label363:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label682
	mv a0, s10
	sh2add a1, s7, s0
	li a4, 1
	sw a4, 0(a1)
	mv a1, zero
	sw s7, 4(s3)
	mv a3, zero
	bgt a4, zero, label38
	j label309
.p2align 2
label447:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label696
.p2align 2
label720:
	mv a0, s10
.p2align 2
label696:
	sh2add a1, s5, s1
	sh2add a3, s7, s4
	sw a0, 0(a1)
	sh2add a2, s5, s2
	lw a4, 0(a3)
	sh2add a0, a0, s4
	sw a4, 0(a2)
	sw s5, 0(a3)
	sw s7, 4(a1)
	addiw a1, s5, 1
	lw a3, 0(a0)
	addiw s5, s5, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s6, zero, label21
	j label85
.p2align 2
label723:
	mv a3, a2
	bgt a4, a1, label38
	bge a4, zero, label345
	j label49
label85:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label294:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label300
	j label299
label280:
	mv s7, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label286
	j label285
label394:
	mv s8, zero
	j label66
label718:
	mv s9, zero
	j label72
label66:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label408
	j label718
label425:
	mv s8, zero
	j label77
label719:
	mv s10, zero
	j label83
label77:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label439
	j label719
label83:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label696
	j label720
.p2align 2
label322:
	mv a3, a2
	bgt a4, a1, label38
	bge a4, zero, label345
	j label49
label681:
	mv a0, s10
	j label682
label130:
	mv s7, zero
	j label13
label125:
	mv s6, a0
	mv s5, zero
	j label7
