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
	addi sp, sp, -136
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 960
	li s2, 1
	addiw a1, a0, -48
pcrel842:
	auipc a2, %pcrel_hi(que)
pcrel843:
	auipc a3, %pcrel_hi(inq)
	li s3, 10
	li s0, -1
	addi t2, a2, %pcrel_lo(pcrel842)
	addi t0, a3, %pcrel_lo(pcrel843)
pcrel844:
	auipc a2, %pcrel_hi(head)
	sd t2, 104(sp)
pcrel845:
	auipc a3, %pcrel_hi(to)
	sd t0, 112(sp)
	addi t1, a3, %pcrel_lo(pcrel845)
	addi t0, a2, %pcrel_lo(pcrel844)
pcrel846:
	auipc a2, %pcrel_hi(next)
	sd t0, 120(sp)
	addi s1, a2, %pcrel_lo(pcrel846)
	sd t1, 128(sp)
	li a2, 9
	bleu a1, a2, label3
.p2align 2
label2:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label2
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
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label131
	mv s5, a0
	mv s6, zero
.p2align 2
label92:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label776
	mv a1, s6
.p2align 2
label776:
	li a2, 9
	bleu a3, a2, label478
	mv s5, a0
	mv s6, a1
	j label92
label7:
	addiw a1, s6, -48
	bltu a1, s3, label137
	j label136
label478:
	mv s6, a0
	mv s5, a1
	j label7
label137:
	mv s7, zero
.p2align 2
label89:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s7, s6, a3
	bgeu a1, s3, label470
	mv s6, a0
	j label89
label10:
	subw a1, zero, a0
	mv s7, a1
	bne s5, zero, label755
	j label754
label470:
	mv a0, s7
	j label10
label754:
	mv s7, a0
label755:
	ld t0, 120(sp)
	mv a1, zero
.p2align 2
label12:
	li a3, -1
	addiw a1, a1, 64
	slli a2, a3, 32
	add.uw a0, s0, a2
	sd a0, 0(t0)
	sd a0, 8(t0)
	sd a0, 16(t0)
	sd a0, 24(t0)
	sd a0, 32(t0)
	sd a0, 40(t0)
	sd a0, 48(t0)
	sd a0, 56(t0)
	sd a0, 64(t0)
	sd a0, 72(t0)
	sd a0, 80(t0)
	sd a0, 88(t0)
	sd a0, 96(t0)
	sd a0, 104(t0)
	sd a0, 112(t0)
	sd a0, 120(t0)
	sd a0, 128(t0)
	sd a0, 136(t0)
	sd a0, 144(t0)
	sd a0, 152(t0)
	sd a0, 160(t0)
	sd a0, 168(t0)
	sd a0, 176(t0)
	sd a0, 184(t0)
	sd a0, 192(t0)
	sd a0, 200(t0)
	sd a0, 208(t0)
	sd a0, 216(t0)
	sd a0, 224(t0)
	sd a0, 232(t0)
	sd a0, 240(t0)
	sd a0, 248(t0)
	bge a1, s4, label16
	addi t0, t0, 256
	j label12
label16:
	ld t0, 120(sp)
	mv s4, s1
	mv s6, zero
	sh2add a0, a1, t0
	sw s0, 0(a0)
	sw s0, 4(a0)
	sw s0, 8(a0)
	sw s0, 12(a0)
	sw s0, 16(a0)
	sw s0, 20(a0)
	sw s0, 24(a0)
	sw s0, 28(a0)
	sw s0, 32(a0)
	sw s0, 36(a0)
	sw s0, 40(a0)
	sw s0, 44(a0)
	sw s0, 48(a0)
	sw s0, 52(a0)
	sw s0, 56(a0)
	sw s0, 60(a0)
	sw s0, 64(a0)
	sw s0, 68(a0)
	sw s0, 72(a0)
	sw s0, 76(a0)
	sw s0, 80(a0)
	sw s0, 84(a0)
	sw s0, 88(a0)
	sw s0, 92(a0)
	sw s0, 96(a0)
	sw s0, 100(a0)
	sw s0, 104(a0)
	sw s0, 108(a0)
	sw s0, 112(a0)
	sw s0, 116(a0)
	sw s0, 120(a0)
	sw s0, 124(a0)
	sw s0, 128(a0)
	sw s0, 132(a0)
	sw s0, 136(a0)
	sw s0, 140(a0)
	sw s0, 144(a0)
	sw s0, 148(a0)
	sw s0, 152(a0)
	sw s0, 156(a0)
	sw s0, 160(a0)
	sw s0, 164(a0)
	sw s0, 168(a0)
	sw s0, 172(a0)
	sw s0, 176(a0)
	ld t1, 128(sp)
	mv s5, t1
	beq s7, zero, label88
.p2align 2
label22:
	jal getch
	xori a4, a0, 85
	xori a3, a0, 81
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	bne a3, zero, label22
	addiw s7, s7, -1
	li a1, 81
	bne a0, a1, label65
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label277
	j label276
.p2align 2
label49:
	mv a0, a3
	jal putint
	mv a0, s3
	jal putch
	bne s7, zero, label22
	j label88
.p2align 2
label65:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label393
	mv s8, a0
	mv s9, zero
.p2align 2
label66:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label768
	mv a1, s9
