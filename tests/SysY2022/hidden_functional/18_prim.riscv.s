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
	bne s0, s2, label4
	mv a0, s0
	j label2
label65:
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
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
	j label65
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
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	beq a1, zero, label71
	j label70
label71:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label73
label72:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label73
	j label72
label73:
	jal getch
	li a2, 57
	mv s0, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label151
	mv s1, zero
	j label74
label151:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label165
	j label417
label165:
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	bne s0, zero, label395
	mv s3, zero
	j label85
label417:
	mv s2, zero
	j label80
label74:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label393
	mv a1, s1
label393:
	beq a2, zero, label160
	mv s0, a0
	mv s1, a1
	j label74
label160:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label165
	j label417
label80:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s2, s1, a4
	bgeu a1, a2, label83
	mv s1, a0
	j label80
label85:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a2, zero
	addi a5, a0, %pcrel_lo(label85)
pcrel432:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel432)
pcrel433:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel433)
pcrel434:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel434)
	j label89
label83:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label395
	mv s3, s2
label395:
	ble s3, zero, label85
	j label427
label89:
	mv a0, a3
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
label427:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label427)
pcrel435:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel435)
pcrel436:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel436)
label93:
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label234
	mv s6, zero
	j label95
label234:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label248
label421:
	mv s7, zero
	j label101
label95:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label397
	mv a2, s6
label397:
	beq a1, zero, label243
	mv s5, a0
	mv s6, a2
	j label95
label243:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label248
	j label421
label248:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label399
label422:
	mv a0, s7
	j label399
label101:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label104
	mv s6, a0
	j label101
label104:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label399
	j label422
label399:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label271
	mv s6, zero
	j label106
label271:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label285
label423:
	mv s7, zero
	j label125
label106:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label401
	mv a2, s6
label401:
	beq a1, zero, label280
	mv s5, a0
	mv s6, a2
	j label106
label280:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label285
	j label423
label285:
	mv s7, zero
label112:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label403
	j label402
label403:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label297
	mv s6, zero
	j label122
label297:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label302
label301:
	mv s7, zero
	j label119
label302:
	mv s7, zero
label117:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label405
	mv a0, s7
label405:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label85
	j label93
label119:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bgeu a1, a2, label117
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
	beq s5, a3, label407
	mv a2, s6
label407:
	beq a1, zero, label332
	mv s5, a0
	mv s6, a2
	j label122
label332:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label302
	j label301
label125:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s7, s6, a2
	bgeu a1, a3, label112
	mv s6, a0
	j label125
label402:
	mv a0, s7
	j label403
