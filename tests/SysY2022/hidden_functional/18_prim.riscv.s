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
	beq a0, zero, label159
	mv s1, zero
	j label74
label159:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label173
label464:
	mv s2, zero
	j label133
label74:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label440
	mv a1, s1
label440:
	beq a2, zero, label168
	mv s0, a0
	mv s1, a1
	j label74
label168:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label173
	j label464
label173:
	mv s2, zero
label80:
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label442
	mv s3, s2
label442:
	ble s3, zero, label118
pcrel497:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(pcrel497)
pcrel498:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel498)
pcrel499:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel499)
label83:
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label193
	mv s6, zero
	j label115
label193:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label198
label197:
	mv s7, zero
	j label112
label198:
	mv s7, zero
label88:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label444
	j label443
label445:
	mv a0, s7
label446:
	sh2add a1, s4, s1
	sw a0, 0(a1)
	jal getch
	li a2, 57
	mv s5, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label227
	mv s6, zero
	j label95
label227:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label241
label465:
	mv s7, zero
	j label103
label95:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s5, a3, label448
	mv a2, s6
label448:
	beq a1, zero, label236
	mv s5, a0
	mv s6, a2
	j label95
label236:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label241
	j label465
label241:
	mv s7, zero
label101:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label450
	mv a0, s7
label450:
	sh2add a1, s4, s2
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label118
	j label83
label103:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bgeu a1, a3, label101
	mv s6, a0
	j label103
label115:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s5, a3, label454
	mv a2, s6
label454:
	beq a1, zero, label302
	mv s5, a0
	mv s6, a2
	j label115
label302:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label198
	j label197
label118:
	auipc a0, %pcrel_hi(fa)
	addi a5, a0, %pcrel_lo(label118)
pcrel500:
	auipc a0, %pcrel_hi(c)
	addi a2, a0, %pcrel_lo(pcrel500)
pcrel501:
	auipc a0, %pcrel_hi(u)
	addi a3, a0, %pcrel_lo(pcrel501)
pcrel502:
	auipc a0, %pcrel_hi(v)
	addi a4, a0, %pcrel_lo(pcrel502)
	mv a0, zero
	mv t0, zero
	mv t1, zero
	j label126
label112:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bgeu a1, a3, label88
	mv s6, a0
	j label112
label133:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s2, s1, a4
	bgeu a1, a2, label80
	mv s1, a0
	j label133
label443:
	mv a0, s7
label444:
	sh2add a1, s4, s0
	sw a0, 0(a1)
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label210
	mv s6, zero
	j label109
label210:
	mv s6, s5
	mv s5, zero
	addiw a0, s6, -48
	li a1, 10
	bgeu a0, a1, label215
label214:
	mv s7, zero
	j label106
label215:
	mv s7, zero
label93:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label446
	j label445
label106:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bgeu a1, a3, label93
	mv s6, a0
	j label106
label109:
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
	beq a1, zero, label282
	mv s5, a0
	mv s6, a2
	j label109
label282:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label215
	j label214
label126:
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
