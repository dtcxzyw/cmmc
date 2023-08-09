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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s9, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s2, 64(sp)
	sd s8, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s7, 42
	li s6, 45
	li s5, 43
	xori a1, a0, 13
	xori a4, a0, 10
	li s0, 32
	li s3, 40
	li s4, 10
pcrel786:
	auipc a5, %pcrel_hi(get)
	li s1, 47
	li s2, 37
	li s8, 41
	sltu a2, zero, a1
	sltu a3, zero, a4
	addi s9, a5, %pcrel_lo(pcrel786)
	and a1, a2, a3
	beq a1, zero, label159
	mv s10, s9
	mv s11, zero
	j label148
.p2align 2
label152:
	addi s10, s10, 4
.p2align 2
label148:
	sw a0, 0(s10)
	jal getch
	addiw s11, s11, 1
	xori a4, a0, 10
	xori a2, a0, 13
	sltu a5, zero, a4
	sltu a1, zero, a2
	and a3, a1, a5
	bne a3, zero, label152
	mv a2, s11
pcrel787:
	auipc a1, %pcrel_hi(get2)
pcrel788:
	auipc a3, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a0, a1, %pcrel_lo(pcrel787)
	addi a1, a3, %pcrel_lo(pcrel788)
	addi t0, a0, 4
	mv a3, zero
label4:
	bgt a2, a3, label10
	j label95
.p2align 2
label262:
	mv a4, a5
	addi s9, s9, 4
	addiw t2, a5, 1
	addiw a5, t0, 1
	sh2add t0, t2, a0
	sh2add t1, a5, a1
	sw s2, 0(t1)
	sh2add t1, a4, a0
	sw s0, 0(t1)
	ble a2, a3, label95
.p2align 2
label10:
	lw a4, 0(s9)
	addiw a3, a3, 1
	addiw t1, a4, -48
	bgeu t1, s4, label175
	sw a4, 0(t0)
	addiw t2, t2, 1
	addi s9, s9, 4
	addi t0, t0, 4
	bgt a2, a3, label10
label95:
	ble a5, zero, label113
	addiw a3, a5, -3
	ble a3, zero, label390
	sh2add a2, a5, a1
.p2align 2
label108:
	sh2add a3, t2, a0
	lw a4, 0(a2)
	addiw a5, a5, -4
	addiw t2, t2, 8
	sw s0, 0(a3)
	sw a4, 4(a3)
	lw t0, -4(a2)
	sw s0, 8(a3)
	sw t0, 12(a3)
	lw t1, -8(a2)
	sw s0, 16(a3)
	sw t1, 20(a3)
	lw a4, -12(a2)
	sw s0, 24(a3)
	sw a4, 28(a3)
	li a3, 3
	ble a5, a3, label431
	addi a2, a2, -16
	j label108
.p2align 2
label175:
	bne a4, s3, label709
	addiw a5, a5, 1
	sh2add t0, a5, a1
	sw s3, 0(t0)
	li t3, 94
	beq a4, t3, label16
	mv t1, a5
	beq a4, s8, label19
	beq a4, s5, label85
	j label726
.p2align 2
label709:
	li t3, 94
	bne a4, t3, label724
.p2align 2
label16:
	addiw t1, a5, 1
	li t3, 94
	sh2add t0, t1, a1
	sw t3, 0(t0)
	beq a4, s8, label19
	bne a4, s5, label713
.p2align 2
label85:
	sh2add a5, t1, a1
	mv t0, t2
.p2align 2
label86:
	lw t2, 0(a5)
	xori t6, t2, 42
	xori t5, t2, 45
	xori t3, t2, 43
	sltiu a6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, t6, 1
	or t3, t4, a6
	xori a6, t2, 47
	sltiu a7, a6, 1
	xori a6, t2, 37
	or t6, t5, a7
	xori a7, t2, 94
	sltiu t5, a6, 1
	or t4, t3, t6
	sltiu t6, a7, 1
	or a6, t5, t6
	or t3, t4, a6
	beq t3, zero, label368
	sh2add t3, t0, a0
	addiw t1, t1, -1
	sw s0, 0(t3)
	sw t2, 4(t3)
	addiw t2, t0, 2
	bne t1, zero, label91
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s5, 0(a5)
	beq a4, s6, label75
	mv t0, t2
	beq a4, s7, label65
	beq a4, s1, label55
	j label39
.p2align 2
label26:
	addi a5, a5, 8
