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
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s8, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s7, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s4, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s9, 10
	li s7, 40
	li s3, 94
	xori a2, a0, 13
	li s2, 37
	li s5, 64
	xori a3, a0, 10
	li s4, 47
	li s10, 41
pcrel722:
	auipc a4, %pcrel_hi(chas)
	li s1, 32
	sltu a1, zero, a2
	addi s6, a4, %pcrel_lo(pcrel722)
	sltu a2, zero, a3
pcrel723:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s8, a3, %pcrel_lo(pcrel723)
pcrel724:
	auipc a2, %pcrel_hi(ints)
	addi t2, a2, %pcrel_lo(pcrel724)
pcrel725:
	auipc a2, %pcrel_hi(get2)
	sd t2, 104(sp)
	addi s0, a2, %pcrel_lo(pcrel725)
	beq a1, zero, label127
	mv s11, zero
.p2align 2
label2:
	sh2add a1, s11, s8
	sw a0, 0(a1)
	jal getch
	addiw s11, s11, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label2
	mv a0, s11
	li a4, 1
	mv a3, zero
	mv a1, zero
label7:
	bgt a0, a1, label11
	j label78
.p2align 2
label189:
	addiw a4, a4, 1
	li t0, 43
	sh2add a5, a4, s6
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label32
	li a5, 42
	beq a2, a5, label42
	mv a5, a4
	beq a2, s4, label268
.p2align 2
label682:
	mv a4, a3
	mv a3, a5
	beq a2, s2, label297
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	j label7
.p2align 2
label11:
	sh2add t0, a1, s8
	addiw a1, a1, 1
	lw a2, 0(t0)
	addiw a5, a2, -48
	bltu a5, s9, label77
	j label12
.p2align 2
label296:
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
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
	sw s5, 0(a1)
	lw a0, 4(s0)
	beq a0, s5, label81
	li a2, 1
	mv a0, zero
	j label82
label108:
	addiw a0, a3, -4
	bgt a0, zero, label112
label109:
	sh2add a2, a3, s6
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	sw s1, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label109
	j label79
.p2align 2
label112:
	sh2add a1, a3, s6
	sh2add a0, a4, s0
	addiw a3, a3, -4
	lw a2, 0(a1)
	addiw a4, a4, 8
	sw s1, 0(a0)
	sw a2, 4(a0)
	lw a2, -4(a1)
	sw s1, 8(a0)
	sw a2, 12(a0)
	lw a2, -8(a1)
	sw s1, 16(a0)
	sw a2, 20(a0)
	lw a1, -12(a1)
	sw s1, 24(a0)
	sw a1, 28(a0)
	li a0, 4
	bgt a3, a0, label112
	j label109
label81:
	ld t2, 104(sp)
	lw a0, 4(t2)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label82:
	sh2add a1, a2, s0
	lw a3, 0(a1)
	xori t4, a3, 94
	xori t1, a3, 45
	xori t3, a3, 47
	xori a4, a3, 43
	sltiu a5, t1, 1
	sltiu t0, a4, 1
	xori t1, a3, 42
	or a1, t0, a5
	sltiu a4, t1, 1
	sltiu t1, t3, 1
	xori t3, a3, 37
	or t2, a4, t1
	sltiu t1, t3, 1
	or a1, a1, t2
	sltiu t2, t4, 1
	or t3, t1, t2
	or t1, a1, t3
	addiw a1, a2, 1
	bne t1, zero, label88
	j label101
.p2align 2
label387:
	mv a2, a1
	j label82
.p2align 2
label400:
	mv a4, a5
	beq a3, s2, label91
	bne a3, s3, label676
.p2align 2
label96:
	beq t1, zero, label414
	mv a3, t1
	li a4, 1
.p2align 2
label97:
	mulw a4, a2, a4
	addiw a3, a3, -1
	bne a3, zero, label97
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label387
	j label81
.p2align 2
label12:
	beq a2, s7, label13
	bne a2, s3, label666
.p2align 2
label16:
	addiw a3, a3, 1
	sh2add a5, a3, s6
	sw s3, 0(a5)
	bne a2, s10, label168
.p2align 2
label72:
	sh2add t0, a3, s6
	addiw a3, a3, -1
	lw a5, 0(t0)
	beq a5, s7, label168
.p2align 2
label73:
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s6
	addiw a3, a3, -1
	lw a5, 0(t0)
	bne a5, s7, label73
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
	mv a3, a5
	li a5, 45
	beq a2, a5, label32
	li a5, 42
	beq a2, a5, label42
	j label681
.p2align 2
label173:
	mv a3, a5
.p2align 2
label22:
	sh2add t0, a4, s6
	lw a5, 0(t0)
	xori t3, a5, 42
	xori t2, a5, 45
	xori t1, a5, 43
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 47
	or t0, t0, t1
	sltiu t1, t3, 1
	sltiu t3, t2, 1
	xori t2, a5, 37
	or t1, t1, t3
	xori t3, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t1, t1, t2
	or t0, t0, t1
	beq t0, zero, label189
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label189
	j label22
