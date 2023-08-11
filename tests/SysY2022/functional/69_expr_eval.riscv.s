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
	li s7, 256
pcrel873:
	auipc s2, %pcrel_hi(ops)
pcrel874:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel873)
	addi s1, s0, %pcrel_lo(pcrel874)
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
label823:
	addiw a2, a3, 1
pcrel875:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel875)(s2)
	sw s9, 4(a4)
	beq a1, zero, label61
label403:
	mv s9, a0
	mv s11, a1
.p2align 2
label110:
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
label105:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label114
.p2align 2
label11:
	mv a0, s1
	mv a1, zero
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
	bge a1, s7, label211
	addi a0, a0, 256
	j label16
.p2align 2
label211:
	mv a0, s4
	mv a1, zero
.p2align 2
label21:
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
	bge a1, s7, label280
	addi a0, a0, 256
	j label21
.p2align 2
label280:
	bne s11, zero, label110
pcrel876:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(pcrel876)(s0)
	xori a3, s9, 32
	addiw a0, a2, 1
	xori a2, s9, 10
	sh2add a1, a0, s1
	sltiu a4, a2, 1
	sw a0, %pcrel_lo(pcrel876)(s0)
	sltiu a0, a3, 1
	sw s10, 0(a1)
	or a1, a0, a4
	beq a1, zero, label27
.p2align 2
label104:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label104
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label301
.p2align 2
label29:
	jal getch
	mv a1, a0
	xori a2, s9, 43
	xori a3, s9, 45
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label308
.p2align 2
label307:
	xori a2, s9, 42
	xori a3, s9, 47
	xori a4, s9, 37
	li s11, 20
	sltiu a0, a2, 1
	sltiu a5, a3, 1
	sltiu a3, a4, 1
	or a2, a0, a5
	or a0, a2, a3
	bne a0, zero, label34
	mv s11, zero
	mv s9, s10
	mv a0, a1
	xori a2, a1, 32
	xori a4, a1, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label76
	j label77
.p2align 2
label301:
	mv s9, a0
.p2align 2
label101:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label535
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label101
.p2align 2
label535:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	beq a2, zero, label77
.p2align 2
label76:
	jal getch
	xori a4, a0, 10
	xori a3, a0, 32
	sltiu a2, a4, 1
	sltiu a1, a3, 1
	or a3, a1, a2
	bne a3, zero, label76
.p2align 2
label77:
	addiw a1, a0, -48
	bgeu a1, s3, label79
	mv s9, a1
	j label80
.p2align 2
label82:
	sh2add a0, s9, s9
	sh1add s9, a0, a2
.p2align 2
label80:
	jal getch
	addiw a2, a0, -48
	bltu a2, s3, label82
	mv a1, a0
	mv a2, zero
pcrel877:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel877)(s2)
	mv a0, s9
	bne a4, zero, label88
	j label830
.p2align 2
label100:
	addw a3, a4, t0
pcrel878:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel878)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel878)(s0)
	sw a3, 0(t0)
pcrel879:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel879)(s2)
	beq a4, zero, label830
.p2align 2
label88:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel880:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel880)(s2)
pcrel881:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel881)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel881)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel881)(s0)
	beq a3, s5, label100
	beq a3, s6, label93
	li a5, 42
	bne a3, a5, label833
	mulw a3, a4, t0
	lw a5, %pcrel_lo(pcrel881)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel881)(s0)
	sw a3, 0(t0)
	lw a4, %pcrel_lo(pcrel880)(s2)
	bne a4, zero, label88
	j label830
.p2align 2
label833:
	li a5, 47
	beq a3, a5, label98
	li a5, 37
	beq a3, a5, label97
	mv a3, zero
pcrel882:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel882)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel882)(s0)
	sw zero, 0(t0)
pcrel883:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel883)(s2)
	bne a4, zero, label88
	j label830
.p2align 2
label79:
	jal getch
pcrel884:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel884)(s2)
	li a2, 1
	mv a1, a0
	mv a0, s9
	bne a4, zero, label88
.p2align 2
label830:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label830)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label105
.p2align 2
label311:
	xori a3, a1, 32
	xori a0, a1, 10
	sltiu a2, a3, 1
	sltiu a4, a0, 1
	or a3, a2, a4
	beq a3, zero, label819
.p2align 2
label37:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label37
.p2align 2
label38:
	addiw a1, a0, -48
	bltu a1, s3, label330
	jal getch
	li a1, 1
