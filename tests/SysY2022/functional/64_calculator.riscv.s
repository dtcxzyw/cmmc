.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
get2:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s4, 40(sp)
	jal getch
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
pcrel710:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel710)
pcrel711:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel711)
pcrel712:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel712)
pcrel713:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel713)
	beq a1, zero, label127
	mv s4, zero
.p2align 2
label2:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	addiw s4, s4, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label2
	mv a0, s4
	mv a1, zero
	li a4, 1
	mv a3, zero
label7:
	bgt a0, a1, label11
	j label78
label653:
	mv a3, a5
	li a5, 37
	beq a2, a5, label243
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	j label7
.p2align 2
label11:
	sh2add t0, a1, s3
	addiw a1, a1, 1
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bltu a5, t0, label77
	j label12
label209:
	mv a4, a3
	li a3, 47
	bne a2, a3, label653
.p2align 2
label239:
	mv a3, a4
	mv a4, a5
.p2align 2
label58:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 94
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t1, t1, t2
	or t0, t0, t1
	beq t0, zero, label283
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label58
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label243
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
.p2align 2
label77:
	sh2add t0, a4, s0
	addiw a4, a4, 1
	sw a2, 0(t0)
	bgt a0, a1, label11
label78:
	bgt a3, zero, label108
label79:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label360
	j label107
label108:
	addiw a1, a3, -4
	ble a1, zero, label112
label109:
	sh2add a1, a3, s2
	li a2, 32
	sh2add a0, a4, s0
	addiw a3, a3, -4
	lw a5, 0(a1)
	addiw a4, a4, 8
	sw a2, 0(a0)
	sw a5, 4(a0)
	lw a5, -4(a1)
	sw a2, 8(a0)
	sw a5, 12(a0)
	lw a5, -8(a1)
	sw a2, 16(a0)
	sw a5, 20(a0)
	lw a1, -12(a1)
	sw a2, 24(a0)
	sw a1, 28(a0)
	li a0, 4
	bgt a3, a0, label109
label112:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label112
	j label79
.p2align 2
label12:
	li a5, 40
	beq a2, a5, label13
	li a5, 94
	bne a2, a5, label649
.p2align 2
label16:
	addiw a3, a3, 1
	li t0, 94
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li t0, 41
	bne a2, t0, label664
.p2align 2
label72:
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label664
.p2align 2
label73:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	bne a5, t0, label73
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
	mv a3, a5
	li a5, 45
	bne a2, a5, label651
.p2align 2
label25:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t3, t1, 1
	sltiu t0, t2, 1
	xori t2, a5, 42
	or t0, t0, t3
	sltiu t1, t2, 1
	xori t3, a5, 47
	sltiu t2, t3, 1
	xori t3, a5, 37
	or t1, t1, t2
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t3, 1
	sltiu t3, t2, 1
	or t1, t1, t3
	or t0, t0, t1
	bne t0, zero, label28
.p2align 2
label193:
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
	j label32
.p2align 2
label28:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label193
	j label25
.p2align 2
label32:
	li t0, 42
	bne a2, t0, label209
.p2align 2
label210:
	mv a4, a5
.p2align 2
label35:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 94
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t1, t1, t2
	or t0, t0, t1
	beq t0, zero, label222
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label222
	j label35
label664:
	mv a5, a4
	mv a4, a3
	li t0, 43
	bne a2, t0, label172
.p2align 2
label173:
	mv a3, a5
.p2align 2
label65:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 47
	xori t2, a5, 45
	xori t1, a5, 43
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 42
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	xori t3, a5, 94
	or t1, t1, t2
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t1, t1, t2
	or t0, t0, t1
	beq t0, zero, label68
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label68
	j label65
.p2align 2
label243:
	mv a2, a4
.p2align 2
label51:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t2, a4, 37
	xori t1, a4, 47
	xori t0, a4, 42
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	xori t1, a4, 94
	or a5, a5, t0
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	or t0, t0, t2
	or a5, a5, t0
	bne a5, zero, label57
.p2align 2
label54:
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
.p2align 2
label57:
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label54
	j label51
.p2align 2
label222:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li a3, 47
	beq a2, a3, label239
	mv a3, a5
	li a5, 37
	beq a2, a5, label243
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
.p2align 2
label13:
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	beq a2, a5, label16
	li t0, 41
	beq a2, t0, label72
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
label172:
	mv a3, a5
	li a5, 45
	beq a2, a5, label25
label651:
	mv a5, a4
	li t0, 42
	beq a2, t0, label210
