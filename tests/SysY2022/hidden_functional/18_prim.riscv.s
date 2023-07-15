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
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label71
label70:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	beq a1, zero, label71
	j label70
label71:
	addiw a1, a0, -48
	li a0, 10
	bgeu a1, a0, label74
	j label73
label74:
	jal getch
	li a1, 57
	mv s0, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label167
	mv s1, zero
	j label75
label167:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label181
label474:
	mv s2, zero
	j label134
label75:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label449
	mv a1, s1
label449:
	beq a2, zero, label176
	mv s0, a0
	mv s1, a1
	j label75
label176:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label181
	j label474
label181:
	mv s2, zero
label81:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label451
	mv s3, s2
	j label451
label134:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s2, s1, a3
	bgeu a1, a2, label81
	mv s1, a0
	j label134
label73:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label74
	j label73
label451:
	ble s3, zero, label119
pcrel506:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(pcrel506)
pcrel507:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel507)
pcrel508:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel508)
label84:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label201
	mv s6, zero
	j label116
label201:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label206
label205:
	mv s7, zero
	j label89
label206:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label453
label475:
	mv a0, s7
	j label453
label89:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s7, s6, a3
	bgeu a1, a2, label92
	mv s6, a0
	j label89
label457:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label119
	j label84
label116:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label463
	mv a2, s6
label463:
	beq a1, zero, label310
	mv s5, a0
	mv s6, a2
	j label116
label310:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label206
	j label205
label119:
	auipc a0, %pcrel_hi(fa)
	addi a5, a0, %pcrel_lo(label119)
pcrel509:
	auipc a0, %pcrel_hi(c)
	addi a2, a0, %pcrel_lo(pcrel509)
pcrel510:
	auipc a0, %pcrel_hi(u)
	addi a3, a0, %pcrel_lo(pcrel510)
pcrel511:
	auipc a0, %pcrel_hi(v)
	addi a4, a0, %pcrel_lo(pcrel511)
	mv a0, zero
	j label322
label92:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label453
	j label475
label453:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label229
	mv s6, zero
	j label113
label229:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label234
label233:
	mv s7, zero
	j label97
label234:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label455
	j label476
label455:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label257
	mv s6, zero
	j label110
label257:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label262
	j label261
label262:
	mv s7, zero
label105:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label457
	mv a0, s7
	j label457
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
	bgeu a0, a1, label234
	j label233
label261:
	mv s7, zero
	j label107
label110:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
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
	bgeu a0, a1, label262
	j label261
label107:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s7, s6, a3
	bgeu a1, a2, label105
	mv s6, a0
	j label107
label97:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bgeu a1, a3, label100
	mv s6, a0
	j label97
label322:
	mv t0, zero
	mv t1, zero
	j label127
label476:
	mv a0, s7
	j label455
label100:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label455
	j label476
label127:
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
