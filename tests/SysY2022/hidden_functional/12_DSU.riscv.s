.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
.p2align 2
find:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label13
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getch
	li s3, 81
	li s2, 45
	li s0, 10
	li s1, 9
	addiw a1, a0, -48
	bleu a1, s1, label158
	mv s4, a0
	mv s5, zero
.p2align 2
label77:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label465
	mv a1, s5
.p2align 2
label465:
	bleu a2, s1, label166
	mv s4, a0
	mv s5, a1
	j label77
label166:
	mv s4, a1
label80:
	addiw a2, a0, -48
	bgeu a2, s0, label171
	mv s5, a0
	mv s6, zero
.p2align 2
label83:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s6, s5, a2
	bgeu a1, s0, label180
	mv s5, a0
	j label83
label180:
	mv s5, s6
label86:
	jal getch
	subw a2, zero, s5
	addiw a1, a0, -48
	mv s6, a2
	bne s4, zero, label467
	mv s6, s5
label467:
	bleu a1, s1, label189
	mv s4, a0
	mv s5, zero
.p2align 2
label152:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label487
	mv a1, s5
.p2align 2
label487:
	bleu a2, s1, label375
	mv s4, a0
	mv s5, a1
	j label152
label88:
	addiw a1, a0, -48
	bgeu a1, s0, label194
	mv s5, a0
	mv s7, zero
.p2align 2
label91:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s7, s5, a3
	bgeu a1, s0, label94
	mv s5, a0
	j label91
label375:
	mv s4, a1
	j label88
label94:
	subw a0, zero, s7
	mv s5, a0
	bne s4, zero, label469
	mv s5, s7
label469:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label469)
	ble s6, zero, label96
	addi a0, s4, 4
	li a1, 1
.p2align 2
label148:
	sw a1, 0(a0)
	addiw a1, a1, 1
	blt s6, a1, label96
	addi a0, a0, 4
	j label148
label96:
	bne s5, zero, label99
label98:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label99:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label99
	addiw s5, s5, -1
	beq a0, s3, label124
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label235
	j label234
.p2align 2
label484:
	mv a0, s9
.p2align 2
label485:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	bne s5, zero, label99
	j label98
.p2align 2
label124:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label300
	mv s6, a0
	mv s7, zero
.p2align 2
label125:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label479
	mv a1, s7
.p2align 2
label479:
	bleu a2, s1, label308
	mv s6, a0
	mv s7, a1
	j label125
.p2align 2
label308:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label504
.p2align 2
label314:
	mv s6, a0
	mv s8, zero
.p2align 2
label131:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s8, s6, a4
	bgeu a1, s0, label134
	mv s6, a0
	j label131
.p2align 2
label134:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label481
	mv s6, s8
.p2align 2
label481:
	bleu a1, s1, label331
	mv s7, a0
	mv s8, zero
.p2align 2
label136:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label483
	mv a1, s8
.p2align 2
label483:
	bleu a2, s1, label339
	mv s7, a0
	mv s8, a1
	j label136
.p2align 2
label339:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label505
.p2align 2
label345:
	mv s8, a0
	mv s9, zero
.p2align 2
label144:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s8, a2
	bgeu a1, s0, label142
	mv s8, a0
	j label144
.p2align 2
label142:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label485
	j label484
label234:
	mv s6, zero
	j label105
label499:
	mv s8, zero
	j label108
label105:
	addiw a2, a0, -48
	bltu a2, s0, label248
	j label499
label108:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label473
	j label472
.p2align 2
label242:
	mv s6, a1
	addiw a2, a0, -48
	bgeu a2, s0, label499
.p2align 2
label248:
	mv s7, a0
	mv s8, zero
.p2align 2
label121:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s7, a2
	bgeu a1, s0, label294
	mv s7, a0
	j label121
.p2align 2
label472:
	mv a0, s8
.p2align 2
label473:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label257
	mv s7, a0
	mv s8, zero
	j label118
.p2align 2
label294:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label473
	j label472
.p2align 2
label118:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label477
	mv a1, s8
.p2align 2
label477:
	bleu a2, s1, label285
	mv s7, a0
	mv s8, a1
	j label118
label262:
	mv s9, zero
	j label116
.p2align 2
label263:
	mv s8, a0
	mv s9, zero
.p2align 2
label113:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s8, a4
	bgeu a1, s0, label271
	mv s8, a0
	j label113
label116:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label475
	j label500
.p2align 2
label285:
	mv s7, a1
	addiw a1, a0, -48
	bltu a1, s0, label263
	j label262
.p2align 2
label271:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label475
.p2align 2
label500:
	mv a0, s9
.p2align 2
label475:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label99
	j label98
label331:
	mv s7, zero
	j label139
label505:
	mv s9, zero
	j label142
label139:
	addiw a2, a0, -48
	bltu a2, s0, label345
	j label505
label300:
	mv s7, zero
	j label128
label504:
	mv s8, zero
	j label134
label128:
	addiw a2, a0, -48
	bltu a2, s0, label314
	j label504
label257:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label263
	j label262
label189:
	mv s4, zero
	j label88
.p2align 2
label235:
	mv s6, a0
	mv s7, zero
.p2align 2
label102:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label471
	mv a1, s7
.p2align 2
label471:
	bleu a2, s1, label242
	mv s6, a0
	mv s7, a1
	j label102
label194:
	mv s7, zero
	j label94
label171:
	mv s5, zero
	j label86
label158:
	mv s4, zero
	j label80
