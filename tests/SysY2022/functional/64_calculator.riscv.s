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
	xori a2, a0, 13
	xori a3, a0, 10
	sltu a1, zero, a2
	sltu a2, zero, a3
pcrel739:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel739)
pcrel740:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel740)
pcrel741:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel741)
pcrel742:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel742)
	beq a1, zero, label127
	mv s4, zero
.p2align 2
label2:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	addiw s4, s4, 1
	xori a2, a0, 10
	xori a3, a0, 13
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label2
	mv a0, s4
	mv a1, zero
	li a4, 1
	mv a3, zero
label7:
	bgt a0, a1, label11
	j label78
.p2align 2
label172:
	mv a3, a5
	li a5, 45
	beq a2, a5, label25
.p2align 2
label671:
	mv a5, a4
	li t0, 42
	beq a2, t0, label210
	mv a4, a3
	li a3, 47
	beq a2, a3, label239
label696:
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
.p2align 2
label271:
	mv a4, a2
	addiw a3, a3, 1
	li a5, 37
	sh2add a2, a3, s2
	sw a5, 0(a2)
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
	addiw a1, a3, -8
	ble a1, zero, label112
.p2align 2
label109:
	sh2add a1, a3, s2
	li a2, 32
	sh2add a0, a4, s0
	addiw a3, a3, -8
	lw a5, 0(a1)
	addiw a4, a4, 16
	sw a2, 0(a0)
	sw a5, 4(a0)
	lw a5, -4(a1)
	sw a2, 8(a0)
	sw a5, 12(a0)
	lw a5, -8(a1)
	sw a2, 16(a0)
	sw a5, 20(a0)
	lw a5, -12(a1)
	sw a2, 24(a0)
	sw a5, 28(a0)
	lw a5, -16(a1)
	sw a2, 32(a0)
	sw a5, 36(a0)
	lw a5, -20(a1)
	sw a2, 40(a0)
	sw a5, 44(a0)
	lw a5, -24(a1)
	sw a2, 48(a0)
	sw a5, 52(a0)
	lw a1, -28(a1)
	sw a2, 56(a0)
	sw a1, 60(a0)
	li a0, 8
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
	beq a2, a5, label16
	li t0, 41
	beq a2, t0, label72
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
	mv a3, a5
	li a5, 45
	bne a2, a5, label671
.p2align 2
label25:
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
	beq t0, zero, label193
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label193
	j label25
.p2align 2
label168:
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
	xori t3, a5, 42
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	xori t2, a5, 47
	sltiu t3, t2, 1
	xori t2, a5, 94
	or t1, t1, t3
	xori t3, a5, 37
	or t0, t0, t1
	sltiu t1, t3, 1
	sltiu t3, t2, 1
	or t1, t1, t3
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
label222:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li a3, 47
	bne a2, a3, label238
.p2align 2
label239:
	mv a3, a4
	mv a4, a5
	j label58
.p2align 2
label243:
	mv a2, a4
.p2align 2
label51:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t0, a4, 47
	xori t1, a4, 42
	sltiu t2, t0, 1
	sltiu a5, t1, 1
	xori t1, a4, 37
	or a5, a5, t2
	sltiu t0, t1, 1
	xori t2, a4, 94
	sltiu t1, t2, 1
	or t0, t0, t1
	or a5, a5, t0
	beq a5, zero, label258
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label271
	j label51
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
label193:
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
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
	xori t4, a5, 37
	xori t1, a5, 47
	xori t2, a5, 42
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	sltiu t1, t4, 1
	or t0, t0, t2
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
	mv a3, a5
	li a5, 45
	beq a2, a5, label25
	j label671
.p2align 2
label16:
	addiw a3, a3, 1
	li t0, 94
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li t0, 41
	bne a2, t0, label168
.p2align 2
label72:
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label168
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
	beq a2, a5, label25
	mv a5, a4
	li t0, 42
	beq a2, t0, label210
	mv a4, a3
	li a3, 47
	beq a2, a3, label239
	j label696
