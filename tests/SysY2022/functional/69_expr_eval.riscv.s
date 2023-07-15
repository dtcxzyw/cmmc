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
	addi sp, sp, -72
	sd s2, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s2, a0
	jal getch
pcrel608:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel608)
pcrel609:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel609)
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
	bgeu s3, a0, label103
label4:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label126
	j label125
label126:
	mv s4, s3
	mv s5, zero
	beq s2, zero, label102
	mv s3, a0
	mv a1, zero
	li a0, 4
	li a2, 256
	bge a0, a2, label18
	mv a2, s0
	mv a1, a0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	j label598
label18:
	sh2add a0, a1, s0
	addi a1, a1, 1
	sw zero, 0(a0)
	li a0, 256
	bge a1, a0, label146
	j label18
label146:
	mv a1, zero
label20:
	addi a0, a1, 4
	li a2, 256
	bge a0, a2, label22
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a0
	j label20
label598:
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	j label598
label103:
	jal getch
	li s5, 1
	mv s4, zero
	beq s2, zero, label102
	mv s3, a0
	mv a1, zero
	li a0, 4
	li a2, 256
	bge a0, a2, label18
	mv a2, s0
	mv a1, a0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	j label598
label22:
	sh2add a0, a1, s1
	addi a1, a1, 1
	sw zero, 0(a0)
	li a0, 256
	bge a1, a0, label24
	j label22
label24:
	beq s5, zero, label25
	j label99
label94:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label102
	mv a1, zero
	li a0, 4
	li a2, 256
	bge a0, a2, label18
	mv a2, s0
	mv a1, a0
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	sh2add a2, a1, s0
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a0, a0, 4
	li a2, 256
	bge a0, a2, label18
	j label598
label99:
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
label25:
	lw a1, 0(s0)
	xori a2, s3, 32
	xori a3, s3, 10
	addiw a0, a1, 1
	sh2add a1, a0, s0
	sw a0, 0(s0)
	sltiu a0, a2, 1
	sw s4, 0(a1)
	sltiu a1, a3, 1
	or a0, a0, a1
	beq a0, zero, label28
	j label93
label176:
	mv s4, a0
	j label90
label236:
	mv s3, s6
	j label25
label47:
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
	mv s5, s7
	mv s3, s6
	j label94
label90:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label380
	sh2add a1, s4, s4
	sh1add s4, a1, a0
	j label90
label380:
	mv a0, a1
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label66
	j label89
label93:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label391
	j label93
label391:
	mv s3, a0
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label30
	j label176
label28:
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label30
	j label176
label30:
	jal getch
	xori a2, s3, 45
	xori a3, s3, 43
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label31
	li s5, 10
	bne s5, zero, label34
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label66
label89:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label66
	j label89
label66:
	addiw s3, a0, -48
	li a0, 10
	bgeu s3, a0, label71
label68:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label312
	j label311
label312:
	mv a1, s3
	mv a2, zero
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label71:
	jal getch
	li a2, 1
	mv a1, s4
	lw a4, 0(s1)
	beq a4, zero, label76
label77:
	sh2add a5, a4, s1
	addiw a4, a4, -1
	lw a3, 0(a5)
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
	bne a3, t0, label79
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label79:
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
	bne a3, t0, label83
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label83:
	li t0, 37
	bne a3, t0, label360
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label360:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	beq a4, zero, label76
	j label77
label311:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label68
label31:
	xori a3, s3, 42
	xori a2, s3, 47
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	xori a2, s3, 37
	or a1, a1, a3
	sltiu a3, a2, 1
	or a4, a1, a3
	subw a1, zero, a4
	andi s5, a1, 20
	bne s5, zero, label34
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label66
	j label89
label34:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label36
label35:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label36
	j label35
label493:
	mv s4, a0
	j label39
label36:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label38
	j label493
label39:
	jal getch
	li a1, 10
	mv s6, a0
	addiw a0, a0, -48
	bgeu a0, a1, label220
	sh2add a1, s4, s4
	sh1add s4, a1, a0
	j label39
label220:
	mv s7, zero
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label125:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label76:
	lw a5, 0(s0)
	mv s3, a0
	mv s4, a1
	mv s5, a2
	sh2add a4, a5, s0
	lw a3, 0(a4)
	mv a0, a3
	j label94
label46:
	addiw a0, a1, 1
	sh2add a1, a0, s1
	sw a0, 0(s1)
	sw s3, 0(a1)
	beq s7, zero, label236
	j label47
label51:
	addiw a1, a1, -1
	sw a1, 0(s1)
	lw a3, 0(s0)
	addiw a4, a3, -1
	sh2add a2, a3, s0
	lw a1, 0(a2)
	sw a4, 0(s0)
	addiw a4, a3, -2
	lw a2, -4(a2)
	li a3, 43
	sw a4, 0(s0)
	bne a0, a3, label55
	addw a0, a1, a2
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw a0, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label55:
	li a3, 45
	bne a0, a3, label57
	subw a0, a2, a1
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw a0, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label38:
	jal getch
	li s7, 1
	mv s6, a0
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label50:
	xori a4, a0, 42
	xori a3, a0, 47
	slti a5, s5, 1
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a0, 37
	or a2, a2, a4
	sltiu a4, a3, 1
	or a2, a2, a4
	or a3, a2, a5
	beq a3, zero, label46
	j label51
label57:
	li a3, 42
	bne a0, a3, label59
	mulw a0, a1, a2
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw a0, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label59:
	li a3, 47
	bne a0, a3, label61
	divw a0, a2, a1
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw a0, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label61:
	li a3, 37
	bne a0, a3, label294
	remw a0, a2, a1
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw a0, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label294:
	mv a0, zero
	lw a2, 0(s0)
	addiw a1, a2, 1
	sh2add a2, a1, s0
	sw a1, 0(s0)
	sw zero, 0(a2)
	lw a1, 0(s1)
	beq a1, zero, label46
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a2, a2, a3
	beq a2, zero, label50
	li a2, 11
	bge s5, a2, label46
	j label51
label102:
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s2, 64(sp)
	addi sp, sp, 72
	ret
