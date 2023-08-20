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
	sh2add a3, s1, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label11
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
	sh2add a3, s4, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label22
	sh2add a3, a0, a2
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
	beq a1, zero, label29
label28:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label25
label16:
	sh2add a0, s3, s10
	lw s3, 0(a0)
	j label13
label22:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label19
label29:
	ld a2, 112(sp)
	sh2add a3, a0, a2
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
	beq a1, zero, label35
label34:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label31
label82:
	sh2add a0, s0, s10
	lw s0, 0(a0)
	j label3
label35:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label37
label232:
	sh2add a0, s7, s10
	lw s7, 0(a0)
label37:
	li a0, -1
	beq s7, a0, label34
	sh2add a1, s7, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label232
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s8, 0(a1)
	j label42
label255:
	sh2add a1, s8, s10
	lw s8, 0(a1)
label42:
	li a0, -1
	beq s8, a0, label232
	sh2add a1, s8, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label255
	ld a1, 104(sp)
	jal same
	bne a0, zero, label60
	j label255
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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
pcrel1287:
	auipc a3, %pcrel_hi(next)
	li s0, 10
pcrel1288:
	auipc a5, %pcrel_hi(to)
pcrel1289:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi t0, a3, %pcrel_lo(pcrel1287)
	addi a4, a2, %pcrel_lo(pcrel1289)
	addi a2, a5, %pcrel_lo(pcrel1288)
	sd a4, 104(sp)
	sd a2, 112(sp)
	li a2, 9
	sd t0, 120(sp)
	bleu a1, a2, label493
	mv s1, a0
	mv s2, zero
	j label385
.p2align 2
label502:
	mv s1, a0
	mv s2, a1
.p2align 2
label385:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s1, a2, label1205
	mv a1, s2
label1205:
	li a2, 9
	bgtu a3, a2, label502
	mv s1, a1
label388:
	addiw a2, a0, -48
	bgeu a2, s0, label506
	mv s2, a0
	mv s3, zero
	j label485
.p2align 2
label893:
	mv s2, a0
.p2align 2
label485:
	jal getch
	sh2add a3, s3, s3
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s3, s2, a4
	bltu a1, s0, label893
label391:
	jal getch
	subw a2, zero, s3
	addiw a1, a0, -48
	mv s4, a2
	bne s1, zero, label1207
	mv s4, s3
label1207:
	addiw s2, s4, 1
	addiw s3, s4, -2
	addiw s1, s4, -17
	li a2, 9
	bleu a1, a2, label518
	mv s5, a0
	mv s6, zero
.p2align 2
label482:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label1229
	mv a1, s6
label1229:
	li a2, 9
	bleu a3, a2, label883
	mv s5, a0
	mv s6, a1
	j label482
label883:
	mv s5, a1
label393:
	addiw a1, a0, -48
	bgeu a1, s0, label523
	mv s6, a0
	mv s7, zero
.p2align 2
label479:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s7, s6, a2
	bgeu a1, s0, label396
	mv s6, a0
	j label479
label396:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label1209
	mv s6, s7
label1209:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label1209)
	mv a0, s5
.p2align 2
label398:
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
	bge a2, a3, label401
	addi a0, a0, 256
	j label398
label401:
	li a2, -1
	li a4, -1
	slli a3, a4, 32
	add.uw a1, a2, a3
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
	sw a2, 432(a0)
	beq s6, zero, label402
	mv s7, zero
	j label403
.p2align 2
label840:
	mv s10, a0
.p2align 2
label471:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bltu a1, s0, label840
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1227
.p2align 2
label1255:
	mv a0, s11
.p2align 2
label1227:
	ld a2, 112(sp)
	sh2add a4, s8, s5
	sh2add a1, s7, a2
	sh2add a2, a0, s5
	sw a0, 0(a1)
	lw a5, 0(a4)
	ld t0, 120(sp)
	sh2add a3, s7, t0
	sw a5, 0(a3)
	sw s7, 0(a4)
	sw s8, 4(a1)
	addiw a1, s7, 1
	lw a0, 0(a2)
	addiw s7, s7, 2
	sw a0, 4(a3)
	sw a1, 0(a2)
	addiw s6, s6, -1
	beq s6, zero, label402
