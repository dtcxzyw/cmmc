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
	xori a4, a0, 10
pcrel812:
	auipc a5, %pcrel_hi(get)
	li s5, 40
	li s1, 43
	xori a1, a0, 13
	li s0, 32
	li s4, 64
	li s2, 45
	li s6, 10
	sltu a3, zero, a4
	addi s7, a5, %pcrel_lo(pcrel812)
	sltu a2, zero, a1
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
	auipc a4, %pcrel_hi(get2)
pcrel813:
	auipc a3, %pcrel_hi(chas)
	addi a0, a4, %pcrel_lo(label8)
	addi a1, a3, %pcrel_lo(pcrel813)
	ble a2, zero, label183
	mv a3, s7
	mv t0, zero
	mv a4, zero
	li t3, 1
	lw a5, 0(s7)
	addiw t1, a5, -48
	bltu t1, s6, label16
	beq a5, s5, label22
	li t1, 94
	beq a5, t1, label103
	mv t2, zero
	li t0, 41
	beq a5, t0, label27
	j label213
.p2align 2
label16:
	sh2add t1, t3, a0
	addiw t3, t3, 1
	sw a5, 0(t1)
	addiw a4, a4, 1
	ble a2, a4, label104
.p2align 2
label20:
	addi a3, a3, 4
	lw a5, 0(a3)
	addiw t1, a5, -48
	bltu t1, s6, label16
	beq a5, s5, label22
	li t1, 94
	bne a5, t1, label764
.p2align 2
label103:
	addiw t2, t0, 1
	li t4, 94
	li t0, 41
	sh2add t1, t2, a1
	sw t4, 0(t1)
	beq a5, t0, label27
	beq a5, s1, label93
	mv t1, t3
	beq a5, s2, label83
	beq a5, s3, label73
	j label44
.p2align 2
label34:
	addi t0, t0, 8
.p2align 2
label29:
	sw s0, 0(t0)
	sh2add t4, t1, a1
	addiw t3, t3, 2
	addiw t1, t1, -1
	sw t2, 4(t0)
	lw t2, 0(t4)
	bne t2, s5, label34
	mv t2, t1
	bne a5, s1, label740
.p2align 2
label93:
	sh2add t0, t2, a1
	mv t1, t3
.p2align 2
label94:
	lw t3, 0(t0)
	xori a6, t3, 42
	xori t6, t3, 45
	xori t5, t3, 43
	sltiu a7, t6, 1
	sltiu t4, t5, 1
	sltiu t6, a6, 1
	or t5, t4, a7
	xori t4, t3, 47
	sltiu a7, t4, 1
	or a6, t6, a7
	xori a7, t3, 37
	or t4, t5, a6
	sltiu t6, a7, 1
	xori t5, t3, 94
	sltiu a6, t5, 1
	or a7, t6, a6
	or t5, t4, a7
	beq t5, zero, label382
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label99
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	bne a5, s2, label760
.p2align 2
label83:
	sh2add t0, t2, a1
.p2align 2
label84:
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
	sltiu a7, t5, 1
	or a6, t6, a7
	xori a7, t3, 37
	or t5, t4, a6
	sltiu t6, a7, 1
	sltiu a6, s7, 1
	or t4, t6, a6
	or a7, t5, t4
	beq a7, zero, label88
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label92
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	beq a5, s3, label73
	li t3, 47
	beq a5, t3, label63
	mv t0, t1
	li t1, 37
	beq a5, t1, label53
	j label50
.p2align 2
label740:
	mv t1, t3
	beq a5, s2, label83
	bne a5, s3, label44
.p2align 2
label73:
	sh2add t0, t2, a1
.p2align 2
label74:
	lw t3, 0(t0)
	xori a7, t3, 37
	xori t5, t3, 47
	xori t4, t3, 42
	sltiu a6, t5, 1
	sltiu t6, t4, 1
	sltiu t5, a7, 1
	or t4, t6, a6
	xori t6, t3, 94
	sltiu s7, t6, 1
	or a7, t5, s7
	or a6, t4, a7
	beq a6, zero, label78
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	beq t2, zero, label334
	addi t0, t0, -4
	j label74
.p2align 2
label760:
	beq a5, s3, label73
	li t3, 47
	beq a5, t3, label63
.p2align 2
label250:
	mv t0, t1
	li t1, 37
	bne a5, t1, label50
.p2align 2
label53:
	sh2add a5, t2, a1
	mv t1, t2
.p2align 2
label54:
	lw t2, 0(a5)
	xori a6, t2, 37
	xori t5, t2, 47
	xori t3, t2, 42
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a6, 1
	or t3, t4, t6
	xori t4, t2, 94
	sltiu a7, t4, 1
	or t6, t5, a7
	or t4, t3, t6
	beq t4, zero, label270
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label59
	addiw t2, t1, 1
	li t3, 37
	addiw a4, a4, 1
	sh2add a5, t2, a1
	sw t3, 0(a5)
	addiw t3, t0, 1
	sh2add a5, t0, a0
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label20
	j label104
.p2align 2
label44:
	li t3, 47
	bne a5, t3, label250
.p2align 2
label63:
	sh2add t0, t2, a1
.p2align 2
label64:
	lw t3, 0(t0)
	xori a7, t3, 37
	xori t5, t3, 47
	xori t4, t3, 42
	sltiu a6, t5, 1
	sltiu t6, t4, 1
	sltiu t5, a7, 1
	or t4, t6, a6
	xori t6, t3, 94
	sltiu a7, t6, 1
	or a6, t5, a7
	or t6, t4, a6
	beq t6, zero, label296
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	beq t2, zero, label308
	addi t0, t0, -4
	j label64
