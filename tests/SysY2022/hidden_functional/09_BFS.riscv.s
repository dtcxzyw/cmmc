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
	li s3, 10
	li s2, 1
	li s1, -1
	addiw a1, a0, -48
pcrel892:
	auipc a3, %pcrel_hi(que)
	li s6, 960
pcrel893:
	auipc a2, %pcrel_hi(to)
	li s4, 9
	addi t1, a3, %pcrel_lo(pcrel892)
	addi t0, a2, %pcrel_lo(pcrel893)
pcrel894:
	auipc a3, %pcrel_hi(next)
pcrel895:
	auipc a2, %pcrel_hi(inq)
	sd t1, 104(sp)
	addi a5, a3, %pcrel_lo(pcrel894)
	addi s0, a2, %pcrel_lo(pcrel895)
	sd t0, 112(sp)
	li a2, -1
	sd a5, 120(sp)
	slli s7, a2, 32
	bleu a1, s4, label2
.p2align 2
label94:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label94
label2:
	addiw a1, a0, -48
	bgeu a1, s3, label5
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label4
label5:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label123
	mv s5, a0
	mv s8, zero
	j label91
.p2align 2
label826:
	mv a2, s8
.p2align 2
label827:
	bleu a3, s4, label477
	mv s5, a0
	mv s8, a2
.p2align 2
label91:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s5, a1, label827
	j label826
label477:
	mv s8, a0
	mv s5, a2
label6:
	addiw a0, s8, -48
	bgeu a0, s3, label128
	mv s9, zero
.p2align 2
label9:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bgeu a1, s3, label12
	mv s8, a0
	j label9
label12:
	subw a0, zero, s9
	mv a1, a0
	bne s5, zero, label807
	mv a1, s9
label807:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s5, a2, %pcrel_lo(label807)
	mv a0, s5
	j label14
.p2align 2
label17:
	addi a0, a0, 256
.p2align 2
label14:
	add.uw a2, s1, s7
	addiw a3, a3, 64
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
	blt a3, s6, label17
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
	beq a1, zero, label90
	mv s6, a1
	mv s7, zero
	j label19
.p2align 2
label76:
	addi t1, t1, 4
.p2align 2
label73:
	lw a3, 0(t1)
	addiw a1, a1, 1
	sh2add a2, a3, s0
	sw zero, 0(a2)
	bge a4, a1, label76
.p2align 2
label77:
	jal putint
	mv a0, s3
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label90
.p2align 2
label19:
	jal getch
	xori a4, a0, 85
	xori a2, a0, 81
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	bne a2, zero, label19
	li a1, 81
	beq a0, a1, label48
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label277
	mv s8, a0
	mv s9, zero
	j label24
.p2align 2
label809:
	bleu a3, s4, label285
	mv s8, a0
	mv s9, a2
.p2align 2
label24:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label809
	mv a2, s9
	j label809
.p2align 2
label48:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label358
	mv s8, a0
	mv s9, zero
	j label49
.p2align 2
label816:
	mv a2, s9
.p2align 2
label817:
	bleu a3, s4, label366
	mv s8, a0
	mv s9, a2
.p2align 2
label49:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label817
	j label816
.p2align 2
label366:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	bgeu a0, s3, label848
.p2align 2
label372:
	mv s10, zero
	j label55
.p2align 2
label381:
	mv s8, a0
.p2align 2
label55:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bltu a1, s3, label381
.p2align 2
label58:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label819
	mv s8, s10
.p2align 2
label819:
	bleu a1, s4, label389
	mv s9, a0
	mv s10, zero
	j label87
.p2align 2
label825:
	bleu a3, s4, label469
	mv s9, a0
	mv s10, a2
.p2align 2
label87:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label825
	mv a2, s10
	j label825
.p2align 2
label285:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label844
.p2align 2
label291:
	mv s8, a0
	mv s10, zero
	j label43
.p2align 2
label348:
	mv s8, a0
.p2align 2
label43:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bltu a1, s3, label348
.p2align 2
label30:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label811
	mv s8, s10
.p2align 2
label811:
	bleu a1, s4, label299
	mv s9, a0
	mv s10, zero
	j label32
.p2align 2
label812:
	mv a2, s10
.p2align 2
label813:
	bleu a3, s4, label307
	mv s9, a0
	mv s10, a2
.p2align 2
label32:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label813
	j label812
.p2align 2
label307:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label845
.p2align 2
label313:
	mv s10, a0
	mv s11, zero
.p2align 2
label38:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, s3, label321
	mv s10, a0
	j label38
.p2align 2
label469:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label394
.p2align 2
label395:
	mv s10, a0
	mv s11, zero
	j label84
.p2align 2
label462:
	mv s10, a0
.p2align 2
label84:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bltu a1, s3, label462
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label821
	mv a1, s11
	sh2add a0, s8, s0
	mv a4, s2
	mv a3, zero
	li a2, 1
	sw s2, 0(a0)
	li a0, 1
	ld t1, 104(sp)
	sh2add t0, a2, t1
	sw s8, 4(t1)
	lw a5, 0(t0)
	beq s11, a5, label823
	mv a0, zero
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label78
	j label69
.p2align 2
label81:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label452
.p2align 2
label78:
	ld t0, 112(sp)
	sh2add t2, a3, t0
	lw a5, 0(t2)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label81
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label78
	blt a2, a4, label418
	blt a4, zero, label77
.p2align 2
label72:
	ld t1, 104(sp)
	mv a1, zero
	j label73
.p2align 2
label452:
	bge a2, a4, label853
.p2align 2
label418:
	mv a3, a0
	addiw a2, a2, 1
	ld t1, 104(sp)
	li a0, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	bne a1, a5, label850
.p2align 2
label823:
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label78
.p2align 2
label69:
	blt a2, a4, label418
label417:
	bge a4, zero, label72
	j label77
label394:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label821
.p2align 2
label821:
	sh2add a0, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a0)
	ld t1, 104(sp)
	sw s8, 4(t1)
	li a2, 1
	li a0, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a1, a5, label823
	mv a0, zero
	j label823
.p2align 2
label321:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label815
.p2align 2
label846:
	mv a0, s11
.p2align 2
label815:
	ld t0, 112(sp)
	sh2add a3, s8, s5
	sh2add a2, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, t0
	sw a0, 0(a1)
	addiw a0, s7, 1
	lw t0, 0(a3)
	ld a5, 120(sp)
	sh2add a4, s7, a5
	sw t0, 0(a4)
	sw s7, 0(a3)
	addiw s7, s7, 2
	sw s8, 4(a1)
	lw a5, 0(a2)
	sw a5, 4(a4)
	sw a0, 0(a2)
	bne s6, zero, label19
	j label90
.p2align 2
label850:
	mv a0, a3
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label78
	blt a2, a4, label418
	j label417
label90:
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
label299:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label313
label845:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label815
	j label846
label358:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s3, label372
label848:
	mv s10, zero
	j label58
label277:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label291
label844:
	mv s10, zero
	j label30
label389:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label395
	j label394
.p2align 2
label853:
	bge a4, zero, label72
	j label77
label123:
	mv s8, a0
	mv s5, zero
	j label6
label128:
	mv s9, zero
	j label12
