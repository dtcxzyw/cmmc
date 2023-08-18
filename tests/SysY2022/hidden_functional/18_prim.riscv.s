.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
u:
	.zero	4020
.p2align 3
v:
	.zero	4020
.p2align 3
c:
	.zero	4020
.p2align 3
fa:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -80
pcrel143:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel143)
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
	bne s2, s4, label8
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
label8:
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
	j label2
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label10
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
label10:
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label11
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
label11:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	bne s7, s8, label12
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
label12:
	sh2add a1, s8, s3
	lw a0, 0(a1)
	beq s8, a0, label85
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
label85:
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
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
pcrel506:
	auipc a0, %pcrel_hi(fa)
	sd ra, 0(sp)
	addi a5, a0, %pcrel_lo(pcrel506)
	sd s0, 8(sp)
	li s0, 10
	sd s5, 16(sp)
	sd s2, 24(sp)
	li s2, 45
	sd s1, 32(sp)
	li s1, 9
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	sd a5, 104(sp)
.p2align 2
label145:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label145
.p2align 2
label146:
	jal getch
	addiw a1, a0, -48
	bltu a1, s0, label146
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label222
	mv s3, a0
	mv s4, zero
.p2align 2
label204:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label466
	mv a1, s4
label466:
	bleu a2, s1, label385
	mv s3, a0
	mv s4, a1
	j label204
label385:
	mv s4, a0
	mv s3, a1
label148:
	addiw a0, s4, -48
	bgeu a0, s0, label227
	mv s5, zero
.p2align 2
label201:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s5, s4, a4
	bgeu a1, s0, label151
	mv s4, a0
	j label201
label151:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label452
	mv s7, s5
label452:
	auipc a0, %pcrel_hi(u)
pcrel507:
	auipc a1, %pcrel_hi(v)
	addi s3, a0, %pcrel_lo(label452)
	addi s4, a1, %pcrel_lo(pcrel507)
pcrel508:
	auipc a0, %pcrel_hi(c)
	addi s5, a0, %pcrel_lo(pcrel508)
	ble s7, zero, label240
	mv s6, s3
	mv s8, zero
	j label154
.p2align 2
label309:
	mv s10, a0
.p2align 2
label176:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bltu a1, s0, label309
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label458
	mv a0, s11
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw s11, 0(a1)
	ble s7, s8, label240
.p2align 2
label181:
	addi s6, s6, 4
.p2align 2
label154:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label246
	mv s9, a0
	mv s10, zero
	j label188
.p2align 2
label344:
	mv s9, a0
	mv s10, a1
.p2align 2
label188:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label464
	mv a1, s10
label464:
	bgtu a2, s1, label344
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label251
.p2align 2
label252:
	mv s11, zero
	j label160
.p2align 2
label261:
	mv s10, a0
.p2align 2
label160:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bltu a1, s0, label261
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label454
.p2align 2
label481:
	mv a1, s11
.p2align 2
label454:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label269
	mv s9, a0
	mv s10, zero
.p2align 2
label185:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label462
	mv a1, s10
label462:
	bleu a2, s1, label335
	mv s9, a0
	mv s10, a1
	j label185
.p2align 2
label335:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label274
.p2align 2
label275:
	mv s11, zero
	j label168
.p2align 2
label284:
	mv s10, a0
.p2align 2
label168:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bltu a1, s0, label284
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label456
.p2align 2
label482:
	mv a1, s11
.p2align 2
label456:
	sh2add a2, s8, s4
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label294
	mv s9, a0
	mv s10, zero
	j label182
.p2align 2
label328:
	mv s9, a0
	mv s10, a1
.p2align 2
label182:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label460
	mv a1, s10
label460:
	bgtu a2, s1, label328
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label299
.p2align 2
label300:
	mv s11, zero
	j label176
label240:
	mv a2, zero
	mv a3, zero
.p2align 2
label192:
	bge a3, zero, label198
.p2align 2
label199:
	lw a0, 0(s3)
	lw a5, 0(s4)
	jal find
	mv a4, a0
	mv a0, a5
	jal find
	beq a4, a0, label192
	lw a4, 0(s5)
	lw a0, 0(s3)
	jal find
	addi s5, s5, 4
	addi s3, s3, 4
	addiw a3, a3, 1
	addw a2, a2, a4
	ld a5, 104(sp)
	lw t0, 0(s4)
	sh2add a1, a0, a5
	addi s4, s4, 4
	sw t0, 0(a1)
	blt a3, zero, label199
	j label198
label246:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label252
	j label251
label294:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label300
label299:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label458
label458:
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s7, s8, label181
	j label240
label269:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label275
	j label274
label251:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label454
	j label481
label274:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label456
	j label482
label198:
	mv a0, a2
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label222:
	mv s4, a0
	mv s3, zero
	j label148
label227:
	mv s5, zero
	j label151