label652:
	mv a4, a3
	li a3, 47
	beq a2, a3, label239
	j label653
.p2align 2
label68:
	addiw a4, a4, 1
	li t0, 43
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label25
	mv a5, a4
	li t0, 42
	beq a2, t0, label210
	j label652
label45:
	li a5, 37
	beq a2, a5, label243
	j label242
label283:
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	j label45
label242:
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
label649:
	li t0, 41
	beq a2, t0, label72
	j label664
label360:
	li a2, 1
	mv a0, zero
.p2align 2
label81:
	sh2add a1, a2, s0
	lw a3, 0(a1)
	xori t2, a3, 47
	xori t1, a3, 42
	xori t4, a3, 94
	xori a4, a3, 45
	xori a5, a3, 43
	sltiu t0, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t1, 1
	or a1, t0, a5
	sltiu t1, t2, 1
	xori t2, a3, 37
	or t3, a4, t1
	sltiu t1, t2, 1
	or a1, a1, t3
	sltiu t2, t4, 1
	or t3, t1, t2
	or t1, a1, t3
	addiw a1, a2, 1
	beq t1, zero, label100
	sh2add t2, a0, s1
	lw t1, 0(t2)
	lw a2, -4(t2)
	addw t3, t1, a2
	mv t2, t3
	bne t0, zero, label638
	j label637
.p2align 2
label391:
	mv a4, a5
	li a5, 37
	beq a3, a5, label87
	li a5, 94
	bne a3, a5, label661
.p2align 2
label90:
	beq t1, zero, label402
	mv a3, t1
	li a4, 1
.p2align 2
label91:
	mulw a4, a2, a4
	addiw a3, a3, -1
	bne a3, zero, label91
	addiw a0, a0, -1
	sh2add a2, a0, s1
	sw a4, 0(a2)
	sh2add a5, a1, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label107
.p2align 2
label420:
	mv a2, a1
	j label81
.p2align 2
label637:
	mv t2, zero
.p2align 2
label638:
	subw t3, a2, t1
	mv t0, t3
	bne a5, zero, label640
	mv t0, t2
.p2align 2
label640:
	mulw t2, t1, a2
	mv a5, t2
	bne a4, zero, label642
	mv a5, t0
.p2align 2
label642:
	li t0, 47
	beq a3, t0, label96
	j label391
.p2align 2
label87:
	remw a4, a2, t1
	li a5, 94
	beq a3, a5, label90
	j label398
.p2align 2
label96:
	divw a4, a2, t1
	li a5, 37
	beq a3, a5, label87
	li a5, 94
	beq a3, a5, label90
	addiw a0, a0, -1
	sh2add a2, a0, s1
	sw a4, 0(a2)
	sh2add a5, a1, s0
	li a3, 64
	lw a2, 0(a5)
	bne a2, a3, label420
	j label107
label100:
	li a4, 32
	beq a3, a4, label97
	addiw a0, a0, 1
	addiw a4, a3, -48
	li t0, 32
	sh2add a5, a0, s1
	sw a4, 0(a5)
	sh2add a5, a1, s0
	lw a3, 0(a5)
	beq a3, t0, label434
	li a3, 1
.p2align 2
label104:
	addw t0, a2, a3
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	slliw t0, a4, 1
	lw a5, 0(t1)
	addi t1, t0, -48
	addw t0, a1, a3
	addw a4, a5, t1
	addiw a3, a3, 1
	sh2add t1, t0, s0
	sh2add a5, a0, s1
	li t0, 32
	sw a4, 0(a5)
	lw a5, 0(t1)
	bne a5, t0, label104
	addw a1, a2, a3
	j label97
label402:
	li a4, 1
	addiw a0, a0, -1
	sh2add a2, a0, s1
	sw a4, 0(a2)
label97:
	sh2add a5, a1, s0
	li a3, 64
	lw a2, 0(a5)
	bne a2, a3, label420
label107:
	lw a0, 4(s1)
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label398:
	addiw a0, a0, -1
	sh2add a2, a0, s1
	sw a4, 0(a2)
	sh2add a5, a1, s0
	li a3, 64
	lw a2, 0(a5)
	bne a2, a3, label420
	j label107
label661:
	addiw a0, a0, -1
	sh2add a2, a0, s1
	sw a4, 0(a2)
	sh2add a5, a1, s0
	li a3, 64
	lw a2, 0(a5)
	bne a2, a3, label420
	j label107
label434:
	li a3, 1
	addw a1, a2, a3
	j label97
label127:
	mv a0, zero
	mv a1, zero
	li a4, 1
	mv a3, zero
	j label7
