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
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 960
	li s2, 1
	addiw a1, a0, -48
pcrel884:
	auipc a3, %pcrel_hi(que)
pcrel885:
	auipc a2, %pcrel_hi(to)
	li s1, -1
	addi t1, a3, %pcrel_lo(pcrel884)
	addi t0, a2, %pcrel_lo(pcrel885)
pcrel886:
	auipc a3, %pcrel_hi(next)
pcrel887:
	auipc a2, %pcrel_hi(inq)
	sd t1, 104(sp)
	addi a5, a3, %pcrel_lo(pcrel886)
	addi s0, a2, %pcrel_lo(pcrel887)
	li a3, -1
	sd t0, 112(sp)
	li a2, 9
	slli s5, a3, 32
	sd a5, 120(sp)
	bleu a1, a2, label2
.p2align 2
label94:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label94
label2:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label5
.p2align 2
label4:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label4
label5:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label123
	mv s3, a0
	mv s6, zero
	j label6
.p2align 2
label800:
	li a2, 9
	bleu a3, a2, label131
	mv s3, a0
	mv s6, a1
.p2align 2
label6:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label800
	mv a1, s6
	j label800
label131:
	mv s3, a1
label9:
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label136
	mv s6, a0
	mv s7, zero
.p2align 2
label12:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label145
	mv s6, a0
	j label12
label145:
	mv a0, s7
label15:
	subw a1, zero, a0
	mv s7, a1
	bne s3, zero, label802
	mv s7, a0
label802:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s3, a1, %pcrel_lo(label802)
	mv a0, s3
.p2align 2
label17:
	add.uw a1, s1, s5
	addiw a2, a2, 64
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
	bge a2, s4, label21
	addi a0, a0, 256
	j label17
label21:
	add.uw a1, s1, s5
	mv s6, zero
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
	ld a5, 120(sp)
	ld t0, 112(sp)
	mv s4, a5
	mv s5, t0
	bne s7, zero, label28
	j label27
.p2align 2
label79:
	addi t1, t1, 4
.p2align 2
label76:
	lw a1, 0(t1)
	addiw a0, a0, 1
	sh2add a2, a1, s0
	sw zero, 0(a2)
	bge a4, a0, label79
.p2align 2
label80:
	mv a0, a3
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	beq s7, zero, label27
.p2align 2
label28:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label28
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label53
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label286
	mv s8, a0
	mv s9, zero
	j label31
.p2align 2
label804:
	li a2, 9
	bleu a3, a2, label294
	mv s8, a0
	mv s9, a1
.p2align 2
label31:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label804
	mv a1, s9
	j label804
.p2align 2
label294:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label837
.p2align 2
label300:
	mv s8, a0
	mv s10, zero
.p2align 2
label50:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, a2, label37
	mv s8, a0
	j label50
.p2align 2
label37:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label806
	mv s8, s10
.p2align 2
label806:
	li a2, 9
	bleu a1, a2, label308
	mv s9, a0
	mv s10, zero
	j label39
.p2align 2
label807:
	mv a1, s10
.p2align 2
label808:
	li a2, 9
	bleu a3, a2, label316
	mv s9, a0
	mv s10, a1
.p2align 2
label39:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label808
	j label807
.p2align 2
label316:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label838
.p2align 2
label322:
	mv s10, a0
	mv s11, zero
.p2align 2
label45:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, a2, label330
	mv s10, a0
	j label45
.p2align 2
label53:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label360
	mv s8, a0
	mv s9, zero
	j label54
.p2align 2
label811:
	mv a1, s9
.p2align 2
label812:
	li a2, 9
	bleu a3, a2, label368
	mv s8, a0
	mv s9, a1
.p2align 2
label54:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label812
	j label811
.p2align 2
label368:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label841
.p2align 2
label374:
	mv s10, zero
.p2align 2
label91:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label60
	mv s8, a0
	j label91
.p2align 2
label60:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label814
	mv s8, s10
.p2align 2
label814:
	li a2, 9
	bleu a1, a2, label382
	mv s9, a0
	mv s10, zero
	j label62
.p2align 2
label816:
	li a2, 9
	bleu a3, a2, label390
	mv s9, a0
	mv s10, a1
.p2align 2
label62:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label816
	mv a1, s10
	j label816
.p2align 2
label390:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label842
.p2align 2
label396:
	mv s10, a0
	mv s11, zero
.p2align 2
label88:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, a2, label462
	mv s10, a0
	j label88
label382:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label396
label842:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label818
.p2align 2
label818:
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label81
	j label74
.p2align 2
label448:
	mv a3, a2
	ble a4, a1, label845
.p2align 2
label81:
	addiw a1, a1, 1
	li a2, 1
	ld t1, 104(sp)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	beq a0, a5, label820
	mv a2, a3
.p2align 2
label820:
	sh2add t0, a5, s3
	lw a3, 0(t0)
	bne a3, s1, label82
	mv a3, a2
	bgt a4, a1, label81
label74:
	bge a4, zero, label75
	j label80
.p2align 2
label85:
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label448
.p2align 2
label82:
	ld t0, 112(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, zero, label85
	addiw a4, a4, 1
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label82
	mv a3, a2
	bgt a4, a1, label81
	blt a4, zero, label80
.p2align 2
label75:
	ld t1, 104(sp)
	mv a0, zero
	j label76
.p2align 2
label330:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label810
.p2align 2
label839:
	mv a1, s11
.p2align 2
label810:
	sw a1, 0(s5)
	sh2add a0, a1, s3
	sh2add a2, s8, s3
	addiw a1, s6, 1
	lw a3, 0(a2)
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw s6, s6, 2
	sw s8, 4(s5)
	addi s5, s5, 8
	lw a3, 0(a0)
	sw a3, 4(s4)
	addi s4, s4, 8
	sw a1, 0(a0)
	bne s7, zero, label28
	j label27
.p2align 2
label462:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label818
	mv a0, s11
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label81
	j label74
label27:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label308:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label322
label838:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label810
	j label839
label286:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label300
label837:
	mv s10, zero
	j label37
label360:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label374
label841:
	mv s10, zero
	j label60
.p2align 2
label845:
	bge a4, zero, label75
	j label80
label123:
	mv s3, zero
	j label9
label136:
	mv a0, zero
	j label15
