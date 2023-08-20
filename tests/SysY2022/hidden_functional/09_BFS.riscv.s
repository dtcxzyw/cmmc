.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
to:
	.zero	20020
.p2align 3
next:
	.zero	20020
.p2align 3
head:
	.zero	4020
.p2align 3
que:
	.zero	4020
.p2align 3
inq:
	.zero	4020
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[104]
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s3, 10
	li s2, 1
	addiw a1, a0, -48
pcrel932:
	auipc a2, %pcrel_hi(que)
	li s1, -1
pcrel933:
	auipc a3, %pcrel_hi(to)
	li s4, 9
	addi t1, a2, %pcrel_lo(pcrel932)
	addi t0, a3, %pcrel_lo(pcrel933)
pcrel934:
	auipc a2, %pcrel_hi(next)
	sd t1, 104(sp)
pcrel935:
	auipc a3, %pcrel_hi(inq)
	addi a5, a2, %pcrel_lo(pcrel934)
	addi s0, a3, %pcrel_lo(pcrel935)
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, s4, label2
.p2align 2
label102:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label102
label2:
	addiw a1, a0, -48
	bgeu a1, s3, label4
.p2align 2
label101:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label101
label4:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label125
	mv s5, a0
	mv s6, zero
.p2align 2
label5:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s5, a3, label847
	mv a1, s6
label847:
	bleu a2, s4, label133
	mv s5, a0
	mv s6, a1
	j label5
label133:
	mv s6, a0
	mv s5, a1
label8:
	addiw a0, s6, -48
	bgeu a0, s3, label138
	mv s7, zero
.p2align 2
label98:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s7, s6, a2
	bgeu a1, s3, label11
	mv s6, a0
	j label98
label11:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label849
	mv s6, s7
label849:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label849)
	mv a0, s5
	j label13
.p2align 2
label16:
	addi a0, a0, 256
.p2align 2
label13:
	li a4, -1
	addiw a2, a2, 64
	slli a3, a4, 32
	add.uw a1, s1, a3
	li a3, 960
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	sd a1, 240(a0)
	sd a1, 248(a0)
	blt a2, a3, label16
	li a3, -1
	slli a2, a3, 32
	add.uw a1, s1, a2
	sd a1, 256(a0)
	sd a1, 264(a0)
	sd a1, 272(a0)
	sd a1, 280(a0)
	sd a1, 288(a0)
	sd a1, 296(a0)
	sd a1, 304(a0)
	sd a1, 312(a0)
	sd a1, 320(a0)
	sd a1, 328(a0)
	sd a1, 336(a0)
	sd a1, 344(a0)
	sd a1, 352(a0)
	sd a1, 360(a0)
	sd a1, 368(a0)
	sd a1, 376(a0)
	sd a1, 384(a0)
	sd a1, 392(a0)
	sd a1, 400(a0)
	sd a1, 408(a0)
	sd a1, 416(a0)
	sd a1, 424(a0)
	sw s1, 432(a0)
	beq s6, zero, label97
	mv s7, zero
	j label18
.p2align 2
label52:
	mv a0, a1
	jal putint
	mv a0, s3
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label97
.p2align 2
label18:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label18
	li a1, 81
	beq a0, a1, label22
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label428
	mv s8, a0
	mv s9, zero
	j label73
.p2align 2
label437:
	mv s8, a0
	mv s9, a2
.p2align 2
label73:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s8, a3, label863
	mv a2, s9
label863:
	bgtu a1, s4, label437
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label895
.p2align 2
label442:
	mv s8, a0
	mv s10, zero
	j label79
.p2align 2
label451:
	mv s8, a0
.p2align 2
label79:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bltu a1, s3, label451
.p2align 2
label82:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label865
	mv s8, s10
label865:
	bleu a1, s4, label459
	mv s9, a0
	mv s10, zero
	j label92
.p2align 2
label499:
	mv s9, a0
	mv s10, a2
.p2align 2
label92:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label869
	mv a2, s10
label869:
	bgtu a1, s4, label499
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label464
.p2align 2
label465:
	mv s10, a0
	mv s11, zero
	j label89
.p2align 2
label491:
	mv s10, a0
.p2align 2
label89:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bltu a1, s3, label491
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label867
.p2align 2
label866:
	mv a0, s11
