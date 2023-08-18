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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	addiw a1, a0, -48
	li s2, 1
pcrel936:
	auipc a2, %pcrel_hi(to)
	li s1, -1
	li s4, 45
pcrel937:
	auipc a3, %pcrel_hi(que)
	li s3, 9
	addi t0, a2, %pcrel_lo(pcrel936)
	addi t1, a3, %pcrel_lo(pcrel937)
pcrel938:
	auipc a2, %pcrel_hi(inq)
pcrel939:
	auipc a3, %pcrel_hi(next)
	addi s0, a2, %pcrel_lo(pcrel938)
	sd t1, 104(sp)
	addi a5, a3, %pcrel_lo(pcrel939)
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, s3, label2
.p2align 2
label102:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s3, label102
label2:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label4
.p2align 2
label101:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label101
label4:
	jal getch
	addiw a1, a0, -48
	bleu a1, s3, label125
	mv s5, a0
	mv s6, zero
.p2align 2
label5:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s4, label847
	mv a1, s6
label847:
	bleu a2, s3, label133
	mv s5, a0
	mv s6, a1
	j label5
label133:
	mv s6, a0
	mv s5, a1
label8:
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label138
	mv s7, zero
.p2align 2
label11:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	li a4, 10
	addi a2, a3, -48
	addw s7, s6, a2
	bgeu a1, a4, label14
	mv s6, a0
	j label11
label14:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label849
	mv s6, s7
label849:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label849)
	mv a0, s5
	j label16
.p2align 2
label100:
	addi a0, a0, 256
.p2align 2
label16:
	li a4, -1
	addiw a2, a2, 64
	slli a3, a4, 32
	add.uw a1, s1, a3
	sd a1, 0(a0)
	li a3, 960
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
	blt a2, a3, label100
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
	beq s6, zero, label20
	mv s7, zero
	j label21
.p2align 2
label65:
	addi a2, a2, 4
.p2align 2
label62:
	lw a4, 0(a2)
	addiw a3, a3, 1
	sh2add a5, a4, s0
	sw zero, 0(a5)
	bgt a0, a3, label65
.p2align 2
label52:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label20
.p2align 2
label21:
	jal getch
	xori a3, a0, 85
	xori a4, a0, 81
	sltu a2, zero, a3
	sltu a1, zero, a4
	and a4, a1, a2
	bne a4, zero, label21
	li a1, 81
	beq a0, a1, label25
	jal getch
	addiw a1, a0, -48
	bleu a1, s3, label441
	mv s8, a0
	mv s9, zero
.p2align 2
label78:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s4, label863
	mv a1, s9
label863:
	bleu a2, s3, label449
	mv s8, a0
	mv s9, a1
	j label78
.p2align 2
label449:
	mv s9, a1
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label896
.p2align 2
label455:
	mv s8, a0
	mv s10, zero
.p2align 2
label84:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label87
	mv s8, a0
	j label84
.p2align 2
label87:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label865
	mv s8, s10
label865:
	bleu a1, s3, label472
	mv s9, a0
	mv s10, zero
	j label89
.p2align 2
label481:
	mv s9, a0
	mv s10, a1
.p2align 2
label89:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s4, label867
	mv a1, s10
label867:
	bgtu a2, s3, label481
	mv s9, a1
	addiw a2, a0, -48
	li a1, 10
	bgeu a2, a1, label897
.p2align 2
label486:
	mv s10, a0
	mv s11, zero
.p2align 2
label95:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	li a3, 10
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, a3, label494
	mv s10, a0
	j label95
.p2align 2
label494:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label869
.p2align 2
label898:
	mv a0, s11
.p2align 2
label869:
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
	bne s6, zero, label21
	j label20
.p2align 2
label25:
	jal getch
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, s3, label286
	mv s9, zero
	j label26
.p2align 2
label295:
	mv s8, a0
	mv s9, a1
.p2align 2
label26:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s4, label853
	mv a1, s9
label853:
	bgtu a2, s3, label295
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label886
.p2align 2
label300:
	mv s10, zero
.p2align 2
label72:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, a3, label32
	mv s8, a0
	j label72
.p2align 2
label32:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label855
	mv s8, s10
label855:
	bleu a1, s3, label308
	mv s9, a0
	mv s10, zero
.p2align 2
label69:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s4, label861
	mv a1, s10
label861:
	bleu a2, s3, label421
	mv s9, a0
	mv s10, a1
	j label69
.p2align 2
label421:
	mv s9, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label313
.p2align 2
label314:
	mv s10, a0
	mv s11, zero
.p2align 2
label66:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	li a4, 10
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, a4, label413
	mv s10, a0
	j label66
.p2align 2
label413:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label857
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
	beq s11, a5, label859
	mv a1, zero
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label43
label332:
	blt a2, a4, label359
	j label358
.p2align 2
label48:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label889
.p2align 2
label43:
	ld t0, 112(sp)
	sh2add t2, a3, t0
	lw a5, 0(t2)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label48
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label43
	bge a2, a4, label888
.p2align 2
label359:
	mv a3, a1
	addiw a2, a2, 1
	ld t1, 104(sp)
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label859
	mv a1, a3
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label43
	blt a2, a4, label359
label358:
	bge a4, zero, label53
	j label52
.p2align 2
label889:
	blt a2, a4, label359
	blt a4, zero, label52
.p2align 2
label53:
	addiw a0, a4, 1
	li a2, 3
	ble a0, a2, label367
	ld t1, 104(sp)
	mv a2, zero
	j label55
.p2align 2
label58:
	addi t1, t1, 16
.p2align 2
label55:
	lw a3, 0(t1)
	addiw a2, a2, 4
	sh2add t0, a3, s0
	sw zero, 0(t0)
	lw a5, 4(t1)
	sh2add a3, a5, s0
	sw zero, 0(a3)
	lw t0, 8(t1)
	sh2add a5, t0, s0
	sw zero, 0(a5)
	lw a3, 12(t1)
	sh2add t0, a3, s0
	addiw a3, a4, -2
	sw zero, 0(t0)
	blt a2, a3, label58
	mv a3, a2
	ble a0, a2, label52
.p2align 2
label61:
	ld t1, 104(sp)
	sh2add a2, a3, t1
	j label62
label367:
	mv a3, zero
	bgt a0, zero, label61
	j label52
label313:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label857
label857:
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
	beq a0, a5, label859
	mv a1, zero
label859:
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label43
	j label332
label20:
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label286:
	mv s9, zero
	addiw a0, s8, -48
	li a1, 10
	bltu a0, a1, label300
label886:
	mv s10, zero
	j label32
label441:
	mv s9, zero
	addiw a2, a0, -48
	li a1, 10
	bltu a2, a1, label455
label896:
	mv s10, zero
	j label87
label308:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label314
	j label313
label472:
	mv s9, zero
	addiw a2, a0, -48
	li a1, 10
	bltu a2, a1, label486
label897:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label869
	j label898
.p2align 2
label888:
	bge a4, zero, label53
	j label52
label125:
	mv s6, a0
	mv s5, zero
	j label8
label138:
	mv s7, zero
	j label14