.p2align 2
label32:
	sh2add t0, a4, s6
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
	xori t3, a5, 37
	or t1, t1, t2
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t3, 1
	sltiu t3, t2, 1
	or t1, t1, t3
	or t0, t0, t1
	beq t0, zero, label222
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label222
	j label32
.p2align 2
label42:
	sh2add t0, a4, s6
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
	bne t0, zero, label45
.p2align 2
label251:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s6
	sw t0, 0(a4)
	j label49
.p2align 2
label45:
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label251
	j label42
.p2align 2
label49:
	bne a2, s4, label267
.p2align 2
label268:
	mv a4, a5
.p2align 2
label52:
	sh2add t0, a4, s6
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
	bne t0, zero, label55
.p2align 2
label280:
	addiw a5, a4, 1
	mv a4, a3
	sh2add t0, a5, s6
	mv a3, a5
	sw s4, 0(t0)
	j label59
.p2align 2
label55:
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label280
	j label52
.p2align 2
label59:
	bne a2, s2, label296
.p2align 2
label297:
	mv a2, a4
.p2align 2
label65:
	sh2add a5, a3, s6
	lw a4, 0(a5)
	xori t2, a4, 94
	xori t1, a4, 47
	xori t0, a4, 42
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	xori t1, a4, 37
	or a5, a5, t0
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	or t0, t0, t1
	or a5, a5, t0
	bne a5, zero, label71
.p2align 2
label68:
	addiw a3, a3, 1
	sh2add a4, a3, s6
	sw s2, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label11
	j label78
.p2align 2
label71:
	sh2add a5, a2, s0
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw s1, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label68
	j label65
.p2align 2
label88:
	ld t2, 104(sp)
	sh2add t3, a0, t2
	lw t1, 0(t3)
	lw a2, -4(t3)
	addw t3, t1, a2
	mv t2, t3
	bne t0, zero, label647
	mv t2, zero
.p2align 2
label647:
	subw t3, a2, t1
	mv t0, t3
	bne a5, zero, label649
	mv t0, t2
.p2align 2
label649:
	mulw t2, t1, a2
	mv a5, t2
	bne a4, zero, label651
	mv a5, t0
.p2align 2
label651:
	beq a3, s4, label100
	j label400
.p2align 2
label91:
	remw a4, a2, t1
	beq a3, s3, label96
	j label94
.p2align 2
label100:
	divw a4, a2, t1
	beq a3, s2, label91
	beq a3, s3, label96
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label387
	j label81
.p2align 2
label13:
	addiw a3, a3, 1
	sh2add a5, a3, s6
	sw s7, 0(a5)
	beq a2, s3, label16
	beq a2, s10, label72
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
	j label172
.p2align 2
label222:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s6
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label42
	mv a5, a4
	beq a2, s4, label268
	mv a4, a3
	mv a3, a5
	beq a2, s2, label297
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label11
	j label78
.p2align 2
label94:
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label387
	j label81
.p2align 2
label168:
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
.p2align 2
label172:
	mv a3, a5
	li a5, 45
	beq a2, a5, label32
	li a5, 42
	beq a2, a5, label42
.p2align 2
label681:
	mv a5, a4
	beq a2, s4, label268
	j label682
.p2align 2
label666:
	beq a2, s10, label72
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label173
	j label172
.p2align 2
label267:
	mv a4, a3
	mv a3, a5
	beq a2, s2, label297
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label11
	j label78
label85:
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label387
	j label81
label101:
	beq a3, s1, label85
	addiw a0, a0, 1
	addiw a4, a3, -48
	ld t2, 104(sp)
	sh2add a3, a1, s0
	sh2add a5, a0, t2
	sw a4, 0(a5)
	lw a5, 0(a3)
	beq a5, s1, label436
	li a3, 1
.p2align 2
label105:
	addw t1, a2, a3
	sh2add a4, a4, a4
	sh2add t0, t1, s0
	slliw t1, a4, 1
	lw a5, 0(t0)
	ld t2, 104(sp)
	addi t0, t1, -48
	addw t1, a1, a3
	addw a4, a5, t0
	addiw a3, a3, 1
	sh2add t0, t1, s0
	sh2add a5, a0, t2
	sw a4, 0(a5)
	lw a5, 0(t0)
	bne a5, s1, label105
	addw a1, a2, a3
	j label85
.p2align 2
label676:
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label387
	j label81
label436:
	li a3, 1
	addw a1, a2, a3
	j label85
label414:
	li a4, 1
	j label94
label127:
	mv a0, zero
	li a4, 1
	mv a3, zero
	mv a1, zero
	j label7
