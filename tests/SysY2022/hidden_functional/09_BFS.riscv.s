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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s6, 960
	li s1, -1
	addiw a1, a0, -48
	li s2, 1
pcrel944:
	auipc a2, %pcrel_hi(que)
	li s3, 10
pcrel945:
	auipc a3, %pcrel_hi(to)
	li s4, 9
	addi t1, a2, %pcrel_lo(pcrel944)
	addi t0, a3, %pcrel_lo(pcrel945)
pcrel946:
	auipc a2, %pcrel_hi(next)
pcrel947:
	auipc a3, %pcrel_hi(inq)
	sd t1, 104(sp)
	addi a5, a2, %pcrel_lo(pcrel946)
	addi s0, a3, %pcrel_lo(pcrel947)
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, s4, label3
.p2align 2
label2:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label2
label3:
	addiw a1, a0, -48
	bgeu a1, s3, label6
.p2align 2
label5:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label5
label6:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label137
	mv s5, a0
	mv s7, zero
	j label7
.p2align 2
label853:
	bleu a3, s4, label145
	mv s5, a0
	mv s7, a2
.p2align 2
label7:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s5, a1, label853
	mv a2, s7
	j label853
label145:
	mv s5, a2
label10:
	addiw a1, a0, -48
	bgeu a1, s3, label150
	mv s7, a0
	mv s8, zero
	j label13
.p2align 2
label160:
	mv s7, a0
.p2align 2
label13:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s7, a2
	bltu a1, s3, label160
label16:
	subw a0, zero, s8
	mv a1, a0
	bne s5, zero, label855
	mv a1, s8
label855:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s5, a2, %pcrel_lo(label855)
	mv a0, s5
	j label18
.p2align 2
label21:
	addi a0, a0, 256
.p2align 2
label18:
	li a5, -1
	addiw a3, a3, 64
	slli a4, a5, 32
	add.uw a2, s1, a4
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
	blt a3, s6, label21
	li a4, -1
	slli a3, a4, 32
	add.uw a2, s1, a3
	sd a2, 256(a0)
	sd a2, 264(a0)
	sd a2, 272(a0)
	sd a2, 280(a0)
	sd a2, 288(a0)
	sd a2, 296(a0)
	sd a2, 304(a0)
	sd a2, 312(a0)
	sd a2, 320(a0)
	sd a2, 328(a0)
	sd a2, 336(a0)
	sd a2, 344(a0)
	sd a2, 352(a0)
	sd a2, 360(a0)
	sd a2, 368(a0)
	sd a2, 376(a0)
	sd a2, 384(a0)
	sd a2, 392(a0)
	sd a2, 400(a0)
	sd a2, 408(a0)
	sd a2, 416(a0)
	sd a2, 424(a0)
	sw s1, 432(a0)
	beq a1, zero, label102
	mv s6, a1
	mv s7, zero
	j label23
.p2align 2
label54:
	mv a0, a1
	jal putint
	mv a0, s3
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label102
.p2align 2
label23:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label23
	li a1, 81
	beq a0, a1, label27
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label454
	mv s8, a0
	mv s9, zero
	j label80
.p2align 2
label868:
	mv a2, s9
.p2align 2
label869:
	bleu a3, s4, label462
	mv s8, a0
	mv s9, a2
.p2align 2
label80:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label869
	j label868
.p2align 2
label27:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label299
	mv s8, a0
	mv s9, zero
	j label28
.p2align 2
label858:
	mv a2, s9
.p2align 2
label859:
	bleu a3, s4, label307
	mv s8, a0
	mv s9, a2
.p2align 2
label28:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label859
	j label858
.p2align 2
label462:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	bgeu a0, s3, label901
.p2align 2
label468:
	mv s10, zero
	j label86
.p2align 2
label477:
	mv s8, a0
.p2align 2
label86:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bltu a1, s3, label477
.p2align 2
label89:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label871
	mv s8, s10
.p2align 2
label871:
	bleu a1, s4, label485
	mv s9, a0
	mv s10, zero
	j label91
.p2align 2
label873:
	bleu a3, s4, label493
	mv s9, a0
	mv s10, a2
