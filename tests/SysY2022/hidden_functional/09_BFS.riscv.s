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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s0, -1
	addiw a1, a0, -48
pcrel839:
	auipc a2, %pcrel_hi(que)
	li s2, 1
	li s4, 960
pcrel840:
	auipc a3, %pcrel_hi(inq)
	li s3, 10
	addi t2, a2, %pcrel_lo(pcrel839)
	addi t0, a3, %pcrel_lo(pcrel840)
pcrel841:
	auipc a2, %pcrel_hi(head)
	sd t2, 104(sp)
pcrel842:
	auipc a3, %pcrel_hi(to)
	sd t0, 112(sp)
	addi t1, a3, %pcrel_lo(pcrel842)
	addi t0, a2, %pcrel_lo(pcrel841)
pcrel843:
	auipc a2, %pcrel_hi(next)
	sd t0, 120(sp)
	addi s1, a2, %pcrel_lo(pcrel843)
	sd t1, 128(sp)
	li a2, 9
	bgtu a1, a2, label95
label2:
	addiw a1, a0, -48
	bltu a1, s3, label4
	j label5
.p2align 2
label95:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label95
	j label2
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label4
label5:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label126
	mv s5, a0
	mv s6, zero
.p2align 2
label92:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label771
	mv a1, s6
.p2align 2
label771:
	li a2, 9
	bleu a3, a2, label469
	mv s5, a0
	mv s6, a1
	j label92
label6:
	addiw a1, s6, -48
	bltu a1, s3, label132
	j label131
label469:
	mv s6, a0
	mv s5, a1
	j label6
label132:
	mv s7, zero
.p2align 2
label89:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s7, s6, a4
	bgeu a1, s3, label461
	mv s6, a0
	j label89
label9:
	subw a1, zero, a0
	mv s7, a1
	bne s5, zero, label750
	j label749
label461:
	mv a0, s7
	j label9
label749:
	mv s7, a0
label750:
	ld t0, 120(sp)
	mv a1, zero
.p2align 2
label11:
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
	bge a1, s4, label14
	addi t0, t0, 256
	j label11
label14:
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
	beq s7, zero, label87
.p2align 2
label20:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label20
	addiw s7, s7, -1
	li a1, 81
	beq a0, a1, label45
	jal getch
	li a2, 9
	addiw a1, a0, -48
	mv s8, a0
	bgtu a1, a2, label271
	j label270
.p2align 2
label756:
	mv a0, s11
.p2align 2
label757:
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
	bne s7, zero, label20
	j label87
.p2align 2
label321:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label757
	j label756
.p2align 2
label45:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label344
	mv s8, a0
	mv s9, zero
.p2align 2
label46:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label761
	mv a1, s9
.p2align 2
label761:
	li a2, 9
	bleu a3, a2, label352
	mv s8, a0
	mv s9, a1
	j label46
.p2align 2
label352:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label793
.p2align 2
label358:
	mv s8, a0
	mv s10, zero
.p2align 2
label52:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, s3, label55
	mv s8, a0
	j label52
.p2align 2
label55:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label763
	mv s8, s10
.p2align 2
label763:
	li a2, 9
	bleu a1, a2, label375
	mv s9, a0
	mv s10, zero
.p2align 2
label57:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label765
	mv a1, s10
.p2align 2
label765:
	li a2, 9
	bleu a3, a2, label383
	mv s9, a0
	mv s10, a1
	j label57
.p2align 2
label383:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s3, label794
.p2align 2
label389:
	mv s10, a0
	mv s11, zero
.p2align 2
label84:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s3, label451
	mv s10, a0
	j label84
.p2align 2
label767:
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	bgt s2, zero, label69
label398:
	bge a4, zero, label78
	j label83
