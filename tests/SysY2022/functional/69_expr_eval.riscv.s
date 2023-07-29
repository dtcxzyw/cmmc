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
pcrel780:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel780)
pcrel781:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel781)
.p2align 2
label2:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
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
	bne s2, zero, label135
	j label12
.p2align 2
label6:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label135:
	mv a0, s3
	mv a3, zero
	j label18
label12:
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
label18:
	sh2add a4, a3, s0
	li a5, 192
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
	sw zero, 192(a4)
	sw zero, 196(a4)
	sw zero, 200(a4)
	sw zero, 204(a4)
	sw zero, 208(a4)
	sw zero, 212(a4)
	sw zero, 216(a4)
	sw zero, 220(a4)
	sw zero, 224(a4)
	sw zero, 228(a4)
	sw zero, 232(a4)
	sw zero, 236(a4)
	sw zero, 240(a4)
	sw zero, 244(a4)
	sw zero, 248(a4)
	sw zero, 252(a4)
	addi a4, a3, 64
	bge a4, a5, label20
	mv a3, a4
	j label18
.p2align 2
label20:
	sh2add a4, a4, s0
	addi a5, a3, 124
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
	sw zero, 192(a4)
	sw zero, 196(a4)
	sw zero, 200(a4)
	sw zero, 204(a4)
	sw zero, 208(a4)
	sw zero, 212(a4)
	sw zero, 216(a4)
	sw zero, 220(a4)
	sw zero, 224(a4)
	sw zero, 228(a4)
	sw zero, 232(a4)
	sw zero, 236(a4)
.p2align 2
label21:
	sh2add a3, a5, s0
	li a4, 256
	addi a5, a5, 1
	sw zero, 0(a3)
	blt a5, a4, label21
	mv a3, zero
.p2align 2
label23:
	sh2add a4, a3, s1
	li a5, 192
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
	sw zero, 192(a4)
	sw zero, 196(a4)
	sw zero, 200(a4)
	sw zero, 204(a4)
	sw zero, 208(a4)
	sw zero, 212(a4)
	sw zero, 216(a4)
	sw zero, 220(a4)
	sw zero, 224(a4)
	sw zero, 228(a4)
	sw zero, 232(a4)
	sw zero, 236(a4)
	sw zero, 240(a4)
	sw zero, 244(a4)
	sw zero, 248(a4)
	sw zero, 252(a4)
	addi a4, a3, 64
	bge a4, a5, label25
	mv a3, a4
	j label23
.p2align 2
label25:
	sh2add a4, a4, s1
	addi a3, a3, 124
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
	sw zero, 192(a4)
	sw zero, 196(a4)
	sw zero, 200(a4)
	sw zero, 204(a4)
	sw zero, 208(a4)
	sw zero, 212(a4)
	sw zero, 216(a4)
	sw zero, 220(a4)
	sw zero, 224(a4)
	sw zero, 228(a4)
	sw zero, 232(a4)
	sw zero, 236(a4)
.p2align 2
label26:
	sh2add a4, a3, s1
	addi a3, a3, 1
	sw zero, 0(a4)
	li a4, 256
	blt a3, a4, label26
	bne a1, zero, label417
	mv s4, a2
	mv s3, a0
	j label38
.p2align 2
label417:
	mv s4, a2
	mv s3, a0
	mv s5, a1
.p2align 2
label29:
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
	j label33
.p2align 2
label38:
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
	bne a0, zero, label105
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label43
.p2align 2
label437:
	mv s3, a0
	j label102
.p2align 2
label43:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label74
	li s5, 10
.p2align 2
label44:
	beq s5, zero, label75
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label47
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label466
	j label53
.p2align 2
label47:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label47
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label466
label53:
	jal getch
	li a1, 1
.p2align 2
label54:
	lw a3, 0(s1)
	bne a3, zero, label59
label58:
	addiw a2, a3, 1
	sh2add a3, a2, s1
	sw a2, 0(s1)
	sw s4, 0(a3)
	beq a1, zero, label487
	mv s4, a0
	mv s5, a1
	j label29
.p2align 2
label487:
	mv s4, a0
	j label38
label61:
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label54
label74:
	xori a2, s4, 42
	xori a3, s4, 47
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	xori a3, s4, 37
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	subw a3, zero, a1
	andi s5, a3, 20
	j label44
.p2align 2
label101:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label101
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label564
	j label80
.p2align 2
label102:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label104
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label101
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label564
	j label80
.p2align 2
label104:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label102
.p2align 2
label75:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label101
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label80
label564:
	mv s3, a0
	j label98
label80:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	beq a4, zero, label569
.p2align 2
label86:
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
	beq a3, t1, label97
	li t0, 45
	beq a3, t0, label90
	li t0, 42
	beq a3, t0, label92
	li t0, 47
	beq a3, t0, label94
	li t0, 37
	beq a3, t0, label96
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label94:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label97:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label98:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label100
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label100:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label98
.p2align 2
label33:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label12
	mv a2, s4
	mv a0, s3
	mv a1, s5
	mv a3, zero
	j label18
.p2align 2
label569:
	lw a4, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
	j label33
.p2align 2
label92:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label96:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
.p2align 2
label105:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label105
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label437
	j label43
.p2align 2
label90:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label86
	j label569
label466:
	mv s3, a0
.p2align 2
label50:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label52
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label59
	j label58
.p2align 2
label52:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label50
label59:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu a4, t0, 1
	sltiu t0, a5, 1
	or a4, a4, t0
	bne a4, zero, label73
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
	bne t0, zero, label60
	j label58
label7:
	jal getch
	li a1, 1
	mv s3, zero
	mv a2, a0
	bne s2, zero, label135
	j label12
label60:
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
	beq a2, a5, label61
	li a5, 45
	beq a2, a5, label516
	li a5, 42
	bne a2, a5, label67
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label54
label67:
	li a5, 47
	beq a2, a5, label525
	li a5, 37
	beq a2, a5, label69
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
	j label54
label69:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label54
label73:
	li a4, 11
	blt s5, a4, label60
	j label58
label516:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label54
label525:
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label54
