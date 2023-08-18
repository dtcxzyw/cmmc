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
	xori a4, a0, 10
	li s0, 32
	li s6, 10
	li s5, 40
	li s1, 43
pcrel823:
	auipc a5, %pcrel_hi(get)
	li s4, 64
	li s2, 45
	sltu a2, zero, a1
	sltu a3, zero, a4
	addi s7, a5, %pcrel_lo(pcrel823)
	and a1, a2, a3
	beq a1, zero, label166
	mv s8, s7
	mv s9, zero
	j label155
.p2align 2
label159:
	addi s8, s8, 4
.p2align 2
label155:
	sw a0, 0(s8)
	jal getch
	addiw s9, s9, 1
	xori a4, a0, 10
	xori a2, a0, 13
	sltu a5, zero, a4
	sltu a1, zero, a2
	and a3, a1, a5
	bne a3, zero, label159
	mv a2, s9
label2:
	auipc a3, %pcrel_hi(get2)
pcrel824:
	auipc a4, %pcrel_hi(chas)
	addi a0, a3, %pcrel_lo(label2)
	addi a1, a4, %pcrel_lo(pcrel824)
	ble a2, zero, label174
	mv a3, s7
	mv t0, zero
	mv a4, zero
	li t3, 1
	lw a5, 0(s7)
	addiw t1, a5, -48
	bltu t1, s6, label14
	bne a5, s5, label736
.p2align 2
label16:
	addiw t0, t0, 1
	sh2add t1, t0, a1
	sw s5, 0(t1)
	li t1, 94
	beq a5, t1, label19
	mv t2, t0
	li t0, 41
	bne a5, t0, label740
.p2align 2
label22:
	sh2add t0, t2, a1
	addiw t1, t2, -1
	lw t4, 0(t0)
	beq t4, s5, label215
	sh2add t0, t3, a0
	mv t2, t4
	j label24
.p2align 2
label29:
	addi t0, t0, 8
.p2align 2
label24:
	sw s0, 0(t0)
	sh2add t4, t1, a1
	addiw t3, t3, 2
	addiw t1, t1, -1
	sw t2, 4(t0)
	lw t2, 0(t4)
	bne t2, s5, label29
	mv t2, t1
	beq a5, s1, label88
	mv t1, t3
	bne a5, s2, label771
.p2align 2
label36:
	sh2add t0, t2, a1
.p2align 2
label37:
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
	xori a7, t3, 94
	sltiu t5, a7, 1
	or a6, t6, t5
	or a7, t4, a6
	beq a7, zero, label41
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	beq t2, zero, label265
	addi t0, t0, -4
	j label37
label736:
	li t1, 94
	bne a5, t1, label757
.p2align 2
label19:
	addiw t2, t0, 1
	li t4, 94
	sh2add t1, t2, a1
	sw t4, 0(t1)
	li t0, 41
	beq a5, t0, label22
	bne a5, s1, label741
.p2align 2
label88:
	sh2add t0, t2, a1
	mv t1, t3
.p2align 2
label89:
	lw t3, 0(t0)
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
	xori a7, t3, 94
	sltiu t4, a7, 1
	or a6, t6, t4
	or a7, t5, a6
	beq a7, zero, label93
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label97
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	beq a5, s2, label36
	beq a5, s3, label49
	li t3, 47
	beq a5, t3, label78
	j label761
.p2align 2
label265:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	bne a5, s3, label745
.p2align 2
label49:
	sh2add t0, t2, a1
.p2align 2
label50:
	lw t3, 0(t0)
	xori a6, t3, 37
	xori t5, t3, 47
	xori t4, t3, 42
	sltiu a7, t5, 1
	sltiu t6, t4, 1
	sltiu t5, a6, 1
	or t4, t6, a7
	xori a7, t3, 94
	sltiu t6, a7, 1
	or a6, t5, t6
	or a7, t4, a6
	beq a7, zero, label283
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label55
	addiw t2, t2, 1
	li t3, 47
	sh2add t0, t2, a1
	sw s3, 0(t0)
	bne a5, t3, label763
