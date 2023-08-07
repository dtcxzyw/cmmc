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
	li s7, 256
	li s6, 45
	li s5, 43
pcrel998:
	auipc s2, %pcrel_hi(ops)
	li s3, 10
pcrel999:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel998)
	addi s1, s0, %pcrel_lo(pcrel999)
.p2align 2
label2:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label4
	j label125
label7:
	beq s8, zero, label11
	mv s9, a0
	mv a1, s1
	mv a0, zero
	j label17
label125:
	jal getch
	li s11, 1
	mv s10, zero
	j label7
.p2align 2
label12:
	mv a1, s1
	mv a0, zero
.p2align 2
label17:
	sd zero, 0(a1)
	addi a2, a0, 64
	li a3, 192
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
	blt a2, a3, label124
	j label20
.p2align 2
label43:
	bne s11, zero, label118
	j label44
.p2align 2
label113:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	bne s8, zero, label12
	j label11
.p2align 2
label118:
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
	j label113
.p2align 2
label124:
	addi a1, a1, 256
	mv a0, a2
	j label17
.p2align 2
label20:
	sh2add a1, a2, s1
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
	addi a1, a0, 112
	sh2add a0, a1, s1
.p2align 2
label21:
	sw zero, 0(a0)
	addi a1, a1, 4
	li a2, 252
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bge a1, a2, label281
	addi a0, a0, 16
	j label21
.p2align 2
label281:
	sh2add a0, a1, s1
	addi a1, a1, 1
	sw zero, 0(a0)
	blt a1, s7, label123
	j label954
.p2align 2
label26:
	sw zero, 0(a0)
	addi a1, a1, 1
	bge a1, s7, label954
.p2align 2
label123:
	addi a0, a0, 4
	j label26
.p2align 2
label954:
	mv a1, s4
	mv a0, zero
.p2align 2
label30:
	sd zero, 0(a1)
	addi a2, a0, 64
	li a3, 192
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
	bge a2, a3, label34
	addi a1, a1, 256
	mv a0, a2
	j label30
.p2align 2
label34:
	sh2add a1, a2, s4
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
	addi a1, a0, 112
	sh2add a0, a1, s4
.p2align 2
label35:
	sw zero, 0(a0)
	addi a1, a1, 4
	li a2, 252
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bge a1, a2, label418
	addi a0, a0, 16
	j label35
.p2align 2
label418:
	sh2add a0, a1, s4
	addi a1, a1, 1
	sw zero, 0(a0)
	blt a1, s7, label122
	j label955
.p2align 2
label40:
	sw zero, 0(a0)
	addi a1, a1, 1
	bge a1, s7, label43
.p2align 2
label122:
	addi a0, a0, 4
	j label40
.p2align 2
label44:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(label44)(s0)
	xori a3, s9, 10
	addiw a0, a1, 1
	xori a1, s9, 32
	sh2add a2, a0, s1
	sw a0, %pcrel_lo(label44)(s0)
	sltiu a0, a1, 1
	sw s10, 0(a2)
	sltiu a2, a3, 1
	or a1, a0, a2
	bne a1, zero, label112
	j label47
.p2align 2
label446:
	mv s10, a0
	j label49
.p2align 2
label52:
	jal getch
	xori a4, s9, 45
	xori a3, s9, 43
	sltiu a2, a4, 1
	sltiu a1, a3, 1
	or a3, a1, a2
	bne a3, zero, label461
	j label460
.p2align 2
label112:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label112
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label446
	j label52
.p2align 2
label49:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label451
	sh2add a0, s10, s10
	sh1add s10, a0, a1
	j label49
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label147
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label4
.p2align 2
label451:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label111
	j label87
.p2align 2
label89:
	jal getch
pcrel1000:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1000)(s2)
	li a2, 1
	mv a1, a0
	mv a0, s10
	bne a4, zero, label98
	j label943
.p2align 2
label111:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label111
	addiw s9, a0, -48
	bltu s9, s3, label90
	j label89
.p2align 2
label943:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label943)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label113
.p2align 2
label98:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel1001:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel1001)(s2)
pcrel1002:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1002)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel1002)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel1002)(s0)
	beq a3, s5, label110
	bne a3, s6, label617
	subw a3, t0, a4
	lw a5, %pcrel_lo(pcrel1002)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1002)(s0)
	sw a3, 0(t0)
	lw a4, %pcrel_lo(pcrel1001)(s2)
	bne a4, zero, label98
	j label943
.p2align 2
label110:
	addw a3, a4, t0
pcrel1003:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1003)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1003)(s0)
	sw a3, 0(t0)
pcrel1004:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1004)(s2)
	bne a4, zero, label98
	j label943
.p2align 2
label90:
	jal getch
	addiw a2, a0, -48
	bgeu a2, s3, label586
	sh2add a0, s9, s9
	sh1add s9, a0, a2
	j label90
.p2align 2
label617:
	li a5, 42
	beq a3, a5, label103
	li a5, 47
	bne a3, a5, label961
	divw a3, t0, a4
pcrel1005:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1005)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1005)(s0)
	sw a3, 0(t0)
pcrel1006:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1006)(s2)
	bne a4, zero, label98
	j label943
