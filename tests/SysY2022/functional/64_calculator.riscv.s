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
	li s4, 94
	li s2, 47
	li s5, 64
	li s7, 40
	xori a1, a0, 13
	li s9, 10
	li s3, 37
	li s10, 41
	li s1, 32
	xori a3, a0, 10
pcrel737:
	auipc a5, %pcrel_hi(get)
	sltu a2, zero, a1
	sltu a4, zero, a3
	addi s8, a5, %pcrel_lo(pcrel737)
pcrel738:
	auipc a3, %pcrel_hi(chas)
	and a1, a2, a4
	addi s6, a3, %pcrel_lo(pcrel738)
pcrel739:
	auipc a2, %pcrel_hi(ints)
pcrel740:
	auipc a3, %pcrel_hi(get2)
	addi t2, a2, %pcrel_lo(pcrel739)
	addi s0, a3, %pcrel_lo(pcrel740)
	sd t2, 104(sp)
	beq a1, zero, label127
	mv s11, zero
.p2align 2
label112:
	sh2add a1, s11, s8
	sw a0, 0(a1)
	jal getch
	addiw s11, s11, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	bne a2, zero, label112
	mv a0, s11
	mv a3, zero
	li a4, 1
	mv a1, zero
label4:
	bgt a0, a1, label8
	j label75
.p2align 2
label158:
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label183
	mv a3, a5
	li a5, 45
	beq a2, a5, label34
	li t0, 42
	beq a2, t0, label44
label695:
	mv a5, a4
	beq a2, s2, label278
label696:
	mv a4, a3
	mv a3, a5
	beq a2, s3, label282
label704:
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	j label4
.p2align 2
label8:
	sh2add t0, a1, s8
	addiw a1, a1, 1
	lw a2, 0(t0)
	addiw a5, a2, -48
	bltu a5, s9, label74
	j label9
.p2align 2
label676:
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label8
	j label75
.p2align 2
label74:
	sh2add a5, a4, s0
	addiw a4, a4, 1
	sw a2, 0(a5)
	bgt a0, a1, label8
label75:
	bgt a3, zero, label105
label76:
	sh2add a1, a4, s0
	sw s5, 0(a1)
	lw a0, 4(s0)
	beq a0, s5, label78
	li a2, 1
	mv a0, zero
	j label79
label105:
	addiw a0, a3, -4
	bgt a0, zero, label109
label106:
	sh2add a2, a3, s6
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	sw s1, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label106
	j label76
.p2align 2
label109:
	sh2add a1, a3, s6
	sh2add a0, a4, s0
	addiw a3, a3, -4
	lw a2, 0(a1)
	addiw a4, a4, 8
	sw s1, 0(a0)
	sw a2, 4(a0)
	lw a5, -4(a1)
	sw s1, 8(a0)
	sw a5, 12(a0)
	lw t0, -8(a1)
	sw s1, 16(a0)
	sw t0, 20(a0)
	lw a2, -12(a1)
	sw s1, 24(a0)
	sw a2, 28(a0)
	li a0, 4
	bgt a3, a0, label109
	j label106
.p2align 2
label79:
	sh2add a1, a2, s0
	lw a3, 0(a1)
	xori t3, a3, 47
	xori a4, a3, 45
	xori t1, a3, 43
	sltiu t2, t3, 1
	sltiu a5, a4, 1
	sltiu t0, t1, 1
	xori t3, a3, 37
	xori t1, a3, 42
	or a1, t0, a5
	sltiu a4, t1, 1
	or t4, a4, t2
	sltiu t2, t3, 1
	or t1, a1, t4
	xori a1, a3, 94
	sltiu t5, a1, 1
	addiw a1, a2, 1
	or t4, t2, t5
	or t3, t1, t4
	bne t3, zero, label85
	j label98
.p2align 2
label377:
	mv a2, a1
	j label79
.p2align 2
label90:
	beq t1, zero, label400
	mv a3, t1
	li a4, 1
.p2align 2
label91:
	mulw a4, a2, a4
	addiw a3, a3, -1
	bne a3, zero, label91
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label377
	j label78
