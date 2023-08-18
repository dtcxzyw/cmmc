.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
ints:
	.zero	40000
.p2align 3
chas:
	.zero	40000
.p2align 3
get:
	.zero	40000
.p2align 3
get2:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s7, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s4, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getch
	li s3, 42
	xori a1, a0, 13
pcrel820:
	auipc a5, %pcrel_hi(get)
	li s1, 43
	li s5, 40
	xori a4, a0, 10
	li s0, 32
	li s4, 64
	li s6, 10
	li s2, 45
	sltu a2, zero, a1
	addi s7, a5, %pcrel_lo(pcrel820)
	sltu a3, zero, a4
	and a1, a2, a3
	beq a1, zero, label166
	mv s8, s7
	mv s9, zero
.p2align 2
label3:
	sw a0, 0(s8)
	jal getch
	addiw s9, s9, 1
	xori a4, a0, 10
	xori a3, a0, 13
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	beq a3, zero, label174
	addi s8, s8, 4
	j label3
label174:
	mv a2, s9
label8:
	auipc a3, %pcrel_hi(get2)
pcrel821:
	auipc a4, %pcrel_hi(chas)
	addi a0, a3, %pcrel_lo(label8)
	addi a1, a4, %pcrel_lo(pcrel821)
	ble a2, zero, label183
	mv a3, s7
	mv t0, zero
	mv a4, zero
	li t3, 1
	lw a5, 0(s7)
	addiw t1, a5, -48
	bgeu t1, s6, label357
.p2align 2
label72:
	sh2add t1, t3, a0
	addiw t3, t3, 1
	sw a5, 0(t1)
	addiw a4, a4, 1
	ble a2, a4, label10
.p2align 2
label76:
	addi a3, a3, 4
	lw a5, 0(a3)
	addiw t1, a5, -48
	bltu t1, s6, label72
	bne a5, s5, label757
.p2align 2
label78:
	addiw t0, t0, 1
	sh2add t1, t0, a1
	sw s5, 0(t1)
	li t1, 94
	beq a5, t1, label159
	mv t2, t0
	li t0, 41
	beq a5, t0, label83
.p2align 2
label381:
	bne a5, s1, label743
.p2align 2
label149:
	sh2add t0, t2, a1
	mv t1, t3
.p2align 2
label150:
	lw t3, 0(t0)
	xori a7, t3, 42
	xori t6, t3, 45
	xori t5, t3, 43
	sltiu a6, t6, 1
	sltiu t4, t5, 1
	sltiu t6, a7, 1
	or t5, t4, a6
	xori t4, t3, 47
	sltiu a6, t4, 1
	or a7, t6, a6
	xori a6, t3, 37
	or t4, t5, a7
	sltiu t6, a6, 1
	xori t5, t3, 94
	sltiu s7, t5, 1
	or a7, t6, s7
	or a6, t4, a7
	beq a6, zero, label550
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label155
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	beq a5, s2, label97
	beq a5, s3, label110
	li t3, 47
	beq a5, t3, label139
	j label758
label357:
	beq a5, s5, label78
	li t1, 94
	bne a5, t1, label756
.p2align 2
label159:
	addiw t2, t0, 1
	li t4, 94
	li t0, 41
	sh2add t1, t2, a1
	sw t4, 0(t1)
	bne a5, t0, label753
.p2align 2
label83:
	sh2add t0, t2, a1
	addiw t1, t2, -1
	lw t4, 0(t0)
	beq t4, s5, label389
	sh2add t0, t3, a0
	mv t2, t4
.p2align 2
label85:
	sw s0, 0(t0)
	sh2add t4, t1, a1
	addiw t3, t3, 2
	addiw t1, t1, -1
	sw t2, 4(t0)
	lw t2, 0(t4)
	beq t2, s5, label401
	addi t0, t0, 8
	j label85
.p2align 2
label97:
	sh2add t0, t2, a1
.p2align 2
label98:
	lw t3, 0(t0)
	xori s7, t3, 94
	xori a7, t3, 42
	xori t6, t3, 45
	xori t4, t3, 43
	sltiu a6, t6, 1
	sltiu t5, t4, 1
	sltiu t6, a7, 1
	or t4, t5, a6
	xori t5, t3, 47
	sltiu a6, t5, 1
	or a7, t6, a6
	xori a6, t3, 37
	or t5, t4, a7
	sltiu t6, a6, 1
	sltiu a7, s7, 1
	or t4, t6, a7
	or a6, t5, t4
	beq a6, zero, label102
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label106
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	bne a5, s3, label747
.p2align 2
label110:
	sh2add t0, t2, a1
