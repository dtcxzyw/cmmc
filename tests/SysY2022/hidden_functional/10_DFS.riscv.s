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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
pcrel381:
	auipc a3, %pcrel_hi(vis)
	sd ra, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel381)
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
pcrel382:
	auipc a2, %pcrel_hi(head)
	addi s9, a2, %pcrel_lo(pcrel382)
pcrel383:
	auipc a2, %pcrel_hi(next)
	sh2add a1, a0, s9
	addi s10, a2, %pcrel_lo(pcrel383)
pcrel384:
	auipc a0, %pcrel_hi(to)
	lw s0, 0(a1)
	addi s11, a0, %pcrel_lo(pcrel384)
label5:
	li a1, -1
	beq s0, a1, label72
	sh2add a1, s0, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label82
	sw s2, 0(a3)
	ld a1, 104(sp)
	bne a1, a0, label88
label60:
	mv a0, s2
label2:
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
label10:
	li a0, -1
	beq s1, a0, label82
	sh2add a1, s1, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label105
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s3, 0(a1)
label15:
	li a0, -1
	beq s3, a0, label105
	sh2add a1, s3, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label128
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s4, 0(a1)
label20:
	li a0, -1
	beq s4, a0, label128
	sh2add a1, s4, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label23
label151:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label20
label23:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s5, 0(a1)
label25:
	li a0, -1
	beq s5, a0, label151
	sh2add a1, s5, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label28
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s6, 0(a1)
label31:
	li a0, -1
	beq s6, a0, label28
	sh2add a1, s6, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label200
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label36
label28:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label25
label223:
	sh2add a1, s7, s10
	lw s7, 0(a1)
label36:
	li a0, -1
	beq s7, a0, label200
	sh2add a1, s7, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label223
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s8, 0(a1)
	j label41
label45:
	ld a1, 104(sp)
	jal same
	bne a0, zero, label60
label44:
	sh2add a0, s8, s10
	lw s8, 0(a0)
label41:
	li a0, -1
	beq s8, a0, label223
	sh2add a1, s8, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label45
	j label44
label82:
	sh2add a0, s0, s10
	lw s0, 0(a0)
	j label5
label105:
	sh2add a0, s1, s10
	lw s1, 0(a0)
	j label10
label128:
	sh2add a0, s3, s10
	lw s3, 0(a0)
	j label15
label200:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label31
label72:
	mv a0, zero
	j label2
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
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
pcrel1206:
	auipc a2, %pcrel_hi(vis)
	li s7, 960
pcrel1207:
	auipc a4, %pcrel_hi(to)
	li s1, 9
	li s0, 10
	li s6, -1
	addi a3, a2, %pcrel_lo(pcrel1206)
	addi s5, a4, %pcrel_lo(pcrel1207)
pcrel1208:
	auipc a2, %pcrel_hi(next)
	sd a3, 104(sp)
	addi s4, a2, %pcrel_lo(pcrel1208)
	li a2, -1
	slli s8, a2, 32
	bleu a1, s1, label482
	mv s2, a0
	mv s3, zero
	j label386
.p2align 2
label1130:
	bleu a3, s1, label490
	mv s2, a0
	mv s3, a2
.p2align 2
label386:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s2, a1, label1130
	mv a2, s3
	j label1130
label490:
	mv s3, a2
label389:
	addiw a1, a0, -48
	bgeu a1, s0, label495
	mv s2, a0
	mv s9, zero
	j label392
.p2align 2
label505:
	mv s2, a0
.p2align 2
label392:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s2, a4
	bltu a1, s0, label505
label395:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label1132
	mv s2, s9
label1132:
	bleu a1, s1, label513
	mv s3, a0
	mv s9, zero
	j label470
.p2align 2
label1151:
	mv a2, s9
.p2align 2
label1152:
	bleu a3, s1, label818
	mv s3, a0
	mv s9, a2
.p2align 2
label470:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s3, a1, label1152
	j label1151
label818:
	mv s3, a2
label397:
	addiw a1, a0, -48
	bgeu a1, s0, label518
	mv s9, a0
	mv s10, zero
.p2align 2
label467:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s9, a4
	bgeu a1, s0, label400
	mv s9, a0
	j label467
label400:
	subw a0, zero, s10
	mv a1, a0
	bne s3, zero, label1134
	mv a1, s10
