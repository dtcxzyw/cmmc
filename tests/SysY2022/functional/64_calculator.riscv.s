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
	xori a1, a0, 13
	xori a4, a0, 10
	li s5, 43
pcrel791:
	auipc a5, %pcrel_hi(get)
	li s1, 47
	li s0, 32
	li s8, 41
	li s3, 40
	li s6, 45
	li s4, 10
	li s2, 37
	sltu a2, zero, a1
	sltu a3, zero, a4
	addi s9, a5, %pcrel_lo(pcrel791)
	and a1, a2, a3
	beq a1, zero, label159
	mv s10, s9
	mv s11, zero
.p2align 2
label3:
	sw a0, 0(s10)
	jal getch
	addiw s11, s11, 1
	xori a4, a0, 10
	xori a3, a0, 13
	sltu a2, zero, a4
	sltu a1, zero, a3
	and a3, a1, a2
	beq a3, zero, label167
	addi s10, s10, 4
	j label3
label167:
	mv a2, s11
pcrel792:
	auipc a3, %pcrel_hi(get2)
pcrel793:
	auipc a4, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a0, a3, %pcrel_lo(pcrel792)
	addi a1, a4, %pcrel_lo(pcrel793)
	mv a3, zero
	addi t0, a0, 4
label10:
	bgt a2, a3, label16
	j label101
.p2align 2
label100:
	sw a4, 0(t0)
	addiw t2, t2, 1
	addi s9, s9, 4
	addi t0, t0, 4
	ble a2, a3, label101
.p2align 2
label16:
	lw a4, 0(s9)
	addiw a3, a3, 1
	addiw t1, a4, -48
	bltu t1, s4, label100
	beq a4, s3, label18
	li t1, 94
	bne a4, t1, label712
.p2align 2
label21:
	addiw t0, a5, 1
	li t1, 94
	sh2add t3, t0, a1
	sw t1, 0(t3)
	mv t1, t0
	bne a4, s8, label202
.p2align 2
label24:
	sh2add a5, t1, a1
	addiw t0, t1, -1
	lw t3, 0(a5)
	beq t3, s3, label210
	sh2add a5, t2, a0
	mv t1, t3
.p2align 2
label26:
	sw s0, 0(a5)
	sh2add t3, t0, a1
	addiw t2, t2, 2
	addiw t0, t0, -1
	sw t1, 4(a5)
	lw t1, 0(t3)
	beq t1, s3, label222
	addi a5, a5, 8
	j label26
.p2align 2
label222:
	mv t1, t0
	bne a4, s5, label715
.p2align 2
label35:
	sh2add a5, t1, a1
	mv t0, t2
.p2align 2
label36:
	lw t2, 0(a5)
	xori a7, t2, 42
	xori t5, t2, 45
	xori t3, t2, 43
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a7, 1
	or t3, t4, t6
	xori t6, t2, 47
	sltiu a6, t6, 1
	xori t6, t2, 37
	or a7, t5, a6
	sltiu t5, t6, 1
	or t4, t3, a7
	xori a7, t2, 94
	sltiu a6, a7, 1
	or t6, t5, a6
	or t3, t4, t6
	beq t3, zero, label244
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label41
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s5, 0(a5)
	bne a4, s6, label734
.p2align 2
label90:
	sh2add a5, t1, a1
.p2align 2
label91:
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
	sltiu a6, a7, 1
	or t6, t5, a6
	or t3, t4, t6
	beq t3, zero, label95
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label99
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s6, 0(a5)
	beq a4, s7, label80
	mv t2, t1
	beq a4, s1, label54
	mv t1, t0
	mv t0, t2
	beq a4, s2, label70
	j label717
.p2align 2
label356:
	addiw t2, t1, 1
	sh2add a5, t2, a1
	sw s7, 0(a5)
	beq a4, s1, label54
	mv t1, t0
	mv t0, t2
	bne a4, s2, label737
.p2align 2
label70:
	sh2add a4, t0, a1
	mv a5, t1
.p2align 2
label71:
	lw t1, 0(a4)
	xori a6, t1, 94
	xori t6, t1, 37
	xori t3, t1, 47
	xori t2, t1, 42
	sltiu a7, a6, 1
	sltiu t5, t3, 1
	sltiu t4, t2, 1
	sltiu t3, t6, 1
	or t2, t4, t5
	or t5, t3, a7
	or t4, t2, t5
	beq t4, zero, label318
	sh2add t2, a5, a0
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	bne t0, zero, label76
	mv a4, a5
	addi s9, s9, 4
	addiw t2, a5, 1
	addiw a5, t0, 1
	sh2add t0, a4, a0
	sh2add t1, a5, a1
	sw s2, 0(t1)
	sw s0, 0(t0)
	sh2add t0, t2, a0
	bgt a2, a3, label16
	j label101
.p2align 2
label734:
	bne a4, s7, label744
.p2align 2
label80:
	sh2add a5, t1, a1
