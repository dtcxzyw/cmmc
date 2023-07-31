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
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getint
	mv s2, a0
	jal getch
pcrel798:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel798)
pcrel799:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel799)
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
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label131
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label7:
	beq s2, zero, label108
	mv a3, zero
	j label16
label109:
	jal getch
	li a2, 1
	mv a1, zero
	j label7
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
.p2align 2
label19:
	sh2add a4, a3, s0
	addi a3, a3, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	li a4, 252
	blt a3, a4, label19
	mv a5, a3
.p2align 2
label21:
	sh2add a4, a5, s0
	addi a5, a5, 1
	sw zero, 0(a4)
	li a4, 256
	blt a5, a4, label21
	mv a3, zero
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
	addi a3, a3, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	li a4, 252
	blt a3, a4, label26
.p2align 2
label28:
	sh2add a4, a3, s1
	addi a3, a3, 1
	sw zero, 0(a4)
	li a4, 256
	blt a3, a4, label28
	bne a2, zero, label416
	mv s3, a1
.p2align 2
label31:
	lw a2, 0(s0)
	addiw a1, a2, 1
	xori a2, a0, 32
	sh2add a3, a1, s0
	sw a1, 0(s0)
	sltiu a1, a2, 1
	sw s3, 0(a3)
	xori a3, a0, 10
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label34
.p2align 2
label425:
	mv s4, a0
	j label35
.p2align 2
label34:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label34
	j label425
.p2align 2
label35:
	addiw a0, s4, -48
	li a1, 10
	bltu a0, a1, label438
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
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a2, a3, 1
	or a4, a0, a2
	bne a4, zero, label43
	j label745
.p2align 2
label416:
	mv s3, a0
	mv s4, a1
	mv s5, a2
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
.p2align 2
label103:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label108
	mv a0, s3
	mv a1, s4
	mv a2, s5
	mv a3, zero
	j label16
.p2align 2
label443:
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a0, a2, 1
	sltiu a2, a3, 1
	or a4, a0, a2
	beq a4, zero, label745
.p2align 2
label43:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label43
.p2align 2
label44:
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label464
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s3
	lw a4, 0(s1)
	bne a4, zero, label55
.p2align 2
label746:
	lw a5, 0(s0)
	mv s3, a1
	mv s4, a0
	mv s5, a2
	sh2add a4, a5, s0
	lw a3, 0(a4)
	mv a0, a3
	j label103
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
	j label56
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
	j label746
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
	j label746
.p2align 2
label56:
	li t0, 45
	beq a3, t0, label57
	li t0, 42
	beq a3, t0, label59
	li t0, 47
	beq a3, t0, label61
	li t0, 37
	bne a3, t0, label771
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label746
label530:
	li s5, 10
	beq s5, zero, label540
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label98
	j label72
label551:
	mv s3, a0
	j label95
label94:
	jal getch
	mv a2, s3
	mv a1, a0
	li a0, 1
	lw a4, 0(s1)
	bne a4, zero, label78
	j label555
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
label95:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label628
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label95
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
	j label746
label555:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	bne a0, zero, label757
label622:
	mv a0, a1
	mv s3, a2
	j label31
label78:
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t0, a3, 45
	xori t1, a3, 43
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label92
	li a5, 11
	blt s5, a5, label80
	j label93
label628:
	mv a2, s3
	mv a0, zero
	lw a4, 0(s1)
	bne a4, zero, label78
	j label555
label80:
	addiw a4, a4, -1
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
	beq a3, t1, label81
	j label580
label92:
	xori t0, a3, 42
	xori t1, a3, 47
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	xori t1, a3, 37
	or a5, a5, t0
	sltiu t0, t1, 1
	slti t1, s5, 1
	or a5, a5, t0
	or t0, a5, t1
	bne t0, zero, label80
	j label93
label745:
	mv a0, a1
	j label44
label69:
	bne s5, zero, label539
label540:
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a2, a3, 1
	or a4, a0, a2
	bne a4, zero, label43
	j label745
label108:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
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
	j label746
label81:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label78
	j label555
label580:
	li t0, 45
	beq a3, t0, label89
	li t0, 42
	beq a3, t0, label84
	li t0, 47
	beq a3, t0, label88
	li t0, 37
	beq a3, t0, label87
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	j label74
label89:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label78
	j label555
.p2align 2
label771:
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label55
	j label746
label74:
	lw a4, 0(s1)
	bne a4, zero, label78
	j label555
label84:
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	j label74
label72:
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label551
	j label94
label757:
	mv s3, a1
	mv s4, a2
	mv s5, a0
	j label99
label93:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a0, zero, label622
	j label757
label539:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label98
	j label72
label464:
	mv s3, a0
.p2align 2
label47:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label470
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label47
label470:
	mv a0, s3
	mv a2, zero
	lw a4, 0(s1)
	bne a4, zero, label55
	j label746
label131:
	mv a1, s3
	mv a2, zero
	j label7
label88:
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	j label74
label87:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	j label74
.p2align 2
label438:
	mv s3, a0
.p2align 2
label37:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label443
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label37
