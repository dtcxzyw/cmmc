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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
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
	j label125
label151:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label156
label155:
	mv s2, zero
	j label77
label156:
	mv s2, zero
	subw a0, zero, zero
	mv s3, a0
	bne s0, zero, label393
	mv s3, zero
	j label82
label125:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label407
	mv a1, s1
label407:
	beq a2, zero, label343
	mv s0, a0
	mv s1, a1
	j label125
label343:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label156
	j label155
label77:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bgeu a1, a2, label80
	mv s1, a0
	j label77
label82:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a2, zero
	addi a5, a0, %pcrel_lo(label82)
pcrel431:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel431)
pcrel432:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel432)
pcrel433:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel433)
	j label86
label427:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label427)
pcrel434:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel434)
pcrel435:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel435)
	j label90
label80:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label393
	mv s3, s2
label393:
	ble s3, zero, label82
	j label427
label90:
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label225
	mv s6, zero
	j label92
label225:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label239
label420:
	mv s7, zero
	j label98
label92:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label395
	mv a2, s6
label395:
	beq a1, zero, label234
	mv s5, a0
	mv s6, a2
	j label92
label234:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label239
	j label420
label239:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label397
	j label421
label98:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label101
	mv s6, a0
	j label98
label397:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label262
	mv s6, zero
	j label103
label262:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label276
label422:
	mv s7, zero
	j label122
label103:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label399
	mv a2, s6
label399:
	beq a1, zero, label271
	mv s5, a0
	mv s6, a2
	j label103
label271:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label276
	j label422
label276:
	mv s7, zero
label109:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label401
	mv a0, s7
label401:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label288
	mv s6, zero
	j label119
label288:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label293
label292:
	mv s7, zero
	j label116
label293:
	mv s7, zero
label114:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label403
	mv a0, s7
label403:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label82
	j label90
label116:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label114
	mv s6, a0
	j label116
label119:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label405
	mv a2, s6
label405:
	beq a1, zero, label323
	mv s5, a0
	mv s6, a2
	j label119
label323:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label293
	j label292
label122:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bgeu a1, a2, label109
	mv s6, a0
	j label122
label421:
	mv a0, s7
	j label397
label101:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label397
	j label421
label86:
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
