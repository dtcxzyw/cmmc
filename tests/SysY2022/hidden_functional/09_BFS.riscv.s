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
pcrel777:
	auipc a2, %pcrel_hi(que)
	addiw a1, a0, -48
	addi s3, a2, %pcrel_lo(pcrel777)
pcrel778:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel778)
pcrel779:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel779)
pcrel780:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel780)
pcrel781:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel781)
	li a2, 9
	bleu a1, a2, label102
.p2align 2
label2:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label5
	j label6
.p2align 2
label102:
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
	mv s7, zero
.p2align 2
label7:
	jal getch
	li a2, 45
	li s5, 1
	addiw a1, a0, -48
	beq s6, a2, label678
	mv s5, s7
.p2align 2
label678:
	li a2, 9
	bleu a1, a2, label133
	mv s6, a0
	mv s7, s5
	j label7
.p2align 2
label125:
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label712
label139:
	mv s6, a0
	mv s7, zero
.p2align 2
label86:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label472
	mv s6, a0
	j label86
.p2align 2
label712:
	mv s7, zero
	mv a0, zero
	mv s6, zero
	beq s5, zero, label732
label680:
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
	beq s6, zero, label21
.p2align 2
label22:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label22
	addiw s6, s6, -1
	li a1, 81
	bne a0, a1, label24
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label355
	mv s9, a0
	mv s7, zero
.p2align 2
label83:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label698
	mv s8, s7
.p2align 2
label698:
	li a2, 9
	bleu a1, a2, label463
	mv s9, a0
	mv s7, s8
	j label83
label21:
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
.p2align 2
label722:
	mv s9, zero
	j label51
.p2align 2
label361:
	mv s7, a0
	mv s9, zero
	j label80
.p2align 2
label463:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
	j label722
.p2align 2
label51:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label690
	j label689
.p2align 2
label24:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label279
	mv s9, a0
	mv s7, zero
.p2align 2
label25:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label682
	mv s8, s7
.p2align 2
label682:
	li a2, 9
	bleu a1, a2, label287
	mv s9, a0
	mv s7, s8
	j label25
.p2align 2
label715:
	mv s9, zero
	j label31
.p2align 2
label287:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label293
	j label715
.p2align 2
label31:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label684
	mv s7, s9
.p2align 2
label684:
	li a2, 9
	bleu a1, a2, label301
	mv s9, a0
	mv s8, zero
.p2align 2
label41:
	jal getch
	li a3, 45
	li a2, 1
	addiw a1, a0, -48
	beq s9, a3, label688
	mv a2, s8
.p2align 2
label688:
	li a3, 9
	bleu a1, a3, label340
	mv s9, a0
	mv s8, a2
	j label41
.p2align 2
label301:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label717
.p2align 2
label307:
	mv s9, a0
	mv s10, zero
.p2align 2
label38:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s9, a3
	bgeu a1, a2, label332
	mv s9, a0
	j label38
.p2align 2
label279:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label715
.p2align 2
label293:
	mv s7, a0
	mv s9, zero
.p2align 2
label44:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s9, s7, a3
	bgeu a1, a2, label31
	mv s7, a0
	j label44
label689:
	mv s7, s9
.p2align 2
label690:
	li a2, 9
	bleu a1, a2, label369
	mv s9, a0
	mv s8, zero
.p2align 2
label77:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label696
	mv a2, s8
.p2align 2
label696:
	li a3, 9
	bleu a1, a3, label446
	mv s9, a0
	mv s8, a2
	j label77
.p2align 2
label369:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label375
	mv s10, zero
	mv a1, zero
	mv a0, zero
	j label736
.p2align 2
label692:
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
.p2align 2
label58:
	bgt a4, a2, label66
	blt a4, zero, label65
.p2align 2
label389:
	mv a1, zero
	j label63
.p2align 2
label66:
	addiw a2, a2, 1
	li a1, 1
	sh2add t0, a2, s3
	lw a5, 0(t0)
	beq a0, a5, label694
	j label693
.p2align 2
label411:
	mv a3, a1
	bgt a4, a2, label66
	bge a4, zero, label389
	j label65
.p2align 2
label693:
	mv a1, a3
.p2align 2
label694:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label411
.p2align 2
label70:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label421
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label70
	mv a3, a1
	bgt a4, a2, label66
	bge a4, zero, label389
.p2align 2
label65:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label22
	j label21
.p2align 2
label421:
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label70
	mv a3, a1
	bgt a4, a2, label66
	bge a4, zero, label389
	j label65
label736:
	mv a0, s10
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
	j label58
.p2align 2
label375:
	mv s9, a0
	mv s10, zero
	j label74
.p2align 2
label446:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label375
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label692
	j label736
.p2align 2
label74:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bgeu a1, a2, label438
	mv s9, a0
	j label74
.p2align 2
label80:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label51
	mv s7, a0
	j label80
label734:
	mv a0, s10
	j label686
.p2align 2
label340:
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label307
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label686
	j label734
.p2align 2
label717:
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label686
.p2align 2
label686:
	sh2add a1, s5, s1
	sh2add a3, s7, s4
	sw a0, 0(a1)
	sh2add a2, s5, s2
	lw a4, 0(a3)
	sh2add a0, a0, s4
	sw a4, 0(a2)
	sw s5, 0(a3)
	sw s7, 4(a1)
	lw a1, 0(a0)
	sw a1, 4(a2)
	addiw a2, s5, 1
	addiw s5, s5, 2
	sw a2, 0(a0)
	bne s6, zero, label22
	j label21
.p2align 2
label332:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label686
	j label734
.p2align 2
label438:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label692
	j label736
label732:
	mv s6, s7
	mv a2, zero
	j label15
.p2align 2
label133:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label139
	mv s7, zero
	mv a0, zero
	mv s6, zero
	bne s5, zero, label680
	j label732
.p2align 2
label472:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label680
	j label732
.p2align 2
label63:
	sh2add a2, a1, s3
	addiw a1, a1, 1
	lw a0, 0(a2)
	sh2add a5, a0, s0
	sw zero, 0(a5)
	bge a4, a1, label63
	j label65
.p2align 2
label355:
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
	j label722
