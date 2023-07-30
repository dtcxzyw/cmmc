.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
oprs:
	.zero	1024
.align 8
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
pcrel789:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel789)
pcrel790:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel790)
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
	bgeu s3, a0, label109
.p2align 2
label4:
	jal getch
	li a3, 10
	addiw a1, a0, -48
	bltu a1, a3, label6
	mv a2, a0
	mv a1, zero
	bne s2, zero, label138
	j label108
.p2align 2
label6:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label7:
	beq s2, zero, label108
label138:
	mv a0, s3
	mv a3, zero
.p2align 2
label16:
	sh2add a4, a3, s0
	li a5, 192
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	sd zero, 64(a4)
	sd zero, 72(a4)
	sd zero, 80(a4)
	sd zero, 88(a4)
	sd zero, 96(a4)
	sd zero, 104(a4)
	sd zero, 112(a4)
	sd zero, 120(a4)
	sd zero, 128(a4)
	sd zero, 136(a4)
	sd zero, 144(a4)
	sd zero, 152(a4)
	sd zero, 160(a4)
	sd zero, 168(a4)
	sd zero, 176(a4)
	sd zero, 184(a4)
	sd zero, 192(a4)
	sd zero, 200(a4)
	sd zero, 208(a4)
	sd zero, 216(a4)
	sd zero, 224(a4)
	sd zero, 232(a4)
	sd zero, 240(a4)
	sd zero, 248(a4)
	addi a4, a3, 64
	bge a4, a5, label18
	mv a3, a4
	j label16
.p2align 2
label18:
	sh2add a4, a4, s0
	addi a3, a3, 112
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	sw zero, 16(a4)
	sw zero, 20(a4)
	sw zero, 24(a4)
	sw zero, 28(a4)
	sw zero, 32(a4)
	sw zero, 36(a4)
	sw zero, 40(a4)
	sw zero, 44(a4)
	sw zero, 48(a4)
	sw zero, 52(a4)
	sw zero, 56(a4)
	sw zero, 60(a4)
	sw zero, 64(a4)
	sw zero, 68(a4)
	sw zero, 72(a4)
	sw zero, 76(a4)
	sw zero, 80(a4)
	sw zero, 84(a4)
	sw zero, 88(a4)
	sw zero, 92(a4)
	sw zero, 96(a4)
	sw zero, 100(a4)
	sw zero, 104(a4)
	sw zero, 108(a4)
	sw zero, 112(a4)
	sw zero, 116(a4)
	sw zero, 120(a4)
	sw zero, 124(a4)
	sw zero, 128(a4)
	sw zero, 132(a4)
	sw zero, 136(a4)
	sw zero, 140(a4)
	sw zero, 144(a4)
	sw zero, 148(a4)
	sw zero, 152(a4)
	sw zero, 156(a4)
	sw zero, 160(a4)
	sw zero, 164(a4)
	sw zero, 168(a4)
	sw zero, 172(a4)
	sw zero, 176(a4)
	sw zero, 180(a4)
	sw zero, 184(a4)
	sw zero, 188(a4)
	j label19
label109:
	jal getch
	li a1, 1
	mv s3, zero
	mv a2, a0
	j label7
.p2align 2
label34:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label34
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label67
.p2align 2
label438:
	mv s3, a0
.p2align 2
label37:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label39
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label43
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label464
	j label46
.p2align 2
label39:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label37
.p2align 2
label43:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label43
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label46
label464:
	mv s3, a0
	j label47
label46:
	jal getch
	li a2, 1
	mv a1, s3
	j label50
.p2align 2
label757:
	lw a5, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a4, a5, s0
	lw a3, 0(a4)
	mv a0, a3
	j label103
.p2align 2
label50:
	lw a4, 0(s1)
	beq a4, zero, label757
.p2align 2
label55:
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
	beq a3, t0, label66
	li t0, 45
	beq a3, t0, label57
	li t0, 42
	beq a3, t0, label59
	li t0, 47
	beq a3, t0, label61
	li t0, 37
	beq a3, t0, label63
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label57:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label59:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label61:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label66:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label103:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label108
	mv a2, s4
	mv a0, s3
	mv a1, s5
	mv a3, zero
	j label16
label108:
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
.p2align 2
label47:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label49
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label49:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label47
.p2align 2
label63:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label757
.p2align 2
label40:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label43
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label464
	j label46
.p2align 2
label67:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label530
	xori a2, s4, 42
	xori a3, s4, 47
	li s5, 20
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	xori a3, s4, 37
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label69
	mv s5, zero
	j label69
label530:
	li s5, 10
.p2align 2
label69:
	beq s5, zero, label40
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label98
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label94
label551:
	mv s3, a0
	j label95
label78:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu a4, t0, 1
	sltiu t0, a5, 1
	or a4, a4, t0
	bne a4, zero, label79
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
	bne a5, zero, label80
	j label93
.p2align 2
label95:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label97
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label78
	j label93
