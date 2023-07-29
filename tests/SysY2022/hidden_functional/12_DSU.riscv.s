.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
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
	bne s0, s2, label2
	mv a0, s0
	j label12
label2:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label8:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label155
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label160
.p2align 2
label480:
	mv s2, zero
	j label81
label155:
	mv s1, a0
	mv s0, zero
	j label147
label160:
	mv s1, a0
	mv s2, zero
.p2align 2
label78:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bgeu a1, a2, label81
	mv s1, a0
	j label78
label81:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s2
	or a1, a1, a2
	mv s1, a3
	bne s0, zero, label450
	mv s1, s2
label450:
	bne a1, zero, label179
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label193
	mv s3, zero
	mv a1, zero
	mv a0, zero
label505:
	mv a0, s3
	j label454
label179:
	mv s2, a0
	mv s0, zero
.p2align 2
label83:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s2, a3, label452
	mv a1, s0
.p2align 2
label452:
	bne a2, zero, label188
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label193
	mv s3, zero
	mv a1, zero
	mv a0, zero
	bne s0, zero, label454
	j label505
label188:
	mv s2, a0
	mv s0, a1
	j label83
label193:
	mv s2, a0
	mv s3, zero
.p2align 2
label89:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s3, s2, a3
	bltu a1, a2, label202
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label454
	j label505
label202:
	mv s2, a0
	j label89
label454:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label454)
	bgt s1, zero, label211
	mv s1, a0
	bne a0, zero, label96
	j label144
.p2align 2
label211:
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label145
	mv s1, a0
	bne a0, zero, label96
label144:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label145:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label145
	mv s1, a0
	bne a0, zero, label96
	j label144
.p2align 2
label147:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label472
	mv a1, s0
.p2align 2
label472:
	bne a2, zero, label384
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label160
	j label480
label384:
	mv s1, a0
	mv s0, a1
	j label147
.p2align 2
label96:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label96
	li a1, 81
	bne a0, a1, label121
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label233
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label238
	j label488
.p2align 2
label233:
	mv s4, a0
	mv s2, zero
	j label118
.p2align 2
label238:
	mv s2, a0
	mv s4, zero
.p2align 2
label102:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s4, s2, a2
	bgeu a1, a3, label105
	mv s2, a0
	j label102
.p2align 2
label105:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label456
	mv s2, s4
.p2align 2
label456:
	bne a1, zero, label257
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label262
	j label489
.p2align 2
label257:
	mv s4, a0
	mv s3, zero
	j label115
.p2align 2
label262:
	mv s4, a0
	mv s5, zero
.p2align 2
label110:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	li a3, 10
	addw a2, s4, a4
	bgeu a1, a3, label113
	mv s4, a0
	mv s5, a2
	j label110
.p2align 2
label113:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label458
	mv a0, a2
.p2align 2
label458:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label96
	j label144
.p2align 2
label115:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label460
	mv a2, s3
.p2align 2
label460:
	bne a1, zero, label288
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label262
	j label489
.p2align 2
label288:
	mv s4, a0
	mv s3, a2
	j label115
.p2align 2
label118:
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label462
	mv s3, s2
.p2align 2
label462:
	bne a1, zero, label297
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label238
	j label488
.p2align 2
label297:
	mv s4, a0
	mv s2, s3
	j label118
.p2align 2
label489:
	mv a2, zero
	j label113
.p2align 2
label488:
	mv s4, zero
	j label105
.p2align 2
label121:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label304
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label318
	mv s4, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label508:
	mv a0, s4
	j label466
.p2align 2
label304:
	mv s3, a0
	mv s2, zero
.p2align 2
label122:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label464
	mv a2, s2
.p2align 2
label464:
	bne a1, zero, label313
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label318
	mv s4, zero
	mv a1, zero
	mv a0, zero
	bne s2, zero, label466
	j label508
.p2align 2
label313:
	mv s3, a0
	mv s2, a2
	j label122
.p2align 2
label318:
	mv s3, a0
	mv s4, zero
.p2align 2
label128:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s3, a3
	bltu a1, a2, label327
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label466
	j label508
.p2align 2
label327:
	mv s3, a0
	j label128
.p2align 2
label466:
	jal find
	mv s2, a0
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label338
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label343
	mv s5, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label510:
	mv a0, s5
	j label468
.p2align 2
label338:
	mv s4, a0
	mv s3, zero
	j label141
.p2align 2
label343:
	mv s4, a0
	mv s5, zero
.p2align 2
label136:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s5, s4, a3
	bltu a1, a2, label352
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label468
	j label510
.p2align 2
label352:
	mv s4, a0
	j label136
.p2align 2
label468:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label96
	j label144
.p2align 2
label141:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s4, a3, label470
	mv a2, s3
.p2align 2
label470:
	bne a1, zero, label368
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label343
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label468
	j label510
.p2align 2
label368:
	mv s4, a0
	mv s3, a2
	j label141