.p2align 2
label81:
	lw t2, 0(a5)
	xori a6, t2, 94
	xori a7, t2, 37
	xori t4, t2, 47
	xori t3, t2, 42
	sltiu t6, t4, 1
	sltiu t5, t3, 1
	sltiu t4, a7, 1
	or t3, t5, t6
	sltiu t6, a6, 1
	or a7, t4, t6
	or t5, t3, a7
	beq t5, zero, label85
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label356
	addi a5, a5, -4
	j label81
label744:
	mv t2, t1
	bne a4, s1, label269
.p2align 2
label54:
	sh2add a5, t2, a1
	mv t1, t2
.p2align 2
label55:
	lw t2, 0(a5)
	xori a6, t2, 37
	xori t4, t2, 47
	xori t3, t2, 42
	sltiu t6, t4, 1
	sltiu t5, t3, 1
	sltiu t4, a6, 1
	or t3, t5, t6
	xori t6, t2, 94
	sltiu a7, t6, 1
	or a6, t4, a7
	or t5, t3, a6
	beq t5, zero, label282
	sh2add t3, t0, a0
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label60
	addiw a5, t1, 1
	mv t1, t0
	sh2add t2, a5, a1
	mv t0, a5
	sw s1, 0(t2)
	beq a4, s2, label70
	mv a4, t1
	addiw t2, t1, 1
	addi s9, s9, 4
	sh2add t0, t1, a0
	sw s0, 0(t0)
	sh2add t0, t2, a0
	bgt a2, a3, label16
	j label101
.p2align 2
label18:
	addiw a5, a5, 1
	sh2add t0, a5, a1
	sw s3, 0(t0)
	li t1, 94
	beq a4, t1, label21
	mv t1, a5
	beq a4, s8, label24
	beq a4, s5, label35
	mv t0, t2
	beq a4, s6, label90
label741:
	beq a4, s7, label80
	j label750
label101:
	ble a5, zero, label119
	addiw a3, a5, -3
	ble a3, zero, label399
	sh2add a2, a5, a1
.p2align 2
label104:
	lw a4, 0(a2)
	sh2add a3, t2, a0
	addiw a5, a5, -4
	addiw t2, t2, 8
	sw s0, 0(a3)
	sw a4, 4(a3)
	lw t0, -4(a2)
	sw s0, 8(a3)
	sw t0, 12(a3)
	lw a4, -8(a2)
	sw s0, 16(a3)
	sw a4, 20(a3)
	lw t0, -12(a2)
	sw s0, 24(a3)
	sw t0, 28(a3)
	li a3, 3
	ble a5, a3, label423
	addi a2, a2, -16
	j label104
.p2align 2
label202:
	beq a4, s5, label35
	mv t0, t2
	beq a4, s6, label90
	beq a4, s7, label80
	mv t2, t1
	beq a4, s1, label54
	j label269
.p2align 2
label712:
	mv t1, a5
	beq a4, s8, label24
	beq a4, s5, label35
	mv t0, t2
	beq a4, s6, label90
	j label741
.p2align 2
label715:
	mv t0, t2
	beq a4, s6, label90
	beq a4, s7, label80
label750:
	mv t2, t1
	beq a4, s1, label54
	j label269
label423:
	mv a2, t2
label109:
	ble a5, zero, label119
	sh2add a1, a5, a1
label114:
	lw a3, 0(a1)
	sh2add a4, a2, a0
	addiw a5, a5, -1
	addiw a2, a2, 2
	sw s0, 0(a4)
	sw a3, 4(a4)
	ble a5, zero, label440
	addi a1, a1, -4
	j label114
.p2align 2
label269:
	mv t1, t0
	mv t0, t2
	beq a4, s2, label70
.p2align 2
label717:
	mv a5, t0
	mv a4, t1
	addiw t2, t1, 1
	addi s9, s9, 4
	sh2add t0, t1, a0
	sw s0, 0(t0)
	sh2add t0, t2, a0
	bgt a2, a3, label16
	j label101
label440:
	mv t2, a2
label119:
	sh2add a1, t2, a0
	li a5, 64
pcrel794:
	auipc a3, %pcrel_hi(ints)
	sw a5, 0(a1)
	addi a1, a3, %pcrel_lo(pcrel794)
	lw a2, 4(a0)
	beq a2, a5, label152
	mv a3, zero
	li a2, 1
	j label121
.p2align 2
label137:
	divw t0, a4, t3
	bne a5, s2, label517
.p2align 2
label140:
	remw t0, a4, t3
	li t1, 94
	bne a5, t1, label521
.p2align 2
label143:
	beq t3, zero, label525
	mv a5, t3
	li t0, 1
.p2align 2
label144:
	mulw t0, a4, t0
	addiw a5, a5, -1
	bne a5, zero, label144
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add a4, a3, a1
	sw t0, 0(a4)
	sh2add t0, a2, a0
	lw a4, 0(t0)
	beq a4, a5, label152
