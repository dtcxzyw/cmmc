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
pcrel792:
	auipc a0, %pcrel_hi(oprs)
	addi s0, a0, %pcrel_lo(pcrel792)
pcrel793:
	auipc a0, %pcrel_hi(ops)
	addi s1, a0, %pcrel_lo(pcrel793)
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
	bltu s3, a0, label4
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, zero
	j label8
.p2align 2
label4:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label127
	sh2add a0, s3, s3
	sh1add s3, a0, a1
	j label4
label127:
	mv a1, a0
	mv a2, zero
	mv a0, s3
label8:
	beq s2, zero, label105
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
label409:
	mv s3, a1
	mv s4, a0
	mv s5, a2
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
	j label100
label739:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a2, zero, label408
	j label409
.p2align 2
label100:
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, -1
	beq s2, zero, label105
	mv a1, s3
	mv a0, s4
	mv a2, s5
	mv a3, zero
	j label17
.p2align 2
label19:
	sh2add a4, a4, s0
	addi a5, a3, 120
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
	bge a4, a5, label24
	mv a3, a4
	j label22
.p2align 2
label24:
	sh2add a4, a4, s1
	addi a3, a3, 120
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
.p2align 2
label25:
	sh2add a4, a3, s1
	addi a3, a3, 1
	sw zero, 0(a4)
	li a4, 256
	blt a3, a4, label25
	bne a2, zero, label409
.p2align 2
label408:
	mv s3, a0
	lw a2, 0(s0)
	addiw a0, a2, 1
	xori a2, a1, 32
	sh2add a3, a0, s0
	sw a0, 0(s0)
	sltiu a0, a2, 1
	sw s3, 0(a3)
	xori a3, a1, 10
	sltiu a2, a3, 1
	or a0, a0, a2
	bne a0, zero, label99
	j label418
.p2align 2
label424:
	mv s3, a0
	j label69
.p2align 2
label37:
	jal getch
	xori a3, s4, 45
	xori a2, s4, 43
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label431
	j label430
.p2align 2
label99:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label99
	mv s4, a0
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label424
	j label37
.p2align 2
label69:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label544
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label69
.p2align 2
label544:
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	beq a2, zero, label766
.p2align 2
label75:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label75
.p2align 2
label76:
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label78
	mv s3, a0
.p2align 2
label96:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label621
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label96
.p2align 2
label78:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s3
	lw a4, 0(s1)
	bne a4, zero, label84
.p2align 2
label83:
	lw a4, 0(s0)
	mv s3, a1
	mv s4, a0
	mv s5, a2
	sh2add a5, a4, s0
	lw a3, 0(a5)
	mv a0, a3
	j label100
.p2align 2
label84:
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
	beq a3, t1, label95
	li t0, 45
	beq a3, t0, label86
	j label594
.p2align 2
label95:
	addw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label594:
	li t0, 42
	bne a3, t0, label745
	mulw a3, a4, a5
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label745:
	li t0, 47
	bne a3, t0, label757
	divw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label757:
	li t0, 37
	beq a3, t0, label92
	mv a3, zero
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw zero, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label92:
	remw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label86:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
.p2align 2
label431:
	li s5, 10
	beq s5, zero, label441
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label68
	j label42
label452:
	mv s3, a0
	j label64
label67:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s3
	lw a4, 0(s1)
	bne a4, zero, label48
	j label742
.p2align 2
label68:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a1, a2, 1
	sltiu a2, a3, 1
	or a1, a1, a2
	bne a1, zero, label68
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label452
	j label67
.p2align 2
label64:
	jal getch
	li a2, 10
	mv a1, a0
	addiw a0, a0, -48
	bgeu a0, a2, label528
	sh2add a1, s3, s3
	sh1add s3, a1, a0
	j label64
.p2align 2
label430:
	xori a3, s4, 42
	xori a2, s4, 47
	xori a4, s4, 37
	li s5, 20
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	sltiu a2, a4, 1
	or a1, a1, a3
	or a1, a1, a2
	bne a1, zero, label39
	mv s5, zero
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label75
	j label766
label48:
	sh2add a5, a4, s1
	lw a3, 0(a5)
	xori t1, a3, 45
	xori t0, a3, 43
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	or a5, a5, t0
	bne a5, zero, label62
	j label61
label49:
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
	bne a3, t0, label477
	addw a3, a4, a5
label51:
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label48
	j label739
label62:
	li a5, 11
	blt s5, a5, label49
	j label63
label61:
	xori t0, a3, 42
	xori t1, a3, 47
	sltiu a5, t0, 1
	sltiu t2, t1, 1
	xori t0, a3, 37
	or a5, a5, t2
	sltiu t1, t0, 1
	slti t2, s5, 1
	or a5, a5, t1
	or t0, a5, t2
	bne t0, zero, label49
label63:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a2, zero, label408
	j label409
label39:
	bne s5, zero, label440
label441:
	mv a1, a0
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label75
	j label766
label528:
	mv a0, s3
	mv a2, zero
	lw a4, 0(s1)
	bne a4, zero, label48
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	j label408
label477:
	li t0, 45
	beq a3, t0, label60
	li t0, 42
	beq a3, t0, label59
	li t0, 47
	beq a3, t0, label58
	li t0, 37
	beq a3, t0, label57
	mv a3, zero
	j label51
label105:
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
label742:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a2, zero, label408
	j label409
label456:
	addiw a3, a4, 1
	sh2add a4, a3, s1
	sw a3, 0(s1)
	sw s4, 0(a4)
	beq a2, zero, label408
	j label409
label60:
	subw a3, a5, a4
	lw a5, 0(s0)
	addiw a4, a5, 1
	sh2add a5, a4, s0
	sw a4, 0(s0)
	sw a3, 0(a5)
	lw a4, 0(s1)
	bne a4, zero, label48
	j label456
label418:
	mv s4, a1
	addiw a0, a1, -48
	li a1, 10
	bltu a0, a1, label424
	j label37
label766:
	mv a0, a1
	j label76
.p2align 2
label621:
	mv a0, s3
	mv a2, zero
	lw a4, 0(s1)
	bne a4, zero, label84
	j label83
label42:
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label452
	j label67
label440:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a3, a2, 1
	or a1, a1, a3
	bne a1, zero, label68
	j label42
label59:
	mulw a3, a4, a5
	j label51
label57:
	remw a3, a5, a4
	j label51
label58:
	divw a3, a5, a4
	j label51
