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
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s7, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s5, 37
	li s4, 47
	xori a1, a0, 13
	li s3, 42
	xori a4, a0, 10
	li s8, 41
pcrel833:
	auipc a5, %pcrel_hi(get)
	li s2, 45
	li s0, 32
	li s6, 40
	li s7, 10
	li s1, 43
	sltu a2, zero, a1
	sltu a3, zero, a4
	addi s9, a5, %pcrel_lo(pcrel833)
	and a1, a2, a3
	beq a1, zero, label166
	mv s10, s9
	mv s11, zero
	j label155
.p2align 2
label159:
	addi s10, s10, 4
.p2align 2
label155:
	sw a0, 0(s10)
	jal getch
	addiw s11, s11, 1
	xori a4, a0, 10
	xori a2, a0, 13
	sltu a5, zero, a4
	sltu a1, zero, a2
	and a3, a1, a5
	bne a3, zero, label159
	mv a2, s11
label2:
	auipc a3, %pcrel_hi(get2)
pcrel834:
	auipc a4, %pcrel_hi(chas)
	addi a0, a3, %pcrel_lo(label2)
	addi a1, a4, %pcrel_lo(pcrel834)
	ble a2, zero, label174
	mv a5, zero
	mv a3, zero
	li t2, 1
	lw a4, 0(s9)
	addiw t0, a4, -48
	bltu t0, s7, label14
	beq a4, s6, label16
	li t3, 94
	beq a4, t3, label19
	mv t1, zero
	beq a4, s8, label22
	beq a4, s1, label88
	j label782
label215:
	mv t1, t0
	bne a4, s1, label232
.p2align 2
label88:
	sh2add a5, t1, a1
	mv t0, t2
.p2align 2
label89:
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
	beq a6, zero, label93
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label388
	addi a5, a5, -4
	j label89
.p2align 2
label388:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s1, 0(a5)
	bne a4, s2, label758
.p2align 2
label36:
	sh2add a5, t1, a1
.p2align 2
label37:
	lw t2, 0(a5)
	xori a6, t2, 42
	xori t5, t2, 45
	xori t3, t2, 43
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a6, 1
	or t3, t4, t6
	xori t6, t2, 47
	sltiu a7, t6, 1
	xori t6, t2, 37
	or a6, t5, a7
	xori a7, t2, 94
	sltiu t5, t6, 1
	or t4, t3, a6
	sltiu t3, a7, 1
	or t6, t5, t3
	or a6, t4, t6
	beq a6, zero, label41
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label45
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s2, 0(a5)
	beq a4, s3, label49
	beq a4, s4, label78
	mv a5, t0
	beq a4, s5, label68
label788:
	mv a4, t1
	sh2add t0, a5, a0
	addiw t2, a5, 1
	addiw a3, a3, 1
	mv a5, t1
	sw s0, 0(t0)
	bgt a2, a3, label13
	j label98
.p2align 2
label29:
	addi a5, a5, 8
.p2align 2
label24:
	sw s0, 0(a5)
	sh2add t3, t0, a1
	addiw t2, t2, 2
	addiw t0, t0, -1
	sw t1, 4(a5)
	lw t1, 0(t3)
	bne t1, s6, label29
	mv t1, t0
	beq a4, s1, label88
	mv t0, t2
	beq a4, s2, label36
	beq a4, s3, label49
.p2align 2
label749:
	bne a4, s4, label767
.p2align 2
label78:
	sh2add a5, t1, a1
.p2align 2
label79:
	lw t2, 0(a5)
	xori t6, t2, 37
	xori t5, t2, 47
	xori t3, t2, 42
	sltiu a6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, t6, 1
	or t3, t4, a6
	xori a6, t2, 94
	sltiu t4, a6, 1
	or a7, t5, t4
	or t6, t3, a7
	beq t6, zero, label346
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label84
	mv a5, t0
	addiw t1, t1, 1
	sh2add t0, t1, a1
	sw s4, 0(t0)
	bne a4, s5, label770
.p2align 2
label68:
	sh2add a4, t1, a1
	mv t0, t1
.p2align 2
label69:
	lw t1, 0(a4)
	xori t6, t1, 37
	xori t3, t1, 47
	xori t2, t1, 42
	sltiu t5, t3, 1
	sltiu t4, t2, 1
	sltiu t3, t6, 1
	or t2, t4, t5
	xori t5, t1, 94
	sltiu a6, t5, 1
	or t4, t3, a6
	or t6, t2, t4
	beq t6, zero, label73
	sh2add t2, a5, a0
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label332
	addi a4, a4, -4
	j label69
