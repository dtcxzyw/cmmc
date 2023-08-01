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
	li s7, 252
	li s6, 45
	li s5, 43
pcrel846:
	auipc s2, %pcrel_hi(ops)
	li s3, 10
pcrel847:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel846)
	addi s1, s0, %pcrel_lo(pcrel847)
.p2align 2
label2:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label4
	jal getch
	li s11, 1
	mv s10, zero
	j label7
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label131
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label4
label131:
	mv s10, s9
	mv s11, zero
label7:
	beq s8, zero, label108
	mv s9, a0
.p2align 2
label11:
	mv a0, zero
	j label16
.p2align 2
label25:
	sh2add a1, a1, s4
	addi a0, a0, 112
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
.p2align 2
label26:
	sh2add a1, a0, s4
	addi a0, a0, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	blt a0, s7, label26
.p2align 2
label28:
	sh2add a1, a0, s4
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 256
	blt a0, a1, label28
	beq s11, zero, label31
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
	mv a0, s3
	jal putch
	li a0, -1
.p2align 2
label103:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	bne s8, zero, label11
label108:
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
label16:
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
	bge a1, a2, label18
	mv a0, a1
	j label16
.p2align 2
label18:
	sh2add a1, a1, s1
	addi a0, a0, 112
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
.p2align 2
label19:
	sh2add a1, a0, s1
	addi a0, a0, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	blt a0, s7, label19
	mv a2, a0
.p2align 2
label21:
	sh2add a1, a2, s1
	addi a2, a2, 1
	sw zero, 0(a1)
	li a1, 256
	blt a2, a1, label21
	mv a0, zero
.p2align 2
label23:
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
	bge a1, a2, label25
	mv a0, a1
	j label23
.p2align 2
label31:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(label31)(s0)
	xori a2, s9, 32
	addiw a0, a1, 1
	sh2add a1, a0, s1
	sw a0, %pcrel_lo(label31)(s0)
	sltiu a0, a2, 1
	sw s10, 0(a1)
	xori a1, s9, 10
	sltiu a2, a1, 1
	or a0, a0, a2
	bne a0, zero, label98
	j label34
.p2align 2
label39:
	jal getch
	xori a3, s9, 45
	xori a2, s9, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label446
	j label445
.p2align 2
label98:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label98
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label431
	j label39
.p2align 2
label446:
	mv s11, s3
	beq s3, zero, label456
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label70
	j label44
label467:
	mv s10, a0
	j label67
label66:
	jal getch
	mv a1, a0
	li a0, 1
pcrel848:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel848)(s2)
	bne a3, zero, label51
	j label793
.p2align 2
label70:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label70
	addiw a0, a0, -48
	bltu a0, s3, label467
	j label66
.p2align 2
label67:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label544
	sh2add a1, s10, s10
	sh1add s10, a1, a0
	j label67
.p2align 2
label445:
	xori a2, s9, 42
	xori a3, s9, 47
	li s11, 20
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	xori a2, s9, 37
	or a1, a1, a4
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label41
	mv s11, zero
	mv a1, a0
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a0, a3, 1
	sltiu a3, a2, 1
	or a4, a0, a3
	bne a4, zero, label97
	j label784
.p2align 2
label436:
	xori a3, a1, 32
	xori a2, a1, 10
	sltiu a0, a3, 1
	sltiu a3, a2, 1
	or a4, a0, a3
	bne a4, zero, label97
	j label784
.p2align 2
label76:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s10
pcrel849:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel849)(s2)
	bne a4, zero, label82
	j label81
.p2align 2
label94:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label621
	sh2add a1, s9, s9
	sh1add s9, a1, a0
	j label94
.p2align 2
label97:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label97
	addiw s9, a0, -48
	bltu s9, s3, label94
	j label76
.p2align 2
label82:
	sh2add a5, a4, s4
	addiw a4, a4, -1
	lw a3, 0(a5)
pcrel850:
	auipc s2, %pcrel_hi(ops)
	sw a4, %pcrel_lo(pcrel850)(s2)
pcrel851:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel851)(s0)
	addi t1, a5, -1
	sh2add t0, a5, s1
	addi a5, a5, -2
	lw a4, 0(t0)
	sw t1, %pcrel_lo(pcrel851)(s0)
	lw t0, -4(t0)
	sw a5, %pcrel_lo(pcrel851)(s0)
	bne a3, s5, label590
	addw a3, a4, t0
	lw a5, %pcrel_lo(pcrel851)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel851)(s0)
	sw a3, 0(a5)
	lw a4, %pcrel_lo(pcrel850)(s2)
	bne a4, zero, label82
	j label81
.p2align 2
label93:
	subw a3, t0, a4
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
	bne a4, zero, label82
	j label81
.p2align 2
label590:
	beq a3, s6, label93
	li a5, 42
	bne a3, a5, label813
	mulw a3, a4, t0
