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
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s3, 10
	li s2, 1
	li s0, -1
	addiw a1, a0, -48
pcrel842:
	auipc a2, %pcrel_hi(que)
pcrel843:
	auipc a3, %pcrel_hi(inq)
	li s4, 960
	addi t2, a2, %pcrel_lo(pcrel842)
	addi t0, a3, %pcrel_lo(pcrel843)
pcrel844:
	auipc a2, %pcrel_hi(head)
	sd t2, 104(sp)
pcrel845:
	auipc a3, %pcrel_hi(to)
	sd t0, 112(sp)
	addi t1, a3, %pcrel_lo(pcrel845)
	addi t0, a2, %pcrel_lo(pcrel844)
pcrel846:
	auipc a2, %pcrel_hi(next)
	sd t0, 120(sp)
	addi s1, a2, %pcrel_lo(pcrel846)
	sd t1, 128(sp)
	li a2, 9
	bgtu a1, a2, label94
label2:
	addiw a1, a0, -48
	bltu a1, s3, label4
	j label5
.p2align 2
label94:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label94
	j label2
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label4
label5:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label125
	mv s5, a0
	mv s6, zero
.p2align 2
label6:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label755
	mv a1, s6
.p2align 2
label755:
	li a2, 9
	bleu a3, a2, label133
	mv s5, a0
	mv s6, a1
	j label6
label133:
	mv s5, a1
label9:
	addiw a2, a0, -48
	bgeu a2, s3, label138
	mv s6, a0
	mv s7, zero
.p2align 2
label12:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, s3, label147
	mv s6, a0
	j label12
label147:
	mv a0, s7
label15:
	subw a1, zero, a0
	mv s7, a1
	bne s5, zero, label757
	mv s7, a0
label757:
	ld t0, 120(sp)
	mv a1, zero
.p2align 2
label17:
	li a3, -1
	addiw a1, a1, 64
	slli a2, a3, 32
	add.uw a0, s0, a2
	sd a0, 0(t0)
	sd a0, 8(t0)
	sd a0, 16(t0)
	sd a0, 24(t0)
	sd a0, 32(t0)
	sd a0, 40(t0)
	sd a0, 48(t0)
	sd a0, 56(t0)
	sd a0, 64(t0)
	sd a0, 72(t0)
	sd a0, 80(t0)
	sd a0, 88(t0)
	sd a0, 96(t0)
	sd a0, 104(t0)
	sd a0, 112(t0)
	sd a0, 120(t0)
	sd a0, 128(t0)
	sd a0, 136(t0)
	sd a0, 144(t0)
	sd a0, 152(t0)
	sd a0, 160(t0)
	sd a0, 168(t0)
	sd a0, 176(t0)
	sd a0, 184(t0)
	sd a0, 192(t0)
	sd a0, 200(t0)
	sd a0, 208(t0)
	sd a0, 216(t0)
	sd a0, 224(t0)
	sd a0, 232(t0)
	sd a0, 240(t0)
	sd a0, 248(t0)
	bge a1, s4, label20
	addi t0, t0, 256
	j label17
label20:
	ld t0, 120(sp)
	mv s4, s1
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
	ld t1, 128(sp)
	mv s5, t1
	beq s7, zero, label92
.p2align 2
label26:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label26
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label51
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label286
	mv s8, a0
	mv s9, zero
	j label29
.p2align 2
label330:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label766
.p2align 2
label796:
	mv a0, s11
.p2align 2
label766:
	sw a0, 0(s5)
	ld t0, 120(sp)
	sh2add a1, a0, t0
	sh2add a2, s8, t0
	lw a3, 0(a2)
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw a2, s6, 1
	sw s8, 4(s5)
	addiw s6, s6, 2
	addi s5, s5, 8
	lw a0, 0(a1)
	sw a0, 4(s4)
	addi s4, s4, 8
	sw a2, 0(a1)
	bne s7, zero, label26
	j label92
.p2align 2
label29:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s8, a2, label760
	mv a1, s9
.p2align 2
label760:
	li a2, 9
	bleu a3, a2, label294
	mv s8, a0
	mv s9, a1
	j label29
.p2align 2
label51:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, a2, label360
	mv s9, zero
.p2align 2
label89:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label776
	mv a1, s9
.p2align 2
label776:
	li a2, 9
	bleu a3, a2, label471
	mv s8, a0
	mv s9, a1
	j label89
