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
.globl main
main:
.p2align 2
	addi sp, sp, -88
	li a0, 10
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 64
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sw a0, 64(sp)
pcrel185:
	auipc a0, %pcrel_hi(__HELLO)
	sw zero, 68(sp)
	addi s1, a0, %pcrel_lo(pcrel185)
	sd zero, 72(sp)
	sw zero, 80(sp)
	lw a0, %pcrel_lo(pcrel185)(a0)
	beq a0, zero, label30
	mv s2, zero
.p2align 2
label2:
	sh2add s3, s2, s1
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	bne a1, zero, label2
	mv s1, zero
label4:
	li a1, 715827883
	mul a0, s1, a1
	srli a3, a0, 63
	srli a2, a0, 32
	li a0, 6
	add a1, a3, a2
	remw s3, s1, a0
	beq a1, s3, label18
pcrel186:
	auipc a2, %pcrel_hi(N4__mE___)
	addi a0, a2, %pcrel_lo(pcrel186)
	li a2, 200
	mv s2, a0
	mul a1, a1, a2
	add s4, a0, a1
	lw a0, 0(s4)
	beq a0, zero, label55
	mv s5, zero
	j label16
label63:
	mv s5, zero
	j label14
label75:
	mv s2, zero
	j label10
.p2align 2
label16:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	bne a1, zero, label16
pcrel187:
	auipc a0, %pcrel_hi(saY_HeI10_To)
	addi s4, a0, %pcrel_lo(pcrel187)
	lw a0, %pcrel_lo(pcrel187)(a0)
	bne a0, zero, label63
	li a1, 200
	mul a0, s3, a1
	add s2, s2, a0
	lw a1, 0(s2)
	bne a1, zero, label70
	lw a0, 64(sp)
	bne a0, zero, label75
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
label70:
	mv s3, zero
	j label12
.p2align 2
label14:
	sh2add s6, s5, s4
	lw a0, 0(s6)
	jal putch
	addiw s5, s5, 1
	lw a1, 4(s6)
	bne a1, zero, label14
	li a1, 200
	mul a0, s3, a1
	add s2, s2, a0
	lw a1, 0(s2)
	bne a1, zero, label70
	lw a0, 64(sp)
	bne a0, zero, label75
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
.p2align 2
label12:
	sh2add s4, s3, s2
	lw a0, 0(s4)
	jal putch
	addiw s3, s3, 1
	lw a1, 4(s4)
	bne a1, zero, label12
	lw a0, 64(sp)
	bne a0, zero, label75
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	bne s1, zero, label4
label19:
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
.p2align 2
label10:
	sh2add s3, s2, s0
	lw a0, 0(s3)
	jal putch
	addiw s2, s2, 1
	lw a1, 4(s3)
	bne a1, zero, label10
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
.p2align 2
label55:
	auipc a0, %pcrel_hi(saY_HeI10_To)
	addi s4, a0, %pcrel_lo(label55)
	lw a0, %pcrel_lo(label55)(a0)
	bne a0, zero, label63
	li a1, 200
	mul a0, s3, a1
	add s2, s2, a0
	lw a1, 0(s2)
	bne a1, zero, label70
	lw a0, 64(sp)
	bne a0, zero, label75
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
.p2align 2
label30:
	mv s1, zero
	li a1, 715827883
	mv a0, zero
	mv a3, zero
	mv a2, zero
	li a0, 6
	mv a1, zero
	mv s3, zero
	li a0, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
label18:
	slliw a1, s1, 4
	addw a3, a1, s1
	addiw a0, a3, 23
	slli a2, a0, 1
	srli a3, a2, 59
	add a1, a0, a3
	andi a2, a1, -32
	subw s1, a0, a2
	beq s1, zero, label19
	j label4