.p2align 2
label14:
	sh2add t0, t2, a0
	addiw a3, a3, 1
	addiw t2, t2, 1
	sw a4, 0(t0)
	ble a2, a3, label98
.p2align 2
label13:
	addi s9, s9, 4
	lw a4, 0(s9)
	addiw t0, a4, -48
	bltu t0, s7, label14
	bne a4, s6, label764
.p2align 2
label16:
	addiw a5, a5, 1
	sh2add t0, a5, a1
	sw s6, 0(t0)
	li t3, 94
	beq a4, t3, label19
	mv t1, a5
	beq a4, s8, label22
	beq a4, s1, label88
	mv t0, t2
	beq a4, s2, label36
label236:
	bne a4, s3, label749
.p2align 2
label49:
	sh2add a5, t1, a1
.p2align 2
label50:
	lw t2, 0(a5)
	xori t5, t2, 47
	xori t6, t2, 37
	xori t3, t2, 42
	sltiu a6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, t6, 1
	or t3, t4, a6
	xori t4, t2, 94
	sltiu a6, t4, 1
	or t6, t5, a6
	or a7, t3, t6
	beq a7, zero, label283
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label292
	addi a5, a5, -4
	j label50
.p2align 2
label764:
	li t3, 94
	bne a4, t3, label775
.p2align 2
label19:
	addiw t1, a5, 1
	li t3, 94
	sh2add t0, t1, a1
	sw t3, 0(t0)
	bne a4, s8, label207
.p2align 2
label22:
	sh2add a5, t1, a1
	addiw t0, t1, -1
	lw t3, 0(a5)
	beq t3, s6, label215
	sh2add a5, t2, a0
	mv t1, t3
	j label24
label98:
	ble a5, zero, label101
	addiw a2, a5, -3
	ble a2, zero, label515
	sh2add a2, a5, a1
	mv a3, t2
	mv a4, a5
.p2align 2
label139:
	sh2add a5, a3, a0
	lw t0, 0(a2)
	addiw a4, a4, -4
	addiw a3, a3, 8
	sw s0, 0(a5)
	sw t0, 4(a5)
	lw t1, -4(a2)
	sw s0, 8(a5)
	sw t1, 12(a5)
	lw t2, -8(a2)
	sw s0, 16(a5)
	sw t2, 20(a5)
	lw t0, -12(a2)
	sw s0, 24(a5)
	sw t0, 28(a5)
	li a5, 3
	ble a4, a5, label539
	addi a2, a2, -16
	j label139
.p2align 2
label292:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s3, 0(a5)
	beq a4, s4, label78
	mv a5, t0
	beq a4, s5, label68
	mv a4, t1
	sh2add t0, t0, a0
	addiw t2, a5, 1
	addiw a3, a3, 1
	sw s0, 0(t0)
	mv a5, t1
	bgt a2, a3, label13
	j label98
.p2align 2
label207:
	beq a4, s1, label88
	mv t0, t2
	beq a4, s2, label36
	beq a4, s3, label49
	j label749
.p2align 2
label758:
	beq a4, s3, label49
	beq a4, s4, label78
label767:
	mv a5, t0
	beq a4, s5, label68
	mv a4, t1
	sh2add t0, t0, a0
	addiw t2, a5, 1
	addiw a3, a3, 1
	sw s0, 0(t0)
	mv a5, t1
	bgt a2, a3, label13
	j label98
.p2align 2
label775:
	mv t1, a5
	beq a4, s8, label22
	beq a4, s1, label88
label782:
	mv t0, t2
	beq a4, s2, label36
	j label236
label539:
	mv t2, a3
label144:
	ble a4, zero, label544
	sh2add a1, a4, a1
	j label149
label153:
	addi a1, a1, -4
label149:
	sh2add a2, t2, a0
	lw a3, 0(a1)
	addiw a4, a4, -1
	addiw t2, t2, 2
	sw s0, 0(a2)
	sw a3, 4(a2)
	bgt a4, zero, label153
label101:
	sh2add a1, t2, a0
	li a5, 64
pcrel835:
	auipc a3, %pcrel_hi(ints)
	sw a5, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel835)
	lw a2, 4(a0)
	beq a2, a5, label103
	bne a2, s1, label409
	li a2, 1
	mv a4, zero
	j label105
.p2align 2
label115:
	beq t0, zero, label445
	li t1, 1
.p2align 2
label116:
	mulw t1, a3, t1
	addiw t0, t0, -1
	bne t0, zero, label116
	mv t2, t1
	addiw a4, a4, -1
	addiw a2, a2, 1
	sw t1, -4(a5)
	sh2add t0, a2, a0
	li a5, 64
	lw a3, 0(t0)
	beq a3, a5, label103
.p2align 2
label136:
	beq a3, s1, label105
