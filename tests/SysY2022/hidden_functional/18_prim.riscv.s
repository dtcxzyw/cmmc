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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s2, 8(sp)
	li s2, 45
	sd s0, 16(sp)
	li s0, 9
	sd s5, 24(sp)
	sd s1, 32(sp)
	li s1, 10
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label77:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s0, label77
.p2align 2
label78:
	jal getch
	addiw a1, a0, -48
	bltu a1, s1, label78
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label154
	mv s3, a0
	mv s4, zero
.p2align 2
label80:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label388
	mv a1, s4
.p2align 2
label388:
	bleu a2, s0, label162
	mv s3, a0
	mv s4, a1
	j label80
label162:
	mv s3, a1
label83:
	addiw a2, a0, -48
	bgeu a2, s1, label167
	mv s4, a0
	mv s5, zero
.p2align 2
label136:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s5, s4, a3
	bgeu a1, s1, label86
	mv s4, a0
	j label136
label86:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label390
	mv s7, s5
label390:
	auipc a0, %pcrel_hi(c)
pcrel448:
	auipc a1, %pcrel_hi(u)
	addi s4, a0, %pcrel_lo(label390)
	addi s3, a1, %pcrel_lo(pcrel448)
pcrel449:
	auipc a0, %pcrel_hi(v)
	addi s5, a0, %pcrel_lo(pcrel449)
	ble s7, zero, label88
	mv s6, s3
	mv s8, zero
.p2align 2
label99:
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label211
	mv s9, a0
	mv s10, zero
	j label133
.p2align 2
label396:
	sh2add a1, s8, s4
	addiw s8, s8, 1
	sw a0, 0(a1)
	ble s7, s8, label88
.p2align 2
label117:
	addi s6, s6, 4
	j label99
.p2align 2
label266:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label396
	mv a0, s11
	sh2add a1, s8, s4
	addiw s8, s8, 1
	sw s11, 0(a1)
	bgt s7, s8, label117
	j label88
.p2align 2
label133:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label402
	mv a1, s10
.p2align 2
label402:
	bleu a2, s0, label308
	mv s9, a0
	mv s10, a1
	j label133
label216:
	mv s11, zero
	j label105
.p2align 2
label217:
	mv s11, zero
	j label130
label105:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label392
	j label391
.p2align 2
label308:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label217
	j label216
.p2align 2
label130:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s1, label300
	mv s10, a0
	j label130
.p2align 2
label391:
	mv a1, s11
.p2align 2
label392:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label225
	mv s9, a0
	mv s10, zero
	j label127
.p2align 2
label300:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label392
	j label391
.p2align 2
label127:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label400
	mv a1, s10
.p2align 2
label400:
	bleu a2, s0, label291
	mv s9, a0
	mv s10, a1
	j label127
label230:
	mv s11, zero
	j label110
.p2align 2
label231:
	mv s11, zero
	j label124
label110:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label394
	j label393
.p2align 2
label291:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label231
	j label230
.p2align 2
label124:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s1, label283
	mv s10, a0
	j label124
.p2align 2
label393:
	mv a1, s11
.p2align 2
label394:
	sh2add a2, s8, s5
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label241
	mv s9, a0
	mv s10, zero
	j label121
.p2align 2
label283:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label394
	j label393
.p2align 2
label121:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label398
	mv a1, s10
.p2align 2
label398:
	bleu a2, s0, label274
	mv s9, a0
	mv s10, a1
	j label121
label246:
	mv s11, zero
	j label115
.p2align 2
label247:
	mv s11, zero
	j label118
label115:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label396
	j label395
.p2align 2
label118:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s1, label266
	mv s10, a0
	j label118
.p2align 2
label274:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label247
	j label246
label88:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a4, zero
	addi a2, a0, %pcrel_lo(label88)
.p2align 2
label89:
	bge a4, zero, label95
.p2align 2
label96:
	lw a0, 0(s3)
	lw t0, 0(s5)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label89
	lw a5, 0(s4)
	lw a0, 0(s3)
	jal find
	addi s4, s4, 4
	addi s3, s3, 4
	addiw a4, a4, 1
	addw a3, a3, a5
	lw t0, 0(s5)
	sh2add a1, a0, a2
	addi s5, s5, 4
	sw t0, 0(a1)
	blt a4, zero, label96
	j label95
label211:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label217
	j label216
label241:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label247
	j label246
label225:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label231
	j label230
label95:
	mv a0, a3
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label167:
	mv s5, zero
	j label86
label154:
	mv s3, zero
	j label83
label395:
	mv a0, s11
	j label396