label365:
	mv s10, zero
	j label55
.p2align 2
label366:
	mv s10, zero
	j label86
.p2align 2
label471:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s3, label366
	j label365
.p2align 2
label86:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s10, s8, a2
	bgeu a1, s3, label55
	mv s8, a0
	j label86
.p2align 2
label55:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label768
	mv s8, s10
.p2align 2
label768:
	li a2, 9
	bleu a1, a2, label374
	mv s9, a0
	mv s10, zero
.p2align 2
label57:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label770
	mv a1, s10
.p2align 2
label770:
	li a2, 9
	bleu a3, a2, label382
	mv s9, a0
	mv s10, a1
	j label57
.p2align 2
label382:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label798
.p2align 2
label388:
	mv s10, a0
	mv s11, zero
.p2align 2
label63:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s3, label396
	mv s10, a0
	j label63
.p2align 2
label294:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s3, label794
.p2align 2
label300:
	mv s10, zero
.p2align 2
label48:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, s3, label35
	mv s8, a0
	j label48
.p2align 2
label35:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label762
	mv s8, s10
.p2align 2
label762:
	li a2, 9
	bleu a1, a2, label308
	mv s9, a0
	mv s10, zero
.p2align 2
label37:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label764
	mv a1, s10
.p2align 2
label764:
	li a2, 9
	bleu a3, a2, label316
	mv s9, a0
	mv s10, a1
	j label37
.p2align 2
label316:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label795
.p2align 2
label322:
	mv s10, a0
	mv s11, zero
.p2align 2
label43:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, s3, label330
	mv s10, a0
	j label43
label374:
	mv s9, zero
	j label60
label798:
	mv s11, zero
	j label66
label60:
	addiw a2, a0, -48
	bltu a2, s3, label388
	j label798
label66:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label772
	mv a0, s11
.p2align 2
label772:
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label79
	j label72
.p2align 2
label74:
	ld t2, 104(sp)
	mv a0, zero
.p2align 2
label75:
	lw a1, 0(t2)
	addiw a0, a0, 1
	ld t0, 112(sp)
	sh2add a2, a1, t0
	sw zero, 0(a2)
	blt a4, a0, label73
	addi t2, t2, 4
	j label75
.p2align 2
label79:
	addiw a1, a1, 1
	li a2, 1
	ld t2, 104(sp)
	sh2add t0, a1, t2
	lw a5, 0(t0)
	beq a0, a5, label774
	mv a2, a3
.p2align 2
label774:
	ld t0, 120(sp)
	sh2add t1, a5, t0
	lw a3, 0(t1)
	beq a3, s0, label432
.p2align 2
label80:
	ld t1, 128(sp)
	sh2add t2, a3, t1
	lw a5, 0(t2)
	ld t0, 112(sp)
	sh2add t1, a5, t0
	lw t2, 0(t1)
	beq t2, zero, label83
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label80
	j label802
.p2align 2
label83:
	addiw a4, a4, 1
	ld t2, 104(sp)
	ld t0, 112(sp)
	sh2add t1, a4, t2
	sh2add t3, a5, t0
	sw s2, 0(t3)
	sw a5, 0(t1)
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label80
	mv a3, a2
	bgt a4, a1, label79
	bge a4, zero, label74
.p2align 2
label73:
	mv a0, a3
	jal putint
	mv a0, s3
	jal putch
	bne s7, zero, label26
	j label92
.p2align 2
label396:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label772
	mv a0, s11
	mv a4, s2
	mv a3, zero
	ld t0, 112(sp)
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label79
	j label72
.p2align 2
label802:
	mv a3, a2
	bgt a4, a1, label79
	bge a4, zero, label74
	j label73
label92:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label308:
	mv s9, zero
	j label40
label795:
	mv s11, zero
	j label46
label40:
	addiw a2, a0, -48
	bltu a2, s3, label322
	j label795
label46:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label766
	j label796
label360:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s3, label366
	j label365
label286:
	mv s8, a0
	mv s9, zero
	j label32
label794:
	mv s10, zero
	j label35
label32:
	addiw a0, s8, -48
	bltu a0, s3, label300
	j label794
label72:
	bge a4, zero, label74
	j label73
.p2align 2
label432:
	mv a3, a2
	bgt a4, a1, label79
	j label72
label125:
	mv s5, zero
	j label9
label138:
	mv a0, zero
	j label15