label1134:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s3, a2, %pcrel_lo(label1134)
	mv a0, s3
.p2align 2
label402:
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
	bge a3, s7, label406
	addi a0, a0, 256
	j label402
label406:
	add.uw a2, s6, s8
	mv s7, a1
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
	sw s6, 432(a0)
	mv s6, zero
	bne a1, zero, label412
	j label466
.p2align 2
label704:
	mv s10, a0
.p2align 2
label429:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s0, label704
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1142
.p2align 2
label1169:
	mv a0, s11
.p2align 2
label1142:
	sw a0, 0(s5)
	sh2add a1, s8, s3
	sh2add a0, a0, s3
	lw a2, 0(a1)
	sw a2, 0(s4)
	sw s6, 0(a1)
	addiw a1, s6, 1
	sw s8, 4(s5)
	addiw s6, s6, 2
	addi s5, s5, 8
	lw a2, 0(a0)
	sw a2, 4(s4)
	addi s4, s4, 8
	sw a1, 0(a0)
	beq s7, zero, label466
.p2align 2
label412:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a4, zero, a2
	sltu a1, zero, a3
	and a3, a1, a4
	bne a3, zero, label412
	addiw s7, s7, -1
	li a1, 81
	bne a0, a1, label414
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label733
	mv s8, a0
	mv s9, zero
	j label438
.p2align 2
label1143:
	mv a2, s9
.p2align 2
label1144:
	bleu a3, s1, label741
	mv s8, a0
	mv s9, a2
.p2align 2
label438:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label1144
	j label1143
.p2align 2
label459:
	addi a0, a0, 4
.p2align 2
label456:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s2, a2, label459
.p2align 2
label454:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label412
label466:
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
label741:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1171
.p2align 2
label747:
	mv s8, a0
	mv s10, zero
.p2align 2
label463:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label444
	mv s8, a0
	j label463
.p2align 2
label414:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label659
	mv s8, a0
	mv s9, zero
	j label415
.p2align 2
label1135:
	mv a2, s9
.p2align 2
label1136:
	bleu a3, s1, label667
	mv s8, a0
	mv s9, a2
.p2align 2
label415:
	jal getch
	li a1, 45
	li a2, 1
	addiw a3, a0, -48
	beq s8, a1, label1136
	j label1135
.p2align 2
label667:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1167
.p2align 2
label673:
	mv s8, a0
	mv s10, zero
.p2align 2
label434:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label421
	mv s8, a0
	j label434
.p2align 2
label421:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1138
	mv s8, s10
.p2align 2
label1138:
	bleu a1, s1, label681
	mv s9, a0
	mv s10, zero
	j label423
.p2align 2
label1140:
	bleu a3, s1, label689
	mv s9, a0
	mv s10, a2
.p2align 2
label423:
	jal getch
	li a2, 1
	li a1, 45
	addiw a3, a0, -48
	beq s9, a1, label1140
	mv a2, s10
	j label1140
.p2align 2
label444:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1146
	mv s8, s10
.p2align 2
label1146:
	bleu a1, s1, label755
	mv s9, a0
	mv s10, zero
	j label460
.p2align 2
label1150:
	bleu a3, s1, label792
	mv s9, a0
	mv s10, a2
.p2align 2
label460:
	jal getch
	li a2, 1
	li a1, 45
	addiw a3, a0, -48
	beq s9, a1, label1150
	mv a2, s10
	j label1150
.p2align 2
label792:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label760
.p2align 2
label761:
	mv s10, a0
	mv s11, zero
.p2align 2
label449:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label769
	mv s10, a0
	j label449
.p2align 2
label689:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s0, label1168
.p2align 2
label695:
	mv s10, a0
	mv s11, zero
	j label429
label760:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1148
.p2align 2
label1148:
	ble s2, zero, label454
.p2align 2
label455:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
	j label456
.p2align 2
label769:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label1148
	mv a1, s11
	bgt s2, zero, label455
	j label454
label681:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label695
label1168:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1142
	j label1169
label659:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label673
label1167:
	mv s10, zero
	j label421
label755:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label761
	j label760
label733:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label747
label1171:
	mv s10, zero
	j label444
label518:
	mv s10, zero
	j label400
label482:
	mv s3, zero
	j label389
label495:
	mv s9, zero
	j label395
label513:
	mv s3, zero
	j label397