.p2align 2
label111:
	lw t3, 0(t0)
	xori a6, t3, 37
	xori t6, t3, 47
	xori t4, t3, 42
	sltiu a7, t6, 1
	sltiu t5, t4, 1
	sltiu t6, a6, 1
	or t4, t5, a7
	xori t5, t3, 94
	sltiu a7, t5, 1
	or s7, t6, a7
	or a6, t4, s7
	beq a6, zero, label457
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label116
	addiw t2, t2, 1
	li t3, 47
	sh2add t0, t2, a1
	sw s3, 0(t0)
	beq a5, t3, label139
	mv t0, t1
	li t1, 37
	beq a5, t1, label129
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label76
	j label10
.p2align 2
label747:
	li t3, 47
	bne a5, t3, label759
.p2align 2
label139:
	sh2add t0, t2, a1
.p2align 2
label140:
	lw t3, 0(t0)
	xori a7, t3, 94
	xori s7, t3, 37
	xori t6, t3, 47
	xori t4, t3, 42
	sltiu a6, t6, 1
	sltiu t5, t4, 1
	sltiu t6, s7, 1
	or t4, t5, a6
	sltiu a6, a7, 1
	or t5, t6, a6
	or a7, t4, t5
	beq a7, zero, label520
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label145
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
	li t1, 37
	bne a5, t1, label762
.p2align 2
label129:
	sh2add a5, t2, a1
	mv t1, t2
.p2align 2
label130:
	lw t2, 0(a5)
	xori a6, t2, 94
	xori a7, t2, 37
	xori t5, t2, 47
	xori t3, t2, 42
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a7, 1
	or t3, t4, t6
	sltiu t4, a6, 1
	or t6, t5, t4
	or a7, t3, t6
	beq a7, zero, label494
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label135
	addiw t2, t1, 1
	li t3, 37
	addiw a4, a4, 1
	sh2add a5, t2, a1
	sw t3, 0(a5)
	addiw t3, t0, 1
	sh2add a5, t0, a0
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label76
	j label10
.p2align 2
label757:
	li t1, 94
	beq a5, t1, label159
	mv t2, t0
	li t0, 41
	beq a5, t0, label83
	beq a5, s1, label149
label743:
	mv t1, t3
	beq a5, s2, label97
	beq a5, s3, label110
	j label745
.p2align 2
label401:
	mv t2, t1
	beq a5, s1, label149
	mv t1, t3
	beq a5, s2, label97
	beq a5, s3, label110
.p2align 2
label745:
	li t3, 47
	beq a5, t3, label139
label758:
	mv t0, t1
	li t1, 37
	beq a5, t1, label129
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label76
	j label10
.p2align 2
label753:
	beq a5, s1, label149
	mv t1, t3
	beq a5, s2, label97
	beq a5, s3, label110
	j label745
label759:
	mv t0, t1
	li t1, 37
	beq a5, t1, label129
label126:
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label76
label10:
	ble t0, zero, label13
	addiw a2, t0, -3
	ble a2, zero, label309
	sh2add a2, t0, a1
	mv a3, t3
	mv a4, t0
	j label51
.p2align 2
label55:
	addi a2, a2, -16
.p2align 2
label51:
	sh2add a5, a3, a0
	lw t1, 0(a2)
	addiw a4, a4, -4
	addiw a3, a3, 8
	sw s0, 0(a5)
	sw t1, 4(a5)
	lw t0, -4(a2)
	sw s0, 8(a5)
	sw t0, 12(a5)
	lw t1, -8(a2)
	sw s0, 16(a5)
	sw t1, 20(a5)
	lw t0, -12(a2)
	sw s0, 24(a5)
	sw t0, 28(a5)
	li a5, 3
	bgt a4, a5, label55
	mv t3, a3
label56:
	ble a4, zero, label338
	sh2add a1, a4, a1
label61:
	sh2add a2, t3, a0
	lw a3, 0(a1)
	addiw a4, a4, -1
	addiw t3, t3, 2
	sw s0, 0(a2)
	sw a3, 4(a2)
	ble a4, zero, label13
	addi a1, a1, -4
	j label61
label13:
	sh2add a1, t3, a0
pcrel822:
	auipc a3, %pcrel_hi(ints)
	sw s4, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel822)
	lw a2, 4(a0)
	beq a2, s4, label48
	bne a2, s1, label201
	li a2, 1
	mv a4, zero
	j label16
