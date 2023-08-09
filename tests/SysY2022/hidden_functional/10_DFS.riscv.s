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
vis:
	.zero	4020
.text
.p2align 2
same:
	addi sp, sp, -120
pcrel380:
	auipc a3, %pcrel_hi(vis)
	sd ra, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel380)
	sd s2, 8(sp)
	sh2add a3, a0, a2
	li s2, 1
	sd s9, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s10, 40(sp)
	sd s11, 48(sp)
	sd s1, 56(sp)
	sd s6, 64(sp)
	sd s3, 72(sp)
	sd s4, 80(sp)
	sd s7, 88(sp)
	sd s8, 96(sp)
	sd a1, 104(sp)
	sd a2, 112(sp)
	sw s2, 0(a3)
	beq a0, a1, label60
pcrel381:
	auipc a2, %pcrel_hi(head)
	addi s9, a2, %pcrel_lo(pcrel381)
pcrel382:
	auipc a2, %pcrel_hi(next)
	sh2add a1, a0, s9
	addi s10, a2, %pcrel_lo(pcrel382)
pcrel383:
	auipc a0, %pcrel_hi(to)
	lw s0, 0(a1)
	addi s11, a0, %pcrel_lo(pcrel383)
label3:
	li a1, -1
	beq s0, a1, label72
	sh2add a3, s0, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label82
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	bne a1, a0, label88
label60:
	mv a0, s2
label50:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s9, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s10, 40(sp)
	ld s11, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s7, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 120
	ret
label88:
	sh2add a1, a0, s9
	lw s1, 0(a1)
label8:
	li a0, -1
	beq s1, a0, label82
	sh2add a3, s1, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label12
label11:
	sh2add a0, s1, s10
	lw s1, 0(a0)
	j label8
label12:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s3, 0(a1)
label14:
	li a0, -1
	beq s3, a0, label11
	sh2add a1, s3, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label17
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s4, 0(a1)
label20:
	li a0, -1
	beq s4, a0, label17
	sh2add a1, s4, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label23
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s5, 0(a1)
label26:
	li a0, -1
	beq s5, a0, label23
	sh2add a1, s5, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label30
label29:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label26
label17:
	sh2add a0, s3, s10
	lw s3, 0(a0)
	j label14
label23:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label20
label30:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s6, 0(a1)
label32:
	li a0, -1
	beq s6, a0, label29
	sh2add a3, s6, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label36
label35:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label32
label82:
	sh2add a0, s0, s10
	lw s0, 0(a0)
	j label3
label36:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label38
label235:
	sh2add a0, s7, s10
	lw s7, 0(a0)
label38:
	li a0, -1
	beq s7, a0, label35
	sh2add a3, s7, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label235
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s8, 0(a1)
	j label43
label258:
	sh2add a1, s8, s10
	lw s8, 0(a1)
label43:
	li a0, -1
	beq s8, a0, label235
	sh2add a1, s8, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label258
	ld a1, 104(sp)
	jal same
	bne a0, zero, label60
	j label258
label72:
	mv a0, zero
	j label50
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s4, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s7, 48(sp)
	sd s8, 56(sp)
	sd s3, 64(sp)
	sd s2, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	addiw a1, a0, -48
pcrel1164:
	auipc a4, %pcrel_hi(vis)
	li s1, 9
pcrel1165:
	auipc a2, %pcrel_hi(to)
	li s6, -1
	li s0, 10
	li s7, 960
	addi a3, a4, %pcrel_lo(pcrel1164)
	addi s5, a2, %pcrel_lo(pcrel1165)
	sd a3, 104(sp)
	li a2, -1
pcrel1166:
	auipc a3, %pcrel_hi(next)
	slli s8, a2, 32
	addi s4, a3, %pcrel_lo(pcrel1166)
	bleu a1, s1, label481
	mv s2, a0
	mv s3, zero
	j label385
.p2align 2
label1087:
	bleu a3, s1, label489
	mv s2, a0
	mv s3, a2
.p2align 2
label385:
	jal getch
	li a2, 1
	li a1, 45
	addiw a3, a0, -48
	beq s2, a1, label1087
	mv a2, s3
	j label1087
label489:
	mv s3, a2
label388:
	addiw a1, a0, -48
	bgeu a1, s0, label494
	mv s2, a0
	mv s9, zero
	j label391
.p2align 2
label504:
	mv s2, a0
.p2align 2
label391:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s9, s2, a4
	bltu a1, s0, label504
label394:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label1089
	mv s2, s9
label1089:
	bleu a1, s1, label512
	mv s3, a0
	mv s9, zero
	j label469
.p2align 2
label1109:
	bleu a3, s1, label818
	mv s3, a0
	mv s9, a2
.p2align 2
label469:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s3, a1, label1109
	mv a2, s9
	j label1109
label818:
	mv s3, a2
label396:
	addiw a1, a0, -48
	bgeu a1, s0, label517
	mv s9, a0
	mv s10, zero
.p2align 2
label399:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bgeu a1, s0, label402
	mv s9, a0
	j label399
label402:
	subw a0, zero, s10
	mv a1, a0
	bne s3, zero, label1091
	mv a1, s10
label1091:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s3, a2, %pcrel_lo(label1091)
	mv a0, s3
	j label404
.p2align 2
label468:
	addi a0, a0, 256
