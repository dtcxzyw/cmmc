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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 960
	li s2, 1
pcrel886:
	auipc a2, %pcrel_hi(que)
pcrel887:
	auipc a4, %pcrel_hi(to)
	addiw a1, a0, -48
pcrel888:
	auipc a3, %pcrel_hi(next)
	li s1, -1
	addi t1, a2, %pcrel_lo(pcrel886)
	addi t0, a4, %pcrel_lo(pcrel887)
	addi a5, a3, %pcrel_lo(pcrel888)
pcrel889:
	auipc a2, %pcrel_hi(inq)
	li a3, -1
	sd t1, 104(sp)
	addi s0, a2, %pcrel_lo(pcrel889)
	slli s5, a3, 32
	li a2, 9
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, a2, label3
.p2align 2
label2:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label2
label3:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label5
.p2align 2
label94:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label94
label5:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label123
	mv s3, a0
	mv s6, zero
	j label91
.p2align 2
label819:
	mv a1, s6
.p2align 2
label820:
	li a2, 9
	bleu a3, a2, label471
	mv s3, a0
	mv s6, a1
.p2align 2
label91:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label820
	j label819
label471:
	mv s6, a0
	mv s3, a1
label6:
	addiw a1, s6, -48
	li a2, 10
	bgeu a1, a2, label128
	mv s7, zero
.p2align 2
label88:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label463
	mv s6, a0
	j label88
label463:
	mv a0, s7
label9:
	subw a1, zero, a0
	mv s7, a1
	bne s3, zero, label800
	mv s7, a0
label800:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s3, a1, %pcrel_lo(label800)
	mv a0, s3
	j label11
.p2align 2
label14:
	addi a0, a0, 256
.p2align 2
label11:
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
	blt a2, s4, label14
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
	bne s7, zero, label22
	j label21
.p2align 2
label66:
	mv a0, a3
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	beq s7, zero, label21
.p2align 2
label22:
	jal getch
	xori a3, a0, 85
	xori a4, a0, 81
	sltu a2, zero, a3
	sltu a1, zero, a4
	and a4, a1, a2
	bne a4, zero, label22
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label47
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label269
	mv s8, a0
	mv s9, zero
	j label44
.p2align 2
label808:
	li a2, 9
	bleu a3, a2, label337
	mv s8, a0
	mv s9, a1
.p2align 2
label44:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label808
	mv a1, s9
	j label808
.p2align 2
label47:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, a2, label343
	mv s9, zero
	j label48
.p2align 2
label809:
	mv a1, s9
.p2align 2
label810:
	li a2, 9
	bleu a3, a2, label351
	mv s8, a0
	mv s9, a1
.p2align 2
label48:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label810
	j label809
.p2align 2
label351:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label841
.p2align 2
label357:
	mv s10, zero
.p2align 2
label85:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label54
	mv s8, a0
	j label85
.p2align 2
label54:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label812
	mv s8, s10
.p2align 2
label812:
	li a2, 9
	bleu a1, a2, label365
	mv s9, a0
	mv s10, zero
	j label82
.p2align 2
label817:
	mv a1, s10
.p2align 2
label818:
	li a2, 9
	bleu a3, a2, label445
	mv s9, a0
	mv s10, a1
.p2align 2
label82:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label818
	j label817
.p2align 2
label337:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label274
.p2align 2
label275:
	mv s10, zero
	j label41
.p2align 2
label330:
	mv s8, a0
.p2align 2
label41:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, a2, label330
.p2align 2
label28:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label802
	mv s8, s10
.p2align 2
label802:
	li a2, 9
	bleu a1, a2, label283
	mv s9, a0
	mv s10, zero
	j label30
.p2align 2
label803:
	mv a1, s10
.p2align 2
label804:
	li a2, 9
	bleu a3, a2, label291
	mv s9, a0
	mv s10, a1
.p2align 2
label30:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label804
	j label803
.p2align 2
label291:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label837
.p2align 2
label297:
	mv s10, a0
	mv s11, zero
.p2align 2
label36:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, a2, label305
	mv s10, a0
	j label36
.p2align 2
label445:
	mv s9, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label370
.p2align 2
label371:
	mv s10, a0
	mv s11, zero
	j label79
.p2align 2
label438:
	mv s10, a0
.p2align 2
label79:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, a2, label438
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label814
	mv a0, s11
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label72
	j label65
.p2align 2
label76:
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label423
.p2align 2
label73:
	ld t0, 112(sp)
	sh2add t2, a3, t0
	lw a5, 0(t2)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label76
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label73
	mv a3, a2
	ble a4, a1, label849
.p2align 2
label72:
	addiw a1, a1, 1
	li a2, 1
	ld t1, 104(sp)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	beq a0, a5, label816
	mv a2, a3
.p2align 2
label816:
	sh2add t0, a5, s3
	lw a3, 0(t0)
	bne a3, s1, label73
	mv a3, a2
	bgt a4, a1, label72
label65:
	bge a4, zero, label67
	j label66
.p2align 2
label849:
	blt a4, zero, label66
.p2align 2
label67:
	ld t1, 104(sp)
	mv a0, zero
.p2align 2
label68:
	lw a1, 0(t1)
	addiw a0, a0, 1
	sh2add a2, a1, s0
	sw zero, 0(a2)
	blt a4, a0, label66
	addi t1, t1, 4
	j label68
label370:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label814
.p2align 2
label814:
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label72
	j label65
.p2align 2
label305:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label806
.p2align 2
label838:
	mv a1, s11
.p2align 2
label806:
	sw a1, 0(s5)
	sh2add a0, a1, s3
	sh2add a2, s8, s3
	lw a3, 0(a2)
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw a2, s6, 1
	sw s8, 4(s5)
	addiw s6, s6, 2
	addi s5, s5, 8
	lw a1, 0(a0)
	sw a1, 4(s4)
	addi s4, s4, 8
	sw a2, 0(a0)
	bne s7, zero, label22
	j label21
.p2align 2
label423:
	mv a3, a2
	bgt a4, a1, label72
	bge a4, zero, label67
	j label66
label21:
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label343:
	mv s9, zero
	addiw a0, s8, -48
	li a2, 10
	bltu a0, a2, label357
label841:
	mv s10, zero
	j label54
label283:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label297
label837:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label806
	j label838
label269:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label275
	j label274
label365:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label371
	j label370
label274:
	mv s10, zero
	j label28
label128:
	mv a0, zero
	j label9
label123:
	mv s6, a0
	mv s3, zero
	j label6