.p2align 2
label120:
	sh2add a3, a2, a0
	lw a5, 0(a3)
	xori t3, a5, 47
	xori t1, a5, 42
	xori t0, a5, 45
	sltiu t4, t1, 1
	sltiu t2, t0, 1
	sltiu t1, t3, 1
	or t0, t2, t4
	xori t4, a5, 37
	sltiu t5, t4, 1
	xori t4, a5, 94
	or t3, t1, t5
	sltiu t1, t4, 1
	or t2, t0, t3
	or t0, t2, t1
	beq t0, zero, label123
.p2align 2
label105:
	sh2add a5, a4, a1
	sh2add t4, a2, a0
	lw t0, 0(a5)
	lw a3, -4(a5)
	lw t1, 0(t4)
	addw t3, t0, a3
	mv t2, t3
	beq t1, s1, label724
	mv t2, zero
.p2align 2
label724:
	subw t4, a3, t0
	mv t3, t4
	beq t1, s2, label726
	mv t3, t2
.p2align 2
label726:
	mulw t4, t0, a3
	mv t2, t4
	beq t1, s3, label728
	mv t2, t3
.p2align 2
label728:
	bne t1, s4, label430
	divw t2, a3, t0
	bne t1, s5, label111
.p2align 2
label119:
	remw t2, a3, t0
	li t3, 94
	beq t1, t3, label115
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a3, 0(t0)
	bne a3, a5, label136
	j label103
.p2align 2
label111:
	li t3, 94
	beq t1, t3, label115
.p2align 2
label113:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a3, 0(t0)
	bne a3, a5, label136
	j label103
.p2align 2
label430:
	beq t1, s5, label119
	li t3, 94
	beq t1, t3, label115
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a3, 0(t0)
	bne a3, a5, label136
	j label103
label123:
	bne a5, s0, label124
label133:
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a3, 0(t0)
	bne a3, a5, label136
	j label103
label124:
	addiw a4, a4, 1
	addiw t0, a5, -48
	sh2add t1, a4, a1
	sw t0, 0(t1)
	lw t2, 4(a3)
	beq t2, s0, label481
	addi a3, a3, 4
	li a5, 1
.p2align 2
label128:
	sh2add t3, t0, t0
	lw t2, 0(a3)
	addiw a5, a5, 1
	slliw t4, t3, 1
	sh2add t3, a4, a1
	addi t1, t4, -48
	addw t0, t1, t2
	sw t0, 0(t3)
	lw t1, 4(a3)
	beq t1, s0, label125
	addi a3, a3, 4
	j label128
label125:
	addiw a3, a2, -1
	addw a2, a5, a3
	j label133
label103:
	lw a0, 4(a1)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s7, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label332:
	addiw a4, t0, 1
	addiw t2, a5, 1
	addiw a3, a3, 1
	sh2add t0, a5, a0
	sh2add t1, a4, a1
	mv a5, a4
	sw s5, 0(t1)
	sw s0, 0(t0)
	bgt a2, a3, label13
	j label98
label232:
	mv t0, t2
	beq a4, s2, label36
	j label236
.p2align 2
label770:
	mv a4, t1
	sh2add t0, a5, a0
	addiw t2, a5, 1
	addiw a3, a3, 1
	sw s0, 0(t0)
	mv a5, t1
	bgt a2, a3, label13
	j label98
label283:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s3, 0(a5)
	beq a4, s4, label78
	mv a5, t0
	j label62
label346:
	mv a5, t0
	addiw t1, t1, 1
	sh2add t0, t1, a1
	sw s4, 0(t0)
label62:
	beq a4, s5, label68
	j label788
label73:
	addiw a4, t0, 1
	addiw t2, a5, 1
	addiw a3, a3, 1
	sh2add t0, a5, a0
	sh2add t1, a4, a1
	mv a5, a4
	sw s5, 0(t1)
	sw s0, 0(t0)
	bgt a2, a3, label13
	j label98
label41:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s2, 0(a5)
	beq a4, s3, label49
	beq a4, s4, label78
	mv a5, t0
	beq a4, s5, label68
	j label788
label93:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s1, 0(a5)
	beq a4, s2, label36
	j label236
label544:
	mv t2, a3
	j label101
label445:
	li t2, 1
	j label113
label515:
	mv a4, a5
	mv a3, zero
	j label144
.p2align 2
label45:
	addi a5, a5, -4
	j label37
label166:
	mv a2, zero
	j label2
label409:
	mv a4, zero
	li a2, 1
	j label120
.p2align 2
label84:
	addi a5, a5, -4
	j label79
label174:
	li t2, 1
	mv a5, zero
	j label98
label481:
	li a5, 1
	j label125
