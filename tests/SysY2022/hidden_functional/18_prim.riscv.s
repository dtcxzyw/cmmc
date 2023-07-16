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
label68:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	beq a1, zero, label69
	j label68
label69:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label71
	j label70
label71:
	jal getch
	li a2, 57
	mv s0, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label157
	mv s1, zero
	j label72
label157:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label171
label462:
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
	beq s0, a3, label438
	mv a1, s1
label438:
	beq a2, zero, label166
	mv s0, a0
	mv s1, a1
	j label72
label166:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label171
	j label462
label171:
	mv s2, zero
label78:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label440
	mv s3, s2
label440:
	ble s3, zero, label116
pcrel493:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(pcrel493)
pcrel494:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel494)
pcrel495:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel495)
	j label81
label195:
	mv s7, zero
	j label86
label196:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label442
label463:
	mv a0, s7
	j label442
label86:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label89
	mv s6, a0
	j label86
label442:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label219
	mv s6, zero
	j label110
label219:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label224
label223:
	mv s7, zero
	j label94
label224:
	mv s7, zero
	subw a1, zero, zero
	mv a0, a1
	bne s5, zero, label444
label464:
	mv a0, s7
	j label444
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
label444:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label247
	mv s6, zero
	j label107
label247:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label252
label251:
	mv s7, zero
	j label104
label252:
	mv s7, zero
label102:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label446
	mv a0, s7
label446:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label116
	j label81
label104:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s7, s6, a3
	bgeu a1, a2, label102
	mv s6, a0
	j label104
label107:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label448
	mv a2, s6
label448:
	beq a1, zero, label282
	mv s5, a0
	mv s6, a2
	j label107
label282:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label252
	j label251
label110:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label450
	mv a2, s6
label450:
	beq a1, zero, label291
	mv s5, a0
	mv s6, a2
	j label110
label291:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label224
	j label223
label113:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label452
	mv a2, s6
label452:
	beq a1, zero, label300
	mv s5, a0
	mv s6, a2
	j label113
label300:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label196
	j label195
label116:
	auipc a0, %pcrel_hi(fa)
	addi a5, a0, %pcrel_lo(label116)
pcrel496:
	auipc a0, %pcrel_hi(c)
	addi a2, a0, %pcrel_lo(pcrel496)
pcrel497:
	auipc a0, %pcrel_hi(u)
	addi a3, a0, %pcrel_lo(pcrel497)
pcrel498:
	auipc a0, %pcrel_hi(v)
	addi a4, a0, %pcrel_lo(pcrel498)
	mv a0, zero
	mv t0, zero
	mv t1, zero
	j label124
label81:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label191
	mv s6, zero
	j label113
label191:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label196
	j label195
label97:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label444
	j label464
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
label89:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label442
	j label463
label70:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label71
	j label70
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
