.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
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
.align 4
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
.align 4
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
.globl main
main:
	addi sp, sp, -88
	li a0, 10
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s3, 40(sp)
	sd s4, 32(sp)
	sd ra, 24(sp)
	sw a0, 0(sp)
pcrel164:
	auipc a0, %pcrel_hi(__HELLO)
	sw zero, 4(sp)
	addi s1, a0, %pcrel_lo(pcrel164)
	sd zero, 8(sp)
	sw zero, 16(sp)
	lw a0, %pcrel_lo(pcrel164)(a0)
	beq a0, zero, label31
	mv s2, zero
label2:
	sh2add s3, s2, s1
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	beq a1, zero, label31
	j label2
label31:
	mv s1, zero
label4:
	li a0, 715827883
	li a4, 6
	mul a1, s1, a0
	mul a0, s1, a0
	srli a3, a1, 63
	srli a2, a1, 32
	add a1, a3, a2
	srli a3, a0, 63
	srli a2, a0, 32
	add a0, a3, a2
	mulw a2, a0, a4
	subw s3, s1, a2
	beq a1, s3, label6
pcrel165:
	auipc a2, %pcrel_hi(N4__mE___)
	addi a0, a2, %pcrel_lo(pcrel165)
	li a2, 200
	mv s2, a0
	mul a1, a1, a2
	add s4, a0, a1
	lw a0, 0(s4)
	beq a0, zero, label9
	mv s5, zero
label18:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	beq a1, zero, label9
	j label18
label6:
	slliw a2, s1, 4
	addw a1, a2, s1
	addiw a0, a1, 23
	slli a2, a0, 1
	srli a1, a2, 59
	add a3, a0, a1
	andi a2, a3, -32
	subw s1, a0, a2
	bne s1, zero, label4
	mv a0, zero
	ld ra, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label9:
	auipc a0, %pcrel_hi(saY_HeI10_To)
	addi s4, a0, %pcrel_lo(label9)
	lw a0, %pcrel_lo(label9)(a0)
	beq a0, zero, label12
	mv s5, zero
label10:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	beq a1, zero, label12
	j label10
label159:
	mv s3, zero
	j label13
label12:
	li a0, 200
	mul a1, s3, a0
	add s2, s2, a1
	lw a0, 0(s2)
	beq a0, zero, label15
	j label159
label160:
	mv s2, zero
	j label16
label15:
	lw a0, 0(sp)
	beq a0, zero, label6
	j label160
label16:
	sh2add s3, s2, s0
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	beq a1, zero, label6
	j label16
label13:
	sh2add s4, s3, s2
	lw a0, 0(s4)
	jal putch
	addiw s3, s3, 1
	lw a1, 4(s4)
	beq a1, zero, label15
	j label13