.p2align 2
label97:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label95
.p2align 2
label98:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label98
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label551
	j label94
.p2align 2
label31:
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
	bne a0, zero, label34
	addiw a0, s4, -48
	li a1, 10
	bltu a0, a1, label438
	j label67
.p2align 2
label74:
	lw a3, 0(s1)
	bne a3, zero, label78
	j label93
label80:
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
	bne a2, t0, label82
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label74
label82:
	li a5, 45
	beq a2, a5, label89
	li a5, 42
	bne a2, a5, label85
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label74
label85:
	li a5, 47
	bne a2, a5, label86
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label74
label86:
	li a5, 37
	beq a2, a5, label87
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
	j label74
label89:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label74
label93:
	addiw a2, a3, 1
	sh2add a3, a2, s1
	sw a2, 0(s1)
	sw s4, 0(a3)
	beq a1, zero, label622
	mv s4, a0
	mv s5, a1
	j label99
.p2align 2
label622:
	mv s4, a0
	j label31
.p2align 2
label19:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	addi a4, a3, 4
	li a3, 252
	blt a4, a3, label268
	sh2add a5, a4, s0
	addi a4, a4, 1
	sw zero, 0(a5)
	li a5, 256
	blt a4, a5, label21
.p2align 2
label747:
	mv a3, zero
	j label23
.p2align 2
label268:
	mv a3, a4
	j label19
.p2align 2
label21:
	sh2add a5, a4, s0
	addi a4, a4, 1
	sw zero, 0(a5)
	li a5, 256
	blt a4, a5, label21
	j label747
.p2align 2
label23:
	sh2add a4, a3, s1
	li a5, 192
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	sd zero, 64(a4)
	sd zero, 72(a4)
	sd zero, 80(a4)
	sd zero, 88(a4)
	sd zero, 96(a4)
	sd zero, 104(a4)
	sd zero, 112(a4)
	sd zero, 120(a4)
	sd zero, 128(a4)
	sd zero, 136(a4)
	sd zero, 144(a4)
	sd zero, 152(a4)
	sd zero, 160(a4)
	sd zero, 168(a4)
	sd zero, 176(a4)
	sd zero, 184(a4)
	sd zero, 192(a4)
	sd zero, 200(a4)
	sd zero, 208(a4)
	sd zero, 216(a4)
	sd zero, 224(a4)
	sd zero, 232(a4)
	sd zero, 240(a4)
	sd zero, 248(a4)
	addi a4, a3, 64
	bge a4, a5, label25
	mv a3, a4
	j label23
.p2align 2
label25:
	sh2add a4, a4, s1
	addi a3, a3, 112
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	sw zero, 16(a4)
	sw zero, 20(a4)
	sw zero, 24(a4)
	sw zero, 28(a4)
	sw zero, 32(a4)
	sw zero, 36(a4)
	sw zero, 40(a4)
	sw zero, 44(a4)
	sw zero, 48(a4)
	sw zero, 52(a4)
	sw zero, 56(a4)
	sw zero, 60(a4)
	sw zero, 64(a4)
	sw zero, 68(a4)
	sw zero, 72(a4)
	sw zero, 76(a4)
	sw zero, 80(a4)
	sw zero, 84(a4)
	sw zero, 88(a4)
	sw zero, 92(a4)
	sw zero, 96(a4)
	sw zero, 100(a4)
	sw zero, 104(a4)
	sw zero, 108(a4)
	sw zero, 112(a4)
	sw zero, 116(a4)
	sw zero, 120(a4)
	sw zero, 124(a4)
	sw zero, 128(a4)
	sw zero, 132(a4)
	sw zero, 136(a4)
	sw zero, 140(a4)
	sw zero, 144(a4)
	sw zero, 148(a4)
	sw zero, 152(a4)
	sw zero, 156(a4)
	sw zero, 160(a4)
	sw zero, 164(a4)
	sw zero, 168(a4)
	sw zero, 172(a4)
	sw zero, 176(a4)
	sw zero, 180(a4)
	sw zero, 184(a4)
	sw zero, 188(a4)
.p2align 2
label26:
	sh2add a4, a3, s1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	addi a4, a3, 4
	li a3, 252
	blt a4, a3, label405
	sh2add a5, a4, s1
	li a3, 256
	addi a4, a4, 1
	sw zero, 0(a5)
	blt a4, a3, label28
	bne a1, zero, label416
.p2align 2
label769:
	mv s4, a2
	mv s3, a0
	j label31
.p2align 2
label405:
	mv a3, a4
	j label26
.p2align 2
label28:
	sh2add a5, a4, s1
	li a3, 256
	addi a4, a4, 1
	sw zero, 0(a5)
	blt a4, a3, label28
	bne a1, zero, label416
	j label769
label94:
	jal getch
	li a1, 1
	j label74
.p2align 2
label416:
	mv s4, a2
	mv s3, a0
	mv s5, a1
.p2align 2
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
	j label103
label87:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label74
label79:
	li a4, 11
	blt s5, a4, label80
	j label93