.p2align 2
label78:
	sh2add t0, t2, a1
.p2align 2
label79:
	lw t3, 0(t0)
	xori s7, t3, 94
	xori a7, t3, 37
	xori t6, t3, 47
	xori t4, t3, 42
	sltiu a6, t6, 1
	sltiu t5, t4, 1
	sltiu t6, a7, 1
	or t4, t5, a6
	sltiu t5, s7, 1
	or a6, t6, t5
	or a7, t4, a6
	beq a7, zero, label346
	sh2add t4, t1, a0
	addiw t2, t2, -1
	addiw t1, t1, 2
	sw s0, 0(t4)
	sw t3, 4(t4)
	bne t2, zero, label84
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
	li t1, 37
	bne a5, t1, label764
.p2align 2
label68:
	sh2add a5, t2, a1
	mv t1, t2
.p2align 2
label69:
	lw t2, 0(a5)
	xori t6, t2, 37
	xori a7, t2, 94
	xori t5, t2, 47
	xori t3, t2, 42
	sltiu a6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, t6, 1
	or t3, t4, a6
	sltiu t4, a7, 1
	or t6, t5, t4
	or a6, t3, t6
	beq a6, zero, label73
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label77
	addiw t2, t1, 1
	li t3, 37
	addiw a4, a4, 1
	sh2add a5, t2, a1
	sw t3, 0(a5)
	addiw t3, t0, 1
	sh2add a5, t0, a0
	mv t0, t2
	sw s0, 0(a5)
	ble a2, a4, label98
.p2align 2
label13:
	addi a3, a3, 4
	lw a5, 0(a3)
	addiw t1, a5, -48
	bgeu t1, s6, label737
.p2align 2
label14:
	sh2add t1, t3, a0
	addiw a4, a4, 1
	addiw t3, t3, 1
	sw a5, 0(t1)
	bgt a2, a4, label13
label98:
	ble t0, zero, label101
	addiw a2, t0, -3
	ble a2, zero, label515
	sh2add a2, t0, a1
	mv a3, t3
	mv a4, t0
	j label139
.p2align 2
label737:
	beq a5, s5, label16
	li t1, 94
	beq a5, t1, label19
	mv t2, t0
	li t0, 41
	beq a5, t0, label22
	beq a5, s1, label88
label776:
	mv t1, t3
	beq a5, s2, label36
label236:
	beq a5, s3, label49
	j label743
.p2align 2
label143:
	addi a2, a2, -16
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
	bgt a4, a5, label143
	mv t3, a3
label144:
	ble a4, zero, label544
	sh2add a1, a4, a1
label149:
	sh2add a2, t3, a0
	lw a3, 0(a1)
	addiw a4, a4, -1
	addiw t3, t3, 2
	sw s0, 0(a2)
	sw a3, 4(a2)
	ble a4, zero, label101
	addi a1, a1, -4
	j label149
.p2align 2
label745:
	li t3, 47
	beq a5, t3, label78
	mv t0, t1
	li t1, 37
	beq a5, t1, label68
label65:
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label13
	j label98
.p2align 2
label763:
	mv t0, t1
	li t1, 37
	beq a5, t1, label68
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label13
	j label98
label771:
	beq a5, s3, label49
.p2align 2
label743:
	li t3, 47
	beq a5, t3, label78
.p2align 2
label761:
	mv t0, t1
	li t1, 37
	beq a5, t1, label68
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label13
	j label98
.p2align 2
label740:
	beq a5, s1, label88
	mv t1, t3
	beq a5, s2, label36
	j label236
.p2align 2
label741:
	mv t1, t3
	beq a5, s2, label36
	beq a5, s3, label49
	j label743
label101:
	sh2add a1, t3, a0
pcrel825:
	auipc a3, %pcrel_hi(ints)
	sw s4, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel825)
	lw a2, 4(a0)
	beq a2, s4, label103
	beq a2, s1, label410
	mv a4, zero
	li a2, 1
