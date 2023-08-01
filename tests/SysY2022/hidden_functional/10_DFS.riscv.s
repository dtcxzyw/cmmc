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
pcrel205:
	auipc a2, %pcrel_hi(vis)
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a1
	sd s6, 16(sp)
	addi s6, a2, %pcrel_lo(pcrel205)
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
pcrel206:
	auipc a1, %pcrel_hi(head)
	addi s7, a1, %pcrel_lo(pcrel206)
pcrel207:
	auipc a1, %pcrel_hi(next)
	sh2add a0, a0, s7
	addi s8, a1, %pcrel_lo(pcrel207)
	lw s0, 0(a0)
pcrel208:
	auipc a0, %pcrel_hi(to)
	addi s9, a0, %pcrel_lo(pcrel208)
	j label3
label36:
	mv a0, s4
	j label26
label3:
	li a1, -1
	beq s0, a1, label48
	sh2add a1, s0, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	bne a1, zero, label58
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	j label64
label26:
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
label64:
	sh2add a1, a0, s7
	lw s1, 0(a1)
label8:
	li a0, -1
	beq s1, a0, label58
	sh2add a1, s1, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	bne a1, zero, label81
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s3, 0(a1)
label13:
	li a0, -1
	beq s3, a0, label81
	sh2add a1, s3, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label17
label16:
	sh2add a0, s3, s8
	lw s3, 0(a0)
	j label13
label17:
	sh2add a1, a0, s6
	sw s4, 0(a1)
	beq s2, a0, label36
	sh2add a1, a0, s7
	lw s5, 0(a1)
label19:
	li a0, -1
	beq s5, a0, label16
	sh2add a1, s5, s9
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label23
label22:
	sh2add a0, s5, s8
	lw s5, 0(a0)
	j label19
label23:
	mv a1, s2
	jal same
	bne a0, zero, label36
	j label22
label58:
	sh2add a0, s0, s8
	lw s0, 0(a0)
	j label3
label81:
	sh2add a1, s1, s8
	lw s1, 0(a1)
	j label8
label48:
	mv a0, zero
	j label26
.p2align 2
.globl main
main:
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s7, 960
	li s4, 81
	li s2, 45
	li s1, 9
	mv s5, a0
	addiw a1, a0, -48
pcrel923:
	auipc a2, %pcrel_hi(vis)
	li s6, -1
	li s0, 10
pcrel924:
	auipc a3, %pcrel_hi(to)
	addi a0, a2, %pcrel_lo(pcrel923)
	addi a2, a3, %pcrel_lo(pcrel924)
	sd a0, 104(sp)
pcrel925:
	auipc a0, %pcrel_hi(next)
	sd a2, 112(sp)
	addi a5, a0, %pcrel_lo(pcrel925)
pcrel926:
	auipc a0, %pcrel_hi(head)
	sd a5, 120(sp)
	addi s3, a0, %pcrel_lo(pcrel926)
	bleu a1, s1, label301
	mv s8, zero
.p2align 2
label287:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s5, s2, label866
	mv a1, s8
.p2align 2
label866:
	bleu a2, s1, label639
	mv s5, a0
	mv s8, a1
	j label287
label210:
	addiw a0, s5, -48
	bltu a0, s0, label307
	j label306
label639:
	mv s5, a0
	mv s8, a1
	j label210
label301:
	mv s8, zero
	j label210
label307:
	mv s9, zero
.p2align 2
label213:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s5, a3
	bgeu a1, s0, label216
	mv s5, a0
	j label213
label216:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s5, a2
	bne s8, zero, label844
	mv s5, s9
label844:
	bleu a1, s1, label325
	mv s9, a0
	mv s8, zero
.p2align 2
label218:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label846
	mv a1, s8
.p2align 2
label846:
	bleu a2, s1, label333
	mv s9, a0
	mv s8, a1
	j label218
label333:
	mv s8, a1
label221:
	addiw a1, a0, -48
	bgeu a1, s0, label338
	mv s9, a0
	mv s10, zero
