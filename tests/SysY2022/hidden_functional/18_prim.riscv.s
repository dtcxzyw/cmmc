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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label75
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label78
.p2align 2
label77:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label77
label78:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label156
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label170
	mv s2, zero
	mv a0, zero
	mv s3, zero
label440:
	mv s3, s2
	j label399
label156:
	mv s1, a0
	mv s0, zero
.p2align 2
label79:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label397
	mv a1, s0
.p2align 2
label397:
	bne a2, zero, label165
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label170
	mv s2, zero
	mv a0, zero
	mv s3, zero
	bne s0, zero, label399
	j label440
label165:
	mv s1, a0
	mv s0, a1
	j label79
label170:
	mv s1, a0
	mv s2, zero
	j label130
label399:
	bgt s3, zero, label87
	j label123
.p2align 2
label130:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s2, s1, a4
	bltu a1, a2, label340
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label399
	j label440
label340:
	mv s1, a0
	j label130
.p2align 2
label88:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label190
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label204
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label442:
	mv a1, a0
	j label403
.p2align 2
label190:
	mv s6, a0
	mv s5, zero
.p2align 2
label90:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label401
	mv a2, s5
.p2align 2
label401:
	bne a1, zero, label199
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label204
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label403
	j label442
.p2align 2
label199:
	mv s6, a0
	mv s5, a2
	j label90
.p2align 2
label204:
	mv s6, a0
	mv s7, zero
.p2align 2
label96:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label213
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label403
	j label442
.p2align 2
label213:
	mv s6, a0
	j label96
.p2align 2
label403:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label225
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label239
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label444:
	mv a1, a0
	j label407
.p2align 2
label225:
	mv s6, a0
	mv s5, zero
.p2align 2
label101:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label405
	mv a2, s5
.p2align 2
label405:
	bne a1, zero, label234
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label239
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label407
	j label444
.p2align 2
label234:
	mv s6, a0
	mv s5, a2
	j label101
.p2align 2
label239:
	mv s6, a0
	mv s7, zero
	j label120
.p2align 2
label407:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label251
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label256
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label88
	j label123
.p2align 2
label251:
	mv s6, a0
	mv s5, zero
	j label117
.p2align 2
label256:
	mv s6, a0
	mv s7, zero
	j label114
.p2align 2
label409:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label88
	j label123
.p2align 2
label114:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label275
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label409
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label88
	j label123
.p2align 2
label275:
	mv s6, a0
	j label114
.p2align 2
label117:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label411
	mv a2, s5
.p2align 2
label411:
	bne a1, zero, label284
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label256
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label409
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label88
	j label123
.p2align 2
label284:
	mv s6, a0
	mv s5, a2
	j label117
.p2align 2
label120:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label293
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label407
	j label444
.p2align 2
label293:
	mv s6, a0
	j label120
label123:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label123)
pcrel452:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel452)
pcrel453:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel453)
pcrel454:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel454)
.p2align 2
label124:
	bge a3, zero, label127
.p2align 2
label128:
	sh2add a1, a3, a4
	sh2add t3, a3, t0
	lw a0, 0(a1)
	lw t2, 0(t3)
	jal find
	mv t3, a0
	mv a0, t2
	jal find
	beq t3, a0, label124
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
	blt a3, zero, label128
label127:
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
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label87)
pcrel455:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel455)
pcrel456:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel456)
	j label88
