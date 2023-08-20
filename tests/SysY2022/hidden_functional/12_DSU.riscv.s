.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
fa:
	.zero	400020
.text
.p2align 2
find:
	addi sp, sp, -80
pcrel141:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel141)
	sd s1, 32(sp)
	sh2add a0, a0, s3
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	lw s1, 0(a0)
	beq s0, s1, label34
	sh2add a1, s1, s3
	lw s2, 0(a1)
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label24
label34:
	mv a0, s0
label24:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label9
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label24
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label13
	mv a0, s6
label11:
	sh2add a1, s5, s3
	sw a0, 0(a1)
	sh2add a1, s4, s3
	sw a0, 0(a1)
	sh2add a1, s2, s3
	sw a0, 0(a1)
	sh2add a1, s1, s3
	sw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	j label24
label13:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label82
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label15
	mv a0, s8
	sh2add a1, s7, s3
	sw s8, 0(a1)
	sh2add a1, s6, s3
	sw s8, 0(a1)
	sh2add a1, s5, s3
	sw s8, 0(a1)
	sh2add a1, s4, s3
	sw s8, 0(a1)
	sh2add a1, s2, s3
	sw s8, 0(a1)
	sh2add a1, s1, s3
	sw s8, 0(a1)
	sh2add a1, s0, s3
	sw s8, 0(a1)
	j label24
label15:
	jal find
	sh2add a1, s8, s3
	sw a0, 0(a1)
	sh2add a1, s7, s3
	sw a0, 0(a1)
	sh2add a1, s6, s3
	sw a0, 0(a1)
	sh2add a1, s5, s3
	sw a0, 0(a1)
	sh2add a1, s4, s3
	sw a0, 0(a1)
	sh2add a1, s2, s3
	sw a0, 0(a1)
	sh2add a1, s1, s3
	sw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	j label24
label82:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	j label11
label66:
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label24
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label24
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getch
	li s0, 10
	li s2, 45
	li s3, 81
	li s1, 9
	addiw a1, a0, -48
	bleu a1, s1, label242
	mv s4, a0
	mv s5, zero
.p2align 2
label143:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label625
	mv a1, s5
label625:
	bleu a2, s1, label250
	mv s4, a0
	mv s5, a1
	j label143
label250:
	mv s4, a1
label146:
	addiw a2, a0, -48
	bgeu a2, s0, label255
	mv s5, a0
	mv s6, zero
.p2align 2
label149:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s6, s5, a4
	bgeu a1, s0, label152
	mv s5, a0
	j label149
label152:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s7, a2
	bne s4, zero, label627
	mv s7, s6
label627:
	addiw s5, s7, -2
	addiw s6, s7, -17
	bleu a1, s1, label275
	mv s4, a0
	mv s8, zero
	j label154
.p2align 2
label284:
	mv s4, a0
	mv s8, a1
.p2align 2
label154:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label629
	mv a1, s8
label629:
	bgtu a2, s1, label284
	mv s4, a1
label157:
	addiw a2, a0, -48
	bgeu a2, s0, label288
	mv s8, a0
	mv s9, zero
	j label160
.p2align 2
label298:
	mv s8, a0
.p2align 2
label160:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bltu a1, s0, label298
label163:
	subw a0, zero, s9
	mv a1, a0
	bne s4, zero, label631
	mv a1, s9
label631:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label631)
	ble s7, zero, label165
	addiw a2, s7, 1
	li a3, 4
	ble a2, a3, label463
	li a0, 16
	ble s5, a0, label467
	addi a0, s4, 4
	li a3, 1
.p2align 2
label220:
	sw a3, 0(a0)
	addiw a4, a3, 1
	addiw a5, a3, 2
	sw a4, 4(a0)
	addiw a4, a3, 3
	sw a5, 8(a0)
	addiw a5, a3, 4
	sw a4, 12(a0)
	addiw a4, a3, 5
	sw a5, 16(a0)
	addiw a5, a3, 6
	sw a4, 20(a0)
	addiw a4, a3, 7
	sw a5, 24(a0)
	addiw a5, a3, 8
	sw a4, 28(a0)
	addiw a4, a3, 9
	sw a5, 32(a0)
	addiw a5, a3, 10
	sw a4, 36(a0)
	addiw a4, a3, 11
	sw a5, 40(a0)
	addiw a5, a3, 12
	sw a4, 44(a0)
	addiw a4, a3, 13
	sw a5, 48(a0)
	addiw a5, a3, 14
	sw a4, 52(a0)
	addiw a4, a3, 15
	sw a5, 56(a0)
	addiw a3, a3, 16
	sw a4, 60(a0)
	ble s6, a3, label503
	addi a0, a0, 64
	j label220