.p2align 2
label19:
	divw t2, a3, t0
	li t3, 37
	bne t1, t3, label227
.p2align 2
label22:
	remw t2, a3, t0
	li t3, 94
	bne t1, t3, label25
.p2align 2
label27:
	beq t0, zero, label238
	li t1, 1
.p2align 2
label28:
	mulw t1, a3, t1
	addiw t0, t0, -1
	bne t0, zero, label28
	mv t2, t1
	addiw a4, a4, -1
	addiw a2, a2, 1
	sw t1, -4(a5)
	sh2add a5, a2, a0
	lw a3, 0(a5)
	beq a3, s4, label48
.p2align 2
label47:
	beq a3, s1, label16
.p2align 2
label31:
	sh2add a3, a2, a0
	lw a5, 0(a3)
	xori t4, a5, 47
	xori t5, a5, 37
	xori t2, a5, 42
	xori t0, a5, 45
	sltiu t3, t2, 1
	sltiu t1, t0, 1
	sltiu t2, t4, 1
	or t0, t1, t3
	sltiu t3, t5, 1
	xori t5, a5, 94
	or t4, t2, t3
	sltiu t2, t5, 1
	or t1, t0, t4
	or t0, t1, t2
	beq t0, zero, label34
.p2align 2
label16:
	sh2add a5, a4, a1
	sh2add t4, a2, a0
	lw t0, 0(a5)
	lw a3, -4(a5)
	lw t1, 0(t4)
	addw t3, t0, a3
	mv t2, t3
	beq t1, s1, label720
	mv t2, zero
label720:
	subw t4, a3, t0
	mv t3, t4
	beq t1, s2, label722
	mv t3, t2
label722:
	mulw t4, t0, a3
	mv t2, t4
	beq t1, s3, label724
	mv t2, t3
label724:
	li t4, 47
	beq t1, t4, label19
	li t3, 37
	beq t1, t3, label22
	li t3, 94
	beq t1, t3, label27
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label47
	j label48
label34:
	beq a5, s0, label44
	addiw a4, a4, 1
	addiw t0, a5, -48
	sh2add t1, a4, a1
	sw t0, 0(t1)
	lw t2, 4(a3)
	beq t2, s0, label273
	addi a3, a3, 4
	li a5, 1
.p2align 2
label39:
	sh2add t4, t0, t0
	lw t2, 0(a3)
	addiw a5, a5, 1
	slliw t3, t4, 1
	addi t1, t3, -48
	sh2add t3, a4, a1
	addw t0, t1, t2
	sw t0, 0(t3)
	lw t1, 4(a3)
	beq t1, s0, label36
	addi a3, a3, 4
	j label39
.p2align 2
label25:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label47
	j label48
.p2align 2
label227:
	li t3, 94
	beq t1, t3, label27
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label47
	j label48
label44:
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label47
	j label48
label36:
	addiw a3, a2, -1
	addw a2, a5, a3
	j label44
label48:
	lw a0, 4(a1)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s4, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label389:
	mv t2, t1
	beq a5, s1, label149
	mv t1, t3
label94:
	beq a5, s2, label97
	beq a5, s3, label110
	j label745
.p2align 2
label762:
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label76
	j label10
label756:
	mv t2, t0
	li t0, 41
	beq a5, t0, label83
	j label381
label520:
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
label123:
	li t1, 37
	beq a5, t1, label129
	j label126
label457:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s3, 0(t0)
	li t3, 47
	beq a5, t3, label139
	mv t0, t1
	j label123
label102:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	beq a5, s3, label110
	li t3, 47
	beq a5, t3, label139
	mv t0, t1
	li t1, 37
	beq a5, t1, label129
	j label126
label494:
	addiw t2, t1, 1
	li t3, 37
	sh2add a5, t2, a1
	sw t3, 0(a5)
	j label126
.p2align 2
label145:
	addi t0, t0, -4
	j label140
label550:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	j label94
label309:
	mv a4, t0
	mv a3, zero
	j label56
.p2align 2
label155:
	addi t0, t0, -4
	j label150
.p2align 2
label106:
	addi t0, t0, -4
	j label98
label166:
	mv a2, zero
	j label8
.p2align 2
label135:
	addi a5, a5, -4
	j label130
label201:
	mv a4, zero
	li a2, 1
	j label31
label273:
	li a5, 1
	j label36
label183:
	li t3, 1
	mv t0, zero
	j label10
.p2align 2
label116:
	addi t0, t0, -4
	j label111
label238:
	li t2, 1
	j label25
label338:
	mv t3, a3
	j label13
