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
pcrel379:
	auipc a3, %pcrel_hi(vis)
	sd ra, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel379)
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
pcrel380:
	auipc a2, %pcrel_hi(head)
	addi s9, a2, %pcrel_lo(pcrel380)
pcrel381:
	auipc a2, %pcrel_hi(next)
	sh2add a1, a0, s9
	addi s10, a2, %pcrel_lo(pcrel381)
pcrel382:
	auipc a0, %pcrel_hi(to)
	lw s0, 0(a1)
	addi s11, a0, %pcrel_lo(pcrel382)
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
	sh2add a3, s1, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label14
label13:
	sh2add a0, s1, s10
	lw s1, 0(a0)
	j label10
label14:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s3, 0(a1)
label16:
	li a0, -1
	beq s3, a0, label13
	sh2add a3, s3, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	bne a3, zero, label131
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s4, 0(a1)
label21:
	li a0, -1
	beq s4, a0, label131
	sh2add a3, s4, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label24
label154:
	sh2add a0, s4, s10
	lw s4, 0(a0)
	j label21
label24:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s5, 0(a1)
label26:
	li a0, -1
	beq s5, a0, label154
	sh2add a3, s5, s11
	lw a0, 0(a3)
	ld a2, 112(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	beq a3, zero, label30
label29:
	sh2add a0, s5, s10
	lw s5, 0(a0)
	j label26
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
	sh2add a1, s6, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	beq a1, zero, label35
label203:
	sh2add a0, s6, s10
	lw s6, 0(a0)
	j label32
label82:
	sh2add a0, s0, s10
	lw s0, 0(a0)
	j label5
label35:
	ld a2, 112(sp)
	sh2add a3, a0, a2
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s7, 0(a1)
	j label37
label226:
	sh2add a0, s7, s10
	lw s7, 0(a0)
label37:
	li a0, -1
	beq s7, a0, label203
	sh2add a1, s7, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label226
	sw s2, 0(a3)
	ld a1, 104(sp)
	beq a1, a0, label60
	sh2add a1, a0, s9
	lw s8, 0(a1)
	j label42
label249:
	sh2add a1, s8, s10
	lw s8, 0(a1)
label42:
	li a0, -1
	beq s8, a0, label226
	sh2add a1, s8, s11
	lw a0, 0(a1)
	ld a2, 112(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	bne a1, zero, label249
	ld a1, 104(sp)
	jal same
	bne a0, zero, label60
	j label249
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
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s7, 40(sp)
	sd s8, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	addiw a1, a0, -48
pcrel1300:
	auipc a2, %pcrel_hi(vis)
pcrel1301:
	auipc a5, %pcrel_hi(to)
	li s0, 10
	li s7, 960
pcrel1302:
	auipc a3, %pcrel_hi(next)
	li s6, -1
	addi a4, a2, %pcrel_lo(pcrel1300)
	addi t0, a3, %pcrel_lo(pcrel1302)
	addi a2, a5, %pcrel_lo(pcrel1301)
	sd a4, 104(sp)
	li a3, -1
	sd a2, 112(sp)
	slli s8, a3, 32
	li a2, 9
	sd t0, 120(sp)
	bleu a1, a2, label492
	mv s1, a0
	mv s2, zero
	j label384
.p2align 2
label1212:
	mv a1, s2
.p2align 2
label1213:
	li a2, 9
	bleu a3, a2, label500
	mv s1, a0
	mv s2, a1
.p2align 2
label384:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s1, a2, label1213
	j label1212
label500:
	mv s1, a1
label387:
	addiw a2, a0, -48
	bgeu a2, s0, label505
	mv s2, a0
	mv s3, zero
.p2align 2
label390:
	jal getch
	sh2add a3, s3, s3
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s3, s2, a2
	bgeu a1, s0, label393
	mv s2, a0
	j label390
label393:
	jal getch
	subw a2, zero, s3
	addiw a1, a0, -48
	mv s4, a2
	bne s1, zero, label1215
	mv s4, s3
label1215:
	addiw s2, s4, 1
	addiw s3, s4, -2
	addiw s1, s4, -17
	li a2, 9
	bleu a1, a2, label526
	mv s5, a0
	mv s9, zero
	j label395
.p2align 2
label1216:
	mv a1, s9
.p2align 2
label1217:
	li a2, 9
	bleu a3, a2, label534
	mv s5, a0
	mv s9, a1
.p2align 2
label395:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label1217
	j label1216
label534:
	mv s5, a1
label398:
	addiw a2, a0, -48
	bgeu a2, s0, label539
	mv s9, a0
	mv s10, zero
	j label401
.p2align 2
label549:
	mv s9, a0
.p2align 2
label401:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bltu a1, s0, label549
label404:
	subw a0, zero, s10
	mv a1, a0
	bne s5, zero, label1219
	mv a1, s10
label1219:
	auipc a2, %pcrel_hi(head)
	mv a3, zero
	addi s5, a2, %pcrel_lo(label1219)
	mv a0, s5
	j label406
.p2align 2
label409:
	addi a0, a0, 256
.p2align 2
label406:
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
	blt a3, s7, label409
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
	beq a1, zero, label411
	mv s7, zero
	mv s6, a1
	j label412
.p2align 2
label883:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1233
.p2align 2
label1232:
	mv a0, s11
.p2align 2
label1233:
	ld a2, 112(sp)
	sh2add a4, s8, s5
	sh2add a3, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, a2
	sw a0, 0(a1)
	addiw a0, s7, 1
	lw a5, 0(a4)
	ld t0, 120(sp)
	sh2add a2, s7, t0
	sw a5, 0(a2)
	sw s7, 0(a4)
	addiw s7, s7, 2
	sw s8, 4(a1)
	lw a5, 0(a3)
	sw a5, 4(a2)
	sw a0, 0(a3)
	beq s6, zero, label411
.p2align 2
label412:
	jal getch
	xori a4, a0, 85
	xori a2, a0, 81
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	bne a2, zero, label412
	li a1, 81
	beq a0, a1, label416
	jal getch
	addiw a1, a0, -48
	li a2, 9
	mv s8, a0
	bleu a1, a2, label817
	mv s9, zero
	j label484
.p2align 2
label1235:
	li a2, 9
	bleu a3, a2, label891
	mv s8, a0
	mv s9, a1
.p2align 2
label484:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1235
	mv a1, s9
	j label1235
.p2align 2
label416:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label688
	mv s8, a0
	mv s9, zero
	j label417
.p2align 2
label1221:
	li a2, 9
	bleu a3, a2, label696
	mv s8, a0
	mv s9, a1
.p2align 2
label417:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s8, a2, label1221
	mv a1, s9
	j label1221
.p2align 2
label891:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label822
.p2align 2
label823:
	mv s10, zero
	j label468
.p2align 2
label832:
	mv s8, a0
.p2align 2
label468:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bltu a1, s0, label832
.p2align 2
label471:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1229
	mv s8, s10
.p2align 2
label1229:
	li a2, 9
	bleu a1, a2, label840
	mv s9, a0
	mv s10, zero
	j label473
.p2align 2
label1231:
	li a2, 9
	bleu a3, a2, label848
	mv s9, a0
	mv s10, a1
.p2align 2
label473:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1231
	mv a1, s10
	j label1231
.p2align 2
label848:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1259
.p2align 2
label854:
	mv s10, a0
	mv s11, zero
.p2align 2
label481:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label883
	mv s10, a0
	j label481
.p2align 2
label696:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1252
.p2align 2
label702:
	mv s8, a0
	mv s10, zero
	j label459
.p2align 2
label807:
	mv s8, a0
.p2align 2
label459:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bltu a1, s0, label807
.p2align 2
label423:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1223
	mv s8, s10
.p2align 2
label1223:
	li a2, 9
	bleu a1, a2, label710
	mv s9, a0
	mv s10, zero
	j label456
.p2align 2
label1227:
	li a2, 9
	bleu a3, a2, label797
	mv s9, a0
	mv s10, a1
.p2align 2
label456:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1227
	mv a1, s10
	j label1227
.p2align 2
label797:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label715
.p2align 2
label716:
	mv s10, a0
	mv s11, zero
.p2align 2
label428:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label724
	mv s10, a0
	j label428
label715:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1225
.p2align 2
label1225:
	ble s4, zero, label455
.p2align 2
label433:
	li a0, 4
	ble s2, a0, label735
	li a0, 16
	ble s3, a0, label739
	ld a4, 104(sp)
	li a2, 1
	addi a0, a4, 4
	j label444
.p2align 2
label447:
	addi a0, a0, 64
.p2align 2
label444:
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
	bgt s1, a2, label447
	mv a3, a2
	ble s3, a2, label1256
.p2align 2
label438:
	ld a4, 104(sp)
	mv a2, a3
	sh2add a0, a3, a4
	j label439
.p2align 2
label442:
	addi a0, a0, 16
.p2align 2
label439:
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s3, a2, label442
	ble s2, a2, label455
.p2align 2
label450:
	ld a4, 104(sp)
	sh2add a0, a2, a4
	j label451
.p2align 2
label454:
	addi a0, a0, 4
.p2align 2
label451:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt s2, a2, label454
.p2align 2
label455:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	addiw s6, s6, -1
	bne s6, zero, label412
	j label411
.p2align 2
label724:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label1225
	mv a1, s11
	bgt s4, zero, label433
	j label455
label735:
	li a2, 1
	bgt s2, a2, label450
	j label455
.p2align 2
label1256:
	bgt s2, a2, label450
	j label455
label739:
	li a3, 1
	mv a2, zero
	bgt s3, a3, label438
	bgt s2, zero, label450
	j label455
label840:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label854
label1259:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label1233
	j label1232
label688:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label702
label1252:
	mv s10, zero
	j label423
label411:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s7, 40(sp)
	ld s8, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label710:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label716
	j label715
label817:
	mv s9, zero
	addiw a0, s8, -48
	bltu a0, s0, label823
label822:
	mv s10, zero
	j label471
label526:
	mv s5, zero
	j label398
label505:
	mv s3, zero
	j label393
label539:
	mv s10, zero
	j label404
label492:
	mv s1, zero
	j label387