label503:
	mv a4, a3
label224:
	ble s5, a4, label508
	sh2add a0, a4, s4
	mv a3, a4
	j label228
label231:
	addi a0, a0, 16
label228:
	sw a3, 0(a0)
	addiw a5, a3, 1
	addiw a4, a3, 2
	sw a5, 4(a0)
	addiw a5, a3, 3
	sw a4, 8(a0)
	addiw a3, a3, 4
	sw a5, 12(a0)
	bgt s5, a3, label231
label508:
	mv a0, a3
label232:
	ble a2, a0, label165
	sh2add a3, a0, s4
	j label235
label238:
	addi a3, a3, 4
	mv a0, a4
label235:
	addiw a4, a0, 1
	sw a0, 0(a3)
	bgt a2, a4, label238
label165:
	beq a1, zero, label166
	mv s5, a1
	j label167
.p2align 2
label388:
	mv s8, a0
.p2align 2
label190:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bltu a1, s0, label388
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label639
.p2align 2
label638:
	mv a0, s9
.p2align 2
label639:
	jal find
	addiw s5, s5, -1
	sh2add a1, s6, s4
	sw a0, 0(a1)
	beq s5, zero, label166
.p2align 2
label167:
	jal getch
	xori a4, a0, 85
	xori a3, a0, 81
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	bne a3, zero, label167
	bne a0, s3, label170
	jal getch
	addiw a1, a0, -48
	mv s6, a0
	bleu a1, s1, label393
	mv s7, zero
.p2align 2
label213:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label647
	mv a1, s7
label647:
	bleu a2, s1, label453
	mv s6, a0
	mv s7, a1
	j label213
.p2align 2
label170:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label327
	mv s6, a0
	mv s7, zero
	j label171
.p2align 2
label336:
	mv s6, a0
	mv s7, a1
.p2align 2
label171:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label633
	mv a1, s7
label633:
	bgtu a2, s1, label336
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label659
.p2align 2
label341:
	mv s8, zero
.p2align 2
label177:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s8, s7, a4
	bgeu a1, s0, label349
	mv s7, a0
	j label177
.p2align 2
label349:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label635
.p2align 2
label660:
	mv a0, s8
.p2align 2
label635:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label359
	mv s7, a0
	mv s8, zero
	j label182
.p2align 2
label368:
	mv s7, a0
	mv s8, a1
.p2align 2
label182:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label637
	mv a1, s8
label637:
	bgtu a2, s1, label368
	mv s8, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label661
.p2align 2
label373:
	mv s9, zero
	j label190
.p2align 2
label453:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label398
.p2align 2
label399:
	mv s8, zero
	j label210
.p2align 2
label446:
	mv s6, a0
.p2align 2
label210:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s6, a2
	bltu a1, s0, label446
.p2align 2
label197:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label641
	mv s6, s8
label641:
	bleu a1, s1, label407
	mv s7, a0
	mv s8, zero
.p2align 2
label207:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label645
	mv a1, s8
label645:
	bleu a2, s1, label436
	mv s7, a0
	mv s8, a1
	j label207
.p2align 2
label436:
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label412
.p2align 2
label413:
	mv s8, a0
	mv s9, zero
	j label202
.p2align 2
label422:
	mv s8, a0
.p2align 2
label202:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s9, s8, a4
	bltu a1, s0, label422
.p2align 2
label205:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label643
	mv a0, s9
label643:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label167
label166:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label327:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label341
label659:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label635
	j label660
label359:
	mv s8, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label373
label661:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label639
	j label638
label393:
	mv s7, zero
	addiw a0, s6, -48
	bltu a0, s0, label399
	j label398
label407:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label413
	j label412
label398:
	mv s8, zero
	j label197
label412:
	mv s9, zero
	j label205
label255:
	mv s6, zero
	j label152
label242:
	mv s4, zero
	j label146
label275:
	mv s4, zero
	j label157
label463:
	li a0, 1
	j label232
label288:
	mv s9, zero
	j label163
label467:
	li a4, 1
	mv a3, zero
	j label224
