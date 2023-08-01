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
	addi sp, sp, -88
pcrel204:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a1
	sd s6, 16(sp)
	addi s6, a2, %pcrel_lo(pcrel204)
	sd s1, 24(sp)
	sh2add a1, a0, s6
	sd s4, 32(sp)
	li s4, 1
	sd s7, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s3, 80(sp)
	sw s4, 0(a1)
	beq a0, s2, label36
pcrel205:
	auipc a1, %pcrel_hi(head)
	addi s7, a1, %pcrel_lo(pcrel205)
pcrel206:
	auipc a1, %pcrel_hi(next)
	sh2add a0, a0, s7
	addi s8, a1, %pcrel_lo(pcrel206)
	lw s0, 0(a0)
pcrel207:
	auipc a0, %pcrel_hi(to)
	addi s9, a0, %pcrel_lo(pcrel207)
	j label5
label36:
	mv a0, s4
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s7, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s3, 80(sp)
	addi sp, sp, 88
	ret
label5:
	li a1, -1
	beq s0, a1, label48
	sh2add a1, s0, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	bne a1, zero, label8
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s1, 0(a1)
label11:
	li a0, -1
	beq s1, a0, label8
	sh2add a1, s1, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	bne a1, zero, label14
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s3, 0(a1)
	j label17
label8:
	sh2add a0, s0, s8
	lw s0, 0(a0)
	j label5
label14:
	sh2add a0, s1, s8
	lw s1, 0(a0)
	j label11
label17:
	li a0, -1
	beq s3, a0, label14
	sh2add a2, s3, s9
	lw a0, 0(a2)
	sh2add a1, a0, s6
	lw a2, 0(a1)
	beq a2, zero, label21
label20:
	sh2add a0, s3, s8
	lw s3, 0(a0)
	j label17
label21:
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s5, 0(a1)
label23:
	li a0, -1
	beq s5, a0, label20
	sh2add a2, s5, s9
	lw a0, 0(a2)
	sh2add a1, a0, s6
	lw a2, 0(a1)
	beq a2, zero, label26
label136:
	sh2add a1, s5, s8
	lw s5, 0(a1)
	j label23
label26:
	mv a1, s2
	jal same
	bne a0, zero, label36
	j label136
label48:
	mv a0, zero
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 81
	li s2, 45
	addiw a1, a0, -48
	li s7, 960
pcrel925:
	auipc a3, %pcrel_hi(vis)
	li s0, 10
	li s6, -1
	li s1, 9
	addi a2, a3, %pcrel_lo(pcrel925)
pcrel926:
	auipc a3, %pcrel_hi(to)
	sd a2, 104(sp)
	addi a2, a3, %pcrel_lo(pcrel926)
pcrel927:
	auipc a3, %pcrel_hi(next)
	sd a2, 112(sp)
	addi a5, a3, %pcrel_lo(pcrel927)
pcrel928:
	auipc a2, %pcrel_hi(head)
	sd a5, 120(sp)
	addi s3, a2, %pcrel_lo(pcrel928)
	bleu a1, s1, label300
	mv s5, a0
	mv s8, zero
.p2align 2
label286:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s2, label865
	mv a1, s8
.p2align 2
label865:
	bleu a2, s1, label638
	mv s5, a0
	mv s8, a1
	j label286
label209:
	addiw a1, a0, -48
	bltu a1, s0, label306
	j label305
label638:
	mv s8, a1
	j label209
label306:
	mv s5, a0
	mv s9, zero
.p2align 2
label283:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s5, a3
	bgeu a1, s0, label212
	mv s5, a0
	j label283
label212:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s5, a2
	bne s8, zero, label843
	mv s5, s9
label843:
	bleu a1, s1, label314
	mv s9, a0
	mv s8, zero
.p2align 2
label280:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label863
	mv a1, s8
.p2align 2
label863:
	bleu a2, s1, label621
	mv s9, a0
	mv s8, a1
	j label280
label214:
	addiw a1, a0, -48
	bltu a1, s0, label320
	j label319
label621:
	mv s8, a1
	j label214
label320:
	mv s9, a0
	mv s10, zero
.p2align 2
label277:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s9, a2
	bgeu a1, s0, label217
	mv s9, a0
	j label277
label217:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label845
	mv a1, s10
label845:
	mv a2, zero
