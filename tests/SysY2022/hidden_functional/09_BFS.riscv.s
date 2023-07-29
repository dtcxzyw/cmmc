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
	sd s3, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s4, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	slti a1, a0, 48
	li a2, 57
	slt a3, a2, a0
pcrel753:
	auipc a2, %pcrel_hi(que)
	or a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel753)
pcrel754:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel754)
pcrel755:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel755)
pcrel756:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel756)
pcrel757:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel757)
	bne a1, zero, label2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label88
label5:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label123
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label137
	mv s7, zero
	mv a0, zero
	mv s5, zero
label738:
	mv s5, s7
	mv a2, zero
	j label14
label123:
	mv s5, a0
	mv s6, zero
.p2align 2
label6:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label679
	mv a1, s6
.p2align 2
label679:
	bne a2, zero, label132
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label137
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label681
	j label738
label132:
	mv s5, a0
	mv s6, a1
	j label6
label137:
	mv s5, a0
	mv s7, zero
	j label85
label681:
	mv a2, zero
	j label14
.p2align 2
label85:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s5, a3
	bltu a1, a2, label480
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label681
	j label738
label480:
	mv s5, a0
	j label85
.p2align 2
label14:
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
	blt a2, a0, label14
	sh2add a0, a2, s4
	mv s6, zero
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
	bne s5, zero, label20
label84:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s4, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s3, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label20:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label20
	li a1, 81
	beq a0, a1, label45
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label278
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label292
.p2align 2
label718:
	mv s9, zero
	j label32
.p2align 2
label278:
	mv s9, a0
	mv s7, zero
.p2align 2
label23:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label683
	mv s8, s7
.p2align 2
label683:
	bne a1, zero, label287
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label292
	j label718
.p2align 2
label287:
	mv s9, a0
	mv s7, s8
	j label23
.p2align 2
label292:
	mv s7, a0
	mv s9, zero
.p2align 2
label29:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label32
	mv s7, a0
	j label29
.p2align 2
label32:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label685
	mv s7, s9
.p2align 2
label685:
	bne a1, zero, label311
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label325
	mv s10, zero
	mv a1, zero
	mv a0, zero
label740:
	mv a0, s10
	j label689
.p2align 2
label311:
	mv s9, a0
	mv s8, zero
.p2align 2
label34:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label687
	mv a2, s8
.p2align 2
label687:
	bne a1, zero, label320
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label325
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label689
	j label740
.p2align 2
label320:
	mv s9, a0
	mv s8, a2
	j label34
.p2align 2
label325:
	mv s9, a0
	mv s10, zero
.p2align 2
label40:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label334
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label689
	j label740
.p2align 2
label334:
	mv s9, a0
	j label40
.p2align 2
label689:
	sh2add a1, s6, s1
	addiw s5, s5, -1
	sh2add a3, s7, s4
	sw a0, 0(a1)
	sh2add a2, s6, s2
	lw a4, 0(a3)
	sh2add a0, a0, s4
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	addiw a1, s6, 1
	lw a3, 0(a0)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s5, zero, label20
	j label84
.p2align 2
label45:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label359
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label364
	j label725
.p2align 2
label359:
	mv s9, a0
	mv s7, zero
	j label81
.p2align 2
label364:
	mv s7, a0
	mv s9, zero
.p2align 2
label49:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s9, s7, a3
	bgeu a1, a2, label52
	mv s7, a0
	j label49
.p2align 2
label52:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label691
	mv s7, s9
.p2align 2
label691:
	bne a1, zero, label383
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label388
	mv s10, zero
	mv a1, zero
	mv a0, zero
label742:
	mv a0, s10
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
	j label59
.p2align 2
label383:
	mv s9, a0
	mv s8, zero
	j label78
.p2align 2
label388:
	mv s9, a0
	mv s10, zero
.p2align 2
label75:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bltu a1, a2, label453
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label693
	j label742
.p2align 2
label453:
	mv s9, a0
	j label75
.p2align 2
label78:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label697
	mv a2, s8
.p2align 2
label697:
	bne a1, zero, label462
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label388
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label693
	j label742
.p2align 2
label462:
	mv s9, a0
	mv s8, a2
	j label78
.p2align 2
label81:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label699
	mv s8, s7
.p2align 2
label699:
	bne a1, zero, label471
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label364
	j label725
.p2align 2
label471:
	mv s9, a0
	mv s7, s8
	j label81
.p2align 2
label725:
	mv s9, zero
	j label52
.p2align 2
label693:
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
.p2align 2
label59:
	bgt a4, a2, label63
	blt a4, zero, label74
.p2align 2
label433:
	mv a1, zero
.p2align 2
label72:
	sh2add a0, a1, s3
	addiw a1, a1, 1
	lw a2, 0(a0)
	sh2add a5, a2, s0
	sw zero, 0(a5)
	bge a4, a1, label72
	j label74
.p2align 2
label63:
	addiw a2, a2, 1
	li a1, 1
	sh2add t0, a2, s3
	lw a5, 0(t0)
	beq a0, a5, label695
	mv a1, a3
.p2align 2
label695:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label67
	mv a3, a1
	bgt a4, a2, label63
	bge a4, zero, label433
	j label74
.p2align 2
label67:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label70
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label67
	mv a3, a1
	bgt a4, a2, label63
	bge a4, zero, label433
	j label74
.p2align 2
label70:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label67
	mv a3, a1
	bgt a4, a2, label63
	bge a4, zero, label433
.p2align 2
label74:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label20
	j label84
.p2align 2
label2:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label5
.p2align 2
label88:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label88
	j label5
