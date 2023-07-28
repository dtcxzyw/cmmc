.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s0, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
pcrel796:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel796)
pcrel797:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel797)
pcrel798:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel798)
pcrel799:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel799)
	bne a1, zero, label130
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label395
	j label85
label130:
	mv s4, zero
	j label114
label395:
	li a0, 1
	mv a1, zero
.p2align 2
label86:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	xori t2, a3, 37
	xori a4, a3, 45
	xori a2, a3, 43
	sltiu t0, a4, 1
	sltiu t1, a2, 1
	xori a4, a3, 42
	or a2, t1, t0
	sltiu a5, a4, 1
	xori a4, a3, 47
	or a2, a2, a5
	sltiu t3, a4, 1
	sltiu a4, t2, 1
	or a2, a2, t3
	xori t2, a3, 94
	or a2, a2, a4
	sltiu a4, t2, 1
	or a2, a2, a4
	bne a2, zero, label99
	li a2, 32
	bne a3, a2, label93
	addiw a0, a0, 1
	j label89
.p2align 2
label99:
	sh2add t2, a1, s1
	subw t1, zero, t1
	lw a4, 0(t2)
	lw a2, -4(t2)
	addw t3, a4, a2
	and t2, t3, t1
	subw t3, a2, a4
	mv t1, t3
	bne t0, zero, label642
	mv t1, t2
.p2align 2
label642:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label644
	mv t0, t1
.p2align 2
label644:
	li t1, 47
	beq a3, t1, label100
	mv a5, t0
	li t0, 37
	beq a3, t0, label103
	li t0, 94
	beq a3, t0, label108
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
.p2align 2
label486:
	li a3, 1
.p2align 2
label109:
	mulw a3, a2, a3
	addiw a4, a4, -1
	bne a4, zero, label109
	mv a2, a3
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
label85:
	lw a0, 4(s1)
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label103:
	remw a5, a2, a4
	li t0, 94
	beq a3, t0, label108
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
.p2align 2
label108:
	bne a4, zero, label486
	li a2, 1
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
label93:
	addiw a1, a1, 1
	addiw a4, a3, -48
	li a5, 32
	sh2add a2, a1, s1
	addiw a3, a0, 1
	sw a4, 0(a2)
	sh2add t0, a3, s0
	lw a2, 0(t0)
	bne a2, a5, label437
	li a2, 1
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
label437:
	li a2, 1
.p2align 2
label94:
	addw t0, a0, a2
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	slliw t0, a4, 1
	lw a5, 0(t1)
	addi t1, t0, -48
	addw t0, a3, a2
	addw a4, a5, t1
	addiw a2, a2, 1
	sh2add t1, t0, s0
	sh2add a5, a1, s1
	li t0, 32
	sw a4, 0(a5)
	lw a5, 0(t1)
	bne a5, t0, label94
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
.p2align 2
label100:
	divw a5, a2, a4
	li t0, 37
	beq a3, t0, label103
	li t0, 94
	beq a3, t0, label108
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
.p2align 2
label114:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	addiw s4, s4, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label114
	mv a0, s4
	mv a3, zero
	li a4, 1
	mv a1, zero
	bgt s4, zero, label8
	j label83
.p2align 2
label133:
	bgt a3, zero, label76
	j label83
.p2align 2
label8:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bltu a5, t0, label74
	li a5, 40
	beq a2, a5, label10
	li a5, 94
	beq a2, a5, label73
	mv t0, a3
	li a5, 41
	beq a2, a5, label68
	mv a3, a4
	li a4, 43
	beq a2, a4, label18
	mv a4, t0
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, t0
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	j label133
.p2align 2
label74:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label18:
	sh2add a5, t0, s2
	lw a4, 0(a5)
	xori t2, a4, 45
	xori t1, a4, 43
	sltiu a5, t1, 1
	sltiu t1, t2, 1
	xori t2, a4, 42
	or a5, a5, t1
	sltiu t3, t2, 1
	xori t1, a4, 47
	or a5, a5, t3
	sltiu t2, t1, 1
	xori t3, a4, 37
	or a5, a5, t2
	sltiu t1, t3, 1
	xori t2, a4, 94
	or a5, a5, t1
	sltiu t1, t2, 1
	or a5, a5, t1
	bne a5, zero, label21
	addiw a4, t0, 1
	li t0, 43
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, a4
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label21:
	sh2add a5, a3, s0
	li t1, 32
	addiw t0, t0, -1
	addiw a3, a3, 2
	sw t1, 0(a5)
	sw a4, 4(a5)
	beq t0, zero, label22
	j label18
.p2align 2
label68:
	sh2add a3, t0, s2
	li t1, 40
	addiw t0, t0, -1
	lw a5, 0(a3)
	bne a5, t1, label322
	mv a3, a4
	li a4, 43
	beq a2, a4, label18
	mv a4, t0
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, t0
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label322:
	mv a3, t0
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	li t1, 40
	sw a5, 4(t0)
	sh2add t0, a3, s2
	lw a5, 0(t0)
	addiw t0, a3, -1
	bne a5, t1, label322
	mv a3, a4
	li a4, 43
	beq a2, a4, label18
	mv a4, t0
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, t0
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	ble a3, zero, label83
label76:
	addiw a0, a3, -4
	bgt a0, zero, label80
label77:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label77
label83:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label395
	j label85
.p2align 2
label10:
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	beq a2, a5, label73
	mv t0, a3
	li a5, 41
	beq a2, a5, label68
	mv a3, a4
	li a4, 43
	beq a2, a4, label18
	mv a4, t0
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, t0
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label73:
	addiw t0, a3, 1
	li a5, 94
	sh2add a3, t0, s2
	sw a5, 0(a3)
	li a5, 41
	beq a2, a5, label68
	mv a3, a4
	li a4, 43
	beq a2, a4, label18
	mv a4, t0
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, t0
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label231:
	mv a4, a5
.p2align 2
label41:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t3, t2, 1
	xori t1, a5, 94
	or t0, t0, t3
	sltiu t2, t1, 1
	or t0, t0, t2
	bne t0, zero, label44
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label44:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label45
	j label41
.p2align 2
label61:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	bne t0, zero, label67
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label64:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label67:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label64
	j label61
.p2align 2
label45:
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label260:
	mv a2, a4
.p2align 2
label54:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t0, a4, 47
	xori t1, a4, 42
	sltiu t2, t0, 1
	sltiu a5, t1, 1
	xori t1, a4, 37
	or a5, a5, t2
	sltiu t0, t1, 1
	xori t1, a4, 94
	or a5, a5, t0
	sltiu t0, t1, 1
	or a5, a5, t0
	bne a5, zero, label60
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label60:
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label57
	j label54
.p2align 2
label28:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t3, t1, 1
	sltiu t0, t2, 1
	xori t2, a5, 42
	or t0, t0, t3
	sltiu t1, t2, 1
	xori t2, a5, 47
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	bne t0, zero, label31
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label61
	mv a5, a4
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label31:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label28
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label61
	mv a5, a4
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label22:
	addiw a4, t0, 1
	li t0, 43
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label28
	li a5, 42
	beq a2, a5, label61
	mv a5, a4
	li t0, 47
	beq a2, t0, label231
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label260
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
.p2align 2
label57:
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label76
	j label83
label80:
	sh2add a1, a3, s2
	li a2, 32
	sh2add a0, a4, s0
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
	addiw a0, a3, -8
	addiw a3, a3, -4
	bgt a0, zero, label80
	j label77
.p2align 2
label89:
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label86
	j label85