pcrel854:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel854)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel854)(s0)
	sw a3, 0(a5)
pcrel855:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel855)(s2)
	bne a4, zero, label82
	j label81
.p2align 2
label813:
	li a5, 47
	bne a3, a5, label816
	divw a3, t0, a4
pcrel856:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel856)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel856)(s0)
	sw a3, 0(a5)
pcrel857:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel857)(s2)
	bne a4, zero, label82
	j label81
.p2align 2
label816:
	li a5, 37
	bne a3, a5, label818
	remw a3, t0, a4
pcrel858:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel858)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel858)(s0)
	sw a3, 0(a5)
pcrel859:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel859)(s2)
	bne a4, zero, label82
.p2align 2
label81:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label81)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label103
.p2align 2
label51:
	sh2add a4, a3, s4
	lw a2, 0(a4)
	xori t0, a2, 45
	xori a5, a2, 43
	sltiu a4, a5, 1
	sltiu a5, t0, 1
	or a4, a4, a5
	bne a4, zero, label65
	j label64
.p2align 2
label52:
	addiw a3, a3, -1
pcrel860:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel860)(s2)
pcrel861:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel861)(s0)
	addi t1, a4, -1
	sh2add a5, a4, s1
	addi a4, a4, -2
	lw a3, 0(a5)
	sw t1, %pcrel_lo(pcrel861)(s0)
	lw t0, -4(a5)
	sw a4, %pcrel_lo(pcrel861)(s0)
	bne a2, s5, label499
	addw a2, a3, t0
.p2align 2
label54:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label54)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(label54)(s0)
	sw a2, 0(a4)
pcrel862:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel862)(s2)
	bne a3, zero, label51
	j label790
label64:
	xori a5, a2, 42
	xori t1, a2, 47
	sltiu a4, a5, 1
	sltiu t0, t1, 1
	xori a5, a2, 37
	slti t1, s11, 1
	or a4, a4, t0
	sltiu t0, a5, 1
	or a4, a4, t0
	or a5, a4, t1
	bne a5, zero, label52
	j label50
.p2align 2
label41:
	beq s11, zero, label456
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label70
	j label44
label544:
	mv a0, zero
pcrel863:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel863)(s2)
	bne a3, zero, label51
	addiw a2, a3, 1
	sh2add a3, a2, s4
	sw a2, %pcrel_lo(pcrel863)(s2)
	sw s9, 0(a3)
	j label479
label50:
	addiw a2, a3, 1
	sh2add a3, a2, s4
pcrel864:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel864)(s2)
	sw s9, 0(a3)
	beq a0, zero, label479
	j label478
label499:
	bne a2, s6, label789
	subw a2, t0, a3
pcrel865:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel865)(s0)
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, %pcrel_lo(pcrel865)(s0)
	sw a2, 0(a4)
pcrel866:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel866)(s2)
	bne a3, zero, label51
	j label50
label478:
	mv s9, a1
	mv s11, a0
	j label99
label479:
	mv s9, a1
	j label31
label790:
	addiw a2, a3, 1
	sh2add a3, a2, s4
pcrel867:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel867)(s2)
	sw s9, 0(a3)
	beq a0, zero, label479
	j label478
.p2align 2
label818:
	mv a3, zero
pcrel868:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel868)(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel868)(s0)
	sw zero, 0(a5)
pcrel869:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel869)(s2)
	bne a4, zero, label82
	j label81
label793:
	addiw a2, a3, 1
	sh2add a3, a2, s4
pcrel870:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel870)(s2)
	sw s9, 0(a3)
	beq a0, zero, label479
	j label478
label789:
	li a5, 42
	bne a2, a5, label59
	mulw a2, a3, t0
	j label54
label59:
	li a5, 47
	beq a2, a5, label60
	li a5, 37
	bne a2, a5, label521
	remw a2, t0, a3
	j label54
label34:
	addiw a0, s9, -48
	bgeu a0, s3, label39
.p2align 2
label431:
	mv s10, a0
.p2align 2
label36:
	jal getch
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, s3, label436
	sh2add a1, s10, s10
	sh1add s10, a1, a0
	j label36
label784:
	mv a0, a1
	j label74
.p2align 2
label456:
	mv a1, a0
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a0, a3, 1
	sltiu a3, a2, 1
	or a4, a0, a3
	bne a4, zero, label97
	j label784
label74:
	addiw s9, a0, -48
	bltu s9, s3, label94
	j label76
.p2align 2
label621:
	mv a0, s9
	mv a2, zero
pcrel871:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel871)(s2)
	bne a4, zero, label82
	j label81
label44:
	addiw a0, a0, -48
	bltu a0, s3, label467
	j label66
label65:
	li a4, 11
	blt s11, a4, label52
	j label50
label521:
	mv a2, zero
	j label54
label60:
	divw a2, t0, a3
	j label54
