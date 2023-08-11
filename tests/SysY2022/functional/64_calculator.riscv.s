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
	li s6, 45
	li s5, 43
	li s8, 41
	li s0, 32
	xori a3, a0, 10
	li s7, 42
	xori a1, a0, 13
pcrel793:
	auipc a5, %pcrel_hi(get)
	li s3, 40
	li s4, 10
	li s1, 47
	li s2, 37
	sltu a4, zero, a3
	sltu a2, zero, a1
	addi s9, a5, %pcrel_lo(pcrel793)
	and a1, a2, a4
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
pcrel794:
	auipc a0, %pcrel_hi(get2)
pcrel795:
	auipc a3, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a1, a0, %pcrel_lo(pcrel794)
	addi a0, a3, %pcrel_lo(pcrel795)
	addi t0, a1, 4
	mv a3, zero
label10:
	bgt a2, a3, label16
	j label101
.p2align 2
label32:
	addi a5, a5, 8
.p2align 2
label27:
	sw s0, 0(a5)
	sh2add t3, t0, a0
	addiw t2, t2, 2
	addiw t0, t0, -1
	sw t1, 4(a5)
	lw t1, 0(t3)
	bne t1, s3, label32
	mv t1, t0
	beq a4, s5, label91
	mv t0, t2
	beq a4, s6, label39
	beq a4, s7, label81
.p2align 2
label715:
	beq a4, s1, label71
label733:
	bne a4, s2, label744
.p2align 2
label61:
	sh2add a4, t1, a0
	mv a5, t0
	mv t0, t1
.p2align 2
label62:
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
	or t6, t3, a6
	or t4, t2, t6
	beq t4, zero, label295
	sh2add t2, a5, a1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	bne t0, zero, label70
	mv a4, a5
	addi s9, s9, 4
	addiw t2, a5, 1
	addiw a5, t0, 1
	sh2add t0, t2, a1
	sh2add t1, a5, a0
	sw s2, 0(t1)
	sh2add t1, a4, a1
	sw s0, 0(t1)
	ble a2, a3, label101
.p2align 2
label16:
	lw a4, 0(s9)
	addiw a3, a3, 1
	addiw t1, a4, -48
	bgeu t1, s4, label184
	sw a4, 0(t0)
	addiw t2, t2, 1
	addi s9, s9, 4
	addi t0, t0, 4
	bgt a2, a3, label16
label101:
	ble a5, zero, label119
	addiw a3, a5, -3
	ble a3, zero, label399
	sh2add a2, a5, a0
.p2align 2
label114:
	sh2add a3, t2, a1
	lw t0, 0(a2)
	addiw a5, a5, -4
	addiw t2, t2, 8
	sw s0, 0(a3)
	sw t0, 4(a3)
	lw a4, -4(a2)
	sw s0, 8(a3)
	sw a4, 12(a3)
	lw t0, -8(a2)
	sw s0, 16(a3)
	sw t0, 20(a3)
	lw a4, -12(a2)
	sw s0, 24(a3)
	sw a4, 28(a3)
	li a3, 3
	ble a5, a3, label440
	addi a2, a2, -16
	j label114
.p2align 2
label389:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s5, 0(a5)
	bne a4, s6, label725
.p2align 2
label39:
	sh2add a5, t1, a0
.p2align 2
label40:
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
	xori a7, t2, 37
	or a6, t5, t6
	sltiu t5, a7, 1
	or t3, t4, a6
	xori t4, t2, 94
	sltiu a7, t4, 1
	or a6, t5, a7
	or t6, t3, a6
	beq t6, zero, label44
	sh2add t3, t0, a1
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label48
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s6, 0(a5)
	beq a4, s7, label81
	beq a4, s1, label71
	beq a4, s2, label61
label745:
	mv a5, t1
	mv a4, t0
	sh2add t1, t0, a1
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t0, t2, a1
	sw s0, 0(t1)
	bgt a2, a3, label16
	j label101
.p2align 2
label22:
	addiw t1, a5, 1
	li t3, 94
	sh2add t0, t1, a0
	sw t3, 0(t0)
	beq a4, s8, label25
	bne a4, s5, label713
.p2align 2
label91:
	sh2add a5, t1, a0
	mv t0, t2