.p2align 2
label121:
	sh2add a4, a2, a0
	lw a5, 0(a4)
	xori a7, a5, 94
	xori t6, a5, 47
	xori t4, a5, 42
	xori t5, a5, 45
	xori t0, a5, 43
	sltiu t1, t5, 1
	sltiu t2, t0, 1
	sltiu t5, t6, 1
	sltiu t0, t4, 1
	or t3, t2, t1
	xori t6, a5, 37
	or a6, t0, t5
	sltiu t5, t6, 1
	or t4, t3, a6
	sltiu a6, a7, 1
	or t6, t5, a6
	or t3, t4, t6
	beq t3, zero, label124
	sh2add t5, a3, a1
	lw t3, 0(t5)
	lw a4, -4(t5)
	addw t6, t3, a4
	mv t4, t6
	bne t2, zero, label694
	mv t4, zero
.p2align 2
label694:
	subw t5, a4, t3
	mv t2, t5
	bne t1, zero, label696
	mv t2, t4
.p2align 2
label696:
	mulw t5, t3, a4
	mv t1, t5
	bne t0, zero, label698
	mv t1, t2
.p2align 2
label698:
	beq a5, s1, label137
	mv t0, t1
	beq a5, s2, label140
	li t1, 94
	beq a5, t1, label143
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add a4, a3, a1
	sw t0, 0(a4)
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label121
	j label152
.p2align 2
label517:
	li t1, 94
	beq a5, t1, label143
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add a4, a3, a1
	sw t0, 0(a4)
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label121
	j label152
label124:
	beq a5, s0, label472
	addiw t0, a3, 1
	addiw a5, a5, -48
	sh2add t1, t0, a1
	sw a5, 0(t1)
	lw a3, 4(a4)
	beq a3, s0, label482
	addi a3, a4, 4
	li a4, 1
	j label129
.p2align 2
label133:
	addi a3, a3, 4
.p2align 2
label129:
	lw t1, 0(a3)
	sh2add t2, a5, a5
	addiw a4, a4, 1
	slliw t4, t2, 1
	sh2add t2, t0, a1
	addi t3, t4, -48
	addw a5, t1, t3
	sw a5, 0(t2)
	lw t1, 4(a3)
	bne t1, s0, label133
label126:
	addw a2, a2, a4
	mv a3, t0
	j label149
label472:
	addiw a2, a2, 1
label149:
	sh2add t0, a2, a0
	li a5, 64
	lw a4, 0(t0)
	bne a4, a5, label121
	j label152
label525:
	li t0, 1
	addiw a3, a3, -1
	sh2add a4, a3, a1
	sw t0, 0(a4)
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label121
label152:
	lw a0, 4(a1)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
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
label210:
	mv t1, t0
	beq a4, s5, label35
	mv t0, t2
	beq a4, s6, label90
	beq a4, s7, label80
	mv t2, t1
	beq a4, s1, label54
	j label269
.p2align 2
label521:
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add a4, a3, a1
	sw t0, 0(a4)
	sh2add t0, a2, a0
	lw a4, 0(t0)
	bne a4, a5, label121
	j label152
label85:
	addiw t2, t1, 1
	sh2add a5, t2, a1
	sw s7, 0(a5)
	beq a4, s1, label54
	j label269
label318:
	mv a4, a5
	addiw a5, t0, 1
	sh2add t1, a5, a1
	sw s2, 0(t1)
label67:
	sh2add t0, a4, a0
	addiw t2, a4, 1
	addi s9, s9, 4
	sw s0, 0(t0)
	sh2add t0, t2, a0
	bgt a2, a3, label16
	j label101
label282:
	addiw a5, t1, 1
	mv t1, t0
	sh2add t2, a5, a1
	mv t0, a5
	sw s1, 0(t2)
	beq a4, s2, label70
	mv a4, t1
	j label67
label737:
	mv a5, t0
	mv a4, t1
	addiw t2, t1, 1
	addi s9, s9, 4
	sh2add t0, t1, a0
	sw s0, 0(t0)
	sh2add t0, t2, a0
	bgt a2, a3, label16
	j label101
label95:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s6, 0(a5)
	beq a4, s7, label80
	j label750
label244:
	addiw t1, t1, 1
	sh2add a5, t1, a1
	sw s5, 0(a5)
	beq a4, s6, label90
	beq a4, s7, label80
	j label750
.p2align 2
label41:
	addi a5, a5, -4
	j label36
.p2align 2
label60:
	addi a5, a5, -4
	j label55
.p2align 2
label99:
	addi a5, a5, -4
	j label91
label399:
	mv a2, t2
	mv t2, zero
	j label109
.p2align 2
label76:
	addi a4, a4, -4
	j label71
label159:
	mv a2, zero
pcrel795:
	auipc a3, %pcrel_hi(get2)
pcrel796:
	auipc a4, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a0, a3, %pcrel_lo(pcrel795)
	addi a1, a4, %pcrel_lo(pcrel796)
	mv a3, zero
	addi t0, a0, 4
	j label10
label482:
	li a4, 1
	j label126
