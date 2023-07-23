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
pcrel588:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel588)
pcrel589:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel589)
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
	bltu s3, a0, label103
	j label102
label8:
	mv a3, zero
label13:
	addi a2, a3, 4
	li a4, 256
	blt a2, a4, label100
	sh2add a2, a3, s0
	addi a3, a3, 1
	sw zero, 0(a2)
	li a2, 256
	blt a3, a2, label15
	mv a3, zero
	li a2, 4
	blt a2, a4, label99
	mv a2, s1
	li a3, 1
	sw zero, 0(s1)
	li a2, 256
	blt a3, a2, label19
	bne a0, zero, label154
label569:
	mv s4, a1
	j label26
label100:
	sh2add a4, a3, s0
	mv a3, a2
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	j label13
label102:
	jal getch
	mv s3, zero
	mv a1, a0
	li a0, 1
	bne s2, zero, label8
	j label101
label103:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label105
	mv a1, a0
	mv a0, zero
	bne s2, zero, label8
	j label101
label105:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label103
label26:
	lw a1, 0(s0)
	xori a3, s4, 32
	xori a2, s4, 10
	addiw a0, a1, 1
	sh2add a1, a0, s0
	sw a0, 0(s0)
	sltiu a0, a3, 1
	sw s3, 0(a1)
	sltiu a1, a2, 1
	or a0, a0, a1
	bne a0, zero, label93
	addiw a0, s4, -48
	li a1, 10
	bltu a0, a1, label169
label31:
	jal getch
	xori a2, s4, 45
	xori a3, s4, 43
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label62
	li s5, 10
	beq s5, zero, label66
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label35
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label198
	j label61
label35:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label35
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label61
label198:
	mv s3, a0
	j label58
label42:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori t0, a2, 45
	xori a5, a2, 43
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	or a4, a4, a5
	bne a4, zero, label43
	xori a5, a2, 42
	xori t0, a2, 47
	xori t1, a2, 37
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a4, a4, a5
	slti a5, s5, 1
	or a4, a4, t0
	or t0, a4, a5
	bne t0, zero, label45
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	bne a1, zero, label489
label269:
	mv s4, a0
	j label26
label58:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label60
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	j label269
label60:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label58
label61:
	jal getch
	li a1, 1
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label62:
	xori a3, s4, 42
	xori a2, s4, 47
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	xori a2, s4, 37
	or a1, a1, a3
	sltiu a3, a2, 1
	or a1, a1, a3
	subw a2, zero, a1
	andi s5, a2, 20
	beq s5, zero, label66
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label35
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label198
	j label61
label66:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label92
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label308
	j label71
label169:
	mv s3, a0
label63:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label65
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label92
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label308
	j label71
label65:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label63
label308:
	mv s3, a0
	j label89
label71:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	beq a4, zero, label313
label77:
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
	beq a3, t1, label88
	li t0, 45
	beq a3, t0, label87
	li t0, 42
	beq a3, t0, label86
	li t0, 47
	beq a3, t0, label83
	li t0, 37
	beq a3, t0, label85
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label86:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label87:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label88:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label92:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label92
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label308
	j label71
label93:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label93
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label169
	j label31
label89:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label91
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label91:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label89
label313:
	lw a4, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
label94:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label101
	mv a1, s4
	mv a0, s5
	mv a3, zero
	li a2, 4
	li a4, 256
	blt a2, a4, label100
	mv a2, s0
	li a3, 1
	sw zero, 0(s0)
	li a2, 256
	blt a3, a2, label15
	mv a3, zero
	li a2, 4
	blt a2, a4, label99
	mv a2, s1
	li a3, 1
	sw zero, 0(s1)
	li a2, 256
	blt a3, a2, label19
	bne s5, zero, label154
	j label569
label85:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label17:
	addi a2, a3, 4
	li a4, 256
	blt a2, a4, label99
	sh2add a2, a3, s1
	addi a3, a3, 1
	sw zero, 0(a2)
	li a2, 256
	blt a3, a2, label19
	bne a0, zero, label154
	j label569
label99:
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	j label17
label15:
	sh2add a2, a3, s0
	addi a3, a3, 1
	sw zero, 0(a2)
	li a2, 256
	blt a3, a2, label15
	mv a3, zero
	li a2, 4
	li a4, 256
	blt a2, a4, label99
	mv a2, s1
	li a3, 1
	sw zero, 0(s1)
	li a2, 256
	blt a3, a2, label19
	bne a0, zero, label154
	j label569
label19:
	sh2add a2, a3, s1
	addi a3, a3, 1
	sw zero, 0(a2)
	li a2, 256
	blt a3, a2, label19
	beq a0, zero, label569
label154:
	mv s4, a1
	mv s5, a0
	j label22
label83:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label77
	j label313
label101:
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
label22:
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
	j label94
label489:
	mv s4, a0
	mv s5, a1
	j label22
label52:
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label45:
	addiw a3, a3, -1
	sw a3, 0(s1)
	lw a5, 0(s0)
	addi t0, a5, -1
	sh2add a4, a5, s0
	lw a3, 0(a4)
	sw t0, 0(s0)
	addi t0, a5, -2
	lw a4, -4(a4)
	li a5, 43
	sw t0, 0(s0)
	beq a2, a5, label46
	li a5, 45
	beq a2, a5, label50
	li a5, 42
	beq a2, a5, label52
	li a5, 47
	beq a2, a5, label56
	li a5, 37
	beq a2, a5, label55
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label46:
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label56:
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label55:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label43:
	li a4, 11
	blt s5, a4, label45
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
label50:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	lw a3, 0(s1)
	bne a3, zero, label42
	addiw a3, a3, 1
	sh2add a2, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a2)
	beq a1, zero, label269
	j label489