.p2align 2
label224:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bgeu a1, s0, label227
	mv s9, a0
	j label224
label227:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label848
	mv a1, s10
label848:
	mv a2, zero
.p2align 2
label229:
	sh2add a0, a2, s3
	sw s6, 0(a0)
	addiw a2, a2, 64
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
	blt a2, s7, label229
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
	bne a1, zero, label236
label235:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
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
label236:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label236
	addiw s7, s7, -1
	beq a0, s4, label261
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label489
	j label488
label861:
	mv a1, s11
.p2align 2
label862:
	ble s5, zero, label280
.p2align 2
label607:
	li a2, 1
.p2align 2
label278:
	ld a0, 104(sp)
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	bge s5, a2, label278
.p2align 2
label280:
	mv a0, s8
	jal same
	jal putint
	mv a0, s0
	jal putch
	bne s7, zero, label236
	j label235
.p2align 2
label261:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label564
	mv s8, a0
	mv s9, zero
.p2align 2
label262:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label858
	mv a1, s9
.p2align 2
label858:
	bleu a2, s1, label572
	mv s8, a0
	mv s9, a1
	j label262
.p2align 2
label572:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label887
.p2align 2
label578:
	mv s8, a0
	mv s10, zero
.p2align 2
label268:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s8, a4
	bgeu a1, s0, label271
	mv s8, a0
	j label268
.p2align 2
label271:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label860
	mv s8, s10
.p2align 2
label860:
	bleu a1, s1, label595
	mv s10, a0
	mv s9, zero
.p2align 2
label284:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s2, label864
	mv a1, s9
.p2align 2
label864:
	bleu a2, s1, label631
	mv s10, a0
	mv s9, a1
	j label284
label600:
	mv s11, zero
	j label276
.p2align 2
label601:
	mv s10, a0
	mv s11, zero
	j label281
label276:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label862
	j label861
.p2align 2
label631:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label601
	j label600
.p2align 2
label281:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label623
	mv s10, a0
	j label281
.p2align 2
label623:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label862
	mv a1, s11
	bgt s5, zero, label607
	j label280
label488:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label494
label493:
	mv s10, zero
	j label245
.p2align 2
label494:
	mv s10, zero
.p2align 2
label242:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label245
	mv s8, a0
	j label242
.p2align 2
label558:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label494
	j label493
.p2align 2
label245:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label850
	mv s8, s10
.p2align 2
label850:
	bleu a1, s1, label511
	mv s10, a0
	mv s9, zero
.p2align 2
label247:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s10, s2, label852
	mv a1, s9
.p2align 2
label852:
	bleu a2, s1, label519
	mv s10, a0
	mv s9, a1
	j label247
.p2align 2
label519:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label883
.p2align 2
label525:
	mv s10, a0
	mv s11, zero
.p2align 2
label255:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s0, label550
	mv s10, a0
	j label255
.p2align 2
label853:
	mv a0, s11
.p2align 2
label854:
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
	addiw a2, s6, 1
	sw s8, 4(a1)
	addiw s6, s6, 2
	lw a1, 0(a0)
	sw a1, 4(a3)
	sw a2, 0(a0)
	bne s7, zero, label236
	j label235
.p2align 2
label550:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label854
	j label853
label564:
	mv s9, zero
	j label265
label887:
	mv s10, zero
	j label271
label265:
	addiw a1, a0, -48
	bltu a1, s0, label578
	j label887
label511:
	mv s9, zero
	j label250
label883:
	mv s11, zero
	j label253
label250:
	addiw a1, a0, -48
	bltu a1, s0, label525
	j label883
label253:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label854
	j label853
label595:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label601
	j label600
label325:
	mv s8, zero
	j label221
.p2align 2
label489:
	mv s8, a0
	mv s9, zero
.p2align 2
label258:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s8, s2, label856
	mv a1, s9
.p2align 2
label856:
	bleu a2, s1, label558
	mv s8, a0
	mv s9, a1
	j label258
label338:
	mv s10, zero
	j label227
label306:
	mv s9, zero
	j label216
