.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
oprs:
	.zero	1024
.align 4
ops:
	.zero	1024
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s2, 48(sp)
	sd s0, 40(sp)
	sd s5, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s2, a0
	jal getch
pcrel551:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel551)
pcrel552:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel552)
.p2align 2
label2:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label2
	addiw s3, a0, -48
	li a0, 10
	bgeu s3, a0, label103
.p2align 2
label4:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label6
	mv a1, a0
	mv a0, zero
	bne s2, zero, label132
	j label11
.p2align 2
label6:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label132:
	mv a2, zero
.p2align 2
label17:
	sh2add a3, a2, s0
	addi a4, a2, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	addi a3, a2, 8
	li a2, 256
	blt a3, a2, label143
	sh2add a3, a4, s0
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	blt a4, a3, label19
	mv a2, zero
	mv a3, s1
	li a4, 256
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	li a3, 8
	li a2, 4
	blt a3, a4, label21
	sh2add a3, a2, s1
	addi a2, a2, 1
	sw zero, 0(a3)
	li a3, 256
	blt a2, a3, label23
	bne a0, zero, label172
.p2align 2
label546:
	mv s4, a1
	j label35
.p2align 2
label143:
	mv a2, a4
	j label17
.p2align 2
label19:
	sh2add a3, a4, s0
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	blt a4, a3, label19
	mv a2, zero
	mv a3, s1
	li a4, 256
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	li a3, 8
	li a2, 4
	blt a3, a4, label21
	sh2add a3, a2, s1
	addi a2, a2, 1
	sw zero, 0(a3)
	li a3, 256
	blt a2, a3, label23
	bne a0, zero, label172
	j label546
.p2align 2
label23:
	sh2add a3, a2, s1
	addi a2, a2, 1
	sw zero, 0(a3)
	li a3, 256
	blt a2, a3, label23
	bne a0, zero, label172
	j label546
.p2align 2
label26:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label11
	mv a1, s4
	mv a0, s5
	mv a2, zero
	j label17
.p2align 2
label40:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label66
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label203
label45:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label51
.p2align 2
label208:
	lw a4, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
	j label26
.p2align 2
label51:
	sh2add a5, a4, s1
	addiw a4, a4, -1
	lw a3, 0(a5)
	sw a4, 0(s1)
	lw t0, 0(s0)
	addi t1, t0, -1
	sh2add a5, t0, s0
	addi t0, t0, -2
	lw a4, 0(a5)
	sw t1, 0(s0)
	li t1, 43
	lw a5, -4(a5)
	sw t0, 0(s0)
	beq a3, t1, label54
	li t0, 45
	beq a3, t0, label62
	li t0, 42
	beq a3, t0, label61
	li t0, 47
	beq a3, t0, label60
	li t0, 37
	beq a3, t0, label59
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label54:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label62:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label59:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label31:
	li a0, 112
	jal putch
	li a0, 97
	jal putch
	li a0, 110
	jal putch
	li a0, 105
	jal putch
	li a0, 99
	jal putch
	li a0, 33
	jal putch
	li a0, 10
	jal putch
	li a0, -1
	j label26
.p2align 2
label35:
	lw a1, 0(s0)
	xori a2, s4, 32
	addiw a0, a1, 1
	sh2add a1, a0, s0
	sw a0, 0(s0)
	sltiu a0, a2, 1
	sw s3, 0(a1)
	xori a1, s4, 10
	sltiu a2, a1, 1
	or a0, a0, a2
	bne a0, zero, label102
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label70
.p2align 2
label192:
	mv s3, a0
	j label67
label203:
	mv s3, a0
	j label63
.p2align 2
label66:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label66
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label203
	j label45
.p2align 2
label67:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label69
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label66
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label203
	j label45
.p2align 2
label69:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label67
.p2align 2
label70:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label101
	li s5, 10
.p2align 2
label71:
	beq s5, zero, label40
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label100
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label96
label299:
	mv s3, a0
	j label97
label80:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu a4, t0, 1
	sltiu t0, a5, 1
	or a4, a4, t0
	bne a4, zero, label81
	xori a5, a2, 42
	xori t0, a2, 47
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	xori t0, a2, 37
	or a4, a4, a5
	sltiu a5, t0, 1
	slti t0, s5, 1
	or a4, a4, a5
	or a5, a4, t0
	bne a5, zero, label83
label95:
	addiw a2, a3, 1
	sh2add a3, a2, s1
	sw a2, 0(s1)
	sw s4, 0(a3)
	beq a1, zero, label370
	mv s4, a0
	mv s5, a1
	j label31
.p2align 2
label370:
	mv s4, a0
	j label35
label96:
	jal getch
	li a1, 1
	j label76
.p2align 2
label97:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label99
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label80
	j label95
.p2align 2
label99:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label97
.p2align 2
label100:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label100
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label299
	j label96
label101:
	xori a3, s4, 42
	xori a2, s4, 47
	sltiu a1, a3, 1
	sltiu a4, a2, 1
	xori a3, s4, 37
	or a1, a1, a4
	sltiu a2, a3, 1
	or a1, a1, a2
	subw a3, zero, a1
	andi s5, a3, 20
	j label71
.p2align 2
label63:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label65
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label65:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label63
.p2align 2
label102:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label102
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label192
	j label70
.p2align 2
label21:
	sh2add a3, a2, s1
	li a4, 256
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	addi a3, a2, 8
	addi a2, a2, 4
	blt a3, a4, label21
	sh2add a3, a2, s1
	addi a2, a2, 1
	sw zero, 0(a3)
	li a3, 256
	blt a2, a3, label23
	bne a0, zero, label172
	j label546
.p2align 2
label60:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label61:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label51
	j label208
.p2align 2
label172:
	mv s4, a1
	mv s5, a0
	j label31
label7:
	bne s2, zero, label132
label11:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret
label103:
	jal getch
	mv s3, zero
	mv a1, a0
	li a0, 1
	j label7
.p2align 2
label76:
	lw a3, 0(s1)
	bne a3, zero, label80
	j label95
label83:
	addiw a3, a3, -1
	sw a3, 0(s1)
	lw a5, 0(s0)
	addi t0, a5, -1
	sh2add a4, a5, s0
	addi a5, a5, -2
	lw a3, 0(a4)
	sw t0, 0(s0)
	li t0, 43
	lw a4, -4(a4)
	sw a5, 0(s0)
	beq a2, t0, label84
	li a5, 45
	beq a2, a5, label92
	li a5, 42
	bne a2, a5, label88
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label76
label88:
	li a5, 47
	bne a2, a5, label89
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label76
label89:
	li a5, 37
	beq a2, a5, label90
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
	j label76
label92:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label76
label90:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label76
label81:
	li a4, 11
	blt s5, a4, label83
	j label95
label84:
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label76
