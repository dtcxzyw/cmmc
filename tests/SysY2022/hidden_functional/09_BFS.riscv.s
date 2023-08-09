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
pcrel842:
	auipc a3, %pcrel_hi(que)
pcrel843:
	auipc a2, %pcrel_hi(to)
	addiw a1, a0, -48
	li s1, -1
	addi t1, a3, %pcrel_lo(pcrel842)
	addi t0, a2, %pcrel_lo(pcrel843)
pcrel844:
	auipc a3, %pcrel_hi(next)
pcrel845:
	auipc a2, %pcrel_hi(inq)
	sd t1, 104(sp)
	addi a5, a3, %pcrel_lo(pcrel844)
	addi s0, a2, %pcrel_lo(pcrel845)
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
	j label91
.p2align 2
label777:
	mv a1, s6
.p2align 2
label778:
	li a2, 9
	bleu a3, a2, label472
	mv s3, a0
	mv s6, a1
.p2align 2
label91:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label778
	j label777
label472:
	mv s6, a0
	mv s3, a1
label6:
	addiw a1, s6, -48
	li a2, 10
	bgeu a1, a2, label128
	mv s7, zero
.p2align 2
label9:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label137
	mv s6, a0
	j label9
label137:
	mv a0, s7
label12:
	subw a1, zero, a0
	mv s7, a1
	bne s3, zero, label758
	mv s7, a0
label758:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s3, a1, %pcrel_lo(label758)
	mv a0, s3
	j label14
.p2align 2
label17:
	addi a0, a0, 256
.p2align 2
label14:
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
	blt a2, s4, label17
	sh2add a0, a2, s3
	mv s6, zero
	sw s1, 0(a0)
	sw s1, 4(a0)
	sw s1, 8(a0)
	sw s1, 12(a0)
	sw s1, 16(a0)
	sw s1, 20(a0)
	sw s1, 24(a0)
	sw s1, 28(a0)
	sw s1, 32(a0)
	sw s1, 36(a0)
	sw s1, 40(a0)
	sw s1, 44(a0)
	sw s1, 48(a0)
	sw s1, 52(a0)
	sw s1, 56(a0)
	sw s1, 60(a0)
	sw s1, 64(a0)
	sw s1, 68(a0)
	sw s1, 72(a0)
	sw s1, 76(a0)
	sw s1, 80(a0)
	sw s1, 84(a0)
	sw s1, 88(a0)
	sw s1, 92(a0)
	sw s1, 96(a0)
	sw s1, 100(a0)
	sw s1, 104(a0)
	sw s1, 108(a0)
	sw s1, 112(a0)
	sw s1, 116(a0)
	sw s1, 120(a0)
	sw s1, 124(a0)
	sw s1, 128(a0)
	sw s1, 132(a0)
	sw s1, 136(a0)
	sw s1, 140(a0)
	sw s1, 144(a0)
	sw s1, 148(a0)
	sw s1, 152(a0)
	sw s1, 156(a0)
	sw s1, 160(a0)
	sw s1, 164(a0)
	sw s1, 168(a0)
	sw s1, 172(a0)
	sw s1, 176(a0)
	ld a5, 120(sp)
	ld t0, 112(sp)
	mv s4, a5
	mv s5, t0
	bne s7, zero, label24
	j label90
.p2align 2
label47:
	addi t1, t1, 4
.p2align 2
label44:
	lw a1, 0(t1)
	addiw a0, a0, 1
	sh2add a2, a1, s0
	sw zero, 0(a2)
	bge a4, a0, label47
.p2align 2
label42:
	mv a0, a3
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	beq s7, zero, label90
.p2align 2
label24:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label24
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label26
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label396
	mv s8, a0
	mv s9, zero
	j label87
.p2align 2
label776:
	li a2, 9
	bleu a3, a2, label464
	mv s8, a0
	mv s9, a1
.p2align 2
label87:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label776
	mv a1, s9
	j label776
.p2align 2
label464:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label401
.p2align 2
label402:
	mv s10, zero