.p2align 2
label961:
	li a5, 37
	beq a3, a5, label106
	mv a3, zero
pcrel1007:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1007)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1007)(s0)
	sw zero, 0(t0)
pcrel1008:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1008)(s2)
	bne a4, zero, label98
	j label943
.p2align 2
label955:
	bne s11, zero, label118
	j label44
.p2align 2
label460:
	xori a2, s9, 42
	xori a3, s9, 47
	xori a5, s9, 37
	li s11, 20
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a1, a4
	or a1, a2, a3
	bne a1, zero, label54
	mv s11, zero
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label111
	j label87
.p2align 2
label461:
	mv s11, s3
	bne s3, zero, label936
.p2align 2
label84:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label111
	j label87
.p2align 2
label936:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label83
	j label57
label482:
	mv s10, a1
.p2align 2
label59:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label487
	sh2add a0, s10, s10
	sh1add s10, a0, a1
	j label59
label82:
	jal getch
pcrel1009:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1009)(s2)
	li a1, 1
	bne a3, zero, label67
	j label941
.p2align 2
label83:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label83
	addiw a1, a0, -48
	bltu a1, s3, label482
	j label82
.p2align 2
label103:
	mulw a3, a4, t0
pcrel1010:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1010)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1010)(s0)
	sw a3, 0(t0)
pcrel1011:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1011)(s2)
	bne a4, zero, label98
	j label943
.p2align 2
label67:
	sh2add a5, a3, s4
	lw a2, 0(a5)
	xori a5, a2, 45
	xori t0, a2, 43
	sltiu t1, a5, 1
	sltiu a4, t0, 1
	or t0, a4, t1
	bne t0, zero, label80
	j label81
label69:
	addw a3, a3, t0
.p2align 2
label70:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label70)(s0)
	addiw a2, a5, 1
	sh2add a4, a2, s1
	sw a2, %pcrel_lo(label70)(s0)
	sw a3, 0(a4)
pcrel1012:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1012)(s2)
	bne a3, zero, label67
	j label939
label81:
	xori a5, a2, 42
	xori t0, a2, 47
	xori t3, a2, 37
	sltiu a4, a5, 1
	sltiu t2, t0, 1
	sltiu t1, t3, 1
	or a5, a4, t2
	slti t2, s11, 1
	or a4, a5, t1
	or t0, a4, t2
	beq t0, zero, label66
.p2align 2
label68:
	addiw t0, a3, -1
pcrel1013:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel1013)(s2)
pcrel1014:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel1014)(s0)
	addi t1, a4, -2
	addi t2, a4, -1
	sh2add a5, a4, s1
	lw a3, 0(a5)
	sw t2, %pcrel_lo(pcrel1014)(s0)
	lw t0, -4(a5)
	sw t1, %pcrel_lo(pcrel1014)(s0)
	beq a2, s5, label69
	j label522
label80:
	li a4, 11
	blt s11, a4, label68
	j label66
.p2align 2
label54:
	beq s11, zero, label84
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label83
	j label57
label487:
	mv a1, zero
pcrel1015:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1015)(s2)
	bne a3, zero, label67
	addiw a2, a3, 1
	sh2add a4, a2, s4
	sw a2, %pcrel_lo(pcrel1015)(s2)
	sw s9, 0(a4)
	j label502
label522:
	beq a2, s6, label79
	li a5, 42
	beq a2, a5, label74
	li a5, 47
	beq a2, a5, label78
	li a5, 37
	beq a2, a5, label77
	mv a3, zero
	j label70
label957:
	mv s9, a0
	mv s11, a1
	j label118
label502:
	mv s9, a0
	j label44
label939:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel1016:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel1016)(s2)
	sw s9, 0(a4)
	beq a1, zero, label502
	j label957
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
label106:
	remw a3, t0, a4
pcrel1017:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1017)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1017)(s0)
	sw a3, 0(t0)
pcrel1018:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1018)(s2)
	bne a4, zero, label98
	j label943
label941:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel1019:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel1019)(s2)
	sw s9, 0(a4)
	beq a1, zero, label502
	j label957
label66:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel1020:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel1020)(s2)
	sw s9, 0(a4)
	beq a1, zero, label502
	j label957
label79:
	subw a3, t0, a3
pcrel1021:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1021)(s0)
	addiw a2, a5, 1
	sh2add a4, a2, s1
	sw a2, %pcrel_lo(pcrel1021)(s0)
	sw a3, 0(a4)
pcrel1022:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1022)(s2)
	bne a3, zero, label67
	j label66
label47:
	addiw a0, s9, -48
	bltu a0, s3, label446
	j label52
label87:
	addiw s9, a0, -48
	bltu s9, s3, label90
	j label89
.p2align 2
label586:
	mv a1, a0
	mv a2, zero
pcrel1023:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1023)(s2)
	mv a0, s9
	bne a4, zero, label98
	j label943
label57:
	addiw a1, a0, -48
	bltu a1, s3, label482
	j label82
label78:
	divw a3, t0, a3
	j label70
label77:
	remw a3, t0, a3
	j label70
label147:
	mv s10, s9
	mv s11, zero
	j label7
label74:
	mulw a3, a3, t0
	j label70
