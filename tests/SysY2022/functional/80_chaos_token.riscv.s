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
	addi sp, sp, -88
	li a1, 10
	sd ra, 0(sp)
	zext.w a0, a1
	sd s0, 8(sp)
	addi s0, sp, 64
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd a0, 64(sp)
pcrel170:
	auipc a0, %pcrel_hi(__HELLO)
	sd zero, 72(sp)
	addi s1, a0, %pcrel_lo(pcrel170)
	sw zero, 80(sp)
	lw a1, %pcrel_lo(pcrel170)(a0)
	bne a1, zero, label31
label30:
	mv s1, zero
	j label4
label31:
	mv s2, zero
.p2align 2
label2:
	sh2add s3, s2, s1
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	bne a1, zero, label2
	j label30
label4:
	lui a3, 174763
	li a4, 6
	addiw a0, a3, -1365
	remw s2, s1, a4
	mul a1, s1, a0
	srli a3, a1, 63
	srli a2, a1, 32
	add a0, a3, a2
	bne a0, s2, label6
label18:
	slliw a1, s1, 4
	addw a2, a1, s1
	addiw a0, a2, 23
	slli a3, a0, 1
	srli a4, a3, 59
	add a2, a0, a4
	andi a1, a2, -32
	subw s1, a0, a1
	bne s1, zero, label4
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 88
	ret
label6:
	auipc a1, %pcrel_hi(N4__mE___)
	li a3, 200
	addi s3, a1, %pcrel_lo(label6)
	mul a2, a0, a3
	add s4, s3, a2
	lw a1, 0(s4)
	beq a1, zero, label9
	mv s5, zero
.p2align 2
label7:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	bne a1, zero, label7
label9:
	auipc a0, %pcrel_hi(saY_HeI10_To)
	lw a1, %pcrel_lo(label9)(a0)
	addi s4, a0, %pcrel_lo(label9)
	beq a1, zero, label10
	mv s5, zero
	j label16
label10:
	li a2, 200
	mul a1, s2, a2
	add s2, s3, a1
	lw a0, 0(s2)
	bne a0, zero, label80
	j label11
.p2align 2
label16:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	bne a1, zero, label16
	j label10
label80:
	mv s3, zero
	j label14
label11:
	lw a0, 64(sp)
	bne a0, zero, label85
	j label18
.p2align 2
label14:
	sh2add s4, s3, s2
	lw a0, 0(s4)
	jal putch
	addiw s3, s3, 1
	lw a1, 4(s4)
	bne a1, zero, label14
	j label11
label85:
	mv s2, zero
.p2align 2
label12:
	sh2add s3, s2, s0
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	bne a1, zero, label12
	j label18