.p2align 2
label120:
	sh2add a3, a2, a0
	lw a5, 0(a3)
	xori t3, a5, 47
	xori t2, a5, 42
	xori t0, a5, 45
	sltiu t4, t2, 1
	sltiu t1, t0, 1
	sltiu t2, t3, 1
	or t0, t1, t4
	xori t4, a5, 37
	sltiu t5, t4, 1
	xori t4, a5, 94
	or t3, t2, t5
	sltiu t2, t4, 1
	or t1, t0, t3
	or t0, t1, t2
	bne t0, zero, label105
	bne a5, s0, label124
	j label133
.p2align 2
label430:
	li t4, 37
	bne t1, t4, label753
.p2align 2
label119:
	remw t2, a3, t0
	li t3, 94
	bne t1, t3, label756
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
	sh2add a5, a2, a0
	lw a3, 0(a5)
	beq a3, s4, label103
.p2align 2
label136:
	bne a3, s1, label120
.p2align 2
label105:
	sh2add a5, a4, a1
	sh2add t4, a2, a0
	lw t0, 0(a5)
	lw a3, -4(a5)
	lw t1, 0(t4)
	addw t2, t0, a3
	mv t3, t2
	beq t1, s1, label720
	mv t3, zero
label720:
	subw t4, a3, t0
	mv t2, t4
	beq t1, s2, label722
	mv t2, t3
label722:
	mulw t4, t0, a3
	mv t3, t4
	beq t1, s3, label724
	mv t3, t2
label724:
	li t4, 47
	bne t1, t4, label430
	divw t3, a3, t0
	li t4, 37
	beq t1, t4, label119
	mv t2, t3
	li t3, 94
	beq t1, t3, label115
.p2align 2
label113:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label136
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
.p2align 2
label753:
	mv t2, t3
	li t3, 94
	beq t1, t3, label115
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label136
	j label103
label125:
	addiw a3, a2, -1
	addw a2, a5, a3
label133:
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label136
label103:
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
label215:
	mv t2, t1
	beq a5, s1, label88
	j label776
.p2align 2
label756:
	sw t2, -4(a5)
	addiw a4, a4, -1
	addiw a2, a2, 1
	sh2add a5, a2, a0
	lw a3, 0(a5)
	bne a3, s4, label136
	j label103
.p2align 2
label764:
	sh2add a5, t0, a0
	addiw t3, t0, 1
	addiw a4, a4, 1
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label13
	j label98
label757:
	mv t2, t0
	li t0, 41
	beq a5, t0, label22
	beq a5, s1, label88
	j label776
label283:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s3, 0(t0)
	li t3, 47
	beq a5, t3, label78
	mv t0, t1
	j label62
label346:
	mv t0, t1
	addiw t2, t2, 1
	li t3, 47
	sh2add t1, t2, a1
	sw t3, 0(t1)
label62:
	li t1, 37
	beq a5, t1, label68
	j label65
label73:
	addiw t2, t1, 1
	li t3, 37
	addiw a4, a4, 1
	sh2add a5, t2, a1
	sw t3, 0(a5)
	addiw t3, t0, 1
	sh2add a5, t0, a0
	mv t0, t2
	sw s0, 0(a5)
	bgt a2, a4, label13
	j label98
label93:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s1, 0(t0)
	beq a5, s2, label36
	j label236
label41:
	addiw t2, t2, 1
	sh2add t0, t2, a1
	sw s2, 0(t0)
	beq a5, s3, label49
	li t3, 47
	beq a5, t3, label78
	mv t0, t1
	li t1, 37
	beq a5, t1, label68
	j label65
label174:
	li t3, 1
	mv t0, zero
	j label98
.p2align 2
label97:
	addi t0, t0, -4
	j label89
label481:
	li a5, 1
	j label125
.p2align 2
label55:
	addi t0, t0, -4
	j label50
.p2align 2
label84:
	addi t0, t0, -4
	j label79
label410:
	li a2, 1
	mv a4, zero
	j label105
label166:
	mv a2, zero
	j label2
label445:
	li t2, 1
	j label113
label544:
	mv t3, a3
	j label101
label515:
	mv a4, t0
	mv a3, zero
	j label144
.p2align 2
label77:
	addi a5, a5, -4
	j label69