.p2align 2
label96:
	remw a4, a2, t1
	beq a3, s4, label90
	j label679
.p2align 2
label97:
	divw a4, a2, t1
	beq a3, s3, label96
	beq a3, s4, label90
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label377
	j label78
.p2align 2
label9:
	bne a2, s7, label144
	addiw a3, a3, 1
	sh2add a5, a3, s6
	sw s7, 0(a5)
	beq a2, s4, label13
	beq a2, s10, label16
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label183
	mv a3, a5
	li a5, 45
	bne a2, a5, label694
.p2align 2
label34:
	sh2add t2, a4, s6
	lw a5, 0(t2)
	xori t3, a5, 42
	xori t2, a5, 45
	xori t0, a5, 43
	sltiu t4, t2, 1
	sltiu t1, t0, 1
	sltiu t2, t3, 1
	or t0, t1, t4
	xori t3, a5, 37
	xori t4, a5, 47
	sltiu t6, t4, 1
	or t5, t2, t6
	sltiu t2, t3, 1
	or t1, t0, t5
	xori t0, a5, 94
	sltiu t5, t0, 1
	or t4, t2, t5
	or t3, t1, t4
	bne t3, zero, label37
.p2align 2
label232:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s6
	sw t0, 0(a5)
	j label41
.p2align 2
label37:
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label232
	j label34
.p2align 2
label41:
	li t0, 42
	beq a2, t0, label44
	mv a5, a4
	beq a2, s2, label278
	mv a4, a3
	mv a3, a5
	beq a2, s3, label282
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label8
	j label75
.p2align 2
label144:
	bne a2, s4, label666
.p2align 2
label13:
	addiw a3, a3, 1
	sh2add a5, a3, s6
	sw s4, 0(a5)
	bne a2, s10, label158
.p2align 2
label16:
	sh2add t0, a3, s6
	addiw a3, a3, -1
	lw a5, 0(t0)
	bne a5, s7, label17
.p2align 2
label166:
	mv a5, a4
	mv a4, a3
	j label21
.p2align 2
label17:
	sh2add t0, a4, s0
	sh2add t1, a3, s6
	addiw a4, a4, 2
	sw s1, 0(t0)
	addiw a3, a3, -1
	sw a5, 4(t0)
	lw a5, 0(t1)
	bne a5, s7, label17
	j label166
.p2align 2
label21:
	li t0, 43
	bne a2, t0, label182
.p2align 2
label183:
	mv a3, a5
.p2align 2
label24:
	sh2add t0, a4, s6
	lw a5, 0(t0)
	xori t2, a5, 45
	xori t4, a5, 43
	sltiu t3, t2, 1
	sltiu t1, t4, 1
	xori t4, a5, 42
	or t0, t1, t3
	sltiu t2, t4, 1
	xori t3, a5, 47
	sltiu t5, t3, 1
	xori t3, a5, 37
	or t4, t2, t5
	xori t5, a5, 94
	sltiu t2, t3, 1
	or t1, t0, t4
	sltiu t4, t5, 1
	or t3, t2, t4
	or t0, t1, t3
	bne t0, zero, label30
.p2align 2
label27:
	addiw a4, a4, 1
	li t0, 43
	sh2add a5, a4, s6
	sw t0, 0(a5)
	li a5, 45
	beq a2, a5, label34
	j label670
.p2align 2
label30:
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label27
	j label24
.p2align 2
label182:
	mv a3, a5
	li a5, 45
	beq a2, a5, label34
	li t0, 42
	beq a2, t0, label44
	mv a5, a4
	bne a2, s2, label696
.p2align 2
label278:
	mv a4, a5
.p2align 2
label67:
	sh2add t0, a4, s6
	lw a5, 0(t0)
	xori t6, a5, 37
	xori t5, a5, 94
	xori t4, a5, 47
	xori t1, a5, 42
	sltiu t3, t4, 1
	sltiu t2, t1, 1
	sltiu t1, t6, 1
	or t0, t2, t3
	sltiu t3, t5, 1
	or t2, t1, t3
	or t4, t0, t2
	bne t4, zero, label73