.p2align 2
label404:
	add.uw a2, s6, s8
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
	blt a3, s7, label468
	sh2add a0, a3, s3
	mv s7, a1
	sw s6, 0(a0)
	sw s6, 4(a0)
	sw s6, 8(a0)
	sw s6, 12(a0)
	sw s6, 16(a0)
	sw s6, 20(a0)
	sw s6, 24(a0)
	sw s6, 28(a0)
	sw s6, 32(a0)
	sw s6, 36(a0)
	sw s6, 40(a0)
	sw s6, 44(a0)
	sw s6, 48(a0)
	sw s6, 52(a0)
	sw s6, 56(a0)
	sw s6, 60(a0)
	sw s6, 64(a0)
	sw s6, 68(a0)
	sw s6, 72(a0)
	sw s6, 76(a0)
	sw s6, 80(a0)
	sw s6, 84(a0)
	sw s6, 88(a0)
	sw s6, 92(a0)
	sw s6, 96(a0)
	sw s6, 100(a0)
	sw s6, 104(a0)
	sw s6, 108(a0)
	sw s6, 112(a0)
	sw s6, 116(a0)
	sw s6, 120(a0)
	sw s6, 124(a0)
	sw s6, 128(a0)
	sw s6, 132(a0)
	sw s6, 136(a0)
	sw s6, 140(a0)
	sw s6, 144(a0)
	sw s6, 148(a0)
	sw s6, 152(a0)
	sw s6, 156(a0)
	sw s6, 160(a0)
	sw s6, 164(a0)
	sw s6, 168(a0)
	sw s6, 172(a0)
	sw s6, 176(a0)
	mv s6, zero
	bne a1, zero, label414
	j label413
.p2align 2
label801:
	mv s10, a0
.p2align 2
label462:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bltu a1, s0, label801
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1107
.p2align 2
label1106:
	mv a0, s11
.p2align 2
label1107:
	sw a0, 0(s5)
	sh2add a2, s8, s3
	sh2add a1, a0, s3
	lw a3, 0(a2)
	sw a3, 0(s4)
	sw s6, 0(a2)
	addiw a2, s6, 1
	sw s8, 4(s5)
	addiw s6, s6, 2
	addi s5, s5, 8
	lw a0, 0(a1)
	sw a0, 4(s4)
	addi s4, s4, 8
	sw a2, 0(a1)
	bne s7, zero, label414
label413:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s7, 48(sp)
	ld s8, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label441:
	addi a0, a0, 4
.p2align 2
label438:
	sw zero, 0(a0)
	addiw a2, a2, 1
	bge s2, a2, label441
.p2align 2
label436:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	beq s7, zero, label413
.p2align 2
label414:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label414
	addiw s7, s7, -1
	li a1, 81
	bne a0, a1, label445
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label667
	mv s8, a0
	mv s9, zero
	j label417
.p2align 2
label1092:
	mv a2, s9
.p2align 2
label1093:
	bleu a3, s1, label675
	mv s8, a0
	mv s9, a2
.p2align 2
label417:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label1093
	j label1092
.p2align 2
label675:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1124
.p2align 2
label681:
	mv s8, a0
	mv s10, zero
.p2align 2
label423:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, s0, label426
	mv s8, a0
	j label423
.p2align 2
label445:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label741
	mv s8, a0
	mv s9, zero
	j label446
.p2align 2
label1100:
	mv a2, s9
.p2align 2
label1101:
	bleu a3, s1, label749
	mv s8, a0
	mv s9, a2
.p2align 2
label446:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label1101
	j label1100
.p2align 2
label426:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1095
	mv s8, s10
.p2align 2
label1095:
	bleu a1, s1, label698
	mv s9, a0
	mv s10, zero
	j label428
.p2align 2
label1096:
	mv a2, s10
.p2align 2
label1097:
	bleu a3, s1, label706
	mv s9, a0
	mv s10, a2
.p2align 2
label428:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label1097
	j label1096
.p2align 2
label706:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1125
.p2align 2
label712:
	mv s10, a0
	mv s11, zero
.p2align 2
label442:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label735
	mv s10, a0
	j label442
.p2align 2
label749:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1128
.p2align 2
label755:
	mv s8, a0
	mv s10, zero
	j label465
.p2align 2
label810:
	mv s8, a0
.p2align 2
label465:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bltu a1, s0, label810
.p2align 2
label452:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1103
	mv s8, s10
.p2align 2
label1103:
	bleu a1, s1, label763
	mv s9, a0
	mv s10, zero
	j label454
.p2align 2
label1104:
	mv a2, s10
.p2align 2
label1105:
	bleu a3, s1, label771
	mv s9, a0
	mv s10, a2
.p2align 2
label454:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s9, a1, label1105
	j label1104
.p2align 2
label771:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1129
.p2align 2
label777:
	mv s10, a0
	mv s11, zero
	j label462
.p2align 2
label735:
	subw a0, zero, s11
	mv a1, a0
	beq s9, zero, label1127
.p2align 2
label1099:
	ble s2, zero, label436
.p2align 2
label437:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
	j label438
label667:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label681
label1124:
	mv s10, zero
	j label426
label763:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label777
label1129:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1107
	j label1106
label698:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label712
label1125:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1099
	j label1099
label741:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label755
label1128:
	mv s10, zero
	j label452
.p2align 2
label1127:
	mv a1, s11
	bgt s2, zero, label437
	j label436
label512:
	mv s3, zero
	j label396
label494:
	mv s9, zero
	j label394
label481:
	mv s3, zero
	j label388
label517:
	mv s10, zero
	j label402
