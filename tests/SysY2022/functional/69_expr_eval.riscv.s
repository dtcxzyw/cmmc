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
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s8, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s8, a0
	jal getch
	li s6, 45
	li s5, 43
pcrel832:
	auipc s2, %pcrel_hi(ops)
	li s7, 256
	li s3, 10
pcrel833:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel832)
	addi s1, s0, %pcrel_lo(pcrel833)
.p2align 2
label2:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label4
	j label105
label7:
	beq s8, zero, label11
	mv s9, a0
	mv a0, zero
	j label17
label105:
	jal getch
	li s11, 1
	mv s10, zero
	j label7
.p2align 2
label17:
	sh2add a1, a0, s1
	li a2, 192
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	addi a1, a0, 64
	bge a1, a2, label19
	mv a0, a1
	j label17
.p2align 2
label19:
	sh2add a1, a1, s1
	addi a2, a0, 124
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	sw zero, 192(a1)
	sw zero, 196(a1)
	sw zero, 200(a1)
	sw zero, 204(a1)
	sw zero, 208(a1)
	sw zero, 212(a1)
	sw zero, 216(a1)
	sw zero, 220(a1)
	sw zero, 224(a1)
	sw zero, 228(a1)
	sw zero, 232(a1)
	sw zero, 236(a1)
.p2align 2
label20:
	sh2add a0, a2, s1
	addi a2, a2, 1
	sw zero, 0(a0)
	blt a2, s7, label20
	mv a0, zero
.p2align 2
label22:
	sh2add a1, a0, s4
	li a2, 192
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	addi a1, a0, 64
	bge a1, a2, label24
	mv a0, a1
	j label22
.p2align 2
label24:
	sh2add a1, a1, s4
	addi a0, a0, 124
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	sw zero, 192(a1)
	sw zero, 196(a1)
	sw zero, 200(a1)
	sw zero, 204(a1)
	sw zero, 208(a1)
	sw zero, 212(a1)
	sw zero, 216(a1)
	sw zero, 220(a1)
	sw zero, 224(a1)
	sw zero, 228(a1)
	sw zero, 232(a1)
	sw zero, 236(a1)
.p2align 2
label25:
	sh2add a1, a0, s4
	addi a0, a0, 1
	sw zero, 0(a1)
	blt a0, s7, label25
	bne s11, zero, label28
.p2align 2
label32:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(label32)(s0)
	xori a2, s9, 32
	addiw a0, a1, 1
	sh2add a1, a0, s1
	sw a0, %pcrel_lo(label32)(s0)
	sltiu a0, a2, 1
	sw s10, 0(a1)
	xori a1, s9, 10
	sltiu a2, a1, 1
	or a0, a0, a2
	bne a0, zero, label99
	j label35
.p2align 2
label431:
	mv s10, a0
	j label69
.p2align 2
label37:
	jal getch
	xori a3, s9, 45
	xori a2, s9, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label438
	j label437
.p2align 2
label69:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label551
	sh2add a1, s10, s10
	sh1add s10, a1, a0
	j label69
.p2align 2
label99:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label99
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label431
	j label37
label11:
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label12:
	mv a0, zero
	j label17
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
	mv a0, s3
	jal putch
	li a0, -1
	j label100
label48:
	addiw a2, a3, 1
	sh2add a3, a2, s4
pcrel834:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel834)(s2)
	sw s9, 0(a3)
	beq a0, zero, label471
label470:
	mv s9, a1
	mv s11, a0
	j label28
.p2align 2
label100:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	bne s8, zero, label12
	j label11
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label127
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label4
.p2align 2
label551:
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	beq a2, zero, label806
.p2align 2
label75:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label75
.p2align 2
label76:
	addiw s9, a0, -48
	bltu s9, s3, label96
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s10
pcrel835:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel835)(s2)
	bne a4, zero, label84
.p2align 2
label83:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label83)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label100
.p2align 2
label84:
	sh2add a5, a4, s4
	addiw a4, a4, -1
	lw a3, 0(a5)
pcrel836:
	auipc s2, %pcrel_hi(ops)
	sw a4, %pcrel_lo(pcrel836)(s2)
pcrel837:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel837)(s0)
	addi t1, a5, -1
	sh2add t0, a5, s1
	addi a5, a5, -2
	lw a4, 0(t0)
	sw t1, %pcrel_lo(pcrel837)(s0)
	lw t0, -4(t0)
	sw a5, %pcrel_lo(pcrel837)(s0)
	beq a3, s5, label85
	beq a3, s6, label93
	j label786
.p2align 2
label85:
	addw a3, a4, t0
pcrel838:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel838)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel838)(s0)
	sw a3, 0(a5)
pcrel839:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel839)(s2)
	bne a4, zero, label84
	j label83
.p2align 2
label96:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label628
	sh2add a1, s9, s9
	sh1add s9, a1, a0
	j label96
.p2align 2
label93:
	subw a3, t0, a4
pcrel840:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel840)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel840)(s0)
	sw a3, 0(a5)
pcrel841:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel841)(s2)
	bne a4, zero, label84
	j label83
.p2align 2
label786:
	li a5, 42
	bne a3, a5, label796
	mulw a3, a4, t0
pcrel842:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel842)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel842)(s0)
	sw a3, 0(a5)
