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
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label2
label34:
	mv a0, s0
label2:
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
label7:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label11
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label2
label11:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label15
	mv a0, s6
	sh2add a1, s5, s3
	sw s6, 0(a1)
	sh2add a1, s4, s3
	sw s6, 0(a1)
	sh2add a1, s2, s3
	sw s6, 0(a1)
	sh2add a1, s1, s3
	sw s6, 0(a1)
	sh2add a1, s0, s3
	sw s6, 0(a1)
	j label2
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
	j label2
label15:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label82
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label19
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
	j label2
label19:
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
	j label2
label82:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	sh2add a1, s5, s3
	sw s7, 0(a1)
	sh2add a1, s4, s3
	sw s7, 0(a1)
	sh2add a1, s2, s3
	sw s7, 0(a1)
	sh2add a1, s1, s3
	sw s7, 0(a1)
	sh2add a1, s0, s3
	sw s7, 0(a1)
	j label2
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
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
	li s3, 81
	li s0, 10
	li s1, 9
	li s2, 45
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
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s6, s5, a3
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
	j label236
.p2align 2
label535:
	mv s4, a0
	mv s8, a1
.p2align 2
label236:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label647
	mv a1, s8
label647:
	bgtu a2, s1, label535
	mv s4, a1
label154:
	addiw a1, a0, -48
	bgeu a1, s0, label280
	mv s8, a0
	mv s9, zero
	j label157
.p2align 2
label290:
	mv s8, a0
.p2align 2
label157:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s8, a2
	bltu a1, s0, label290
label160:
	subw a0, zero, s9
	mv a1, a0
	bne s4, zero, label629
	mv a1, s9
label629:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label629)
	ble s7, zero, label184
	addiw a2, s7, 1
	li a3, 4
	ble a2, a3, label303
	li a0, 16
	ble s5, a0, label307
	addi a0, s4, 4
	li a3, 1
	j label165
.p2align 2
label168:
	addi a0, a0, 64
.p2align 2
label165:
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
	bgt s6, a3, label168
	mv a4, a3
label169:
	ble s5, a4, label348
	sh2add a0, a4, s4
	mv a3, a4
	j label173
label176:
	addi a0, a0, 16
label173:
	sw a3, 0(a0)
	addiw a4, a3, 1
	addiw a5, a3, 2
	sw a4, 4(a0)
	addiw a4, a3, 3
	sw a5, 8(a0)
	addiw a3, a3, 4
	sw a4, 12(a0)
	bgt s5, a3, label176
label348:
	mv a0, a3
label177:
	ble a2, a0, label184
	sh2add a3, a0, s4
	j label180
label183:
	addi a3, a3, 4
	mv a0, a4
label180:
	addiw a4, a0, 1
	sw a0, 0(a3)
	bgt a2, a4, label183
label184:
	beq a1, zero, label235
	mv s5, a1
	j label185
.p2align 2
label229:
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
	beq s5, zero, label235
.p2align 2
label185:
	jal getch
	xori a3, a0, 85
	xori a4, a0, 81
	sltu a2, zero, a3
	sltu a1, zero, a4
	and a4, a1, a2
	bne a4, zero, label185
	bne a0, s3, label188
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label461
	mv s6, a0
	mv s7, zero
.p2align 2
label231:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label645
	mv a1, s7
label645:
	bleu a2, s1, label521
	mv s6, a0
	mv s7, a1
	j label231
.p2align 2
label521:
	mv s6, a0
	mv s7, a1
	addiw a0, a0, -48
	bgeu a0, s0, label466
.p2align 2
label467:
	mv s8, zero
.p2align 2
label215:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s6, a2
	bgeu a1, s0, label218
	mv s6, a0
	j label215
.p2align 2
label218:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label639
	mv s6, s8
label639:
	bleu a1, s1, label484
	mv s7, a0
	mv s8, zero
.p2align 2
label220:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label641
	mv a1, s8
label641:
	bleu a2, s1, label492
	mv s7, a0
	mv s8, a1
	j label220
.p2align 2
label492:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label664
.p2align 2
label498:
	mv s8, a0
	mv s9, zero
.p2align 2
label226:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bgeu a1, s0, label229
	mv s8, a0
	j label226
.p2align 2
label188:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label395
	mv s6, a0
	mv s7, zero
	j label189
.p2align 2
label404:
	mv s6, a0
	mv s7, a1
.p2align 2
label189:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label631
	mv a1, s7
label631:
	bgtu a2, s1, label404
	mv s7, a0
	mv s6, a1
	addiw a0, a0, -48
	bgeu a0, s0, label659
.p2align 2
label409:
	mv s8, zero
.p2align 2
label195:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s7, a2
	bgeu a1, s0, label417
	mv s7, a0
	j label195
.p2align 2
label417:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label633
.p2align 2
label660:
	mv a0, s8
.p2align 2
label633:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label427
	mv s7, a0
	mv s8, zero
	j label208
.p2align 2
label456:
	mv s7, a0
	mv s8, a1
.p2align 2
label208:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label637
	mv a1, s8
label637:
	bgtu a2, s1, label456
	mv s7, a1
	addiw a1, a0, -48
	bgeu a1, s0, label432
.p2align 2
label433:
	mv s8, a0
	mv s9, zero
.p2align 2
label203:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s9, s8, a3
	bgeu a1, s0, label441
	mv s8, a0
	j label203
.p2align 2
label441:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label635
.p2align 2
label661:
	mv a0, s9
.p2align 2
label635:
	jal find
	addiw s5, s5, -1
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label185
label235:
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
label484:
	mv s7, zero
	addiw a2, a0, -48
	bltu a2, s0, label498
label664:
	mv s9, zero
	j label229
label432:
	mv s9, zero
	mv a1, zero
	mv a0, zero
	bne s7, zero, label635
	j label661
label427:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label433
	j label432
label395:
	mv s7, a0
	mv s6, zero
	addiw a0, a0, -48
	bltu a0, s0, label409
label659:
	mv s8, zero
	mv a1, zero
	mv a0, zero
	bne s6, zero, label633
	j label660
label461:
	mv s6, a0
	mv s7, zero
	addiw a0, a0, -48
	bltu a0, s0, label467
label466:
	mv s8, zero
	j label218
label303:
	li a0, 1
	j label177
label255:
	mv s6, zero
	j label152
label307:
	li a4, 1
	mv a3, zero
	j label169
label275:
	mv s4, zero
	j label154
label242:
	mv s4, zero
	j label146
label280:
	mv s9, zero
	j label160