.p2align 2
label84:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, a2, label71
	mv s8, a0
	j label84
.p2align 2
label71:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label770
	mv s8, s10
.p2align 2
label770:
	li a2, 9
	bleu a1, a2, label410
	mv s9, a0
	mv s10, zero
	j label73
.p2align 2
label771:
	mv a1, s10
.p2align 2
label772:
	li a2, 9
	bleu a3, a2, label418
	mv s9, a0
	mv s10, a1
.p2align 2
label73:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label772
	j label771
.p2align 2
label418:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label802
.p2align 2
label424:
	mv s10, a0
	mv s11, zero
.p2align 2
label79:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, a2, label432
	mv s10, a0
	j label79
.p2align 2
label26:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label279
	mv s8, a0
	mv s9, zero
	j label64
.p2align 2
label767:
	mv a1, s9
.p2align 2
label768:
	li a2, 9
	bleu a3, a2, label390
	mv s8, a0
	mv s9, a1
.p2align 2
label64:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label768
	j label767
.p2align 2
label390:
	mv s9, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label284
.p2align 2
label285:
	mv s8, a0
	mv s10, zero
	j label61
.p2align 2
label383:
	mv s8, a0
.p2align 2
label61:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, a2, label383
.p2align 2
label30:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label760
	mv s8, s10
.p2align 2
label760:
	li a2, 9
	bleu a1, a2, label293
	mv s9, a0
	mv s10, zero
	j label58
.p2align 2
label765:
	mv a1, s10
.p2align 2
label766:
	li a2, 9
	bleu a3, a2, label373
	mv s9, a0
	mv s10, a1
.p2align 2
label58:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label766
	j label765
.p2align 2
label373:
	mv s9, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label298
.p2align 2
label299:
	mv s10, a0
	mv s11, zero
.p2align 2
label55:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, a2, label365
	mv s10, a0
	j label55
label298:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label762
.p2align 2
label762:
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label48
	j label41
.p2align 2
label798:
	mv a3, a2
	ble a4, a1, label807
.p2align 2
label48:
	addiw a1, a1, 1
	li a2, 1
	ld t1, 104(sp)
	sh2add t0, a1, t1
	lw a5, 0(t0)
	beq a0, a5, label764
	mv a2, a3
.p2align 2
label764:
	sh2add t0, a5, s3
	lw a3, 0(t0)
	bne a3, s1, label49
	mv a3, a2
	bgt a4, a1, label48
label41:
	bge a4, zero, label43
	j label42
.p2align 2
label54:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label798
.p2align 2
label49:
	ld t0, 112(sp)
	sh2add t2, a3, t0
	lw a5, 0(t2)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label54
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label49
	mv a3, a2
	bgt a4, a1, label48
	bge a4, zero, label43
	j label42
.p2align 2
label432:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label774
.p2align 2
label803:
	mv a0, s11
.p2align 2
label774:
	sw a0, 0(s5)
	sh2add a2, s8, s3
	sh2add a1, a0, s3
	lw a3, 0(a2)
	addiw a0, s6, 1
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw s6, s6, 2
	sw s8, 4(s5)
	addi s5, s5, 8
	lw a3, 0(a1)
	sw a3, 4(s4)
	addi s4, s4, 8
	sw a0, 0(a1)
	bne s7, zero, label24
	j label90
.p2align 2
label365:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label762
	mv a0, s11
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	mv a1, zero
	ld t1, 104(sp)
	sw s8, 4(t1)
	bgt s2, zero, label48
	j label41
.p2align 2
label807:
	blt a4, zero, label42
.p2align 2
label43:
	ld t1, 104(sp)
	mv a0, zero
	j label44
label90:
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
label293:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label299
	j label298
label410:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label424
label802:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label774
	j label803
label279:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label285
	j label284
label396:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label402
	j label401
label284:
	mv s10, zero
	j label30
label401:
	mv s10, zero
	j label71
label123:
	mv s6, a0
	mv s3, zero
	j label6
label128:
	mv a0, zero
	j label12