.p2align 2
label92:
	lw t2, 0(a5)
	xori a7, t2, 47
	xori t6, t2, 42
	xori t5, t2, 45
	xori t3, t2, 43
	sltiu a6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, t6, 1
	or t3, t4, a6
	sltiu a6, a7, 1
	xori a7, t2, 37
	or t6, t5, a6
	sltiu t5, a7, 1
	or t4, t3, t6
	xori t3, t2, 94
	sltiu t6, t3, 1
	or a6, t5, t6
	or t3, t4, a6
	beq t3, zero, label96
	sh2add t3, t0, a1
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label389
	addi a5, a5, -4
	j label92
.p2align 2
label356:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s7, 0(a5)
	bne a4, s1, label735
.p2align 2
label71:
	sh2add a5, t1, a0
.p2align 2
label72:
	lw t2, 0(a5)
	xori a7, t2, 94
	xori a6, t2, 37
	xori t5, t2, 47
	xori t3, t2, 42
	sltiu t6, t5, 1
	sltiu t4, t3, 1
	sltiu t5, a6, 1
	or t3, t4, t6
	sltiu t6, a7, 1
	or t4, t5, t6
	or a6, t3, t4
	beq a6, zero, label76
	sh2add t3, t0, a1
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	bne t1, zero, label80
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s1, 0(a5)
	beq a4, s2, label61
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a1
	sh2add t0, t2, a1
	sw s0, 0(t1)
	bgt a2, a3, label16
	j label101
label740:
	beq a4, s5, label91
	mv t0, t2
	beq a4, s6, label39
label234:
	bne a4, s7, label715
.p2align 2
label81:
	sh2add a5, t1, a0
.p2align 2
label82:
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
	or a6, t5, a7
	or t6, t3, a6
	beq t6, zero, label347
	sh2add t3, t0, a1
	addiw t1, t1, -1
	addiw t0, t0, 2
	sw s0, 0(t3)
	sw t2, 4(t3)
	beq t1, zero, label356
	addi a5, a5, -4
	j label82
.p2align 2
label184:
	bne a4, s3, label709
	addiw a5, a5, 1
	sh2add t0, a5, a0
	sw s3, 0(t0)
	li t3, 94
	beq a4, t3, label22
	mv t1, a5
	beq a4, s8, label25
	beq a4, s5, label91
	mv t0, t2
	beq a4, s6, label39
	j label234
.p2align 2
label709:
	li t3, 94
	beq a4, t3, label22
	mv t1, a5
	bne a4, s8, label740
.p2align 2
label25:
	sh2add a5, t1, a0
	addiw t0, t1, -1
	lw t3, 0(a5)
	beq t3, s3, label213
	sh2add a5, t2, a1
	mv t1, t3
	j label27
.p2align 2
label725:
	beq a4, s7, label81
	beq a4, s1, label71
	j label733
.p2align 2
label735:
	beq a4, s2, label61
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a1
	sh2add t0, t2, a1
	sw s0, 0(t1)
	bgt a2, a3, label16
	j label101
label713:
	mv t0, t2
	beq a4, s6, label39
	beq a4, s7, label81
	j label715
label440:
	mv a2, t2
label103:
	ble a5, zero, label119
	sh2add a0, a5, a0
	j label108
label112:
	addi a0, a0, -4
label108:
	sh2add a3, a2, a1
	lw a4, 0(a0)
	addiw a5, a5, -1
	addiw a2, a2, 2
	sw s0, 0(a3)
	sw a4, 4(a3)
	bgt a5, zero, label112
	mv t2, a2
label119:
	sh2add a0, t2, a1
	li a5, 64
pcrel796:
	auipc a2, %pcrel_hi(ints)
	sw a5, 0(a0)
	addi a0, a2, %pcrel_lo(pcrel796)
	lw a3, 4(a1)
	beq a3, a5, label121
	li a2, 1
	mv a3, zero
	j label122
.p2align 2
label487:
	mv t1, t2
	beq t0, s2, label139
	li t3, 94
	bne t0, t3, label737
.p2align 2
label133:
	beq t4, zero, label498
	mv t0, t4
	li t1, 1
.p2align 2
label134:
	mulw t1, a4, t1
	addiw t0, t0, -1
	bne t0, zero, label134
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a1
	lw a4, 0(t0)
	beq a4, a5, label121
