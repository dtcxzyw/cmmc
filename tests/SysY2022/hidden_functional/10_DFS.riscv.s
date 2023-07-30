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
same:
.p2align 2
	addi sp, sp, -80
pcrel199:
	auipc a2, %pcrel_hi(vis)
	sd s1, 72(sp)
	mv s1, a1
	sd s6, 64(sp)
	addi a1, a2, %pcrel_lo(pcrel199)
	sd s3, 56(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s5, 48(sp)
	li a1, 1
	sd s0, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	sw a1, 0(a2)
	beq a0, s1, label36
pcrel200:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel200)
	sh2add a0, a0, a1
	mv s5, a1
	lw s0, 0(a0)
pcrel201:
	auipc a1, %pcrel_hi(next)
pcrel202:
	auipc a0, %pcrel_hi(to)
	addi s7, a1, %pcrel_lo(pcrel201)
	addi s8, a0, %pcrel_lo(pcrel202)
	j label5
label36:
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s3, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	addi sp, sp, 80
	ret
label5:
	li a1, -1
	bne s0, a1, label7
	mv a0, zero
	j label2
label7:
	sh2add a1, s0, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label58
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s2, 0(a1)
label11:
	li a0, -1
	bne s2, a0, label13
label58:
	sh2add a0, s0, s7
	lw s0, 0(a0)
	j label5
label13:
	sh2add a1, s2, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label84
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s4, 0(a1)
label16:
	li a0, -1
	beq s4, a0, label84
	sh2add a1, s4, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label20
label107:
	sh2add a0, s4, s7
	lw s4, 0(a0)
	j label16
label20:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label36
	sh2add a1, a0, s5
	lw s6, 0(a1)
label22:
	li a0, -1
	beq s6, a0, label107
	sh2add a1, s6, s8
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label26
label133:
	sh2add a0, s6, s7
	lw s6, 0(a0)
	j label22
label26:
	mv a1, s1
	jal same
	bne a0, zero, label36
	j label133
label84:
	sh2add a1, s2, s7
	lw s2, 0(a1)
	j label11
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s2, 72(sp)
	sd s3, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
pcrel897:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi s0, a2, %pcrel_lo(pcrel897)
pcrel898:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel898)
pcrel899:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel899)
pcrel900:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel900)
	li a2, 9
	bgtu a1, a2, label296
	mv s5, zero
	li a2, 10
	bltu a1, a2, label309
	j label863
label296:
	mv s4, a0
	mv s6, zero
.p2align 2
label204:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label828
	mv s5, s6
.p2align 2
label828:
	li a2, 9
	bgtu a1, a2, label304
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label309
	j label863
label304:
	mv s4, a0
	mv s6, s5
	j label204
label309:
	mv s4, a0
	mv s6, zero
.p2align 2
label210:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s6, s4, a3
	bgeu a1, a2, label213
	mv s4, a0
	j label210
label213:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label830
	mv s4, s6
label830:
	li a2, 9
	bgtu a1, a2, label328
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label341
	mv s7, zero
	mv a0, zero
	mv s6, zero
label885:
	mv s6, s7
	mv a2, zero
	j label226
label328:
	mv s6, a0
	mv s7, zero
.p2align 2
label215:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s6, a2, label832
	mv s5, s7
.p2align 2
label832:
	li a2, 9
	bgtu a1, a2, label336
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label341
	mv s7, zero
	mv a0, zero
	mv s6, zero
	bne s5, zero, label834
	j label885
label336:
	mv s6, a0
	mv s7, s5
	j label215
label341:
	mv s6, a0
	mv s7, zero
.p2align 2
label221:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label350
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label834
	j label885
label350:
	mv s6, a0
	j label221
label834:
	mv a2, zero
