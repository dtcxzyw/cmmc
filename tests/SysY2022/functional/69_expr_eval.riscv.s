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
	li s3, 10
	li s5, 43
pcrel872:
	auipc s2, %pcrel_hi(ops)
	li s7, 256
pcrel873:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel872)
	addi s1, s0, %pcrel_lo(pcrel873)
.p2align 2
label2:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label2
	addiw s9, a0, -48
	bgeu s9, s3, label115
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label137
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label4
label115:
	jal getch
	li s11, 1
	mv s10, zero
label7:
	beq s8, zero, label114
	mv s9, a0
	j label11
.p2align 2
label279:
	beq s11, zero, label29
.p2align 2
label25:
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
label108:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label114
.p2align 2
label11:
	mv a0, s1
	mv a1, zero
	j label16
.p2align 2
label113:
	addi a0, a0, 256
.p2align 2
label16:
	sd zero, 0(a0)
	addi a1, a1, 64
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	blt a1, s7, label113
	mv a0, s4
	mv a1, zero
.p2align 2
label20:
	sd zero, 0(a0)
	addi a1, a1, 64
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	bge a1, s7, label279
	addi a0, a0, 256
	j label20
.p2align 2
label29:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(label29)(s0)
	xori a3, s9, 32
	addiw a0, a1, 1
	xori a1, s9, 10
	sh2add a2, a0, s1
	sw a0, %pcrel_lo(label29)(s0)
	sltiu a0, a3, 1
	sw s10, 0(a2)
	sltiu a2, a1, 1
	or a3, a0, a2
	beq a3, zero, label30
.p2align 2
label107:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label107
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label300
.p2align 2
label32:
	jal getch
	mv a1, a0
	xori a2, s9, 43
	xori a4, s9, 45
	sltiu a0, a2, 1
	sltiu a3, a4, 1
	or a2, a0, a3
	bne a2, zero, label307
.p2align 2
label306:
	xori a2, s9, 42
	xori a5, s9, 47
	xori a3, s9, 37
	li s11, 20
	sltiu a0, a2, 1
	sltiu a4, a5, 1
	sltiu a5, a3, 1
	or a2, a0, a4
	or a0, a2, a5
	beq a0, zero, label818
	bne s11, zero, label316
.p2align 2
label317:
	mv s9, s10
	mv a0, a1
	xori a4, a1, 32
	xori a3, a1, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label103
	j label79
.p2align 2
label300:
	mv s9, a0
.p2align 2
label104:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label534
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label104
.p2align 2
label534:
	xori a4, a0, 32
	xori a3, a0, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	beq a4, zero, label79
.p2align 2
label103:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label103
	addiw a1, a0, -48
	bltu a1, s3, label458
.p2align 2
label81:
	jal getch
	li a2, 1
	mv a1, s9
pcrel874:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel874)(s2)
	bne a4, zero, label86
	j label463
.p2align 2
label88:
	bne a3, s6, label483
	subw a3, t0, a4
pcrel875:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel875)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel875)(s0)
	sw a3, 0(t0)
pcrel876:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel876)(s2)
	beq a4, zero, label463
.p2align 2
label86:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel877:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel877)(s2)
pcrel878:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel878)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel878)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel878)(s0)
	bne a3, s5, label88
	addw a3, a4, t0
	lw a5, %pcrel_lo(pcrel878)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel878)(s0)
	sw a3, 0(t0)
	lw a4, %pcrel_lo(pcrel877)(s2)
	bne a4, zero, label86
.p2align 2
label463:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label463)(s0)
	mv s9, a0
	mv s10, a1
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label108
.p2align 2
label458:
	mv s9, a1
.p2align 2
label100:
	jal getch
	addiw a2, a0, -48
	bgeu a2, s3, label519
	sh2add a0, s9, s9
	sh1add s9, a0, a2
	j label100
.p2align 2
label483:
	li a5, 42
	bne a3, a5, label829
	mulw a3, a4, t0
pcrel879:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel879)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel879)(s0)
	sw a3, 0(t0)
pcrel880:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel880)(s2)
	bne a4, zero, label86
	j label463
.p2align 2
label829:
	li a5, 47
	beq a3, a5, label94
	li a5, 37
	beq a3, a5, label93
	mv a3, zero
pcrel881:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel881)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel881)(s0)
	sw zero, 0(t0)
pcrel882:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel882)(s2)
	bne a4, zero, label86
	j label463
.p2align 2
label307:
	mv s11, s3
	beq s3, zero, label317
	xori a3, a1, 32
	xori a0, a1, 10
	sltiu a2, a3, 1
	sltiu a4, a0, 1
	or a3, a2, a4
	beq a3, zero, label839
.p2align 2
label41:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label41
.p2align 2
label42:
	addiw a1, a0, -48
	bltu a1, s3, label335
	jal getch
	li a1, 1
pcrel883:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel883)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label52
label350:
	addiw a2, a3, 1
