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
pcrel609:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel609)
pcrel610:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel610)
label2:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label3
	j label2
label3:
	addiw s3, a0, -48
	li a0, 10
	bgeu s3, a0, label102
	j label103
label102:
	jal getch
	li a2, 1
	mv a1, zero
	beq s2, zero, label8
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label17
	mv a4, s0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	j label130
label103:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label405
	j label404
label405:
	mv a1, s3
	mv a2, zero
	beq s2, zero, label8
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label17
	mv a4, s0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	j label130
label14:
	addi a3, a4, 4
	li a5, 256
	bge a3, a5, label17
label130:
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label14
label17:
	sh2add a3, a4, s0
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	bge a4, a3, label143
	j label17
label143:
	mv a4, zero
label19:
	addi a3, a4, 4
	li a5, 256
	bge a3, a5, label21
	sh2add a4, a4, s1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label19
label21:
	sh2add a3, a4, s1
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	bge a4, a3, label23
	j label21
label23:
	beq a2, zero, label159
	mv s3, a0
	mv s4, a1
	mv s5, a2
	j label92
label159:
	mv s4, a0
	mv s3, a1
label24:
	lw a1, 0(s0)
	addiw a0, a1, 1
	xori a1, s4, 32
	sh2add a2, a0, s0
	sw a0, 0(s0)
	sltiu a0, a1, 1
	sw s3, 0(a2)
	xori a2, s4, 10
	sltiu a1, a2, 1
	or a0, a0, a1
	beq a0, zero, label27
	j label91
label496:
	mv s3, a1
	mv s4, a0
	mv s5, a2
	j label92
label274:
	mv s4, a1
	mv s3, a0
	j label24
label92:
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
label96:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label8
	mv a0, s3
	mv a1, s4
	mv a2, s5
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label17
	mv a4, s0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	sh2add a4, a4, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addi a3, a3, 4
	bge a3, a5, label17
	j label130
label173:
	mv s3, a0
label61:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label298
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label61
label298:
	mv a0, a1
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label67
	j label90
label91:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label388
	j label91
label388:
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label29
	j label173
label90:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label67
	j label90
label27:
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label29
	j label173
label404:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label103
label67:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label69
	mv s3, a0
	j label87
label69:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label74:
	lw a5, 0(s0)
	mv s3, a0
	mv s4, a1
	mv s5, a2
	sh2add a4, a5, s0
	lw a3, 0(a4)
	mv a0, a3
	j label96
label87:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label370
	j label369
label370:
	mv a1, s3
	mv a2, zero
	lw a4, 0(s1)
	beq a4, zero, label74
label75:
	sh2add a5, a4, s1
	addiw a4, a4, -1
	lw a3, 0(a5)
	sw a4, 0(s1)
	lw t0, 0(s0)
	addiw t1, t0, -1
	sh2add a5, t0, s0
	addiw t0, t0, -2
	lw a4, 0(a5)
	sw t1, 0(s0)
	li t1, 43
	lw a5, -4(a5)
	sw t0, 0(s0)
	bne a3, t1, label76
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label76:
	li t0, 45
	bne a3, t0, label77
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label77:
	li t0, 42
	bne a3, t0, label78
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label78:
	li t0, 47
	bne a3, t0, label79
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label79:
	li t0, 37
	bne a3, t0, label355
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label355:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label74
	j label75
label369:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label87
label29:
	jal getch
	xori a2, s4, 45
	xori a3, s4, 43
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label60
	li s5, 10
	bne s5, zero, label32
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label67
	j label90
label60:
	xori a3, s4, 42
	xori a2, s4, 47
	xori a4, s4, 37
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	sltiu a2, a4, 1
	or a1, a1, a3
	or a3, a1, a2
	subw a1, zero, a3
	andi s5, a1, 20
	bne s5, zero, label32
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label67
	j label90
label32:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label34
label33:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label34
	j label33
label494:
	mv s3, a0
	j label57
label34:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label56
	j label494
label57:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label281
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label57
label281:
	mv a0, s3
	mv a2, zero
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label55:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a2, zero, label274
	j label496
label42:
	addiw a4, a4, -1
	sw a4, 0(s1)
	lw t0, 0(s0)
	addiw t1, t0, -1
	sh2add a5, t0, s0
	lw a4, 0(a5)
	sw t1, 0(s0)
	addiw t1, t0, -2
	lw a5, -4(a5)
	li t0, 43
	sw t1, 0(s0)
	bne a3, t0, label44
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label44:
	li t0, 45
	bne a3, t0, label46
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label46:
	li t0, 42
	bne a3, t0, label47
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label47:
	li t0, 47
	bne a3, t0, label48
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label48:
	li t0, 37
	bne a3, t0, label250
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label250:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label56:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s3
	lw a4, 0(s1)
	beq a4, zero, label55
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label54
	li a5, 11
	bge s5, a5, label55
	j label42
label54:
	xori t1, a3, 42
	xori t0, a3, 47
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	xori t0, a3, 37
	or a5, a5, t1
	sltiu t1, t0, 1
	slti t0, s5, 1
	or a5, a5, t1
	or t1, a5, t0
	beq t1, zero, label55
	j label42
label8:
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