pcrel885:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel885)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label45
.p2align 2
label337:
	addiw a2, a3, 1
pcrel886:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel886)(s2)
	sw s9, 4(a4)
	bne a1, zero, label403
label61:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(label61)(s0)
	addiw a1, a2, 1
	xori a2, a0, 32
	sh2add a3, a1, s1
	sw a1, %pcrel_lo(label61)(s0)
	sltiu a1, a2, 1
	sw s10, 0(a3)
	xori a3, a0, 10
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label412
.p2align 2
label62:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label62
label412:
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label425
	jal getch
	xori a2, s9, 43
	xori a3, s9, 45
	mv a1, a0
	sltiu a4, a3, 1
	sltiu a0, a2, 1
	or a2, a0, a4
	beq a2, zero, label307
.p2align 2
label308:
	mv s11, s3
.p2align 2
label34:
	bne s11, zero, label311
	mv s9, s10
	mv a0, a1
	xori a2, a1, 32
	xori a4, a1, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label76
	j label77
label425:
	mv s9, a0
.p2align 2
label66:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label431
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label66
.p2align 2
label93:
	subw a3, t0, a4
pcrel887:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel887)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel887)(s0)
	sw a3, 0(t0)
pcrel888:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel888)(s2)
	bne a4, zero, label88
	j label830
label58:
	li a5, 11
	bge s11, a5, label60
.p2align 2
label46:
	addiw t0, a3, -1
pcrel889:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel889)(s2)
pcrel890:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel890)(s0)
	addi t1, a4, -2
	addi t2, a4, -1
	sh2add a5, a4, s1
	lw a3, 0(a5)
	sw t2, %pcrel_lo(pcrel890)(s0)
	lw t0, -4(a5)
	sw t1, %pcrel_lo(pcrel890)(s0)
	bne a2, s5, label358
	addw a3, a3, t0
.p2align 2
label48:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label48)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(label48)(s0)
	sw a3, 0(a5)
pcrel891:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel891)(s2)
	sh2add a4, a3, s4
	beq a3, zero, label823
.p2align 2
label45:
	sh2add t1, a3, s4
	lw a2, 0(t1)
	xori t1, a2, 45
	xori t0, a2, 43
	sltiu t2, t1, 1
	sltiu a5, t0, 1
	or t0, a5, t2
	bne t0, zero, label58
	xori t0, a2, 42
	xori t1, a2, 47
	xori t2, a2, 37
	sltiu a5, t0, 1
	sltiu t3, t1, 1
	sltiu t1, t2, 1
	or t0, a5, t3
	slti t3, s11, 1
	or a5, t0, t1
	or t2, a5, t3
	bne t2, zero, label46
label60:
	addiw a2, a3, 1
pcrel892:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel892)(s2)
	sw s9, 4(a4)
	bne a1, zero, label403
	j label61
.p2align 2
label98:
	divw a3, t0, a4
pcrel893:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel893)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel893)(s0)
	sw a3, 0(t0)
pcrel894:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel894)(s2)
	bne a4, zero, label88
	j label830
label358:
	beq a2, s6, label51
	li a5, 42
	bne a2, a5, label53
	mulw a3, a3, t0
	j label48
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
label97:
	remw a3, t0, a4
pcrel895:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel895)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel895)(s0)
	sw a3, 0(t0)
pcrel896:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel896)(s2)
	bne a4, zero, label88
	j label830
label53:
	li a5, 47
	bne a2, a5, label54
	divw a3, t0, a3
	j label48
label51:
	subw a3, t0, a3
pcrel897:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel897)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(pcrel897)(s0)
	sw a3, 0(a5)
pcrel898:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel898)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label45
	j label337
label27:
	addiw a0, s9, -48
	bltu a0, s3, label301
	j label29
label54:
	li a5, 37
	beq a2, a5, label55
	mv a3, zero
	j label48
label431:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label76
	j label77
label819:
	mv a0, a1
	j label38
label55:
	remw a3, t0, a3
	j label48
label137:
	mv s10, s9
	mv s11, zero
	j label7
label330:
	mv s10, a1
	j label69
.p2align 2
label71:
	sh2add a0, s10, s10
	sh1add s10, a0, a1
.p2align 2
label69:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label71
	mv a1, zero
pcrel899:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel899)(s2)
	sh2add a4, a3, s4
	bne a3, zero, label45
	j label337
