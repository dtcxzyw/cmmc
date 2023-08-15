.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 8
__HELLO:
	.4byte	87
	.4byte	101
	.4byte	108
	.4byte	99
	.4byte	111
	.4byte	109
	.4byte	101
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	104
	.4byte	101
	.4byte	32
	.4byte	74
	.4byte	97
	.4byte	112
	.4byte	97
	.4byte	114
	.4byte	105
	.4byte	32
	.4byte	80
	.4byte	97
	.4byte	114
	.4byte	107
	.4byte	33
	.4byte	10
	.zero	288
.align 8
N4__mE___:
	.4byte	83
	.4byte	97
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	114
	.4byte	117
	.zero	172
	.4byte	75
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	110
	.zero	180
	.4byte	72
	.4byte	97
	.4byte	115
	.4byte	104
	.4byte	105
	.4byte	98
	.4byte	105
	.4byte	114
	.4byte	111
	.4byte	107
	.4byte	111
	.4byte	117
	.zero	152
	.4byte	65
	.4byte	114
	.4byte	97
	.4byte	105
	.4byte	103
	.4byte	117
	.4byte	109
	.4byte	97
	.zero	168
	.4byte	72
	.4byte	117
	.4byte	110
	.4byte	98
	.4byte	111
	.4byte	114
	.4byte	117
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	80
	.4byte	101
	.4byte	110
	.4byte	103
	.4byte	105
	.4byte	110
	.zero	136
	.4byte	84
	.4byte	97
	.4byte	105
	.4byte	114
	.4byte	105
	.4byte	107
	.4byte	117
	.4byte	32
	.4byte	79
	.4byte	111
	.4byte	107
	.4byte	97
	.4byte	109
	.4byte	105
	.zero	144
.align 8
saY_HeI10_To:
	.4byte	32
	.4byte	115
	.4byte	97
	.4byte	121
	.4byte	115
	.4byte	32
	.4byte	104
	.4byte	101
	.4byte	108
	.4byte	108
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.zero	100
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[20] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -72
	li a1, 10
	sd ra, 0(sp)
	zext.w a0, a1
	sd s0, 8(sp)
	addi s0, sp, 48
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd a0, 48(sp)
pcrel168:
	auipc a0, %pcrel_hi(__HELLO)
	sd zero, 56(sp)
	addi s2, a0, %pcrel_lo(pcrel168)
	sw zero, 64(sp)
	lw a1, %pcrel_lo(pcrel168)(a0)
	beq a1, zero, label41
.p2align 2
label3:
	lw a0, 0(s2)
	jal putch
	lw a1, 4(s2)
	beq a1, zero, label41
	addi s2, s2, 4
	j label3
label41:
	mv s1, zero
label6:
	lui a3, 174763
	li a4, 6
	addiw a0, a3, -1365
	remw s2, s1, a4
	mul a1, s1, a0
	srli a3, a1, 63
	srli a2, a1, 32
	add a0, a3, a2
	bne a0, s2, label8
label28:
	slliw a2, s1, 4
	addw a1, a2, s1
	addiw a0, a1, 23
	slli a4, a0, 1
	srli a2, a4, 59
	add a1, a0, a2
	andi a3, a1, -32
	subw s1, a0, a3
	bne s1, zero, label6
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 72
	ret
label8:
	auipc a2, %pcrel_hi(N4__mE___)
	li a3, 200
	addi s3, a2, %pcrel_lo(label8)
	mul a1, a0, a3
	add s4, s3, a1
	lw a2, 0(s4)
	beq a2, zero, label13
.p2align 2
label10:
	lw a0, 0(s4)
	jal putch
	lw a1, 4(s4)
	beq a1, zero, label13
	addi s4, s4, 4
	j label10
label13:
	auipc a0, %pcrel_hi(saY_HeI10_To)
	lw a1, %pcrel_lo(label13)(a0)
	addi s4, a0, %pcrel_lo(label13)
	beq a1, zero, label14
.p2align 2
label25:
	lw a0, 0(s4)
	jal putch
	lw a1, 4(s4)
	beq a1, zero, label14
	addi s4, s4, 4
	j label25
label14:
	li a2, 200
	mul a0, s2, a2
	add s2, s3, a0
	lw a1, 0(s2)
	beq a1, zero, label15
.p2align 2
label21:
	lw a0, 0(s2)
	jal putch
	lw a1, 4(s2)
	beq a1, zero, label15
	addi s2, s2, 4
	j label21
label15:
	lw a0, 48(sp)
	beq a0, zero, label28
	mv s2, s0
	j label17
.p2align 2
label19:
	addi s2, s2, 4
.p2align 2
label17:
	lw a0, 0(s2)
	jal putch
	lw a1, 4(s2)
	bne a1, zero, label19
	j label28
