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
.p2align 2
	addi sp, sp, -48
pcrel65:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel65)
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
label67:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label67
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label70
label69:
.p2align 2
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label69
label70:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label148
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label153
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
label421:
	mv s3, s2
	j label378
label148:
	mv s1, a0
	mv s0, zero
	j label122
label153:
	mv s1, a0
	mv s2, zero
label74:
.p2align 2
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label164
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label378
	j label421
label164:
	mv s1, a0
	j label74
label122:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label392
	mv a1, s0
label392:
.p2align 2
	bne a2, zero, label340
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label153
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	bne s0, zero, label378
	j label421
label340:
	mv s1, a0
	mv s0, a1
	j label122
label378:
	bgt s3, zero, label171
label79:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label79)
pcrel433:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel433)
pcrel434:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel434)
pcrel435:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel435)
label80:
.p2align 2
	blt a3, zero, label84
label83:
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
label84:
.p2align 2
	sh2add t2, a3, a4
	sh2add a1, a3, t0
	lw a0, 0(t2)
	lw t2, 0(a1)
	jal find
	mv t3, a0
	mv a0, t2
	jal find
	beq t3, a0, label80
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
	blt a3, zero, label84
	j label83
label386:
.p2align 2
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label285
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label290
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label87
	j label79
label285:
.p2align 2
	mv s6, a0
	mv s5, zero
	j label116
label290:
.p2align 2
	mv s6, a0
	mv s7, zero
label113:
.p2align 2
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label311
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label388
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label87
	j label79
label311:
.p2align 2
	mv s6, a0
	j label113
label116:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label390
	mv a2, s5
label390:
.p2align 2
	bne a1, zero, label320
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label290
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label388
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label87
	j label79
label320:
.p2align 2
	mv s6, a0
	mv s5, a2
	j label116
label87:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label222
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label236
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
label422:
.p2align 2
	mv a1, a0
	j label382
label222:
.p2align 2
	mv s6, a0
	mv s5, zero
label89:
.p2align 2
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label380
	mv a2, s5
label380:
.p2align 2
	bne a1, zero, label231
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label236
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label382
	j label422
label231:
.p2align 2
	mv s6, a0
	mv s5, a2
	j label89
label236:
.p2align 2
	mv s6, a0
	mv s7, zero
label95:
.p2align 2
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bltu a1, a3, label247
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label382
	j label422
label247:
.p2align 2
	mv s6, a0
	j label95
label382:
.p2align 2
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label259
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label273
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
label424:
.p2align 2
	mv a1, a0
	j label386
label259:
.p2align 2
	mv s6, a0
	mv s5, zero
label100:
.p2align 2
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label384
	mv a2, s5
label384:
.p2align 2
	bne a1, zero, label268
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label273
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label386
	j label424
label268:
.p2align 2
	mv s6, a0
	mv s5, a2
	j label100
label273:
.p2align 2
	mv s6, a0
	mv s7, zero
	j label119
label388:
.p2align 2
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label87
	j label79
label119:
.p2align 2
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label331
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label386
	j label424
label331:
.p2align 2
	mv s6, a0
	j label119
label171:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label171)
pcrel436:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel436)
pcrel437:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel437)
	j label87
