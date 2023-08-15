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
	j label24
label11:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label80
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label13
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
label13:
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
label80:
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
	j label24
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
	addi sp, sp, -104
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
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label143:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label143
.p2align 2
label144:
	jal getch
	addiw a1, a0, -48
	bltu a1, s0, label144
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label220
	mv s3, a0
	mv s4, zero
	j label146
.p2align 2
label453:
	mv a1, s4
.p2align 2
label454:
	bleu a2, s1, label228
	mv s3, a0
	mv s4, a1
.p2align 2
label146:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label454
	j label453
label228:
	mv s3, a1
label149:
	addiw a2, a0, -48
	bgeu a2, s0, label233
	mv s4, a0
	mv s5, zero
.p2align 2
label152:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s5, s4, a2
	bgeu a1, s0, label155
	mv s4, a0
	j label152
label155:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label456
	mv s7, s5
label456:
	auipc a0, %pcrel_hi(u)
pcrel513:
	auipc a1, %pcrel_hi(v)
	addi s3, a0, %pcrel_lo(label456)
	addi s4, a1, %pcrel_lo(pcrel513)
pcrel514:
	auipc a0, %pcrel_hi(c)
	addi s5, a0, %pcrel_lo(pcrel514)
	ble s7, zero, label255
	mv s6, s3
	mv s8, zero
	j label158
.p2align 2
label335:
	mv s10, a0
.p2align 2
label183:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bltu a1, s0, label335
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label484
.p2align 2
label462:
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw a0, 0(a1)
	ble s7, s8, label255
.p2align 2
label182:
	addi s6, s6, 4
.p2align 2
label158:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label261
	mv s9, a0
	mv s10, zero
	j label192
.p2align 2
label468:
	bleu a2, s1, label358
	mv s9, a0
	mv s10, a1
.p2align 2
label192:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label468
	mv a1, s10
	j label468
.p2align 2
label358:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label266
.p2align 2
label267:
	mv s11, zero
	j label164
.p2align 2
label276:
	mv s10, a0
.p2align 2
label164:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bltu a1, s0, label276
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label458
.p2align 2
label482:
	mv a1, s11
.p2align 2
label458:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label284
	mv s9, a0
	mv s10, zero
	j label189
.p2align 2
label465:
	mv a1, s10
.p2align 2
label466:
	bleu a2, s1, label350
	mv s9, a0
	mv s10, a1
.p2align 2
label189:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label466
	j label465
.p2align 2
label350:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label289
.p2align 2
label290:
	mv s11, zero
	j label172
.p2align 2
label299:
	mv s10, a0
.p2align 2
label172:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bltu a1, s0, label299
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label460
.p2align 2
label483:
	mv a1, s11
.p2align 2
label460:
	sh2add a2, s8, s4
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label309
	mv s9, a0
	mv s10, zero
	j label186
.p2align 2
label463:
	mv a1, s10
.p2align 2
label464:
	bleu a2, s1, label342
	mv s9, a0
	mv s10, a1
.p2align 2
label186:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label464
	j label463
.p2align 2
label342:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label314
.p2align 2
label315:
	mv s11, zero
	j label183
label255:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a4, zero
	addi a2, a0, %pcrel_lo(label255)
.p2align 2
label196:
	bge a4, zero, label202
.p2align 2
label203:
	lw a0, 0(s3)
	lw t0, 0(s4)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label196
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
	blt a4, zero, label203
	j label202
label261:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label267
label266:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label458
	j label482
label314:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label462
	j label462
label284:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label290
	j label289
label309:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label315
	j label314
label289:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label460
	j label483
label202:
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
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label484:
	mv a0, s11
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw s11, 0(a1)
	bgt s7, s8, label182
	j label255
label220:
	mv s3, zero
	j label149
label233:
	mv s5, zero
	j label155