.p2align 2
label403:
	jal getch
	xori a3, a0, 85
	xori a4, a0, 81
	sltu a2, zero, a3
	sltu a1, zero, a4
	and a4, a1, a2
	bne a4, zero, label403
	li a1, 81
	beq a0, a1, label407
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label786
	mv s8, a0
	mv s9, zero
	j label454
.p2align 2
label795:
	mv s8, a0
	mv s9, a1
.p2align 2
label454:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1221
	mv a1, s9
label1221:
	li a2, 9
	bgtu a3, a2, label795
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1253
.p2align 2
label800:
	mv s8, a0
	mv s10, zero
	j label460
.p2align 2
label407:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	mv s8, a0
	bleu a1, a2, label662
	mv s9, zero
.p2align 2
label408:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1213
	mv a1, s9
label1213:
	li a2, 9
	bleu a3, a2, label670
	mv s8, a0
	mv s9, a1
	j label408
.p2align 2
label809:
	mv s8, a0
.p2align 2
label460:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, s0, label809
.p2align 2
label463:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1223
	mv s8, s10
label1223:
	li a2, 9
	bleu a1, a2, label817
	mv s9, a0
	mv s10, zero
	j label465
.p2align 2
label826:
	mv s9, a0
	mv s10, a1
.p2align 2
label465:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1225
	mv a1, s10
label1225:
	li a2, 9
	bgtu a3, a2, label826
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1254
.p2align 2
label831:
	mv s10, a0
	mv s11, zero
	j label471
.p2align 2
label670:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label1246
.p2align 2
label676:
	mv s10, zero
.p2align 2
label450:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label414
	mv s8, a0
	j label450
.p2align 2
label414:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1215
	mv s8, s10
label1215:
	li a2, 9
	bleu a1, a2, label684
	mv s9, a0
	mv s10, zero
.p2align 2
label447:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1219
	mv a1, s10
label1219:
	li a2, 9
	bleu a3, a2, label771
	mv s9, a0
	mv s10, a1
	j label447
.p2align 2
label771:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label689
.p2align 2
label690:
	mv s10, a0
	mv s11, zero
.p2align 2
label419:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s0, label698
	mv s10, a0
	j label419
.p2align 2
label698:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label1217
	mv a1, s11
	ble s4, zero, label424
.p2align 2
label425:
	li a0, 4
	ble s2, a0, label710
	li a0, 16
	ble s3, a0, label726
	ld a4, 104(sp)
	li a2, 1
	addi a0, a4, 4
	j label443
.p2align 2
label446:
	addi a0, a0, 64
.p2align 2
label443:
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
	bgt s1, a2, label446
	mv a3, a2
	ble s3, a2, label1251
.p2align 2
label437:
	ld a4, 104(sp)
	mv a2, a3
	sh2add a0, a3, a4
.p2align 2
label438:
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	ble s3, a2, label740
	addi a0, a0, 16
	j label438
.p2align 2
label740:
	ble s2, a2, label424
.p2align 2
label428:
	ld a4, 104(sp)
	sh2add a0, a2, a4
.p2align 2
label429:
	addiw a2, a2, 1
	sw zero, 0(a0)
	ble s2, a2, label424
	addi a0, a0, 4
	j label429
.p2align 2
label424:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	addiw s6, s6, -1
	bne s6, zero, label403
	j label402
label710:
	li a2, 1
	bgt s2, a2, label428
	j label424
label726:
	li a3, 1
	mv a2, zero
	bgt s3, a3, label437
	bgt s2, zero, label428
	j label424
.p2align 2
label1251:
	bgt s2, a2, label428
	j label424
label402:
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label817:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label831
label1254:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1227
	j label1255
label786:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label800
label1253:
	mv s10, zero
	j label463
label684:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label690
label689:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1217
label1217:
	bgt s4, zero, label425
	j label424
label662:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label676
label1246:
	mv s10, zero
	j label414
label518:
	mv s5, zero
	j label393
label523:
	mv s7, zero
	j label396
label506:
	mv s3, zero
	j label391
label493:
	mv s1, zero
	j label388
