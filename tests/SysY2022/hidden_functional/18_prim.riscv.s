.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
u:
	.zero	4020
.align 4
v:
	.zero	4020
.align 4
c:
	.zero	4020
.align 4
fa:
	.zero	4020
.text
find:
	addi sp, sp, -48
pcrel68:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel68)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	beq s2, s3, label29
	j label28
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label28:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
	j label37
label29:
	mv a0, s2
label5:
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
label37:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	beq s4, a0, label47
	j label13
label38:
	mv a0, s3
label8:
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label5
label47:
	mv a0, s4
label11:
	sh2add a1, s3, s1
	sw a0, 0(a1)
	j label8
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	j label11
.globl main
main:
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
label70:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label70
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label73
label72:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label72
label73:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label151
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label156
	j label155
label151:
	mv s1, a0
	mv s0, zero
	j label125
label155:
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	bne s0, zero, label381
	j label380
label156:
	mv s1, a0
	mv s2, zero
label77:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label167
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label381
	j label380
label167:
	mv s1, a0
	j label77
label380:
	mv s3, s2
label381:
	bgt s3, zero, label174
	j label82
label125:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label395
	mv a1, s0
label395:
	bne a2, zero, label343
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label156
	j label155
label343:
	mv s1, a0
	mv s0, a1
	j label125
label82:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label82)
pcrel422:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel422)
pcrel423:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel423)
pcrel424:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel424)
	j label83
label90:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label225
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label239
	j label238
label225:
	mv s6, a0
	mv s5, zero
label92:
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label383
	mv a2, s5
label383:
	bne a1, zero, label234
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label239
	j label238
label234:
	mv s6, a0
	mv s5, a2
	j label92
label238:
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label385
	j label384
label239:
	mv s6, a0
	mv s7, zero
label98:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bltu a1, a3, label250
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label385
	j label384
label250:
	mv s6, a0
	j label98
label384:
	mv a1, a0
label385:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label262
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label276
	j label275
label262:
	mv s6, a0
	mv s5, zero
label103:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label387
	mv a2, s5
label387:
	bne a1, zero, label271
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label276
	j label275
label271:
	mv s6, a0
	mv s5, a2
	j label103
label275:
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label389
	j label388
label276:
	mv s6, a0
	mv s7, zero
	j label122
label388:
	mv a1, a0
label389:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label288
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label293
	j label292
label288:
	mv s6, a0
	mv s5, zero
	j label119
label292:
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label391
	j label390
label293:
	mv s6, a0
	mv s7, zero
	j label116
label391:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label90
	j label82
label116:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label314
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label391
	j label390
label314:
	mv s6, a0
	j label116
label119:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label393
	mv a2, s5
label393:
	bne a1, zero, label323
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label293
	j label292
label323:
	mv s6, a0
	mv s5, a2
	j label119
label122:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label334
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label389
	j label388
label334:
	mv s6, a0
	j label122
label83:
	blt a3, zero, label87
	mv a0, a2
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
label87:
	sh2add t2, a3, a4
	sh2add a1, a3, t0
	lw a0, 0(t2)
	lw t2, 0(a1)
	jal find
	mv t3, a0
	mv a0, t2
	jal find
	beq t3, a0, label83
	sh2add a0, a3, t1
	sh2add a1, a3, a4
	lw t2, 0(a0)
	lw a0, 0(a1)
	jal find
	addw a2, a2, t2
	sh2add t3, a3, t0
	sh2add a0, a0, a5
	addiw a3, a3, 1
	lw a1, 0(t3)
	sw a1, 0(a0)
	j label83
label390:
	mv a1, a0
	j label391
label174:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label174)
pcrel425:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel425)
pcrel426:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel426)
	j label90
