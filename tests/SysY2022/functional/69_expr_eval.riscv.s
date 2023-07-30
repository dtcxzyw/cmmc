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
pcrel787:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel787)
pcrel788:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel788)
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
	bgeu s3, a0, label7
.p2align 2
label4:
	jal getch
	li a3, 10
	addiw a1, a0, -48
	bltu a1, a3, label6
	mv a2, a0
	mv a1, zero
	bne s2, zero, label139
	j label109
.p2align 2
label6:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label139:
	mv a0, s3
	mv a3, zero
.p2align 2
label17:
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
	bge a4, a5, label19
	mv a3, a4
	j label17
.p2align 2
label19:
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
	j label20
.p2align 2
label27:
	sh2add a4, a3, s1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	addi a4, a3, 4
	li a3, 252
	blt a4, a3, label406
	sh2add a5, a4, s1
	li a3, 256
	addi a4, a4, 1
	sw zero, 0(a5)
	blt a4, a3, label29
	bne a1, zero, label417
.p2align 2
label771:
	mv s4, a2
	mv s3, a0
	j label37
.p2align 2
label406:
	mv a3, a4
	j label27
.p2align 2
label29:
	sh2add a5, a4, s1
	li a3, 256
	addi a4, a4, 1
	sw zero, 0(a5)
	blt a4, a3, label29
	beq a1, zero, label771
.p2align 2
label417:
	mv s4, a2
	mv s3, a0
	mv s5, a1
	j label105
.p2align 2
label32:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label109
	mv a2, s4
	mv a0, s3
	mv a1, s5
	mv a3, zero
	j label17
.p2align 2
label37:
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
	bne a0, zero, label104
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label42
.p2align 2
label437:
	mv s3, a0
.p2align 2
label74:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label76
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label103
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label572
	j label82
.p2align 2
label76:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label74
label572:
	mv s3, a0
	j label100
label82:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label88
.p2align 2
label577:
	lw a4, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
	j label32
.p2align 2
label88:
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
	beq a3, t0, label89
	li t0, 45
	beq a3, t0, label93
	li t0, 42
	beq a3, t0, label95
	li t0, 47
	beq a3, t0, label99
	li t0, 37
	beq a3, t0, label98
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label89:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label93:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label103:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label103
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label572
	j label82
.p2align 2
label105:
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
	j label32
label109:
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
label100:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label102
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label102:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label100
.p2align 2
label98:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label42:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label43
	li s5, 10
	j label44
label43:
	xori a2, s4, 42
	xori a4, s4, 47
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	xori a2, s4, 37
	or a1, a1, a3
	sltiu a3, a2, 1
	or a1, a1, a3
	subw a2, zero, a1
	andi s5, a2, 20
.p2align 2
label44:
	beq s5, zero, label77
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label73
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label72
label466:
	mv s3, a0
	j label69
label53:
	addiw a2, a3, 1
	sh2add a3, a2, s1
	sw a2, 0(s1)
	sw s4, 0(a3)
	beq a1, zero, label478
	mv s4, a0
	mv s5, a1
	j label105
.p2align 2
label478:
	mv s4, a0
	j label37
label54:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori t0, a2, 45
	xori a5, a2, 43
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	or a4, a4, a5
	bne a4, zero, label68
	xori a5, a2, 42
	xori t0, a2, 47
	sltiu a4, a5, 1
	sltiu t1, t0, 1
	xori a5, a2, 37
	or a4, a4, t1
	sltiu t0, a5, 1
	slti a5, s5, 1
	or a4, a4, t0
	or t0, a4, a5
	bne t0, zero, label56
	j label53
.p2align 2
label69:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label71
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label54
	j label53
.p2align 2
label71:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label69
label72:
	jal getch
	li a1, 1
	j label49
.p2align 2
label73:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label73
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label466
	j label72
.p2align 2
label77:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label103
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label572
	j label82
.p2align 2
label104:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label104
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label437
	j label42
.p2align 2
label20:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	addi a4, a3, 4
	li a3, 252
	blt a4, a3, label269
	sh2add a5, a4, s0
	addi a4, a4, 1
	sw zero, 0(a5)
	li a5, 256
	blt a4, a5, label22
	j label746
.p2align 2
label269:
	mv a3, a4
	j label20
.p2align 2
label22:
	sh2add a5, a4, s0
	addi a4, a4, 1
	sw zero, 0(a5)
	li a5, 256
	blt a4, a5, label22
.p2align 2
label746:
	mv a3, zero
.p2align 2
label24:
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
	bge a4, a5, label26
	mv a3, a4
	j label24
.p2align 2
label26:
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
	j label27
.p2align 2
label95:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
.p2align 2
label99:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label88
	j label577
label7:
	jal getch
	li a1, 1
	mv s3, zero
	mv a2, a0
	bne s2, zero, label139
	j label109
label56:
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
	beq a2, a5, label57
	li a5, 45
	beq a2, a5, label517
	li a5, 42
	beq a2, a5, label521
	li a5, 47
	bne a2, a5, label63
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label49
label63:
	li a5, 37
	beq a2, a5, label64
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
.p2align 2
label49:
	lw a3, 0(s1)
	bne a3, zero, label54
	j label53
label57:
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label49
label64:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label49
label68:
	li a4, 11
	blt s5, a4, label56
	j label53
label517:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label49
label521:
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label49