.p2align 2
label226:
	sh2add a0, a2, s1
	li a1, -1
	addiw a2, a2, 64
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	sw a1, 180(a0)
	sw a1, 184(a0)
	sw a1, 188(a0)
	sw a1, 192(a0)
	sw a1, 196(a0)
	sw a1, 200(a0)
	sw a1, 204(a0)
	sw a1, 208(a0)
	sw a1, 212(a0)
	sw a1, 216(a0)
	sw a1, 220(a0)
	sw a1, 224(a0)
	sw a1, 228(a0)
	sw a1, 232(a0)
	sw a1, 236(a0)
	sw a1, 240(a0)
	sw a1, 244(a0)
	sw a1, 248(a0)
	sw a1, 252(a0)
	li a0, 960
	blt a2, a0, label226
	sh2add a0, a2, s1
	mv s5, zero
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	beq s6, zero, label232
.p2align 2
label233:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label233
	addiw s6, s6, -1
	li a1, 81
	beq a0, a1, label258
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label491
	mv s8, zero
	li a2, 10
	bltu a1, a2, label496
	j label870
.p2align 2
label491:
	mv s9, a0
	mv s7, zero
	j label255
.p2align 2
label496:
	mv s7, a0
	mv s9, zero
.p2align 2
label239:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label242
	mv s7, a0
	j label239
.p2align 2
label255:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label842
	mv s8, s7
.p2align 2
label842:
	li a2, 9
	bgtu a1, a2, label561
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label496
	j label870
.p2align 2
label561:
	mv s9, a0
	mv s7, s8
	j label255
.p2align 2
label258:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label567
	mv s8, zero
	li a2, 10
	bltu a1, a2, label580
.p2align 2
label877:
	mv s9, zero
	j label268
.p2align 2
label567:
	mv s9, a0
	mv s7, zero
.p2align 2
label259:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label844
	mv s8, s7
.p2align 2
label844:
	li a2, 9
	bgtu a1, a2, label575
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label580
	j label877
.p2align 2
label575:
	mv s9, a0
	mv s7, s8
	j label259
.p2align 2
label580:
	mv s7, a0
	mv s9, zero
.p2align 2
label265:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label268
	mv s7, a0
	j label265
.p2align 2
label268:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label846
	mv s7, s9
.p2align 2
label846:
	li a2, 9
	bgtu a1, a2, label598
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label603
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bgt s4, zero, label609
	j label277
.p2align 2
label598:
	mv s9, a0
	mv s8, zero
	j label281
.p2align 2
label603:
	mv s9, a0
	mv s10, zero
.p2align 2
label278:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s9, a4
	bltu a1, a2, label626
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label848
	mv a1, s10
	bgt s4, zero, label609
	j label277
.p2align 2
label626:
	mv s9, a0
	j label278
.p2align 2
label281:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label850
	mv a2, s8
.p2align 2
label850:
	li a3, 9
	bgtu a1, a3, label634
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label603
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bne s8, zero, label848
	bgt s4, zero, label609
	j label277
.p2align 2
label634:
	mv s9, a0
	mv s8, a2
	j label281
label232:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label838:
	sh2add a1, s5, s2
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s5, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s5, 0(a3)
	sw s7, 4(a1)
	addiw a1, s5, 1
	lw a3, 0(a0)
	addiw s5, s5, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s6, zero, label233
	j label232
.p2align 2
label870:
	mv s9, zero
.p2align 2
label242:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label836
	mv s7, s9
.p2align 2
label836:
	li a2, 9
	bgtu a1, a2, label514
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label519
	mv s10, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label887:
	mv a0, s10
	j label838
.p2align 2
label514:
	mv s9, a0
	mv s8, zero
	j label252
.p2align 2
label519:
	mv s9, a0
	mv s10, zero
.p2align 2
label249:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bltu a1, a2, label545
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label838
	j label887
.p2align 2
label545:
	mv s9, a0
	j label249
.p2align 2
label252:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label840
	mv a2, s8
.p2align 2
label840:
	li a3, 9
	bgtu a1, a3, label553
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label519
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label838
	j label887
.p2align 2
label553:
	mv s9, a0
	mv s8, a2
	j label252
.p2align 2
label277:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	bne s6, zero, label233
	j label232
.p2align 2
label848:
	ble s4, zero, label277
.p2align 2
label609:
	li a2, 1
.p2align 2
label275:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label275
	j label277
.p2align 2
label863:
	mv s6, zero
	j label213
