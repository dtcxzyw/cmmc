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
label86:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s5, s4, a4
	bgeu a1, s0, label89
	mv s4, a0
	j label86
label89:
	subw a0, zero, s5
	mv s6, a0
	bne s3, zero, label396
	mv s6, s5
label396:
	auipc a0, %pcrel_hi(c)
pcrel451:
	auipc a1, %pcrel_hi(u)
	addi s5, a0, %pcrel_lo(label396)
	addi s3, a1, %pcrel_lo(pcrel451)
pcrel452:
	auipc a0, %pcrel_hi(v)
	addi s4, a0, %pcrel_lo(pcrel452)
	ble s6, zero, label183
	mv s7, zero
	j label91
label183:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a2, zero
	addi a4, a0, %pcrel_lo(label183)
	j label127
.p2align 2
label91:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label189
	mv s9, a0
	mv s8, zero
	j label123
label401:
	mv a0, s10
.p2align 2
label402:
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s6, s7, label91
	j label183
.p2align 2
label127:
	bge a2, zero, label130
.p2align 2
label131:
	sh2add a5, a2, s3
	sh2add a1, a2, s4
	lw a0, 0(a5)
	lw a5, 0(a1)
	jal find
	mv t0, a0
	mv a0, a5
	jal find
	beq t0, a0, label127
	sh2add a0, a2, s5
	sh2add a1, a2, s3
	lw a5, 0(a0)
	lw a0, 0(a1)
	jal find
	addw a3, a3, a5
	sh2add a1, a2, s4
	sh2add a0, a0, a4
	addiw a2, a2, 1
	lw t0, 0(a1)
	sw t0, 0(a0)
	blt a2, zero, label131
	j label130
.p2align 2
label123:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label408
	mv a1, s8
.p2align 2
label408:
	bleu a2, s1, label287
	mv s9, a0
	mv s8, a1
	j label123
label194:
	mv s10, zero
	j label99
.p2align 2
label195:
	mv s10, zero
	j label96
label99:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label398
	j label421
.p2align 2
label287:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label195
	j label194
.p2align 2
label96:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s10, s9, a4
	bgeu a1, s0, label203
	mv s9, a0
	j label96
.p2align 2
label203:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label398
.p2align 2
label421:
	mv a0, s10
.p2align 2
label398:
	sh2add a1, s7, s3
	sw a0, 0(a1)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label214
	mv s9, a0
	mv s8, zero
.p2align 2
label120:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label406
	mv a1, s8
.p2align 2
label406:
	bleu a2, s1, label279
	mv s9, a0
	mv s8, a1
	j label120
label219:
	mv s10, zero
	j label107
.p2align 2
label220:
	mv s10, zero
.p2align 2
label104:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bgeu a1, s0, label228
	mv s9, a0
	j label104
label107:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label400
	j label422
.p2align 2
label279:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label220
	j label219
.p2align 2
label228:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label400
.p2align 2
label422:
	mv a0, s10
.p2align 2
label400:
	sh2add a1, s7, s4
	sw a0, 0(a1)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label239
	mv s9, a0
	mv s8, zero
.p2align 2
label117:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label404
	mv a1, s8
.p2align 2
label404:
	bleu a2, s1, label271
	mv s9, a0
	mv s8, a1
	j label117
label244:
	mv s10, zero
	j label112
.p2align 2
label245:
	mv s10, zero
	j label114
label112:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label402
	j label401
.p2align 2
label271:
	mv s9, a0
	mv s8, a1
	addiw a0, a0, -48
	bltu a0, s0, label245
	j label244
.p2align 2
label114:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s9, a3
	bgeu a1, s0, label263
	mv s9, a0
	j label114
.p2align 2
label263:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label402
	mv a0, s10
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw s10, 0(a1)
	bgt s6, s7, label91
	j label183
label189:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	bltu a0, s0, label195
	j label194
label214:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	bltu a0, s0, label220
	j label219
label239:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	bltu a0, s0, label245
	j label244
label130:
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
	j label89
