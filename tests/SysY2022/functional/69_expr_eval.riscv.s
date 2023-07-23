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
pcrel607:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel607)
pcrel608:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel608)
label2:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label3
	j label2
label3:
	addiw s3, a0, -48
	li a0, 10
	bgeu s3, a0, label102
label103:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label405
	j label404
label405:
	mv a1, s3
	mv a2, zero
	beq s2, zero, label101
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label15
	mv a5, s0
	mv a4, a3
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	j label130
label15:
	sh2add a3, a4, s0
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	bge a4, a3, label138
	j label15
label138:
	mv a4, zero
label17:
	addi a3, a4, 4
	li a5, 256
	bge a3, a5, label19
	sh2add a4, a4, s1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label17
label13:
	addi a3, a4, 4
	li a5, 256
	bge a3, a5, label15
label130:
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	j label13
label102:
	jal getch
	li a2, 1
	mv a1, zero
	beq s2, zero, label101
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label15
	mv a5, s0
	mv a4, a3
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	j label130
label19:
	sh2add a3, a4, s1
	addi a4, a4, 1
	sw zero, 0(a3)
	li a3, 256
	bge a4, a3, label21
	j label19
label21:
	beq a2, zero, label154
	mv s3, a0
	mv s4, a1
	mv s5, a2
	j label22
label154:
	mv s4, a0
	mv s3, a1
	j label26
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
label94:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label101
	mv a0, s3
	mv a1, s4
	mv a2, s5
	mv a4, zero
	li a3, 4
	li a5, 256
	bge a3, a5, label15
	mv a5, s0
	mv a4, a3
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	sh2add a5, a4, s0
	mv a4, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	addi a3, a3, 4
	li a5, 256
	bge a3, a5, label15
	j label130
label26:
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
	beq a0, zero, label29
	j label93
label168:
	mv s3, a0
	j label63
label31:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label62
	li s5, 10
	bne s5, zero, label34
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label69
	j label92
label269:
	mv s4, a1
	mv s3, a0
	j label26
label63:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label293
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label63
label293:
	mv a0, a1
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label69
	j label92
label93:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label383
	j label93
label383:
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label31
	j label168
label92:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label69
	j label92
label29:
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label31
	j label168
label494:
	mv s3, a1
	mv s4, a0
	mv s5, a2
	j label22
label404:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label103
label69:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label71
	mv s3, a0
label89:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label365
	j label364
label365:
	mv a1, s3
	mv a2, zero
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label71:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	beq a4, zero, label76
label77:
	sh2add a5, a4, s1
	addiw a4, a4, -1
	lw a3, 0(a5)
	sw a4, 0(s1)
	lw t0, 0(s0)
	addi t1, t0, -1
	sh2add a5, t0, s0
	lw a4, 0(a5)
	sw t1, 0(s0)
	addi t1, t0, -2
	lw a5, -4(a5)
	li t0, 43
	sw t1, 0(s0)
	bne a3, t0, label80
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label80:
	li t0, 45
	bne a3, t0, label81
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label81:
	li t0, 42
	bne a3, t0, label82
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label82:
	li t0, 47
	bne a3, t0, label84
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label84:
	li t0, 37
	bne a3, t0, label355
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label355:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label364:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label89
label76:
	lw a4, 0(s0)
	mv s3, a0
	mv s4, a1
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
	j label94
label34:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label36
label35:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label36
	j label35
label492:
	mv s3, a0
	j label58
label36:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label61
	j label492
label45:
	addiw a4, a4, -1
	sw a4, 0(s1)
	lw t0, 0(s0)
	addi t1, t0, -1
	sh2add a5, t0, s0
	lw a4, 0(a5)
	sw t1, 0(s0)
	addi t1, t0, -2
	lw a5, -4(a5)
	li t0, 43
	sw t1, 0(s0)
	bne a3, t0, label49
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label49:
	li t0, 45
	bne a3, t0, label51
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label51:
	li t0, 42
	bne a3, t0, label53
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label53:
	li t0, 47
	bne a3, t0, label54
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label58:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label275
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label58
label275:
	mv a0, s3
	mv a2, zero
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label62:
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
	bne s5, zero, label34
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label69
	j label92
label57:
	addiw a4, a4, 1
	sh2add a3, a4, s1
	sw a4, 0(s1)
	sw s4, 0(a3)
	beq a2, zero, label269
	j label494
label61:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s3
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label54:
	li t0, 37
	bne a3, t0, label260
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label260:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label57
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label44
	li a5, 11
	bge s5, a5, label57
	j label45
label44:
	xori t0, a3, 42
	xori t1, a3, 47
	sltiu a5, t0, 1
	sltiu t2, t1, 1
	xori t0, a3, 37
	or a5, a5, t2
	sltiu t1, t0, 1
	slti t0, s5, 1
	or a5, a5, t1
	or t1, a5, t0
	beq t1, zero, label57
	j label45
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
