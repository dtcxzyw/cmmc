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
pcrel66:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel66)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
	j label12
label2:
	sh2add a0, s2, s1
	lw s3, 0(a0)
	bne s2, s3, label3
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label3:
	sh2add a0, s3, s1
	lw s4, 0(a0)
	bne s3, s4, label6
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label6:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label9
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label9:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
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
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label68
label134:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label68
	j label134
label68:
	addiw a1, a0, -48
	li a0, 10
	bgeu a1, a0, label71
label70:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label71
	j label70
label71:
	jal getch
	li a2, 57
	mv s0, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label158
	mv s1, zero
	j label72
label158:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label172
label471:
	mv s2, zero
	j label131
label72:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label447
	mv a1, s1
label447:
	beq a2, zero, label167
	mv s0, a0
	mv s1, a1
	j label72
label167:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label172
	j label471
label172:
	mv s2, zero
label78:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label449
	mv s3, s2
	j label449
label131:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s2, s1, a4
	bgeu a1, a2, label78
	mv s1, a0
	j label131
label449:
	ble s3, zero, label116
	j label178
label81:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label192
	mv s6, zero
	j label113
label192:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label197
label196:
	mv s7, zero
	j label86
label197:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label451
	j label472
label86:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bgeu a1, a2, label89
	mv s6, a0
	j label86
label451:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label220
	mv s6, zero
	j label110
label220:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label225
	j label224
label225:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label453
label473:
	mv a0, s7
label453:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label248
	mv s6, zero
	j label107
label248:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label253
	j label252
label253:
	mv s7, zero
label102:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label455
	mv a0, s7
label455:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label116
	j label81
label113:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label461
	mv a2, s6
label461:
	beq a1, zero, label301
	mv s5, a0
	mv s6, a2
	j label113
label301:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label197
	j label196
label116:
	auipc a0, %pcrel_hi(fa)
	addi a5, a0, %pcrel_lo(label116)
pcrel506:
	auipc a0, %pcrel_hi(c)
	addi a2, a0, %pcrel_lo(pcrel506)
pcrel507:
	auipc a0, %pcrel_hi(u)
	addi a3, a0, %pcrel_lo(pcrel507)
pcrel508:
	auipc a0, %pcrel_hi(v)
	addi a4, a0, %pcrel_lo(pcrel508)
	mv a0, zero
	j label313
label252:
	mv s7, zero
label104:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bgeu a1, a2, label102
	mv s6, a0
	j label104
label107:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label457
	mv a2, s6
label457:
	beq a1, zero, label283
	mv s5, a0
	mv s6, a2
	j label107
label283:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label253
	j label252
label224:
	mv s7, zero
	j label94
label110:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label459
	mv a2, s6
label459:
	beq a1, zero, label292
	mv s5, a0
	mv s6, a2
	j label110
label292:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label225
	j label224
label94:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label97
	mv s6, a0
	j label94
label313:
	mv t0, zero
	mv t1, zero
	j label124
label97:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label453
	j label473
label472:
	mv a0, s7
	j label451
label89:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label451
	j label472
label124:
	mv a0, t0
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
label178:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label178)
pcrel509:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel509)
pcrel510:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel510)
	j label81