.p2align 2
label451:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label767
	mv a0, s11
	ld t0, 112(sp)
	mv a4, s2
	mv a3, zero
	sh2add a1, s8, t0
	sw s2, 0(a1)
	mv a1, zero
	ld t2, 104(sp)
	sw s8, 4(t2)
	ble s2, zero, label398
.p2align 2
label69:
	addiw a1, a1, 1
	li a2, 1
	ld t2, 104(sp)
	sh2add t0, a1, t2
	lw a5, 0(t0)
	beq a0, a5, label769
	mv a2, a3
.p2align 2
label769:
	ld t0, 120(sp)
	sh2add t1, a5, t0
	lw a3, 0(t1)
	beq a3, s0, label411
.p2align 2
label73:
	ld t1, 128(sp)
	sh2add t2, a3, t1
	lw a5, 0(t2)
	ld t0, 112(sp)
	sh2add t3, a5, t0
	lw t1, 0(t3)
	beq t1, zero, label74
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label73
	j label801
.p2align 2
label74:
	addiw a4, a4, 1
	ld t2, 104(sp)
	ld t0, 112(sp)
	sh2add t1, a4, t2
	sh2add t3, a5, t0
	sw s2, 0(t3)
	sw a5, 0(t1)
	sh2add a5, a3, s1
	lw a3, 0(a5)
	bne a3, s0, label73
	mv a3, a2
	bgt a4, a1, label69
	blt a4, zero, label83
.p2align 2
label78:
	ld t2, 104(sp)
	mv a0, zero
.p2align 2
label79:
	lw a1, 0(t2)
	addiw a0, a0, 1
	ld t0, 112(sp)
	sh2add a2, a1, t0
	sw zero, 0(a2)
	blt a4, a0, label83
	addi t2, t2, 4
	j label79
.p2align 2
label83:
	mv a0, a3
	jal putint
	mv a0, s3
	jal putch
	bne s7, zero, label20
	j label87
.p2align 2
label801:
	mv a3, a2
	bgt a4, a1, label69
	bge a4, zero, label78
	j label83
label270:
	mv s9, zero
	j label26
label789:
	mv s10, zero
	j label29
label26:
	addiw a0, s8, -48
	bltu a0, s3, label284
	j label789
.p2align 2
label278:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s3, label789
.p2align 2
label284:
	mv s10, zero
.p2align 2
label42:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s3, label29
	mv s8, a0
	j label42
.p2align 2
label29:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label755
	mv s8, s10
.p2align 2
label755:
	li a2, 9
	bleu a1, a2, label292
	mv s9, a0
	mv s10, zero
.p2align 2
label39:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label759
	mv a1, s10
.p2align 2
label759:
	li a2, 9
	bleu a3, a2, label329
	mv s9, a0
	mv s10, a1
	j label39
label297:
	mv s11, zero
	j label34
.p2align 2
label298:
	mv s10, a0
	mv s11, zero
	j label36
label34:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label757
	j label756
.p2align 2
label329:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s3, label298
	j label297
.p2align 2
label36:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s3, label321
	mv s10, a0
	j label36
label87:
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label375:
	mv s9, zero
	j label60
label794:
	mv s11, zero
	j label63
label60:
	addiw a2, a0, -48
	bltu a2, s3, label389
	j label794
label63:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label767
	mv a0, s11
	j label767
label344:
	mv s9, zero
	j label49
label793:
	mv s10, zero
	j label55
label49:
	addiw a2, a0, -48
	bltu a2, s3, label358
	j label793
label292:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label298
	j label297
.p2align 2
label411:
	mv a3, a2
	bgt a4, a1, label69
	bge a4, zero, label78
	j label83
label126:
	mv s6, a0
	mv s5, zero
	j label6
label131:
	mv a0, zero
	j label9
.p2align 2
label271:
	mv s9, zero
.p2align 2
label23:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label753
	mv a1, s9
.p2align 2
label753:
	li a2, 9
	bleu a3, a2, label278
	mv s8, a0
	mv s9, a1
	j label23