pcrel843:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel843)(s2)
	bne a4, zero, label84
	j label83
.p2align 2
label796:
	li a5, 47
	beq a3, a5, label92
	li a5, 37
	beq a3, a5, label91
	mv a3, zero
pcrel844:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel844)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel844)(s0)
	sw zero, 0(a5)
pcrel845:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel845)(s2)
	bne a4, zero, label84
	j label83
.p2align 2
label437:
	xori a3, s9, 42
	xori a2, s9, 47
	xori a4, s9, 37
	li s11, 20
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	sltiu a2, a4, 1
	or a1, a1, a3
	or a1, a1, a2
	bne a1, zero, label39
	mv s11, zero
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label75
	j label806
.p2align 2
label438:
	mv s11, s3
	bne s3, zero, label778
.p2align 2
label448:
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label75
	j label806
.p2align 2
label778:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label68
	j label42
label67:
	jal getch
	mv a1, a0
	li a0, 1
pcrel846:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel846)(s2)
	bne a3, zero, label49
	j label783
.p2align 2
label68:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label68
	addiw a0, a0, -48
	bltu a0, s3, label459
	j label67
.p2align 2
label49:
	sh2add a4, a3, s4
	lw a2, 0(a4)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu a4, t0, 1
	sltiu t0, a5, 1
	or a4, a4, t0
	bne a4, zero, label63
	j label62
.p2align 2
label50:
	addiw a3, a3, -1
pcrel847:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel847)(s2)
pcrel848:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel848)(s0)
	addi t1, a4, -1
	sh2add a5, a4, s1
	addi a4, a4, -2
	lw a3, 0(a5)
	sw t1, %pcrel_lo(pcrel848)(s0)
	lw t0, -4(a5)
	sw a4, %pcrel_lo(pcrel848)(s0)
	beq a2, s5, label59
	j label51
label58:
	subw a2, t0, a3
pcrel849:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel849)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel849)(s0)
	sw a2, 0(a4)
pcrel850:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel850)(s2)
	bne a3, zero, label49
	j label48
label59:
	addw a2, a3, t0
	j label60
label63:
	li a4, 11
	blt s11, a4, label50
	j label48
label62:
	xori a5, a2, 42
	xori t0, a2, 47
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	xori t0, a2, 37
	or a4, a4, a5
	sltiu a5, t0, 1
	slti t0, s11, 1
	or a4, a4, a5
	or a5, a4, t0
	bne a5, zero, label50
	j label48
label51:
	beq a2, s6, label58
	li a5, 42
	beq a2, a5, label57
	li a5, 47
	bne a2, a5, label55
	divw a2, t0, a3
pcrel851:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel851)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel851)(s0)
	sw a2, 0(a4)
	j label44
.p2align 2
label39:
	beq s11, zero, label448
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label68
	j label42
.p2align 2
label92:
	divw a3, t0, a4
pcrel852:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel852)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel852)(s0)
	sw a3, 0(a5)
pcrel853:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel853)(s2)
	bne a4, zero, label84
	j label83
label471:
	mv s9, a1
	j label32
label60:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label60)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(label60)(s0)
	sw a2, 0(a4)
pcrel854:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel854)(s2)
	bne a3, zero, label49
	addiw a2, a3, 1
	sh2add a3, a2, s4
	sw a2, %pcrel_lo(pcrel854)(s2)
	sw s9, 0(a3)
	beq a0, zero, label471
	j label470
.p2align 2
label91:
	remw a3, t0, a4
pcrel855:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel855)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel855)(s0)
	sw a3, 0(a5)
pcrel856:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel856)(s2)
	bne a4, zero, label84
	j label83
label783:
	addiw a2, a3, 1
	sh2add a3, a2, s4
pcrel857:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel857)(s2)
	sw s9, 0(a3)
	beq a0, zero, label471
	j label470
label44:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(label44)(s2)
	bne a3, zero, label49
	j label48
label57:
	mulw a2, a3, t0
pcrel858:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel858)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel858)(s0)
	sw a2, 0(a4)
	j label44
label35:
	addiw a0, s9, -48
	bltu a0, s3, label431
	j label37
label55:
	li a5, 37
	bne a2, a5, label507
	remw a2, t0, a3
pcrel859:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel859)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel859)(s0)
	sw a2, 0(a4)
	j label44
label806:
	mv a0, a1
	j label76
.p2align 2
label628:
	mv a0, s9
	mv a2, zero
pcrel860:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel860)(s2)
	bne a4, zero, label84
	j label83
label42:
	addiw a0, a0, -48
	bgeu a0, s3, label67
label459:
	mv s10, a0
.p2align 2
label64:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label535
	sh2add a1, s10, s10
	sh1add s10, a1, a0
	j label64
label535:
	mv a0, zero
pcrel861:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel861)(s2)
	bne a3, zero, label49
	addiw a2, a3, 1
	sh2add a3, a2, s4
	sw a2, %pcrel_lo(pcrel861)(s2)
	sw s9, 0(a3)
	j label471
label127:
	mv s10, s9
	mv s11, zero
	j label7
label507:
	mv a2, zero
pcrel862:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel862)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel862)(s0)
	sw zero, 0(a4)
	j label44