.p2align 2
label91:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label873
	mv a2, s10
	j label873
.p2align 2
label493:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label902
.p2align 2
label499:
	mv s10, a0
	mv s11, zero
	j label97
.p2align 2
label508:
	mv s10, a0
.p2align 2
label97:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, s3, label508
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label875
.p2align 2
label903:
	mv a0, s11
.p2align 2
label875:
	ld t0, 112(sp)
	sh2add a3, s8, s5
	sh2add a4, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, t0
	sw a0, 0(a1)
	addiw a0, s7, 1
	lw t0, 0(a3)
	ld a5, 120(sp)
	sh2add a2, s7, a5
	sw t0, 0(a2)
	sw s7, 0(a3)
	addiw s7, s7, 2
	sw s8, 4(a1)
	lw a5, 0(a4)
	sw a5, 4(a2)
	sw a0, 0(a4)
	bne s6, zero, label23
	j label102
.p2align 2
label307:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	bgeu a0, s3, label892
.p2align 2
label313:
	mv s10, zero
	j label74
.p2align 2
label444:
	mv s8, a0
.p2align 2
label74:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bltu a1, s3, label444
.p2align 2
label34:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label861
	mv s8, s10
.p2align 2
label861:
	bleu a1, s4, label321
	mv s9, a0
	mv s10, zero
	j label36
.p2align 2
label863:
	bleu a3, s4, label329
	mv s9, a0
	mv s10, a2
.p2align 2
label36:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label863
	mv a2, s10
	j label863
.p2align 2
label329:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label893
.p2align 2
label335:
	mv s10, a0
	mv s11, zero
.p2align 2
label42:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s3, label343
	mv s10, a0
	j label42
.p2align 2
label343:
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label894
.p2align 2
label865:
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
	beq a0, a5, label867
	mv a1, zero
.p2align 2
label867:
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label68
.p2align 2
label51:
	blt a2, a4, label367
label366:
	bge a4, zero, label55
	j label54
.p2align 2
label73:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label900
.p2align 2
label68:
	ld t0, 112(sp)
	sh2add t2, a3, t0
	lw a5, 0(t2)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label73
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label68
	blt a2, a4, label367
	bge a4, zero, label55
	j label54
.p2align 2
label900:
	bge a2, a4, label906
.p2align 2
label367:
	mv a3, a1
	addiw a2, a2, 1
	ld t1, 104(sp)
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label867
	mv a1, a3
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label68
	blt a2, a4, label367
	j label366
.p2align 2
label906:
	blt a4, zero, label54
.p2align 2
label55:
	addiw a0, a4, 1
	li a2, 3
	ble a0, a2, label375
	ld t1, 104(sp)
	mv a2, zero
.p2align 2
label57:
	lw a3, 0(t1)
	addiw a2, a2, 4
	sh2add a5, a3, s0
	sw zero, 0(a5)
	lw t0, 4(t1)
	sh2add t2, t0, s0
	sw zero, 0(t2)
	lw a3, 8(t1)
	sh2add t0, a3, s0
	addiw a3, a4, -2
	sw zero, 0(t0)
	lw t2, 12(t1)
	sh2add a5, t2, s0
	sw zero, 0(a5)
	bge a2, a3, label396
	addi t1, t1, 16
	j label57
.p2align 2
label396:
	mv a3, a2
	ble a0, a2, label54
.p2align 2
label63:
	ld t1, 104(sp)
	sh2add a2, a3, t1
.p2align 2
label64:
	lw a5, 0(a2)
	addiw a3, a3, 1
	sh2add a4, a5, s0
	sw zero, 0(a4)
	ble a0, a3, label54
	addi a2, a2, 4
	j label64
.p2align 2
label894:
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
	beq s11, a5, label867
	mv a1, zero
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label68
	j label51
label375:
	mv a3, zero
	bgt a0, zero, label63
	j label54
label102:
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label485:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label499
label902:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label875
	j label903
label454:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s3, label468
label901:
	mv s10, zero
	j label89
label321:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label335
label893:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label865
	j label865
label299:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s3, label313
label892:
	mv s10, zero
	j label34
label137:
	mv s5, zero
	j label10
label150:
	mv s8, zero
	j label16
