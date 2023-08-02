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
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s5, 45
	li s3, 10
	li s4, 9
	addiw a1, a0, -48
pcrel839:
	auipc a2, %pcrel_hi(que)
	li s0, -1
	li s2, 1
	li s6, 960
	addi t2, a2, %pcrel_lo(pcrel839)
pcrel840:
	auipc a2, %pcrel_hi(inq)
	sd t2, 104(sp)
	addi t0, a2, %pcrel_lo(pcrel840)
pcrel841:
	auipc a2, %pcrel_hi(head)
	sd t0, 112(sp)
	addi t0, a2, %pcrel_lo(pcrel841)
pcrel842:
	auipc a2, %pcrel_hi(to)
	sd t0, 120(sp)
	addi t0, a2, %pcrel_lo(pcrel842)
pcrel843:
	auipc a2, %pcrel_hi(next)
	sd t0, 128(sp)
	addi s1, a2, %pcrel_lo(pcrel843)
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
label86:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s5, label771
	mv a1, s8
.p2align 2
label771:
	bleu a2, s4, label472
	mv s7, a0
	mv s8, a1
	j label86
label7:
	addiw a0, s7, -48
	bgeu a0, s3, label130
	mv s9, zero
.p2align 2
label83:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s7, a2
	bgeu a1, s3, label10
	mv s7, a0
	j label83
label472:
	mv s7, a0
	mv s8, a1
	j label7
label10:
	subw a0, zero, s9
	mv s7, a0
	bne s8, zero, label750
	mv s7, s9
label750:
	mv a1, zero
.p2align 2
label12:
	ld t0, 120(sp)
	li a4, -1
	sh2add a0, a1, t0
	slli a3, a4, 32
	addiw a1, a1, 64
	add.uw a2, s0, a3
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
	blt a1, s6, label12
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
	beq s7, zero, label82
.p2align 2
label18:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label18
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label43
	j label20
.p2align 2
label758:
	mv a0, s11
.p2align 2
label759:
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
	bne s7, zero, label18
	j label82
.p2align 2
label332:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label759
	j label758
.p2align 2
label43:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label347
	mv s8, a0
	mv s9, zero
.p2align 2
label44:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s5, label761
	mv a1, s9
.p2align 2
label761:
	bleu a2, s4, label355
	mv s8, a0
	mv s9, a1
	j label44
.p2align 2
label20:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label271
	mv s8, a0
	mv s9, zero
.p2align 2
label21:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s5, label753
	mv a1, s9
.p2align 2
label753:
	bleu a2, s4, label279
	mv s8, a0
	mv s9, a1
	j label21
.p2align 2
label279:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s3, label789
.p2align 2
label285:
	mv s8, a0
	mv s10, zero
.p2align 2
label40:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s10, s8, a2
	bgeu a1, s3, label27
	mv s8, a0
	j label40
.p2align 2
label27:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label755
	mv s8, s10
.p2align 2
label755:
	bleu a1, s4, label293
	mv s10, a0
	mv s9, zero
.p2align 2
label29:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s5, label757
	mv a1, s9
.p2align 2
label757:
	bleu a2, s4, label301
	mv s10, a0
	mv s9, a1
	j label29
.p2align 2
label355:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s3, label793
.p2align 2
label361:
	mv s8, a0
	mv s10, zero
.p2align 2
label50:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s3, label53
	mv s8, a0
	j label50
.p2align 2
label53:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label763
	mv s8, s10
.p2align 2
label763:
	bleu a1, s4, label378
	mv s10, a0
	mv s9, zero
.p2align 2
label55:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s5, label765
	mv a1, s9
.p2align 2
label765:
	bleu a2, s4, label386
	mv s10, a0
	mv s9, a1
	j label55
.p2align 2
label386:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s3, label794
.p2align 2
label392:
	mv s10, a0
	mv s11, zero
.p2align 2
label79:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s3, label455
	mv s10, a0
	j label79
.p2align 2
label301:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s3, label790
.p2align 2
label307:
	mv s10, a0
	mv s11, zero
.p2align 2
label37:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s3, label332
	mv s10, a0
	j label37
.p2align 2
label767:
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label67
label401:
	bge a4, zero, label437
	j label78
.p2align 2
label455:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label767
	mv a0, s11
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	ble s2, zero, label401
.p2align 2
label67:
	addiw a1, a1, 1
	li a2, 1
	ld t2, 104(sp)
	sh2add t0, a1, t2
	lw a5, 0(t0)
	beq a0, a5, label769
	mv a2, a3
.p2align 2
label769:
	ld t0, 120(sp)
	sh2add a5, a5, t0
	lw a3, 0(a5)
	beq a3, s0, label414
.p2align 2
label71:
	ld t0, 128(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	ld t0, 112(sp)
	sh2add t2, a5, t0
	lw t1, 0(t2)
	beq t1, zero, label72
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label71
	j label801
.p2align 2
label72:
	addiw a4, a4, 1
	ld t2, 104(sp)
	ld t0, 112(sp)
	sh2add t1, a4, t2
	sh2add t2, a5, t0
	sw s2, 0(t2)
	sw a5, 0(t1)
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label71
	mv a3, a2
	bgt a4, a1, label67
	blt a4, zero, label78
.p2align 2
label437:
	mv a1, zero
.p2align 2
label76:
	ld t2, 104(sp)
	sh2add a2, a1, t2
	addiw a1, a1, 1
	lw a0, 0(a2)
	ld t0, 112(sp)
	sh2add a2, a0, t0
	sw zero, 0(a2)
	bge a4, a1, label76
.p2align 2
label78:
	mv a0, a3
	jal putint
	mv a0, s3
	jal putch
	bne s7, zero, label18
	j label82
.p2align 2
label801:
	mv a3, a2
	bgt a4, a1, label67
	bge a4, zero, label437
	j label78
label82:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label347:
	mv s9, zero
	j label47
label793:
	mv s10, zero
	j label53
label47:
	addiw a1, a0, -48
	bltu a1, s3, label361
	j label793
label378:
	mv s9, zero
	j label58
label794:
	mv s11, zero
	j label61
label58:
	addiw a1, a0, -48
	bltu a1, s3, label392
	j label794
label61:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label767
	mv a0, s11
	j label767
label271:
	mv s9, zero
	j label24
label789:
	mv s10, zero
	j label27
label24:
	addiw a1, a0, -48
	bltu a1, s3, label285
	j label789
label293:
	mv s9, zero
	j label32
label790:
	mv s11, zero
	j label35
label32:
	addiw a1, a0, -48
	bltu a1, s3, label307
	j label790
label35:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label759
	j label758
.p2align 2
label414:
	mv a3, a2
	bgt a4, a1, label67
	bge a4, zero, label437
	j label78
label125:
	mv s7, a0
	mv s8, zero
	j label7
label130:
	mv s9, zero
	j label10