.p2align 2
label21:
	sw s0, 0(a5)
	sh2add t3, t0, a1
	addiw t2, t2, 2
	addiw t0, t0, -1
	sw t1, 4(a5)
	lw t1, 0(t3)
	bne t1, s3, label26
	mv t1, t0
	beq a4, s5, label85
	beq a4, s6, label75
	mv t0, t2
	beq a4, s7, label65
.p2align 2
label36:
	beq a4, s1, label55
.p2align 2
label39:
	beq a4, s2, label42
.p2align 2
label237:
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a0
	sh2add t0, t2, a0
	sw s0, 0(t1)
	bgt a2, a3, label10
	j label95
label204:
	mv t1, t0
	beq a4, s5, label85
label30:
	bne a4, s6, label741
.p2align 2
label75:
	sh2add a5, t1, a1
	mv t0, t2
.p2align 2
label76:
	lw t2, 0(a5)
	xori a7, t2, 47
	xori a6, t2, 42
	xori t5, t2, 45
	xori t4, t2, 43
	sltiu t6, t5, 1
	sltiu t3, t4, 1
	sltiu t5, a6, 1
	or t4, t3, t6
	sltiu t6, a7, 1
	xori a7, t2, 94
	or a6, t5, t6
	xori t6, t2, 37
	or t3, t4, a6
	sltiu t5, t6, 1
	sltiu t6, a7, 1
	or t4, t5, t6
	or a6, t3, t4
	beq a6, zero, label80
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label84
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s6, 0(a5)
	bne a4, s7, label719
.p2align 2
label65:
	sh2add a5, t1, a1
.p2align 2
label66:
	lw t2, 0(a5)
	xori a7, t2, 94
	xori a6, t2, 37
	xori t4, t2, 47
	xori t3, t2, 42
	sltiu t6, t4, 1
	sltiu t5, t3, 1
	sltiu t4, a6, 1
	or t3, t5, t6
	sltiu t6, a7, 1
	or t5, t4, t6
	or a6, t3, t5
	beq a6, zero, label308
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label317
	addi a5, a5, -4
	j label66
.p2align 2
label291:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s1, 0(a5)
	bne a4, s2, label731
.p2align 2
label42:
	sh2add a4, t1, a1
	mv a5, t0
	mv t0, t1
.p2align 2
label43:
	lw t1, 0(a4)
	xori a6, t1, 37
	xori t3, t1, 47
	xori t2, t1, 42
	sltiu t5, t3, 1
	sltiu t4, t2, 1
	sltiu t3, a6, 1
	or t2, t4, t5
	xori t4, t1, 94
	sltiu t6, t4, 1
	or a6, t3, t6
	or t5, t2, a6
	beq t5, zero, label250
	sh2add t2, a5, a0
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label262
	addi a4, a4, -4
	j label43
.p2align 2
label719:
	bne a4, s1, label733
.p2align 2
label55:
	sh2add a5, t1, a1
.p2align 2
label56:
	lw t2, 0(a5)
	xori t5, t2, 47
	xori a6, t2, 37
	xori t3, t2, 42
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a6, 1
	or t3, t4, t6
	xori t6, t2, 94
	sltiu t4, t6, 1
	or a6, t5, t4
	or a7, t3, a6
	beq a7, zero, label282
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label291
	addi a5, a5, -4
	j label56
.p2align 2
label19:
	sh2add a5, t1, a1
	addiw t0, t1, -1
	lw t3, 0(a5)
	beq t3, s3, label204
	sh2add a5, t2, a0
	mv t1, t3
	j label21
.p2align 2
label317:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s7, 0(a5)
	beq a4, s1, label55
	beq a4, s2, label42
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a0
	sh2add t0, t2, a0
	sw s0, 0(t1)
	bgt a2, a3, label10
	j label95
.p2align 2
label724:
	mv t1, a5
	beq a4, s8, label19
	beq a4, s5, label85
label726:
	beq a4, s6, label75
label741:
	mv t0, t2
	beq a4, s7, label65
	j label36
label431:
	mv a2, t2
label97:
	ble a5, zero, label113
	sh2add a1, a5, a1
label102:
	sh2add a3, a2, a0
	lw a4, 0(a1)
	addiw a5, a5, -1
	addiw a2, a2, 2
	sw s0, 0(a3)
	sw a4, 4(a3)
	ble a5, zero, label406
	addi a1, a1, -4
	j label102
label713:
	beq a4, s6, label75
	mv t0, t2
	beq a4, s7, label65
	j label36
label733:
	beq a4, s2, label42
	j label237
label406:
	mv t2, a2
label113:
	sh2add a1, t2, a0
	li a5, 64