.p2align 2
label219:
	sh2add a0, a2, s3
	addiw a2, a2, 64
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
	sw s6, 180(a0)
	sw s6, 184(a0)
	sw s6, 188(a0)
	sw s6, 192(a0)
	sw s6, 196(a0)
	sw s6, 200(a0)
	sw s6, 204(a0)
	sw s6, 208(a0)
	sw s6, 212(a0)
	sw s6, 216(a0)
	sw s6, 220(a0)
	sw s6, 224(a0)
	sw s6, 228(a0)
	sw s6, 232(a0)
	sw s6, 236(a0)
	sw s6, 240(a0)
	sw s6, 244(a0)
	sw s6, 248(a0)
	sw s6, 252(a0)
	blt a2, s7, label219
	sh2add a0, a2, s3
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
	bne a1, zero, label226
label225:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
.p2align 2
label226:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label226
	addiw s7, s7, -1
	beq a0, s4, label251
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label461
	j label460
.p2align 2
label496:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label851
.p2align 2
label883:
	mv a0, s11
.p2align 2
label851:
	ld a2, 112(sp)
	sh2add a1, s6, a2
	sh2add a2, s8, s3
	sw a0, 0(a1)
	sh2add a0, a0, s3
	lw a4, 0(a2)
	ld a5, 120(sp)
	sh2add a3, s6, a5
	sw a4, 0(a3)
	sw s6, 0(a2)
	sw s8, 4(a1)
	addiw a1, s6, 1
	lw a2, 0(a0)
	addiw s6, s6, 2
	sw a2, 4(a3)
	sw a1, 0(a0)
	bne s7, zero, label226
	j label225
.p2align 2
label251:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label536
	mv s8, a0
	mv s9, zero
.p2align 2
label274:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label861
	mv a1, s9
.p2align 2
label861:
	bleu a2, s1, label604
	mv s8, a0
	mv s9, a1
	j label274
label541:
	mv s10, zero
	j label255
.p2align 2
label542:
	mv s10, zero
	j label271
.p2align 2
label604:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label542
	j label541
.p2align 2
label271:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, s0, label255
	mv s8, a0
	j label271
.p2align 2
label255:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label855
	mv s8, s10
.p2align 2
label855:
	bleu a1, s1, label550
	mv s10, a0
	mv s9, zero
.p2align 2
label268:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s2, label859
	mv a1, s9
.p2align 2
label859:
	bleu a2, s1, label587
	mv s10, a0
	mv s9, a1
	j label268
label555:
	mv s11, zero
	j label260
.p2align 2
label556:
	mv s10, a0
	mv s11, zero
	j label265
label260:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label857
	j label856
.p2align 2
label265:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label579
	mv s10, a0
	j label265
.p2align 2
label587:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label556
	j label555
.p2align 2
label857:
	ble s5, zero, label262
.p2align 2
label563:
	li a0, 1
	ld a2, 104(sp)
	sh2add a3, a0, a2
	addiw a0, a0, 1
	sw zero, 0(a3)
	bge s5, a0, label263
.p2align 2
label262:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label226
	j label225
.p2align 2
label263:
	ld a2, 104(sp)
	sh2add a3, a0, a2
	addiw a0, a0, 1
	sw zero, 0(a3)
	bge s5, a0, label263
	j label262
.p2align 2
label579:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label857
	mv a1, s11
	bgt s5, zero, label563
	j label262
label460:
	mv s9, zero
	j label232
label882:
	mv s10, zero
	j label235
label232:
	addiw a1, a0, -48
	bltu a1, s0, label474
	j label882
.p2align 2
label468:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label882
.p2align 2
label474:
	mv s8, a0
	mv s10, zero
.p2align 2
label248:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, s0, label235
	mv s8, a0
	j label248
.p2align 2
label235:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label849
	mv s8, s10
.p2align 2
label849:
	bleu a1, s1, label482
	mv s10, a0
	mv s9, zero
.p2align 2
label245:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s2, label853
	mv a1, s9
.p2align 2
label853:
	bleu a2, s1, label521
	mv s10, a0
	mv s9, a1
	j label245
label487:
	mv s11, zero
	j label243
.p2align 2
label488:
	mv s10, a0
	mv s11, zero
.p2align 2
label240:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label496
	mv s10, a0
	j label240
label243:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label851
	j label883
.p2align 2
label521:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label488
	j label487
label482:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label488
	j label487
label536:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label542
	j label541
label550:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label556
	j label555
label319:
	mv s10, zero
	j label217
label856:
	mv a1, s11
	j label857
.p2align 2
label461:
	mv s8, a0
	mv s9, zero
.p2align 2
label229:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label847
	mv a1, s9
.p2align 2
label847:
	bleu a2, s1, label468
	mv s8, a0
	mv s9, a1
	j label229
label305:
	mv s9, zero
	j label212
label300:
	mv s8, zero
	j label209
label314:
	mv s8, zero
	j label214
