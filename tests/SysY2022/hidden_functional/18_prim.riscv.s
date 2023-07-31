.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
u:
	.zero	4020
.align 8
v:
	.zero	4020
.align 8
c:
	.zero	4020
.align 8
fa:
	.zero	4020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel75)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 32(sp)
	sd s4, 40(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label36
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
label36:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
.p2align 2
label77:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bgtu a0, a1, label77
.p2align 2
label78:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label78
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label148
	mv s1, a0
	mv s2, zero
.p2align 2
label80:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label382
	mv s0, s2
.p2align 2
label382:
	li a2, 9
	bleu a1, a2, label156
	mv s1, a0
	mv s2, s0
	j label80
.p2align 2
label148:
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label406
label162:
	mv s1, a0
	mv s2, zero
.p2align 2
label86:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s2, s1, a2
	bgeu a1, a3, label170
	mv s1, a0
	j label86
.p2align 2
label156:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label162
	mv s2, zero
	mv a0, zero
	mv s3, zero
	bne s0, zero, label384
label384:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(label384)
pcrel457:
	auipc a0, %pcrel_hi(u)
	addi s0, a0, %pcrel_lo(pcrel457)
pcrel458:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel458)
	ble s3, zero, label183
	mv s4, zero
	j label91
.p2align 2
label183:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a4, a0, %pcrel_lo(label183)
	j label130
.p2align 2
label416:
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label390
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	ble s3, s4, label183
.p2align 2
label91:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label190
	j label189
.p2align 2
label390:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label91
	j label183
.p2align 2
label189:
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label410
.p2align 2
label195:
	mv s6, a0
	mv s7, zero
.p2align 2
label96:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bgeu a1, a3, label203
	mv s6, a0
	j label96
.p2align 2
label410:
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label386
.p2align 2
label386:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label214
	mv s6, a0
	mv s5, zero
.p2align 2
label120:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label394
	mv a2, s5
.p2align 2
label394:
	li a3, 9
	bleu a1, a3, label279
	mv s6, a0
	mv s5, a2
	j label120
.p2align 2
label220:
	mv s6, a0
	mv s7, zero
	j label104
.p2align 2
label279:
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label220
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label388
	j label427
.p2align 2
label104:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s6, a3
	bgeu a1, a2, label228
	mv s6, a0
	j label104
.p2align 2
label190:
	mv s6, a0
	mv s5, zero
.p2align 2
label123:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label396
	mv a2, s5
.p2align 2
label396:
	li a3, 9
	bleu a1, a3, label287
	mv s6, a0
	mv s5, a2
	j label123
.p2align 2
label214:
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label220
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label427:
	mv a1, a0
.p2align 2
label388:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label239
	mv s6, a0
	mv s5, zero
.p2align 2
label117:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label392
	mv a2, s5
.p2align 2
label392:
	li a3, 9
	bleu a1, a3, label271
	mv s6, a0
	mv s5, a2
	j label117
.p2align 2
label239:
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label416
.p2align 2
label245:
	mv s6, a0
	mv s7, zero
.p2align 2
label114:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label263
	mv s6, a0
	j label114
.p2align 2
label263:
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label390
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label91
	j label183
.p2align 2
label228:
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label388
	j label427
.p2align 2
label426:
	mv a1, a0
	j label386
.p2align 2
label203:
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label386
	j label426
.p2align 2
label271:
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label245
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label390
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label91
	j label183
.p2align 2
label287:
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label195
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label386
	j label426
.p2align 2
label406:
	mv s2, zero
	mv a0, zero
	mv s3, zero
	bne s0, zero, label384
label423:
	mv s3, s2
	j label384
.p2align 2
label170:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label384
	j label423
label130:
	mv a0, a2
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