.p2align 2
label22:
	addiw t0, t0, 1
	sh2add t1, t0, a1
	sw s5, 0(t1)
	li t1, 94
	beq a5, t1, label103
	mv t2, t0
	li t0, 41
	beq a5, t0, label27
.p2align 2
label213:
	beq a5, s1, label93
label739:
	mv t1, t3
	beq a5, s2, label83
	beq a5, s3, label73
	j label44
.p2align 2
label764:
	mv t2, t0
	li t0, 41
	bne a5, t0, label773
.p2align 2
label27:
	sh2add t0, t2, a1
	addiw t1, t2, -1
	lw t4, 0(t0)
	beq t4, s5, label221
	sh2add t0, t3, a0
	mv t2, t4
	j label29
.p2align 2
label308:
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
	li t1, 37
	beq a5, t1, label53
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label20
	j label104
.p2align 2
label334:
	addiw t2, t2, 1
	li t3, 47
	sh2add t0, t2, a1
	sw s3, 0(t0)
	beq a5, t3, label63
	mv t0, t1
	li t1, 37
	beq a5, t1, label53
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label20
	j label104
.p2align 2
label50:
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label20
	j label104
label773:
	beq a5, s1, label93
	j label739
label104:
	ble t0, zero, label107
	addiw a2, t0, -3
	ble a2, zero, label524
	sh2add a2, t0, a1
	mv a3, t3
	mv a4, t0
	j label145
.p2align 2
label149:
	addi a2, a2, -16
.p2align 2
label145:
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
	bgt a4, a5, label149
	mv t3, a3
label150:
	ble a4, zero, label553
	sh2add a1, a4, a1
	j label155
label159:
	addi a1, a1, -4
label155:
	sh2add a2, t3, a0
	lw a3, 0(a1)
	addiw a4, a4, -1
	addiw t3, t3, 2
	sw s0, 0(a2)
	sw a3, 4(a2)
	bgt a4, zero, label159
label107:
	sh2add a1, t3, a0
pcrel814:
	auipc a3, %pcrel_hi(ints)
	sw s4, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel814)
	lw a2, 4(a0)
	beq a2, s4, label142
	bne a2, s1, label416
	li a2, 1
	mv a4, zero
	j label110
.p2align 2
label113:
	divw t2, a3, t0
	li t3, 37
	beq t1, t3, label116
	li t3, 94
	bne t1, t3, label752
.p2align 2
label121:
	beq t0, zero, label453
	li t1, 1
.p2align 2
label122:
	mulw t1, a3, t1
	addiw t0, t0, -1
	bne t0, zero, label122
	mv t2, t1
	addiw a4, a4, -1
	addiw a2, a2, 1
	sw t1, -4(a5)
	sh2add a5, a2, a0
	lw a3, 0(a5)
	beq a3, s4, label142
.p2align 2
label128:
	bne a3, s1, label129
.p2align 2
label110:
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
	beq t1, t4, label113
	li t3, 37
	bne t1, t3, label751
.p2align 2
label116:
	remw t2, a3, t0
	li t3, 94
	beq t1, t3, label121
.p2align 2
label119:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label128
	j label142
.p2align 2
label129:
	sh2add a3, a2, a0
	lw a5, 0(a3)
	xori t4, a5, 47
	xori t2, a5, 42
	xori t0, a5, 45
	sltiu t3, t2, 1
	sltiu t1, t0, 1
	sltiu t2, t4, 1
	or t0, t1, t3
	xori t3, a5, 37
	sltiu t5, t3, 1
	xori t3, a5, 94
	or t4, t2, t5
	sltiu t2, t3, 1
	or t1, t0, t4
	or t0, t1, t2
	bne t0, zero, label110
	beq a5, s0, label125
	addiw a4, a4, 1
	addiw t0, a5, -48
	sh2add t1, a4, a1
	sw t0, 0(t1)
	lw t2, 4(a3)
	beq t2, s0, label500
	addi a3, a3, 4
	li a5, 1
	j label137
.p2align 2
label141:
	addi a3, a3, 4
.p2align 2
label137:
	sh2add t2, t0, t0
	lw t3, 0(a3)
	addiw a5, a5, 1
	slliw t4, t2, 1
	sh2add t2, a4, a1
	addi t1, t4, -48
	addw t0, t1, t3
	sw t0, 0(t2)
	lw t1, 4(a3)
	bne t1, s0, label141
label134:
	addiw a3, a2, -1
	addw a2, a5, a3
	j label125
.p2align 2
label751:
	li t3, 94
	beq t1, t3, label121
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label128
	j label142
label125:
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label128
label142:
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
label221:
	mv t2, t1
	beq a5, s1, label93
	mv t1, t3
label38:
	beq a5, s2, label83
	beq a5, s3, label73
	j label44
.p2align 2
label752:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label128
	j label142
label296:
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
	li t1, 37
	beq a5, t1, label53
	j label50
label78:
	addiw t2, t2, 1
	li t3, 47
	sh2add t0, t2, a1
	sw s3, 0(t0)
	beq a5, t3, label63
	j label250
label88:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	beq a5, s3, label73
	j label44
label553:
	mv t3, a3
	j label107
.p2align 2
label59:
	addi a5, a5, -4
	j label54
label382:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	j label38
label270:
	addiw t2, t1, 1
	li t3, 37
	sh2add a5, t2, a1
	sw t3, 0(a5)
	j label50
label416:
	mv a4, zero
	li a2, 1
	j label129
label166:
	mv a2, zero
	j label8
label453:
	li t2, 1
	j label119
label524:
	mv a4, t0
	mv a3, zero
	j label150
.p2align 2
label99:
	addi t0, t0, -4
	j label94
.p2align 2
label92:
	addi t0, t0, -4
	j label84
label500:
	li a5, 1
	j label134
label183:
	li t3, 1
	mv t0, zero
	j label104
