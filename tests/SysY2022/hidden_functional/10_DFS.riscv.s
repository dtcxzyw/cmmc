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
	sh2add a3, s0, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label8
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	bne a1, a0, label91
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
label8:
	sh2add a0, s0, s10
	lw s0, 0(a0)
	j label5
label91:
	sh2add a1, a0, s9
	lw s1, 0(a1)
label11:
	li a0, -1
	beq s1, a0, label8
	sh2add a3, s1, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label108
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s3, 0(a1)
label16:
	li a0, -1
	beq s3, a0, label108
	sh2add a1, s3, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label131
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s4, 0(a1)
label21:
	li a0, -1
	beq s4, a0, label131
	sh2add a1, s4, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label24
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s5, 0(a1)
label27:
	li a0, -1
	beq s5, a0, label24
	sh2add a1, s5, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label31
label30:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label27
label24:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label21
label31:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s6, 0(a1)
label33:
	li a0, -1
	beq s6, a0, label30
	sh2add a1, s6, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label36
label206:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label33
label36:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label38
label229:
	sh2add a0, s7, s10
	lw s7, 0(a0)
label38:
	li a0, -1
	beq s7, a0, label206
	sh2add a1, s7, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label229
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s8, 0(a1)
	j label43
label252:
	sh2add a1, s8, s10
	lw s8, 0(a1)
label43:
	li a0, -1
	beq s8, a0, label229
	sh2add a3, s8, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label252
	ld a1, 104(sp)
	jal same
	bne a0, zero, label60
	j label252
label108:
	sh2add a0, s1, s10
	lw s1, 0(a0)
	j label11
label131:
	sh2add a0, s3, s10
	lw s3, 0(a0)
	j label16
label72:
	mv a0, zero
	j label2
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[104]
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	addiw a1, a0, -48
	li s6, -1
pcrel1220:
	auipc a4, %pcrel_hi(vis)
	li s1, 9
	li s3, 81
pcrel1221:
	auipc a2, %pcrel_hi(to)
	li s7, 960
	li s0, 10
	li s2, 45
	addi a3, a4, %pcrel_lo(pcrel1220)
pcrel1222:
	auipc a4, %pcrel_hi(next)
	sd a3, 104(sp)
	addi t0, a4, %pcrel_lo(pcrel1222)
	addi a3, a2, %pcrel_lo(pcrel1221)
	li a2, -1
	sd a3, 112(sp)
	slli s8, a2, 32
	sd t0, 120(sp)
	bleu a1, s1, label481
	mv s4, a0
	mv s5, zero
	j label469
.p2align 2
label1157:
	mv a1, s5
.p2align 2
label1158:
	bleu a2, s1, label823
	mv s4, a0
	mv s5, a1
.p2align 2
label469:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label1158
	j label1157
label823:
	mv s5, a1
label386:
	addiw a1, a0, -48
	bgeu a1, s0, label486
	mv s4, a0
	mv s9, zero
.p2align 2
label389:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s9, s4, a4
	bgeu a1, s0, label392
	mv s4, a0
	j label389
label392:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label1136
	mv s4, s9
label1136:
	bleu a1, s1, label504
	mv s5, a0
	mv s9, zero
	j label466
.p2align 2
label1156:
	bleu a2, s1, label815
	mv s5, a0
	mv s9, a1
.p2align 2
label466:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s2, label1156
	mv a1, s9
	j label1156
label815:
	mv s5, a1
label394:
	addiw a1, a0, -48
	bgeu a1, s0, label509
	mv s9, a0
	mv s10, zero
.p2align 2
label397:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s9, a4
	bgeu a1, s0, label400
	mv s9, a0
	j label397
label400:
	subw a0, zero, s10
	mv a1, a0
	bne s5, zero, label1138
	mv a1, s10
label1138:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s5, a2, %pcrel_lo(label1138)
	mv a0, s5
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
	bge a3, s7, label405
	addi a0, a0, 256
	j label402
