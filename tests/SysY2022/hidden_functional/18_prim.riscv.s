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
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 10
	sd s5, 16(sp)
	sd s2, 24(sp)
	li s2, 45
	sd s1, 32(sp)
	li s1, 9
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
.p2align 2
label77:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label77
.p2align 2
label78:
	jal getch
	addiw a1, a0, -48
	bltu a1, s0, label78
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label148
	mv s4, a0
	mv s3, zero
.p2align 2
label80:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s4, s2, label394
	mv a1, s3
.p2align 2
label394:
	bleu a2, s1, label156
	mv s4, a0
	mv s3, a1
	j label80
label156:
	mv s3, a1
label83:
	addiw a1, a0, -48
	bgeu a1, s0, label161
	mv s4, a0
	mv s5, zero
.p2align 2
label130:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s5, s4, a4
	bgeu a1, s0, label86
	mv s4, a0
	j label130
label86:
	subw a0, zero, s5
	mv s6, a0
	bne s3, zero, label396
	mv s6, s5
label396:
	auipc a0, %pcrel_hi(c)
pcrel452:
	auipc a1, %pcrel_hi(u)
	addi s5, a0, %pcrel_lo(label396)
	addi s3, a1, %pcrel_lo(pcrel452)
pcrel453:
	auipc a0, %pcrel_hi(v)
	addi s4, a0, %pcrel_lo(pcrel453)
	ble s6, zero, label174
	mv s7, zero
	j label95
label174:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a2, zero
	addi a4, a0, %pcrel_lo(label174)
.p2align 2
label89:
	bge a2, zero, label92
.p2align 2
label93:
	sh2add a1, a2, s3
	sh2add a5, a2, s4
	lw a0, 0(a1)
	lw t0, 0(a5)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label89
	sh2add a0, a2, s5
	sh2add a1, a2, s3
	lw a5, 0(a0)
	lw a0, 0(a1)
	jal find
	addw a3, a3, a5
	sh2add t0, a2, s4
	sh2add a0, a0, a4
	addiw a2, a2, 1
	lw a1, 0(t0)
	sw a1, 0(a0)
	blt a2, zero, label93
	j label92
.p2align 2
label95:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label212
	mv s9, a0
	mv s8, zero
	j label127
label401:
	mv a0, s10
.p2align 2
label402:
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s6, s7, label95
	j label174
.p2align 2
label127:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label408
	mv a1, s8
.p2align 2
label408:
	bleu a2, s1, label310
	mv s9, a0
	mv s8, a1
	j label127
label217:
	mv s10, zero
	j label103
.p2align 2
label218:
	mv s10, zero
.p2align 2
label100:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s10, s9, a4
	bgeu a1, s0, label226
	mv s9, a0
	j label100
label103:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label398
	j label422
.p2align 2
label310:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label218
	j label217
.p2align 2
label226:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label398
.p2align 2
label422:
	mv a0, s10
.p2align 2
label398:
	sh2add a1, s7, s3
	sw a0, 0(a1)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label237
	mv s9, a0
	mv s8, zero
.p2align 2
label124:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label406
	mv a1, s8
.p2align 2
label406:
	bleu a2, s1, label302
	mv s9, a0
	mv s8, a1
	j label124
label242:
	mv s10, zero
	j label108
.p2align 2
label243:
	mv s10, zero
	j label121
label108:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label400
	j label399
.p2align 2
label302:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label243
	j label242
.p2align 2
label121:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bgeu a1, s0, label294
	mv s9, a0
	j label121
.p2align 2
label399:
	mv a0, s10
.p2align 2
label400:
	sh2add a1, s7, s4
	sw a0, 0(a1)
	jal getch
	mv s9, a0
	addiw a0, a0, -48
	bleu a0, s1, label253
	mv s8, zero
	j label118
.p2align 2
label294:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label400
	j label399
.p2align 2
label118:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label404
	mv a1, s8
.p2align 2
label404:
	bleu a2, s1, label285
	mv s9, a0
	mv s8, a1
	j label118
label258:
	mv s10, zero
	j label113
.p2align 2
label259:
	mv s10, zero
	j label115
label113:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label402
	j label401
.p2align 2
label285:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label259
	j label258
.p2align 2
label115:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s9, a2
	bgeu a1, s0, label277
	mv s9, a0
	j label115
.p2align 2
label277:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label402
	mv a0, s10
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw s10, 0(a1)
	bgt s6, s7, label95
	j label174
label212:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	bltu a0, s0, label218
	j label217
label253:
	mv s8, zero
	addiw a0, s9, -48
	bltu a0, s0, label259
	j label258
label237:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	bltu a0, s0, label243
	j label242
label92:
	mv a0, a3
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label148:
	mv s3, zero
	j label83
label161:
	mv s5, zero
	j label86
