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
	bne s1, s2, label5
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
label5:
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
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label145:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s0, label145
.p2align 2
label146:
	jal getch
	addiw a1, a0, -48
	bltu a1, s1, label146
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label234
	mv s3, a0
	mv s4, zero
	j label216
.p2align 2
label515:
	bleu a2, s0, label429
	mv s3, a0
	mv s4, a1
.p2align 2
label216:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label515
	mv a1, s4
	j label515
label429:
	mv s4, a0
	mv s3, a1
label148:
	addiw a0, s4, -48
	bgeu a0, s1, label239
	mv s5, zero
	j label151
.p2align 2
label249:
	mv s4, a0
.p2align 2
label151:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, s1, label249
label154:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label501
	mv s7, s5
label501:
	auipc a0, %pcrel_hi(u)
pcrel567:
	auipc a1, %pcrel_hi(v)
	addi s3, a0, %pcrel_lo(label501)
	addi s4, a1, %pcrel_lo(pcrel567)
pcrel568:
	auipc a0, %pcrel_hi(c)
	addi s5, a0, %pcrel_lo(pcrel568)
	ble s7, zero, label261
	mv s6, s3
	mv s8, zero
	j label157
.p2align 2
label322:
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label529
.p2align 2
label507:
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw a0, 0(a1)
	ble s7, s8, label261
.p2align 2
label175:
	addi s6, s6, 4
.p2align 2
label157:
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label267
	mv s9, a0
	mv s10, zero
	j label192
.p2align 2
label513:
	bleu a2, s0, label364
	mv s9, a0
	mv s10, a1
.p2align 2
label192:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label513
	mv a1, s10
	j label513
.p2align 2
label364:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s1, label272
.p2align 2
label273:
	mv s11, zero
	j label189
.p2align 2
label357:
	mv s10, a0
.p2align 2
label189:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s1, label357
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label503
.p2align 2
label502:
	mv a1, s11
.p2align 2
label503:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label281
	mv s9, a0
	mv s10, zero
	j label186
.p2align 2
label510:
	mv a1, s10
.p2align 2
label511:
	bleu a2, s0, label347
	mv s9, a0
	mv s10, a1
.p2align 2
label186:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label511
	j label510
.p2align 2
label347:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s1, label286
.p2align 2
label287:
	mv s11, zero
	j label183
.p2align 2
label340:
	mv s10, a0
.p2align 2
label183:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bltu a1, s1, label340
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label505
.p2align 2
label504:
	mv a1, s11
.p2align 2
label505:
	sh2add a2, s8, s4
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label297
	mv s9, a0
	mv s10, zero
	j label180
.p2align 2
label508:
	mv a1, s10
.p2align 2
label509:
	bleu a2, s0, label330
	mv s9, a0
	mv s10, a1
.p2align 2
label180:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label509
	j label508
.p2align 2
label330:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s1, label302
.p2align 2
label303:
	mv s11, zero
.p2align 2
label177:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s1, label322
	mv s10, a0
	j label177
label261:
	mv a0, s4
	mv a3, s3
	mv a1, s5
	mv a2, zero
label196:
	blt a2, zero, label211
	j label201
.p2align 2
label215:
	lw t2, 0(a3)
	addi t0, a3, 4
	lw t1, 4(a3)
	sw t1, 0(a3)
	addi t1, a0, 4
	sw t2, 4(a3)
	addi t2, a1, 4
	lw t3, 0(a0)
	lw a3, 4(a0)
	sw a3, 0(a0)
	mv a3, t0
	sw t3, 4(a0)
	mv a0, t1
	sw a5, 0(a1)
	sw a4, 4(a1)
	mv a1, t2
	bge a2, zero, label201
.p2align 2
label211:
	addiw a2, a2, 1
	bge a2, zero, label212
	lw a4, 0(a1)
	lw a5, 4(a1)
	bgt a4, a5, label215
	addi a1, a1, 4
	addi a3, a3, 4
	addi a0, a0, 4
	blt a2, zero, label211
label201:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a4, zero
	addi a2, a0, %pcrel_lo(label201)
.p2align 2
label202:
	bge a4, zero, label210
.p2align 2
label208:
	lw a0, 0(s3)
	lw t0, 0(s4)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label202
	lw a5, 0(s5)
	lw a0, 0(s3)
	jal find
	addi s5, s5, 4
	addi s3, s3, 4
	addiw a4, a4, 1
	addw a3, a3, a5
	lw t0, 0(s4)
	sh2add a1, a0, a2
	addi s4, s4, 4
	sw t0, 0(a1)
	blt a4, zero, label208
	j label210
label286:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label505
	j label504
label302:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label507
	j label507
label267:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label273
	j label272
label297:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label303
	j label302
label281:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label287
	j label286
label272:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label503
	j label502
label212:
	addi a1, a1, 4
	addi a3, a3, 4
	addi a0, a0, 4
	j label196
label210:
	mv a0, a3
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label529:
	mv a0, s11
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw s11, 0(a1)
	bgt s7, s8, label175
	j label261
label234:
	mv s4, a0
	mv s3, zero
	j label148
label239:
	mv s5, zero
	j label154
