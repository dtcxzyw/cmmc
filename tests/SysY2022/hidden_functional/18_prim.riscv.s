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
pcrel73:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label4
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
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
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
.globl main
main:
.p2align 2
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
.p2align 2
label75:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bgtu a0, a1, label75
.p2align 2
label76:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label76
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label148
	mv s0, zero
	li a2, 10
	bltu a1, a2, label161
	mv s2, zero
	mv a0, zero
	mv s3, zero
label432:
	mv s3, s2
	j label392
label148:
	mv s1, a0
	mv s2, zero
.p2align 2
label78:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label390
	mv s0, s2
.p2align 2
label390:
	li a2, 9
	bgtu a1, a2, label156
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
	mv s2, zero
	mv a0, zero
	mv s3, zero
	bne s0, zero, label392
	j label432
label156:
	mv s1, a0
	mv s2, s0
	j label78
label161:
	mv s1, a0
	mv s2, zero
.p2align 2
label84:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s2, s1, a4
	bltu a1, a2, label170
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label392
	j label432
label170:
	mv s1, a0
	j label84
label392:
	ble s3, zero, label89
pcrel444:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(pcrel444)
pcrel445:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel445)
pcrel446:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel446)
	j label97
label89:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label89)
pcrel447:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel447)
pcrel448:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel448)
pcrel449:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel449)
.p2align 2
label90:
	blt a3, zero, label94
label93:
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
.p2align 2
label94:
	sh2add a1, a3, a4
	sh2add t3, a3, t0
	lw a0, 0(a1)
	lw t2, 0(t3)
	jal find
	mv t3, a0
	mv a0, t2
	jal find
	beq t3, a0, label90
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
	blt a3, zero, label94
	j label93
.p2align 2
label97:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label227
	mv s5, zero
	li a2, 10
	bltu a1, a2, label232
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label434:
	mv a1, a0
	j label394
.p2align 2
label227:
	mv s6, a0
	mv s5, zero
	j label129
.p2align 2
label232:
	mv s6, a0
	mv s7, zero
.p2align 2
label102:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label241
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label394
	j label434
.p2align 2
label241:
	mv s6, a0
	j label102
.p2align 2
label394:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label252
	mv s5, zero
	li a2, 10
	bltu a1, a2, label257
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label435:
	mv a1, a0
	j label396
.p2align 2
label252:
	mv s6, a0
	mv s5, zero
	j label126
.p2align 2
label257:
	mv s6, a0
	mv s7, zero
.p2align 2
label110:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label266
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label396
	j label435
.p2align 2
label266:
	mv s6, a0
	j label110
.p2align 2
label396:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label277
	mv s5, zero
	li a2, 10
	bltu a1, a2, label282
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label97
	j label89
.p2align 2
label277:
	mv s6, a0
	mv s5, zero
	j label123
.p2align 2
label282:
	mv s6, a0
	mv s7, zero
	j label120
.p2align 2
label398:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label97
	j label89
.p2align 2
label120:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label301
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label398
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label97
	j label89
.p2align 2
label301:
	mv s6, a0
	j label120
.p2align 2
label123:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label400
	mv a2, s5
.p2align 2
label400:
	li a3, 9
	bgtu a1, a3, label309
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label282
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label398
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label97
	j label89
.p2align 2
label309:
	mv s6, a0
	mv s5, a2
	j label123
.p2align 2
label126:
	jal getch
	li a3, 45
	li a2, 1
	addiw a1, a0, -48
	beq s6, a3, label402
	mv a2, s5
.p2align 2
label402:
	li a3, 9
	bgtu a1, a3, label317
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label257
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label396
	j label435
.p2align 2
label317:
	mv s6, a0
	mv s5, a2
	j label126
.p2align 2
label129:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label404
	mv a2, s5
.p2align 2
label404:
	li a3, 9
	bgtu a1, a3, label325
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label232
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label394
	j label434
.p2align 2
label325:
	mv s6, a0
	mv s5, a2
	j label129
