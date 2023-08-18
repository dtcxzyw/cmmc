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
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 45
	li s2, 1
	li s1, -1
pcrel935:
	auipc a3, %pcrel_hi(que)
	li s3, 9
	addiw a1, a0, -48
pcrel936:
	auipc a2, %pcrel_hi(to)
	addi t1, a3, %pcrel_lo(pcrel935)
	addi t0, a2, %pcrel_lo(pcrel936)
pcrel937:
	auipc a3, %pcrel_hi(next)
	sd t1, 104(sp)
pcrel938:
	auipc a2, %pcrel_hi(inq)
	addi a5, a3, %pcrel_lo(pcrel937)
	addi s0, a2, %pcrel_lo(pcrel938)
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, s3, label3
.p2align 2
label2:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s3, label2
label3:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label6
.p2align 2
label5:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label5
label6:
	jal getch
	addiw a1, a0, -48
	bleu a1, s3, label137
	mv s5, a0
	mv s6, zero
.p2align 2
label7:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s4, label847
	mv a1, s6
label847:
	bleu a2, s3, label145
	mv s5, a0
	mv s6, a1
	j label7
label145:
	mv s5, a1
label10:
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label150
	mv s6, a0
	mv s7, zero
	j label13
.p2align 2
label160:
	mv s6, a0
.p2align 2
label13:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	li a4, 10
	addi a2, a3, -48
	addw s7, s6, a2
	bltu a1, a4, label160
label16:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label849
	mv s6, s7
label849:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label849)
	mv a0, s5
	j label18
.p2align 2
label21:
	addi a0, a0, 256
.p2align 2
label18:
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
	blt a2, a3, label21
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
	beq s6, zero, label102
	mv s7, zero
	j label23
.p2align 2
label54:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label102
.p2align 2
label23:
	jal getch
	xori a3, a0, 85
	xori a4, a0, 81
	sltu a2, zero, a3
	sltu a1, zero, a4
	and a4, a1, a2
	bne a4, zero, label23
	li a1, 81
	beq a0, a1, label27
	jal getch
	addiw a1, a0, -48
	bleu a1, s3, label454
	mv s8, a0
	mv s9, zero
	j label80
.p2align 2
label27:
	jal getch
	addiw a1, a0, -48
	bleu a1, s3, label299
	mv s8, a0
	mv s9, zero
.p2align 2
label28:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s4, label853
	mv a1, s9
label853:
	bleu a2, s3, label307
	mv s8, a0
	mv s9, a1
	j label28
.p2align 2
label463:
	mv s8, a0
	mv s9, a1
.p2align 2
label80:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s4, label863
	mv a1, s9
label863:
	bgtu a2, s3, label463
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label895
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
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, a2, label477
.p2align 2
label89:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label865
	mv s8, s10
label865:
	bleu a1, s3, label485
	mv s9, a0
	mv s10, zero
.p2align 2
label91:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s4, label867
	mv a1, s10
label867:
	bleu a2, s3, label493
	mv s9, a0
	mv s10, a1
	j label91
.p2align 2
label307:
	mv s9, a1
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label886
.p2align 2
label313:
	mv s8, a0
	mv s10, zero
.p2align 2
label74:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label34
	mv s8, a0
	j label74
.p2align 2
label34:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label855
	mv s8, s10
label855:
	bleu a1, s3, label321
	mv s9, a0
	mv s10, zero
.p2align 2
label36:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s4, label857
	mv a1, s10
label857:
	bleu a2, s3, label329
	mv s9, a0
	mv s10, a1
	j label36
.p2align 2
label329:
	mv s9, a1
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label887
.p2align 2
label335:
	mv s10, a0
	mv s11, zero
.p2align 2
label42:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	li a4, 10
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, a4, label343
	mv s10, a0
	j label42
.p2align 2
label343:
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
	bne a3, s1, label68
label51:
	blt a2, a4, label367
	j label366
.p2align 2
label71:
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label429
.p2align 2
label68:
	ld t0, 112(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, zero, label71
	addiw a4, a4, 1
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label68
	bge a2, a4, label900
.p2align 2
label367:
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
	bne a3, s1, label68
	blt a2, a4, label367
label366:
	bge a4, zero, label55
	j label54
.p2align 2
label900:
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
	lw a5, 0(t1)
	addiw a2, a2, 4
	sh2add a3, a5, s0
	sw zero, 0(a3)
	lw t0, 4(t1)
	sh2add a5, t0, s0
	sw zero, 0(a5)
	lw a3, 8(t1)
	sh2add t2, a3, s0
	addiw a3, a4, -2
	sw zero, 0(t2)
	lw t0, 12(t1)
	sh2add a5, t0, s0
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
label493:
	mv s9, a1
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label896
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
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	li a4, 10
	addi a2, a3, -48
	addw s11, s10, a2
	bltu a1, a4, label508
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label869
.p2align 2
label897:
	mv a0, s11
.p2align 2
label869:
	ld t0, 112(sp)
	sh2add a2, s8, s5
	sh2add a4, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, t0
	sw a0, 0(a1)
	addiw a0, s7, 1
	lw t0, 0(a2)
	ld a5, 120(sp)
	sh2add a3, s7, a5
	sw t0, 0(a3)
	sw s7, 0(a2)
	addiw s7, s7, 2
	sw s8, 4(a1)
	lw a5, 0(a4)
	sw a5, 4(a3)
	sw a0, 0(a4)
	bne s6, zero, label23
	j label102
.p2align 2
label429:
	blt a2, a4, label367
	bge a4, zero, label55
	j label54
label375:
	mv a3, zero
	bgt a0, zero, label63
	j label54
label321:
	mv s9, zero
	addiw a2, a0, -48
	li a1, 10
	bltu a2, a1, label335
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
	bne a3, s1, label68
	j label51
label102:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label299:
	mv s9, zero
	addiw a2, a0, -48
	li a1, 10
	bltu a2, a1, label313
label886:
	mv s10, zero
	j label34
label485:
	mv s9, zero
	addiw a2, a0, -48
	li a1, 10
	bltu a2, a1, label499
label896:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label869
	j label897
label454:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label468
label895:
	mv s10, zero
	j label89
label137:
	mv s5, zero
	j label10
label150:
	mv s7, zero
	j label16