.p2align 2
label867:
	ld t0, 112(sp)
	sh2add a4, s8, s5
	sh2add a2, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, t0
	sw a0, 0(a1)
	lw t0, 0(a4)
	ld a5, 120(sp)
	sh2add a3, s7, a5
	sw t0, 0(a3)
	sw s7, 0(a4)
	sw s8, 4(a1)
	addiw a1, s7, 1
	lw a0, 0(a2)
	addiw s7, s7, 2
	sw a0, 4(a3)
	sw a1, 0(a2)
	bne s6, zero, label18
	j label97
.p2align 2
label22:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label278
	mv s8, a0
	mv s9, zero
	j label23
.p2align 2
label287:
	mv s8, a0
	mv s9, a2
.p2align 2
label23:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s8, a3, label853
	mv a2, s9
label853:
	bgtu a1, s4, label287
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label886
.p2align 2
label292:
	mv s8, a0
	mv s10, zero
	j label29
.p2align 2
label301:
	mv s8, a0
.p2align 2
label29:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, s3, label301
.p2align 2
label32:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label855
	mv s8, s10
label855:
	bleu a1, s4, label309
	mv s9, a0
	mv s10, zero
	j label34
.p2align 2
label318:
	mv s9, a0
	mv s10, a2
.p2align 2
label34:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label857
	mv a2, s10
label857:
	bgtu a1, s4, label318
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label887
.p2align 2
label323:
	mv s10, a0
	mv s11, zero
	j label40
.p2align 2
label332:
	mv s10, a0
.p2align 2
label40:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, s3, label332
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label859
	mv a0, s11
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	li a2, 1
	sw s2, 0(a1)
	li a1, 1
	ld t1, 104(sp)
	sh2add t0, a2, t1
	sw s8, 4(t1)
	lw a5, 0(t0)
	beq s11, a5, label861
	mv a1, zero
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label66
label49:
	blt a2, a4, label355
	j label354
.p2align 2
label71:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label894
.p2align 2
label66:
	ld t0, 112(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	sh2add t2, a5, s0
	lw t0, 0(t2)
	beq t0, zero, label71
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label66
	blt a2, a4, label355
	bge a4, zero, label53
	j label52
.p2align 2
label894:
	bge a2, a4, label900
.p2align 2
label355:
	mv a3, a1
	addiw a2, a2, 1
	ld t1, 104(sp)
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label861
	mv a1, a3
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label66
	blt a2, a4, label355
label354:
	bge a4, zero, label53
	j label52
.p2align 2
label900:
	blt a4, zero, label52
.p2align 2
label53:
	addiw a0, a4, 1
	li a2, 3
	ble a0, a2, label363
	ld t1, 104(sp)
	mv a2, zero
.p2align 2
label62:
	lw a3, 0(t1)
	addiw a2, a2, 4
	sh2add t0, a3, s0
	sw zero, 0(t0)
	lw a5, 4(t1)
	sh2add a3, a5, s0
	sw zero, 0(a3)
	lw t0, 8(t1)
	sh2add t2, t0, s0
	sw zero, 0(t2)
	lw a3, 12(t1)
	sh2add a5, a3, s0
	addiw a3, a4, -2
	sw zero, 0(a5)
	bge a2, a3, label399
	addi t1, t1, 16
	j label62
.p2align 2
label399:
	mv a3, a2
	ble a0, a2, label52
.p2align 2
label56:
	ld t1, 104(sp)
	sh2add a2, a3, t1
.p2align 2
label57:
	lw a4, 0(a2)
	addiw a3, a3, 1
	sh2add a5, a4, s0
	sw zero, 0(a5)
	ble a0, a3, label52
	addi a2, a2, 4
	j label57
label363:
	mv a3, zero
	bgt a0, zero, label56
	j label52
label309:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label323
label887:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label859
label859:
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	ld t1, 104(sp)
	sw s8, 4(t1)
	li a2, 1
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label861
	mv a1, zero
label861:
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label66
	j label49
label97:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label464:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label867
	j label866
label459:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label465
	j label464
label428:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label442
label895:
	mv s10, zero
	j label82
label278:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label292
label886:
	mv s10, zero
	j label32
label138:
	mv s7, zero
	j label11
label125:
	mv s6, a0
	mv s5, zero
	j label8