pcrel884:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel884)(s2)
	sw s9, 4(a4)
	beq a1, zero, label68
label416:
	mv s9, a0
	mv s11, a1
	j label25
label335:
	mv s10, a1
.p2align 2
label44:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label340
	sh2add a0, s10, s10
	sh1add s10, a0, a1
	j label44
label68:
	auipc s0, %pcrel_hi(oprs)
	lw a3, %pcrel_lo(label68)(s0)
	addiw a1, a3, 1
	xori a3, a0, 32
	sh2add a2, a1, s1
	sw a1, %pcrel_lo(label68)(s0)
	sltiu a1, a3, 1
	sw s10, 0(a2)
	xori a2, a0, 10
	sltiu a4, a2, 1
	or a3, a1, a4
	beq a3, zero, label425
.p2align 2
label69:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label69
label425:
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label438
	jal getch
	xori a4, s9, 45
	xori a2, s9, 43
	mv a1, a0
	sltiu a3, a4, 1
	sltiu a0, a2, 1
	or a2, a0, a3
	bne a2, zero, label307
	j label306
label340:
	mv a1, zero
pcrel885:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel885)(s2)
	sh2add a4, a3, s4
	beq a3, zero, label822
.p2align 2
label52:
	sh2add t0, a3, s4
	lw a2, 0(t0)
	xori t1, a2, 45
	xori t2, a2, 43
	sltiu t0, t1, 1
	sltiu a5, t2, 1
	or t2, a5, t0
	bne t2, zero, label65
	xori t0, a2, 42
	xori t2, a2, 47
	xori t1, a2, 37
	sltiu a5, t0, 1
	sltiu t3, t2, 1
	sltiu t2, t1, 1
	or t0, a5, t3
	slti t3, s11, 1
	or a5, t0, t2
	or t1, a5, t3
	bne t1, zero, label53
label67:
	addiw a2, a3, 1
pcrel886:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel886)(s2)
	sw s9, 4(a4)
	bne a1, zero, label416
	j label68
label65:
	li a5, 11
	bge s11, a5, label67
.p2align 2
label53:
	addiw t0, a3, -1
pcrel887:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel887)(s2)
pcrel888:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel888)(s0)
	addi t2, a4, -2
	addi t1, a4, -1
	sh2add a5, a4, s1
	lw a3, 0(a5)
	sw t1, %pcrel_lo(pcrel888)(s0)
	lw t0, -4(a5)
	sw t2, %pcrel_lo(pcrel888)(s0)
	beq a2, s5, label54
	beq a2, s6, label64
	li a5, 42
	bne a2, a5, label59
	mulw a3, a3, t0
	j label55
label54:
	addw a3, a3, t0
.p2align 2
label55:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label55)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(label55)(s0)
	sw a3, 0(a5)
pcrel889:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel889)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label52
	addiw a2, a3, 1
	sw a2, %pcrel_lo(pcrel889)(s2)
	sw s9, 4(a4)
	bne a1, zero, label416
	j label68
.p2align 2
label94:
	divw a3, t0, a4
pcrel890:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel890)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel890)(s0)
	sw a3, 0(t0)
pcrel891:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel891)(s2)
	bne a4, zero, label86
	j label463
label114:
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
label93:
	remw a3, t0, a4
pcrel892:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel892)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel892)(s0)
	sw a3, 0(t0)
pcrel893:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel893)(s2)
	bne a4, zero, label86
	j label463
label822:
	addiw a2, a3, 1
pcrel894:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel894)(s2)
	sw s9, 4(a4)
	bne a1, zero, label416
	j label68
label59:
	li a5, 47
	beq a2, a5, label60
	li a5, 37
	beq a2, a5, label62
	mv a3, zero
	j label55
label64:
	subw a3, t0, a3
pcrel895:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel895)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(pcrel895)(s0)
	sw a3, 0(a5)
pcrel896:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel896)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label52
	j label350
label30:
	addiw a0, s9, -48
	bltu a0, s3, label300
	j label32
label79:
	addiw a1, a0, -48
	bltu a1, s3, label458
	j label81
.p2align 2
label519:
	mv a1, s9
	mv a2, zero
pcrel897:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel897)(s2)
	bne a4, zero, label86
	j label463
.p2align 2
label818:
	mv s11, zero
	mv s9, s10
	mv a0, a1
	xori a4, a1, 32
	xori a3, a1, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label103
	j label79
label316:
	xori a3, a1, 32
	xori a0, a1, 10
	sltiu a2, a3, 1
	sltiu a4, a0, 1
	or a3, a2, a4
	bne a3, zero, label41
label839:
	mv a0, a1
	j label42
label60:
	divw a3, t0, a3
	j label55
label137:
	mv s10, s9
	mv s11, zero
	j label7
label438:
	mv s9, a0
	j label72
.p2align 2
label74:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label72:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label74
	xori a4, a0, 32
	xori a3, a0, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label103
	j label79
label62:
	remw a3, t0, a3
	j label55
