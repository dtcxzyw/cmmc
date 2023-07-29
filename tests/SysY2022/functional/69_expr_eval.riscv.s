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
	j label105
.p2align 2
label6:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label135:
	mv a0, s3
	mv a3, zero
.p2align 2
label17:
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
	bge a4, a5, label19
	mv a3, a4
	j label17
.p2align 2
label19:
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
	j label20
label105:
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
label20:
	sh2add a3, a5, s0
	li a4, 256
	addi a5, a5, 1
	sw zero, 0(a3)
	blt a5, a4, label20
	mv a3, zero
.p2align 2
label22:
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
	bge a4, a5, label24
	mv a3, a4
	j label22
.p2align 2
label24:
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
label25:
	sh2add a4, a3, s1
	addi a3, a3, 1
	sw zero, 0(a4)
	li a4, 256
	blt a3, a4, label25
	bne a1, zero, label417
	mv s4, a2
	mv s3, a0
	j label37
.p2align 2
label417:
	mv s4, a2
	mv s3, a0
	mv s5, a1
.p2align 2
label28:
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
.p2align 2
label37:
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
	bne a0, zero, label104
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label42
.p2align 2
label437:
	mv s3, a0
	j label101
.p2align 2
label42:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label73
	li s5, 10
.p2align 2
label43:
	beq s5, zero, label74
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label46
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label466
	j label52
.p2align 2
label46:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label46
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label466
label52:
	jal getch
	li a1, 1
.p2align 2
label53:
	lw a3, 0(s1)
	bne a3, zero, label58
label57:
	addiw a2, a3, 1
	sh2add a3, a2, s1
	sw a2, 0(s1)
	sw s4, 0(a3)
	beq a1, zero, label487
	mv s4, a0
	mv s5, a1
	j label28
.p2align 2
label487:
	mv s4, a0
	j label37
label60:
	addw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label53
label73:
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
	j label43
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
	bltu a0, a1, label564
	j label79
.p2align 2
label101:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label103
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label100
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label564
	j label79
.p2align 2
label103:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label101
.p2align 2
label74:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label100
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label79
label564:
	mv s3, a0
	j label97
label79:
	jal getch
	li a2, 1
	mv a1, s3
	lw a4, 0(s1)
	beq a4, zero, label569
.p2align 2
label85:
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
	beq a3, t0, label96
	li t0, 45
	beq a3, t0, label89
	li t0, 42
	beq a3, t0, label91
	li t0, 47
	beq a3, t0, label93
	li t0, 37
	beq a3, t0, label95
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
.p2align 2
label93:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
.p2align 2
label96:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
.p2align 2
label97:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bltu a0, a2, label99
	mv a0, a1
	mv a2, zero
	mv a1, s3
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
.p2align 2
label99:
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label97
.p2align 2
label32:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label105
	mv a2, s4
	mv a0, s3
	mv a1, s5
	mv a3, zero
	j label17
.p2align 2
label569:
	lw a5, 0(s0)
	mv s4, a0
	mv s3, a1
	mv s5, a2
	sh2add a4, a5, s0
	lw a3, 0(a4)
	mv a0, a3
	j label32
.p2align 2
label91:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
.p2align 2
label95:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
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
label89:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label85
	j label569
label466:
	mv s3, a0
.p2align 2
label49:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bltu a1, a2, label51
	mv a1, zero
	lw a3, 0(s1)
	bne a3, zero, label58
	j label57
.p2align 2
label51:
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label49
label58:
	sh2add a4, a3, s1
	lw a2, 0(a4)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu a4, t0, 1
	sltiu t0, a5, 1
	or a4, a4, t0
	bne a4, zero, label72
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
	bne a5, zero, label59
	j label57
label7:
	jal getch
	li a1, 1
	mv s3, zero
	mv a2, a0
	bne s2, zero, label135
	j label105
label59:
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
	beq a2, a5, label60
	li a5, 45
	beq a2, a5, label516
	li a5, 42
	bne a2, a5, label66
	mulw a2, a3, a4
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label53
label66:
	li a5, 47
	beq a2, a5, label525
	li a5, 37
	beq a2, a5, label68
	mv a2, zero
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw zero, 0(a4)
	j label53
label68:
	remw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label53
label72:
	li a4, 11
	blt s5, a4, label59
	j label57
label516:
	subw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label53
label525:
	divw a2, a4, a3
	lw a4, 0(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s0
	sw a3, 0(s0)
	sw a2, 0(a4)
	j label53
