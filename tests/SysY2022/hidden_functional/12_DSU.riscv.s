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
	bne s1, s2, label5
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
label5:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label36
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label11
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label36:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label11:
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
	li s2, 45
	li s1, 9
	li s0, 10
	addiw a1, a0, -48
	bleu a1, s1, label158
	mv s4, a0
	mv s5, zero
.p2align 2
label77:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label464
	mv a1, s5
.p2align 2
label464:
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
label152:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s6, s5, a3
	bgeu a1, s0, label375
	mv s5, a0
	j label152
label83:
	jal getch
	subw a2, zero, s5
	addiw a1, a0, -48
	mv s6, a2
	bne s4, zero, label466
	j label465
label375:
	mv s5, s6
	j label83
label465:
	mv s6, s5
label466:
	bleu a1, s1, label180
	mv s4, a0
	mv s5, zero
.p2align 2
label85:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label468
	mv a1, s5
.p2align 2
label468:
	bleu a2, s1, label188
	mv s4, a0
	mv s5, a1
	j label85
label188:
	mv s4, a1
label88:
	addiw a2, a0, -48
	bgeu a2, s0, label193
	mv s5, a0
	mv s7, zero
.p2align 2
label91:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s7, s5, a3
	bgeu a1, s0, label94
	mv s5, a0
	j label91
label94:
	subw a0, zero, s7
	mv s5, a0
	bne s4, zero, label470
	mv s5, s7
label470:
	auipc a0, %pcrel_hi(fa)
	addi s4, a0, %pcrel_lo(label470)
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
	beq s5, zero, label146
.p2align 2
label98:
	jal getch
	xori a4, a0, 85
	xori a3, a0, 81
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	bne a3, zero, label98
	addiw s5, s5, -1
	beq a0, s3, label123
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label234
	j label233
.p2align 2
label141:
	mv a0, s6
	jal find
	subw a1, zero, s9
	mv a2, a0
	mv a0, a1
	bne s7, zero, label484
	mv a0, s9
.p2align 2
label484:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	mv a0, s0
	jal putch
	bne s5, zero, label98
label146:
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
.p2align 2
label123:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label299
	mv s6, a0
	mv s7, zero
.p2align 2
label124:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label480
	mv a1, s7
.p2align 2
label480:
	bleu a2, s1, label307
	mv s6, a0
	mv s7, a1
	j label124
.p2align 2
label307:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label503
.p2align 2
label313:
	mv s6, a0
	mv s8, zero
.p2align 2
label130:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s8, s6, a3
	bgeu a1, s0, label133
	mv s6, a0
	j label130
.p2align 2
label133:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s6, a2
	bne s7, zero, label482
	mv s6, s8
.p2align 2
label482:
	bleu a1, s1, label330
	mv s7, a0
	mv s8, zero
.p2align 2
label143:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label486
	mv a1, s8
.p2align 2
label486:
	bleu a2, s1, label359
	mv s7, a0
	mv s8, a1
	j label143
label335:
	mv s9, zero
	j label141
.p2align 2
label336:
	mv s8, a0
	mv s9, zero
	j label138
.p2align 2
label359:
	mv s7, a1
	addiw a1, a0, -48
	bltu a1, s0, label336
	j label335
.p2align 2
label138:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s8, a2
	bgeu a1, s0, label141
	mv s8, a0
	j label138
label299:
	mv s7, zero
	j label127
label503:
	mv s8, zero
	j label133
label127:
	addiw a2, a0, -48
	bltu a2, s0, label313
	j label503
label330:
	mv s7, zero
	addiw a1, a0, -48
	bltu a1, s0, label336
	j label335
label233:
	mv s6, zero
	j label104
label498:
	mv s8, zero
	j label107
label104:
	addiw a2, a0, -48
	bltu a2, s0, label247
	j label498
label107:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label474
	j label473
.p2align 2
label241:
	mv s6, a1
	addiw a2, a0, -48
	bgeu a2, s0, label498
.p2align 2
label247:
	mv s7, a0
	mv s8, zero
.p2align 2
label120:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s8, s7, a3
	bgeu a1, s0, label293
	mv s7, a0
	j label120
.p2align 2
label473:
	mv a0, s8
.p2align 2
label474:
	jal find
	mv s6, a0
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label256
	mv s7, a0
	mv s8, zero
	j label109
.p2align 2
label293:
	subw a1, zero, s8
	mv a0, a1
	bne s6, zero, label474
	j label473
.p2align 2
label109:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s7, s2, label476
	mv a1, s8
.p2align 2
label476:
	bleu a2, s1, label264
	mv s7, a0
	mv s8, a1
	j label109
.p2align 2
label264:
	mv s7, a1
	addiw a2, a0, -48
	bgeu a2, s0, label499
.p2align 2
label270:
	mv s8, a0
	mv s9, zero
.p2align 2
label115:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s8, a3
	bgeu a1, s0, label278
	mv s8, a0
	j label115
.p2align 2
label278:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label478
.p2align 2
label500:
	mv a0, s9
.p2align 2
label478:
	jal find
	sh2add a1, s6, s4
	sw a0, 0(a1)
	bne s5, zero, label98
	j label146
label256:
	mv s7, zero
	j label112
label499:
	mv s9, zero
	j label118
label112:
	addiw a2, a0, -48
	bltu a2, s0, label270
	j label499
label118:
	subw a1, zero, s9
	mv a0, a1
	bne s7, zero, label478
	j label500
label171:
	mv s5, zero
	j label83
.p2align 2
label234:
	mv s6, a0
	mv s7, zero
.p2align 2
label101:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s6, s2, label472
	mv a1, s7
.p2align 2
label472:
	bleu a2, s1, label241
	mv s6, a0
	mv s7, a1
	j label101
label180:
	mv s4, zero
	j label88
label193:
	mv s7, zero
	j label94
label158:
	mv s4, zero
	j label80