.p2align 2
label70:
	addiw a5, a4, 1
	mv a4, a3
	sh2add t0, a5, s6
	mv a3, a5
	sw s2, 0(t0)
	beq a2, s3, label282
	j label676
.p2align 2
label73:
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label70
	j label67
.p2align 2
label261:
	addiw a5, a4, 1
	li t1, 42
	sh2add t0, a5, s6
	sw t1, 0(t0)
	beq a2, s2, label278
	mv a4, a3
	mv a3, a5
	bne a2, s3, label673
.p2align 2
label282:
	mv a2, a4
.p2align 2
label60:
	sh2add t0, a3, s6
	lw a4, 0(t0)
	xori t4, a4, 94
	xori t2, a4, 37
	xori t0, a4, 47
	xori a5, a4, 42
	sltiu t3, t0, 1
	sltiu t1, a5, 1
	sltiu t0, t2, 1
	or a5, t1, t3
	sltiu t3, t4, 1
	or t2, t0, t3
	or t1, a5, t2
	bne t1, zero, label66
.p2align 2
label63:
	addiw a3, a3, 1
	mv a4, a2
	sh2add a5, a3, s6
	sw s3, 0(a5)
	sh2add a2, a2, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label8
	j label75
.p2align 2
label66:
	sh2add a5, a2, s0
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw s1, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label63
	j label60
.p2align 2
label44:
	sh2add t0, a4, s6
	lw a5, 0(t0)
	xori t5, a5, 94
	xori t2, a5, 47
	xori t4, a5, 42
	sltiu t3, t2, 1
	sltiu t1, t4, 1
	xori t4, a5, 37
	or t0, t1, t3
	sltiu t2, t4, 1
	sltiu t3, t5, 1
	or t1, t2, t3
	or t4, t0, t1
	beq t4, zero, label261
	sh2add t0, a3, s0
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw s1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label261
	j label44
.p2align 2
label85:
	ld t2, 104(sp)
	sh2add t3, a0, t2
	lw t1, 0(t3)
	lw a2, -4(t3)
	addw t4, t1, a2
	mv t2, t4
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
	mulw t3, t1, a2
	mv a5, t3
	bne a4, zero, label651
	mv a5, t0
.p2align 2
label651:
	beq a3, s2, label97
	mv a4, a5
	beq a3, s3, label96
	beq a3, s4, label90
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a5, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label377
	j label78
.p2align 2
label666:
	beq a2, s10, label16
	mv a5, a4
	mv a4, a3
	li t0, 43
	beq a2, t0, label183
	mv a3, a5
	li a5, 45
	beq a2, a5, label34
label694:
	li t0, 42
	beq a2, t0, label44
	j label695
.p2align 2
label670:
	li t0, 42
	beq a2, t0, label44
	mv a5, a4
	beq a2, s2, label278
	mv a4, a3
	mv a3, a5
	beq a2, s3, label282
	j label704
label98:
	beq a3, s1, label82
	addiw a0, a0, 1
	addiw a4, a3, -48
	sh2add t1, a1, s0
	ld t2, 104(sp)
	sh2add a5, a0, t2
	sw a4, 0(a5)
	lw t0, 0(t1)
	beq t0, s1, label426
	li a3, 1
.p2align 2
label102:
	addw t0, a2, a3
	sh2add t2, a4, a4
	addw t3, a1, a3
	sh2add t1, t0, s0
	addiw a3, a3, 1
	slliw t0, t2, 1
	lw a5, 0(t1)
	ld t2, 104(sp)
	addi t1, t0, -48
	sh2add t0, a0, t2
	addw a4, a5, t1
	sh2add t1, t3, s0
	sw a4, 0(t0)
	lw a5, 0(t1)
	bne a5, s1, label102
	addw a1, a2, a3
label82:
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label377
label78:
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
label679:
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bne a3, s5, label377
	j label78
label673:
	sh2add a2, a4, s0
	addiw a4, a4, 1
	sw s1, 0(a2)
	bgt a0, a1, label8
	j label75
label400:
	li a4, 1
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	j label82
label426:
	li a3, 1
	addw a1, a2, a3
	j label82
label127:
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
	j label4