label697:
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
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
	mv a4, a3
	li a3, 47
	beq a2, a3, label239
	mv a3, a5
	li a5, 37
	beq a2, a5, label243
	j label697
.p2align 2
label238:
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
label209:
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
label258:
	mv a4, a2
	addiw a3, a3, 1
	li a5, 37
	sh2add a2, a3, s2
	sw a5, 0(a2)
	sh2add a2, a4, s0
	li a5, 32
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label78
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
label360:
	li a2, 1
	mv a1, zero
.p2align 2
label81:
	sh2add a0, a2, s0
	lw a3, 0(a0)
	xori t2, a3, 47
	xori t1, a3, 45
	xori a4, a3, 43
	sltiu a5, t1, 1
	sltiu t0, a4, 1
	xori t1, a3, 42
	or a0, t0, a5
	sltiu a4, t1, 1
	sltiu t1, t2, 1
	xori t2, a3, 37
	or t3, a4, t1
	sltiu t1, t2, 1
	or a0, a0, t3
	xori t3, a3, 94
	sltiu t2, t3, 1
	or t4, t1, t2
	or t1, a0, t4
	addiw a0, a2, 1
	beq t1, zero, label100
	sh2add t2, a1, s1
	lw t1, 0(t2)
	lw a2, -4(t2)
	addw t3, t1, a2
	mv t2, t3
	bne t0, zero, label658
	mv t2, zero
.p2align 2
label658:
	subw t3, a2, t1
	mv t0, t3
	bne a5, zero, label660
	mv t0, t2
.p2align 2
label660:
	mulw t2, t1, a2
	mv a5, t2
	bne a4, zero, label662
	mv a5, t0
.p2align 2
label662:
	li a4, 47
	beq a3, a4, label96
	li t0, 37
	bne a3, t0, label394
.p2align 2
label87:
	remw a4, a2, t1
	li a5, 94
	bne a3, a5, label398
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
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	mv a2, a0
	sh2add a3, a0, s0
	li a4, 64
	lw a0, 0(a3)
	bne a0, a4, label81
	j label107
.p2align 2
label96:
	divw a5, a2, t1
	li t0, 37
	beq a3, t0, label87
	mv a4, a5
	li a5, 94
	beq a3, a5, label90
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	mv a2, a0
	sh2add a3, a0, s0
	li a4, 64
	lw a0, 0(a3)
	bne a0, a4, label81
	j label107
.p2align 2
label394:
	mv a4, a5
	li a5, 94
	beq a3, a5, label90
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	mv a2, a0
	sh2add a3, a0, s0
	li a4, 64
	lw a0, 0(a3)
	bne a0, a4, label81
	j label107
label100:
	li a4, 32
	beq a3, a4, label423
	addiw a1, a1, 1
	addiw a4, a3, -48
	sh2add t0, a0, s0
	sh2add a5, a1, s1
	sw a4, 0(a5)
	li a5, 32
	lw a3, 0(t0)
	beq a3, a5, label434
	li a3, 1
.p2align 2
label104:
	addw t1, a2, a3
	sh2add a4, a4, a4
	sh2add t0, t1, s0
	lw a5, 0(t0)
	slliw t0, a4, 1
	addi t1, t0, -48
	addw t0, a0, a3
	addw a4, a5, t1
	addiw a3, a3, 1
	sh2add t1, t0, s0
	sh2add a5, a1, s1
	li t0, 32
	sw a4, 0(a5)
	lw a5, 0(t1)
	bne a5, t0, label104
	addw a2, a2, a3
label97:
	sh2add a3, a2, s0
	li a4, 64
	lw a0, 0(a3)
	bne a0, a4, label81
	j label107
label423:
	mv a2, a0
	j label97
.p2align 2
label398:
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	mv a2, a0
	sh2add a3, a0, s0
	li a4, 64
	lw a0, 0(a3)
	bne a0, a4, label81
	j label107
label127:
	mv a0, zero
	mv a1, zero
	li a4, 1
	mv a3, zero
	j label7
label434:
	li a3, 1
	addw a2, a2, a3
	j label97
label402:
	li a4, 1
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	mv a2, a0
	j label97