.p2align 2
label122:
	sh2add a4, a2, a1
	lw t0, 0(a4)
	xori a6, t0, 47
	xori t4, t0, 42
	xori t1, t0, 45
	xori a5, t0, 43
	sltiu t5, a6, 1
	sltiu t2, t1, 1
	sltiu t3, a5, 1
	xori a6, t0, 37
	sltiu t1, t4, 1
	or a5, t3, t2
	or t6, t1, t5
	sltiu t5, a6, 1
	or t4, a5, t6
	xori a5, t0, 94
	sltiu a7, a5, 1
	sh2add a5, a3, a0
	or a6, t5, a7
	or t6, t4, a6
	beq t6, zero, label143
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
	bne t0, s1, label487
	divw t1, a4, t4
	beq t0, s2, label139
	li t3, 94
	beq t0, t3, label133
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a1
	lw a4, 0(t0)
	bne a4, a5, label122
	j label121
.p2align 2
label139:
	remw t1, a4, t4
	li t3, 94
	beq t0, t3, label133
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a1
	lw a4, 0(t0)
	bne a4, a5, label122
	j label121
label143:
	beq t0, s0, label125
	addiw t1, t0, -48
	addiw t0, a3, 1
	sw t1, 4(a5)
	lw t2, 4(a4)
	beq t2, s0, label527
	addi a3, a4, 4
	li a4, 1
	j label148
.p2align 2
label152:
	addi a3, a3, 4
.p2align 2
label148:
	sh2add t5, t1, t1
	lw t4, 0(a3)
	addiw a4, a4, 1
	slliw t3, t5, 1
	addi t2, t3, -48
	addw t1, t2, t4
	sw t1, 4(a5)
	lw t3, 4(a3)
	bne t3, s0, label152
label145:
	addw a2, a2, a4
	mv a3, t0
	sh2add t0, a2, a1
	li a5, 64
	lw a4, 0(t0)
	bne a4, a5, label122
	j label121
label125:
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a1
	lw a4, 0(t0)
	bne a4, a5, label122
label121:
	lw a0, 4(a0)
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
label213:
	mv t1, t0
	beq a4, s5, label91
	mv t0, t2
	beq a4, s6, label39
	j label234
.p2align 2
label737:
	sw t1, -4(a5)
	addiw a3, a3, -1
	addiw a2, a2, 1
	li a5, 64
	sh2add t0, a2, a1
	lw a4, 0(t0)
	bne a4, a5, label122
	j label121
label76:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s1, 0(a5)
	beq a4, s2, label61
	j label745
label347:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s7, 0(a5)
label52:
	beq a4, s1, label71
	beq a4, s2, label61
	j label745
label295:
	mv a4, a5
	addiw a5, t0, 1
	addiw t2, a4, 1
	addi s9, s9, 4
	sh2add t1, a5, a0
	sh2add t0, t2, a1
	sw s2, 0(t1)
	sh2add t1, a4, a1
	sw s0, 0(t1)
	bgt a2, a3, label16
	j label101
label744:
	mv a5, t1
	mv a4, t0
	addiw t2, t0, 1
	addi s9, s9, 4
	sh2add t1, t0, a1
	sh2add t0, t2, a1
	sw s0, 0(t1)
	bgt a2, a3, label16
	j label101
label96:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s5, 0(a5)
	beq a4, s6, label39
	j label234
label44:
	addiw t1, t1, 1
	sh2add a5, t1, a0
	sw s6, 0(a5)
	beq a4, s7, label81
	j label52
.p2align 2
label80:
	addi a5, a5, -4
	j label72
.p2align 2
label48:
	addi a5, a5, -4
	j label40
.p2align 2
label70:
	addi a4, a4, -4
	j label62
label527:
	li a4, 1
	j label145
label399:
	mv a2, t2
	mv t2, zero
	j label103
label159:
	mv a2, zero
pcrel797:
	auipc a0, %pcrel_hi(get2)
pcrel798:
	auipc a3, %pcrel_hi(chas)
	mv a5, zero
	li t2, 1
	addi a1, a0, %pcrel_lo(pcrel797)
	addi a0, a3, %pcrel_lo(pcrel798)
	addi t0, a1, 4
	mv a3, zero
	j label10
label498:
	li t1, 1
	addiw a3, a3, -1
	sw t1, -4(a5)
	j label125