label405:
	add.uw a2, s6, s8
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
	beq a1, zero, label406
	mv s6, a1
	mv s7, zero
	j label407
.p2align 2
label686:
	mv s10, a0
.p2align 2
label420:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s0, label686
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1142
.p2align 2
label1175:
	mv a0, s11
.p2align 2
label1142:
	ld a3, 112(sp)
	sh2add a2, s8, s5
	addiw s6, s6, -1
	sh2add a1, s7, a3
	sh2add a3, a0, s5
	sw a0, 0(a1)
	lw a5, 0(a2)
	ld t0, 120(sp)
	sh2add a4, s7, t0
	sw a5, 0(a4)
	sw s7, 0(a2)
	sw s8, 4(a1)
	addiw a1, s7, 1
	lw a0, 0(a3)
	addiw s7, s7, 2
	sw a0, 4(a4)
	sw a1, 0(a3)
	beq s6, zero, label406
.p2align 2
label407:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label407
	bne a0, s3, label411
	jal getch
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, s1, label738
	mv s9, zero
	j label462
.p2align 2
label1154:
	bleu a2, s1, label806
	mv s8, a0
	mv s9, a1
.p2align 2
label462:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label1154
	mv a1, s9
	j label1154
.p2align 2
label411:
	jal getch
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, s1, label657
	mv s9, zero
	j label431
.p2align 2
label1145:
	mv a1, s9
.p2align 2
label1146:
	bleu a2, s1, label727
	mv s8, a0
	mv s9, a1
.p2align 2
label431:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label1146
	j label1145
.p2align 2
label727:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label662
.p2align 2
label663:
	mv s10, zero
.p2align 2
label428:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label415
	mv s8, a0
	j label428
.p2align 2
label415:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1140
	mv s8, s10
.p2align 2
label1140:
	bleu a1, s1, label671
	mv s9, a0
	mv s10, zero
	j label425
.p2align 2
label1144:
	bleu a2, s1, label710
	mv s9, a0
	mv s10, a1
.p2align 2
label425:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label1144
	mv a1, s10
	j label1144
.p2align 2
label806:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label743
.p2align 2
label744:
	mv s10, zero
	j label459
.p2align 2
label799:
	mv s8, a0
.p2align 2
label459:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, s0, label799
.p2align 2
label440:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1148
	mv s8, s10
.p2align 2
label1148:
	bleu a1, s1, label752
	mv s9, a0
	mv s10, zero
	j label456
.p2align 2
label1151:
	mv a1, s10
.p2align 2
label1152:
	bleu a2, s1, label789
	mv s9, a0
	mv s10, a1
.p2align 2
label456:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label1152
	j label1151
.p2align 2
label789:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label757
.p2align 2
label758:
	mv s10, a0
	mv s11, zero
.p2align 2
label453:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label781
	mv s10, a0
	j label453
.p2align 2
label710:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label676
.p2align 2
label677:
	mv s10, a0
	mv s11, zero
	j label420
.p2align 2
label781:
	subw a0, zero, s11
	mv a1, a0
	beq s9, zero, label1180
.p2align 2
label1150:
	ble s4, zero, label447
.p2align 2
label448:
	ld a3, 104(sp)
	li a2, 1
	addi a0, a3, 4
	j label449
.p2align 2
label452:
	addi a0, a0, 4
.p2align 2
label449:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label452
.p2align 2
label447:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	addiw s6, s6, -1
	bne s6, zero, label407
label406:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label738:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label744
	j label743
label657:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label663
	j label662
label676:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1142
	j label1175
label671:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label677
	j label676
label752:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label758
label757:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1150
	j label1150
label662:
	mv s10, zero
	j label415
label743:
	mv s10, zero
	j label440
.p2align 2
label1180:
	mv a1, s11
	bgt s4, zero, label448
	j label447
label504:
	mv s5, zero
	j label394
label481:
	mv s5, zero
	j label386
label509:
	mv s10, zero
	j label400
label486:
	mv s9, zero
	j label392