pcrel789:
	auipc a3, %pcrel_hi(ints)
	sw a5, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel789)
	lw a2, 4(a0)
	beq a2, a5, label146
	mv a3, zero
	li a2, 1
	j label115
.p2align 2
label503:
	mv t1, t2
	bne t0, s2, label721
.p2align 2
label140:
	remw t1, a4, t4
	li t3, 94
	bne t0, t3, label722
.p2align 2
label134:
	beq t4, zero, label514
	mv t0, t4
	li t1, 1
.p2align 2
label135:
	mulw t1, a4, t1
	addiw t0, t0, -1
	bne t0, zero, label135
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	beq a4, a5, label146
.p2align 2
label115:
	sh2add a4, a2, a0
	lw t0, 0(a4)
	xori t6, t0, 47
	xori t4, t0, 42
	xori t1, t0, 45
	xori a5, t0, 43
	sltiu t5, t6, 1
	sltiu t2, t1, 1
	sltiu t3, a5, 1
	xori t6, t0, 37
	sltiu t1, t4, 1
	or a5, t3, t2
	or a6, t1, t5
	sltiu t5, t6, 1
	or t4, a5, a6
	xori a5, t0, 94
	sltiu a6, a5, 1
	sh2add a5, a3, a1
	or a7, t5, a6
	or t6, t4, a7
	beq t6, zero, label118
	lw t4, 0(a5)
	lw a4, -4(a5)
	addw t6, t4, a4
	mv t5, t6
	bne t3, zero, label691
	mv t5, zero
.p2align 2
label691:
	subw t6, a4, t4
	mv t3, t6
	bne t2, zero, label693
	mv t3, t5
.p2align 2
label693:
	mulw t6, t4, a4
	mv t2, t6
	bne t1, zero, label695
	mv t2, t3
.p2align 2
label695:
	bne t0, s1, label503
	divw t1, a4, t4
	beq t0, s2, label140
	li t3, 94
	beq t0, t3, label134
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label115
	j label146
.p2align 2
label721:
	li t3, 94
	beq t0, t3, label134
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label115
	j label146
label118:
	bne t0, s0, label119
	addiw a2, a2, 1
label141:
	sh2add t0, a2, a0
	li a5, 64
	lw a4, 0(t0)
	bne a4, a5, label115
	j label146
label119:
	addiw t1, t0, -48
	addiw t0, a3, 1
	sw t1, 4(a5)
	lw t2, 4(a4)
	beq t2, s0, label474
	addi a3, a4, 4
	li a4, 1
.p2align 2
label121:
	sh2add t5, t1, t1
	lw t4, 0(a3)
	addiw a4, a4, 1
	slliw t2, t5, 1
	addi t3, t2, -48
	addw t1, t3, t4
	sw t1, 4(a5)
	lw t2, 4(a3)
	beq t2, s0, label487
	addi a3, a3, 4
	j label121
label514:
	li t1, 1
	addiw a3, a3, -1
	sw t1, -4(a5)
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label115
label146:
	lw a0, 4(a1)
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s9, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label722:
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label115
	j label146
.p2align 2
label731:
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a0
	sh2add t0, t2, a0
	sw s0, 0(t1)
	bgt a2, a3, label10
	j label95
label250:
	mv a4, a5
	addiw a5, t0, 1
	addiw t2, a4, 1
	addi s9, s9, 4
	sh2add t1, a5, a1
	sh2add t0, t2, a0
	sw s2, 0(t1)
	sh2add t1, a4, a0
	sw s0, 0(t1)
	j label4
label159:
	mv a2, zero
pcrel790:
	auipc a1, %pcrel_hi(get2)
pcrel791:
	auipc a3, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a0, a1, %pcrel_lo(pcrel790)
	addi a1, a3, %pcrel_lo(pcrel791)
	addi t0, a0, 4
	mv a3, zero
	j label4
label80:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s6, 0(a5)
	beq a4, s7, label65
	j label36
label308:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s7, 0(a5)
	j label36
label368:
	mv t2, t0
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s5, 0(a5)
	j label30
label487:
	addw a2, a2, a4
	mv a3, t0
	j label141
label390:
	mv a2, t2
	mv t2, zero
	j label97
.p2align 2
label84:
	addi a5, a5, -4
	j label76
.p2align 2
label91:
	addi a5, a5, -4
	mv t0, t2
	j label86
label282:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s1, 0(a5)
	j label39
label474:
	li a4, 1
	mv a3, t0
	addw a2, a2, a4
	j label141
