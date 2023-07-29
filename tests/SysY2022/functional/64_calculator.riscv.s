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
pcrel780:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel780)
pcrel781:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel781)
pcrel782:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel782)
pcrel783:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel783)
	bne a1, zero, label130
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label363
	j label81
label130:
	mv s4, zero
.p2align 2
label2:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	xori a3, a0, 10
	addiw s4, s4, 1
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label2
	mv a0, s4
	mv a3, zero
	li a4, 1
	mv a1, zero
	bgt s4, zero, label11
	j label79
label363:
	li a0, 1
	mv a1, zero
.p2align 2
label82:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	xori t2, a3, 42
	xori a4, a3, 45
	xori a5, a3, 43
	sltiu t0, a4, 1
	sltiu t1, a5, 1
	xori a4, a3, 47
	sltiu a5, t2, 1
	or a2, t1, t0
	sltiu t2, a4, 1
	or t3, a5, t2
	xori t2, a3, 37
	or a2, a2, t3
	sltiu a4, t2, 1
	xori t3, a3, 94
	sltiu t2, t3, 1
	or a4, a4, t2
	or a2, a2, a4
	bne a2, zero, label90
	li a2, 32
	bne a3, a2, label104
	j label88
.p2align 2
label90:
	sh2add t2, a1, s1
	subw t1, zero, t1
	lw a4, 0(t2)
	lw a2, -4(t2)
	addw t3, a4, a2
	and t2, t3, t1
	subw t3, a2, a4
	mv t1, t3
	bne t0, zero, label643
	mv t1, t2
.p2align 2
label643:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label645
	mv t0, t1
.p2align 2
label645:
	li t1, 47
	beq a3, t1, label102
	mv a5, t0
	li t0, 37
	beq a3, t0, label93
	li t0, 94
	beq a3, t0, label96
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
.p2align 2
label102:
	divw a5, a2, a4
	li t0, 37
	beq a3, t0, label93
	li t0, 94
	beq a3, t0, label96
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
label81:
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
label107:
	addw t0, a0, a2
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	lw a5, 0(t1)
	slliw t1, a4, 1
	addi t0, t1, -48
	addw t1, a3, a2
	addw a4, a5, t0
	addiw a2, a2, 1
	sh2add t0, t1, s0
	sh2add a5, a1, s1
	sw a4, 0(a5)
	lw a5, 0(t0)
	li t0, 32
	bne a5, t0, label107
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
.p2align 2
label143:
	bgt a3, zero, label110
	j label79
.p2align 2
label11:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bltu a5, t0, label77
	li a5, 40
	beq a2, a5, label13
	li a5, 94
	beq a2, a5, label16
	mv t0, a3
	li a5, 41
	beq a2, a5, label19
	mv a3, a4
	li a4, 43
	beq a2, a4, label27
	mv a4, t0
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, t0
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	j label143
.p2align 2
label77:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label19:
	sh2add a3, t0, s2
	li t1, 40
	addiw t0, t0, -1
	lw a5, 0(a3)
	bne a5, t1, label178
	mv a3, a4
	li a4, 43
	beq a2, a4, label27
	mv a4, t0
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, t0
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label27:
	sh2add a5, t0, s2
	lw a4, 0(a5)
	xori t3, a4, 47
	xori t2, a4, 45
	xori t1, a4, 43
	sltiu a5, t1, 1
	sltiu t1, t2, 1
	xori t2, a4, 42
	or a5, a5, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	xori t3, a4, 94
	or t1, t1, t2
	xori t2, a4, 37
	or a5, a5, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t1, t1, t2
	or a5, a5, t1
	bne a5, zero, label30
	addiw a4, t0, 1
	li t0, 43
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, a4
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label30:
	sh2add a5, a3, s0
	li t1, 32
	addiw t0, t0, -1
	addiw a3, a3, 2
	sw t1, 0(a5)
	sw a4, 4(a5)
	beq t0, zero, label31
	j label27
.p2align 2
label178:
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
	bne a5, t1, label178
	mv a3, a4
	li a4, 43
	beq a2, a4, label27
	mv a4, t0
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, t0
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
label104:
	addiw a1, a1, 1
	addiw a4, a3, -48
	li t0, 32
	sh2add a2, a1, s1
	addiw a3, a0, 1
	sw a4, 0(a2)
	sh2add a5, a3, s0
	lw a2, 0(a5)
	bne a2, t0, label442
	li a2, 1
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
label442:
	li a2, 1
	j label107
.p2align 2
label96:
	bne a4, zero, label416
	li a2, 1
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
.p2align 2
label416:
	li a3, 1
.p2align 2
label97:
	mulw a3, a2, a3
	addiw a4, a4, -1
	bne a4, zero, label97
	mv a2, a3
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
.p2align 2
label93:
	remw a5, a2, a4
	li t0, 94
	beq a3, t0, label96
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
label79:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label363
	j label81
label110:
	addiw a0, a3, -4
	bgt a0, zero, label111
label114:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label114
	j label79
.p2align 2
label13:
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	beq a2, a5, label16
	mv t0, a3
	li a5, 41
	beq a2, a5, label19
	mv a3, a4
	li a4, 43
	beq a2, a4, label27
	mv a4, t0
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, t0
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label293:
	mv a2, a4
.p2align 2
label63:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t1, a4, 47
	xori t2, a4, 94
	xori t0, a4, 42
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	xori t1, a4, 37
	or a5, a5, t0
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	or t0, t0, t1
	or a5, a5, t0
	bne a5, zero, label69
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
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label69:
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label66
	j label63
.p2align 2
label47:
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
	bne t0, zero, label50
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label50:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label51
	j label47
.p2align 2
label16:
	addiw t0, a3, 1
	li a5, 94
	sh2add a3, t0, s2
	sw a5, 0(a3)
	li a5, 41
	beq a2, a5, label19
	mv a3, a4
	li a4, 43
	beq a2, a4, label27
	mv a4, t0
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, t0
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label51:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label289:
	mv a4, a5
.p2align 2
label70:
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
	bne t0, zero, label76
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label73:
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label76:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label73
	j label70
.p2align 2
label37:
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
	bne t0, zero, label40
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label47
	mv a5, a4
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label40:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label41
	j label37
.p2align 2
label31:
	addiw a4, t0, 1
	li t0, 43
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label37
	li a5, 42
	beq a2, a5, label47
	mv a5, a4
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label41:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label47
	mv a5, a4
	li t0, 47
	beq a2, t0, label289
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label293
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
.p2align 2
label66:
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
	bgt a0, a1, label11
	bgt a3, zero, label110
	j label79
label111:
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
	bgt a3, a0, label111
	j label114
.p2align 2
label88:
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label82
	j label81
