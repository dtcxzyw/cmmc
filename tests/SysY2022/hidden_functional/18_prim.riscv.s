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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label156
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
	mv a0, zero
	mv a1, zero
	mv s3, zero
label432:
	mv s3, a0
	j label389
label156:
	mv s1, a0
	mv s0, zero
	j label130
label161:
	mv s1, a0
	mv s2, zero
.p2align 2
label82:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s2, a2
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label170
	mv a0, s2
	subw a1, zero, s2
	mv s3, a1
	bne s0, zero, label389
	j label432
label170:
	mv s1, a0
	j label82
.p2align 2
label130:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label403
	mv a1, s0
.p2align 2
label403:
	bne a2, zero, label340
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label161
	mv a0, zero
	mv a1, zero
	mv s3, zero
	bne s0, zero, label389
	j label432
label340:
	mv s1, a0
	mv s0, a1
	j label130
label389:
	bgt s3, zero, label177
label87:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a5, a0, %pcrel_lo(label87)
pcrel444:
	auipc a0, %pcrel_hi(c)
	addi t1, a0, %pcrel_lo(pcrel444)
pcrel445:
	auipc a0, %pcrel_hi(u)
	addi a4, a0, %pcrel_lo(pcrel445)
pcrel446:
	auipc a0, %pcrel_hi(v)
	addi t0, a0, %pcrel_lo(pcrel446)
.p2align 2
label88:
	blt a3, zero, label92
label91:
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
label92:
	sh2add t2, a3, a4
	sh2add a1, a3, t0
	lw a0, 0(t2)
	lw t3, 0(a1)
	jal find
	mv t2, a0
	mv a0, t3
	jal find
	beq t2, a0, label88
	sh2add a0, a3, t1
	sh2add a1, a3, a4
	lw t2, 0(a0)
	lw a0, 0(a1)
	jal find
	addw a2, a2, t2
	sh2add a1, a3, t0
	sh2add a0, a0, a5
	addiw a3, a3, 1
	lw t3, 0(a1)
	sw t3, 0(a0)
	blt a3, zero, label92
	j label91
.p2align 2
label397:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label289
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label294
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label95
	j label87
.p2align 2
label289:
	mv s6, a0
	mv s5, zero
	j label124
.p2align 2
label294:
	mv s6, a0
	mv s7, zero
.p2align 2
label121:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s7, a2
	addi a3, a4, -48
	addw s7, s6, a3
	bltu a1, a2, label313
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label399
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label95
	j label87
.p2align 2
label313:
	mv s6, a0
	j label121
.p2align 2
label124:
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
	bne a1, zero, label322
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label294
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label399
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label95
	j label87
.p2align 2
label322:
	mv s6, a0
	mv s5, a2
	j label124
.p2align 2
label95:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label228
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label433:
	mv a1, a0
	j label393
.p2align 2
label228:
	mv s6, a0
	mv s5, zero
.p2align 2
label97:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label391
	mv a2, s5
.p2align 2
label391:
	bne a1, zero, label237
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label393
	j label433
.p2align 2
label237:
	mv s6, a0
	mv s5, a2
	j label97
.p2align 2
label242:
	mv s6, a0
	mv s7, zero
.p2align 2
label103:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s7, a2
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label251
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label393
	j label433
.p2align 2
label251:
	mv s6, a0
	j label103
.p2align 2
label393:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label263
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label277
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label435:
	mv a1, a0
	j label397
.p2align 2
label263:
	mv s6, a0
	mv s5, zero
.p2align 2
label108:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label395
	mv a2, s5
.p2align 2
label395:
	bne a1, zero, label272
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label277
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label397
	j label435
.p2align 2
label272:
	mv s6, a0
	mv s5, a2
	j label108
.p2align 2
label277:
	mv s6, a0
	mv s7, zero
	j label127
.p2align 2
label399:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label95
	j label87
.p2align 2
label127:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s7, a2
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label331
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label397
	j label435
.p2align 2
label331:
	mv s6, a0
	j label127
label177:
	auipc a0, %pcrel_hi(u)
	mv s4, zero
	addi s0, a0, %pcrel_lo(label177)
pcrel447:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel447)
pcrel448:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(pcrel448)
	j label95
