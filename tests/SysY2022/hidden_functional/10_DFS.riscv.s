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
label3:
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
	sh2add a1, s1, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label11
label105:
	sh2add a0, s1, s10
	lw s1, 0(a0)
	j label8
label11:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s3, 0(a1)
label13:
	li a0, -1
	beq s3, a0, label105
	sh2add a1, s3, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label16
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s4, 0(a1)
label19:
	li a0, -1
	beq s4, a0, label16
	sh2add a1, s4, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label22
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s5, 0(a1)
label25:
	li a0, -1
	beq s5, a0, label22
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
	bne a1, zero, label206
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label36
label16:
	sh2add a0, s3, s10
	lw s3, 0(a0)
	j label13
label22:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label19
label28:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label25
label229:
	sh2add a1, s7, s10
	lw s7, 0(a1)
label36:
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
	beq s8, a0, label229
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
	j label3
label206:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label31
label72:
	mv a0, zero
	j label50
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
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
pcrel1292:
	auipc a3, %pcrel_hi(to)
pcrel1293:
	auipc a2, %pcrel_hi(vis)
	li s0, 10
	addiw a1, a0, -48
	addi a4, a2, %pcrel_lo(pcrel1293)
	addi a2, a3, %pcrel_lo(pcrel1292)
	sd a4, 104(sp)
pcrel1294:
	auipc a4, %pcrel_hi(next)
	sd a2, 112(sp)
	addi t0, a4, %pcrel_lo(pcrel1294)
	li a2, 9
	sd t0, 120(sp)
	bleu a1, a2, label494
	mv s1, a0
	mv s2, zero
.p2align 2
label386:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s1, a2, label1206
	mv a1, s2
label1206:
	li a2, 9
	bleu a3, a2, label502
	mv s1, a0
	mv s2, a1
	j label386
label502:
	mv s1, a1
label389:
	addiw a2, a0, -48
	bgeu a2, s0, label507
	mv s2, a0
	mv s3, zero
	j label486
.p2align 2
label894:
	mv s2, a0
.p2align 2
label486:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s3, s2, a2
	bltu a1, s0, label894
label392:
	jal getch
	subw a2, zero, s3
	addiw a1, a0, -48
	mv s4, a2
	bne s1, zero, label1208
	mv s4, s3
label1208:
	addiw s2, s4, 1
	addiw s3, s4, -2
	addiw s1, s4, -17
	li a2, 9
	bleu a1, a2, label519
	mv s5, a0
	mv s6, zero
	j label483
.p2align 2
label885:
	mv s5, a0
	mv s6, a1
.p2align 2
label483:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label1230
	mv a1, s6
label1230:
	li a2, 9
	bgtu a3, a2, label885
	mv s5, a1
label394:
	addiw a1, a0, -48
	bgeu a1, s0, label524
	mv s6, a0
	mv s7, zero
.p2align 2
label397:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s7, s6, a3
	bgeu a1, s0, label400
	mv s6, a0
	j label397
label400:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label1210
	mv s6, s7
label1210:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label1210)
	mv a0, s5
	j label402
.p2align 2
label405:
	addi a0, a0, 256
.p2align 2
label402:
	li a3, -1
	li a5, -1
	addiw a2, a2, 64
	slli a4, a5, 32
	add.uw a1, a3, a4
	li a3, 960
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
	blt a2, a3, label405
	li a3, -1
	li a4, -1
	slli a2, a4, 32
	add.uw a1, a3, a2
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
	sw a3, 432(a0)
	beq s6, zero, label482
	mv s7, zero
	j label407
.p2align 2
label743:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1220
.p2align 2
label1219:
	mv a0, s11
.p2align 2
label1220:
	ld a2, 112(sp)
	sh2add a3, s8, s5
	sh2add a4, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, a2
	sw a0, 0(a1)
	addiw a0, s7, 1
	lw a5, 0(a3)
	ld t0, 120(sp)
	sh2add a2, s7, t0
	sw a5, 0(a2)
	sw s7, 0(a3)
	addiw s7, s7, 2
	sw s8, 4(a1)
	lw a5, 0(a4)
	sw a5, 4(a2)
	sw a0, 0(a4)
	beq s6, zero, label482
