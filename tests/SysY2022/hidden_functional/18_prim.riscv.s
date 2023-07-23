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
pcrel71:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel71)
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
	sh2add a1, s3, a0
	lw s4, 0(a1)
	beq s3, s4, label38
	sh2add a1, s4, a0
	lw a0, 0(a1)
	beq s4, a0, label47
	j label13
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
label29:
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
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
label47:
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
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
label73:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label73
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label76
label75:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label75
label76:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label154
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label159
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	mv s3, zero
	j label85
label154:
	mv s1, a0
	mv s0, zero
	j label128
label159:
	mv s1, a0
	mv s2, zero
label80:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label170
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label384
	mv s3, s2
	bgt s2, zero, label177
	j label85
label170:
	mv s1, a0
	j label80
label384:
	bgt s3, zero, label177
	j label85
label128:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label398
	mv a1, s0
label398:
	bne a2, zero, label346
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label159
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	bne s0, zero, label384
	mv s3, zero
	j label85
label346:
	mv s1, a0
	mv s0, a1
	j label128
label85:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label85)
pcrel443:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel443)
pcrel444:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel444)
pcrel445:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel445)
label86:
	blt a3, zero, label90
label89:
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
label90:
	sh2add t2, a3, a4
	sh2add a1, a3, t0
	lw a0, 0(t2)
	lw t2, 0(a1)
	jal find
	mv t3, a0
	mv a0, t2
	jal find
	beq t3, a0, label86
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
	blt a3, zero, label90
	j label89
label93:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label228
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
label428:
	mv a1, a0
	j label388
label228:
	mv s6, a0
	mv s5, zero
label95:
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label386
	mv a2, s5
label386:
	bne a1, zero, label237
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label388
	j label428
label237:
	mv s6, a0
	mv s5, a2
	j label95
label242:
	mv s6, a0
	mv s7, zero
label101:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bltu a1, a3, label253
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label388
	j label428
label253:
	mv s6, a0
	j label101
label388:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label265
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label279
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
label430:
	mv a1, a0
	j label392
label265:
	mv s6, a0
	mv s5, zero
label106:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label390
	mv a2, s5
label390:
	bne a1, zero, label274
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label279
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label392
	j label430
label274:
	mv s6, a0
	mv s5, a2
	j label106
label279:
	mv s6, a0
	mv s7, zero
	j label125
label392:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label291
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label296
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label93
	j label85
label291:
	mv s6, a0
	mv s5, zero
	j label122
label296:
	mv s6, a0
	mv s7, zero
	j label119
label394:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label93
	j label85
label119:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label317
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label394
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label93
	j label85
label317:
	mv s6, a0
	j label119
label122:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label396
	mv a2, s5
label396:
	bne a1, zero, label326
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label296
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label394
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label93
	j label85
label326:
	mv s6, a0
	mv s5, a2
	j label122
label125:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label337
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label392
	j label430
label337:
	mv s6, a0
	j label125
label177:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label177)
pcrel446:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel446)
pcrel447:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel447)
	j label93