.p2align 2
label768:
	li a2, 9
	bleu a3, a2, label401
	mv s8, a0
	mv s9, a1
	j label66
.p2align 2
label401:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label801
.p2align 2
label407:
	mv s8, a0
	mv s10, zero
.p2align 2
label85:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s3, label72
	mv s8, a0
	j label85
.p2align 2
label72:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label770
	mv s8, s10
.p2align 2
label770:
	li a2, 9
	bleu a1, a2, label415
	mv s9, a0
	mv s10, zero
.p2align 2
label74:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label772
	mv a1, s10
.p2align 2
label772:
	li a2, 9
	bleu a3, a2, label423
	mv s9, a0
	mv s10, a1
	j label74
.p2align 2
label423:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label802
.p2align 2
label429:
	mv s10, a0
	mv s11, zero
.p2align 2
label80:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s3, label437
	mv s10, a0
	j label80
.p2align 2
label437:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label774
.p2align 2
label803:
	mv a0, s11
.p2align 2
label774:
	sw a0, 0(s5)
	ld t0, 120(sp)
	sh2add a1, a0, t0
	sh2add a2, s8, t0
	addiw a0, s6, 1
	lw a3, 0(a2)
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw s6, s6, 2
	sw s8, 4(s5)
	addi s5, s5, 8
	lw a3, 0(a1)
	sw a3, 4(s4)
	addi s4, s4, 8
	sw a0, 0(a1)
	bne s7, zero, label22
label88:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label415:
	mv s9, zero
	j label77
label802:
	mv s11, zero
	j label83
label77:
	addiw a2, a0, -48
	bltu a2, s3, label429
	j label802
label83:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label774
	j label803
label393:
	mv s9, zero
	j label69
label801:
	mv s10, zero
	j label72
label69:
	addiw a2, a0, -48
	bltu a2, s3, label407
	j label801
label276:
	mv s9, zero
	j label28
label794:
	mv s10, zero
	j label31
label28:
	addiw a2, a0, -48
	bltu a2, s3, label290
	j label794
.p2align 2
label31:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label760
	mv s8, s10
.p2align 2
label760:
	li a2, 9
	bleu a1, a2, label298
	mv s9, a0
	mv s10, zero
.p2align 2
label33:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label762
	mv a1, s10
.p2align 2
label762:
	li a2, 9
	bleu a3, a2, label306
	mv s9, a0
	mv s10, a1
	j label33
.p2align 2
label306:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label795
.p2align 2
label312:
	mv s10, a0
	mv s11, zero
.p2align 2
label39:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s3, label320
	mv s10, a0
	j label39
.p2align 2
label284:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label794
.p2align 2
label290:
	mv s8, a0
	mv s10, zero
.p2align 2
label62:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bgeu a1, s3, label31
	mv s8, a0
	j label62
.p2align 2
label320:
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label796
.p2align 2
label764:
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label55
	j label48
.p2align 2
label50:
	ld t2, 104(sp)
	mv a0, zero
	j label51
.p2align 2
label55:
	addiw a1, a1, 1
	li a2, 1
	ld t2, 104(sp)
	sh2add t0, a1, t2
	lw a5, 0(t0)
	beq a0, a5, label766
	mv a2, a3
.p2align 2
label766:
	ld t0, 120(sp)
	sh2add t1, a5, t0
	lw a3, 0(t1)
	beq a3, s0, label356
.p2align 2
label56:
	ld t1, 128(sp)
	sh2add t3, a3, t1
	lw a5, 0(t3)
	ld t0, 112(sp)
	sh2add t2, a5, t0
	lw t1, 0(t2)
	beq t1, zero, label59
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label56
	j label799
.p2align 2
label59:
	addiw a4, a4, 1
	ld t2, 104(sp)
	ld t0, 112(sp)
	sh2add t1, a4, t2
	sh2add t3, a5, t0
	sw s2, 0(t3)
	sw a5, 0(t1)
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label56
	mv a3, a2
	bgt a4, a1, label55
	bge a4, zero, label50
	j label49
.p2align 2
label51:
	lw a1, 0(t2)
	addiw a0, a0, 1
	ld t0, 112(sp)
	sh2add a2, a1, t0
	sw zero, 0(a2)
	blt a4, a0, label49
	addi t2, t2, 4
	j label51
.p2align 2
label799:
	mv a3, a2
	bgt a4, a1, label55
	bge a4, zero, label50
	j label49
label298:
	mv s9, zero
	j label36
label795:
	mv s11, zero
	j label42
label36:
	addiw a2, a0, -48
	bltu a2, s3, label312
	j label795
label42:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label764
	mv a0, s11
	j label764
label48:
	bge a4, zero, label50
	j label49
.p2align 2
label356:
	mv a3, a2
	bgt a4, a1, label55
	j label48
.p2align 2
label796:
	mv a0, s11
	mv a4, s2
	mv a3, zero
	ld t0, 112(sp)
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label55
	j label48
.p2align 2
label277:
	mv s8, a0
	mv s9, zero
.p2align 2
label25:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label758
	mv a1, s9
.p2align 2
label758:
	li a2, 9
	bleu a3, a2, label284
	mv s8, a0
	mv s9, a1
	j label25
label131:
	mv s6, a0
	mv s5, zero
	j label7
label136:
	mv a0, zero
	j label10