.p2align 2
label407:
	jal getch
	xori a4, a0, 85
	xori a3, a0, 81
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	bne a3, zero, label407
	li a1, 81
	bne a0, a1, label413
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label758
	mv s8, a0
	mv s9, zero
.p2align 2
label437:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1222
	mv a1, s9
label1222:
	li a2, 9
	bleu a3, a2, label766
	mv s8, a0
	mv s9, a1
	j label437
.p2align 2
label413:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label678
	mv s8, a0
	mv s9, zero
.p2align 2
label414:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1214
	mv a1, s9
label1214:
	li a2, 9
	bleu a3, a2, label686
	mv s8, a0
	mv s9, a1
	j label414
.p2align 2
label686:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1247
.p2align 2
label692:
	mv s8, a0
	mv s10, zero
.p2align 2
label433:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label420
	mv s8, a0
	j label433
.p2align 2
label766:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1251
.p2align 2
label772:
	mv s8, a0
	mv s10, zero
.p2align 2
label479:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label443
	mv s8, a0
	j label479
.p2align 2
label420:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1216
	mv s8, s10
label1216:
	li a2, 9
	bleu a1, a2, label700
	mv s9, a0
	mv s10, zero
	j label422
.p2align 2
label709:
	mv s9, a0
	mv s10, a1
.p2align 2
label422:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1218
	mv a1, s10
label1218:
	li a2, 9
	bgtu a3, a2, label709
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1248
.p2align 2
label714:
	mv s10, a0
	mv s11, zero
.p2align 2
label430:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s0, label743
	mv s10, a0
	j label430
.p2align 2
label443:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1224
	mv s8, s10
label1224:
	li a2, 9
	bleu a1, a2, label780
	mv s9, a0
	mv s10, zero
	j label476
.p2align 2
label868:
	mv s9, a0
	mv s10, a1
.p2align 2
label476:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1228
	mv a1, s10
label1228:
	li a2, 9
	bgtu a3, a2, label868
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label785
.p2align 2
label786:
	mv s10, a0
	mv s11, zero
.p2align 2
label473:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label859
	mv s10, a0
	j label473
.p2align 2
label859:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label1226
	mv a1, s11
	ble s4, zero, label472
.p2align 2
label450:
	li a0, 4
	ble s2, a0, label796
	li a0, 16
	ble s3, a0, label800
	ld a4, 104(sp)
	li a2, 1
	addi a0, a4, 4
.p2align 2
label453:
	addiw a2, a2, 16
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	ble s1, a2, label821
	addi a0, a0, 64
	j label453
.p2align 2
label821:
	mv a3, a2
	ble s3, a2, label1252
.p2align 2
label460:
	ld a4, 104(sp)
	mv a2, a3
	sh2add a0, a3, a4
	j label461
.p2align 2
label464:
	addi a0, a0, 16
.p2align 2
label461:
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s3, a2, label464
	ble s2, a2, label472
.p2align 2
label467:
	ld a4, 104(sp)
	sh2add a0, a2, a4
.p2align 2
label468:
	addiw a2, a2, 1
	sw zero, 0(a0)
	ble s2, a2, label472
	addi a0, a0, 4
	j label468
.p2align 2
label472:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	addiw s6, s6, -1
	bne s6, zero, label407
	j label482
label796:
	li a2, 1
	bgt s2, a2, label467
	j label472
label800:
	li a3, 1
	mv a2, zero
	bgt s3, a3, label460
	bgt s2, zero, label467
	j label472
.p2align 2
label1252:
	bgt s2, a2, label467
	j label472
label758:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label772
label1251:
	mv s10, zero
	j label443
label700:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label714
label1248:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1220
	j label1219
label780:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label786
	j label785
label678:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label692
label1247:
	mv s10, zero
	j label420
label785:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1226
label1226:
	bgt s4, zero, label450
	j label472
label482:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label507:
	mv s3, zero
	j label392
label519:
	mv s5, zero
	j label394
label494:
	mv s1, zero
	j label389
label524:
	mv s7, zero
	j label400
