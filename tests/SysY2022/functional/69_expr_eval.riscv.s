.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
oprs:
	.zero	1024
.p2align 3
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
	li s5, 43
	li s7, 256
pcrel804:
	auipc s2, %pcrel_hi(ops)
	li s3, 10
	li s6, 45
pcrel805:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel804)
	addi s1, s0, %pcrel_lo(pcrel805)
.p2align 2
label2:
	jal getch
	xori a3, a0, 10
	xori a4, a0, 32
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	bne a4, zero, label2
	addiw s9, a0, -48
	bgeu s9, s3, label105
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label127
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label4
label105:
	jal getch
	li s11, 1
	mv s10, zero
label7:
	beq s8, zero, label104
	mv s9, a0
	j label11
.p2align 2
label42:
	addi a3, a4, 1
pcrel806:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel806)(s2)
	sw s10, 4(a5)
	beq a1, zero, label332
	mv s9, a0
	mv s10, a2
	mv s11, a1
.p2align 2
label93:
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
label97:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label104
.p2align 2
label11:
	mv a0, s1
	mv a1, zero
.p2align 2
label16:
	sd zero, 0(a0)
	addiw a1, a1, 64
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
	bge a1, s7, label19
	addi a0, a0, 256
	j label16
.p2align 2
label19:
	mv a0, s4
	mv a1, zero
	j label20
.p2align 2
label102:
	addi a0, a0, 256
.p2align 2
label20:
	sd zero, 0(a0)
	addiw a1, a1, 64
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
	blt a1, s7, label102
	bne s11, zero, label93
	mv a0, s9
	mv s9, s10
.p2align 2
label24:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(label24)(s0)
	xori a3, a0, 32
	addiw a1, a2, 1
	xori a2, a0, 10
	sh2add a4, a1, s1
	sw a1, %pcrel_lo(label24)(s0)
	sltiu a1, a3, 1
	sw s9, 0(a4)
	sltiu a4, a2, 1
	or a3, a1, a4
	beq a3, zero, label283
.p2align 2
label92:
	jal getch
	xori a3, a0, 10
	xori a4, a0, 32
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	bne a4, zero, label92
	mv s10, a0
	addiw a0, a0, -48
	bgeu a0, s3, label29
.p2align 2
label289:
	mv s9, a0
	j label89
.p2align 2
label91:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label89:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label91
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label65
.p2align 2
label64:
	jal getch
	xori a4, a0, 10
	xori a3, a0, 32
	sltiu a2, a4, 1
	sltiu a1, a3, 1
	or a3, a1, a2
	bne a3, zero, label64
.p2align 2
label65:
	addiw a1, a0, -48
	bltu a1, s3, label423
	jal getch
pcrel807:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel807)(s2)
	li a2, 1
	mv a1, s9
	bne a4, zero, label76
	j label769
.p2align 2
label88:
	addw a3, a4, t0
pcrel808:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel808)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel808)(s0)
	sw a3, 0(a5)
pcrel809:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel809)(s2)
	beq a4, zero, label769
.p2align 2
label76:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel810:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel810)(s2)
pcrel811:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel811)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel811)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel811)(s0)
	beq a3, s5, label88
	bne a3, s6, label460
	subw a3, t0, a4
	lw t0, %pcrel_lo(pcrel811)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel811)(s0)
	sw a3, 0(a5)
	lw a4, %pcrel_lo(pcrel810)(s2)
	bne a4, zero, label76
	j label769
.p2align 2
label460:
	li a5, 42
	bne a3, a5, label771
	mulw a3, a4, t0
pcrel812:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel812)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel812)(s0)
	sw a3, 0(a5)
pcrel813:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel813)(s2)
	bne a4, zero, label76
	j label769
.p2align 2
label29:
	jal getch
	xori a2, s10, 45
	xori a3, s10, 43
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	beq a3, zero, label295
	mv s11, s3
.p2align 2
label30:
	beq s11, zero, label61
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label33
.p2align 2
label59:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label59
	addiw a1, a0, -48
	bgeu a1, s3, label58
label311:
	mv s9, a1
.p2align 2
label35:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label316
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label35
.p2align 2
label771:
	li a5, 47
	beq a3, a5, label82
	li a5, 37
	beq a3, a5, label84
	mv a3, zero
pcrel814:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel814)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel814)(s0)
	sw zero, 0(a5)
pcrel815:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel815)(s2)
	bne a4, zero, label76
.p2align 2
label769:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label769)(s0)
	mv s9, a0
	mv s10, a1
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label97
.p2align 2
label295:
	xori a1, s10, 42
	xori a5, s10, 47
	xori a4, s10, 37
	li s11, 20
	sltiu a2, a1, 1
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	or a1, a2, a3
	or a2, a1, a5
	bne a2, zero, label30
	mv s11, zero
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label64
	j label65
label58:
	jal getch
pcrel816:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel816)(s2)
	li a1, 1
	mv a2, s9
	sh2add a5, a4, s4
	bne a4, zero, label43
	j label42
label45:
	addw a4, a4, t0
label46:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label46)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(label46)(s0)
	sw a4, 0(t0)
pcrel817:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel817)(s2)
	sh2add a5, a4, s4
	beq a4, zero, label42
.p2align 2
label43:
	sh2add t1, a4, s4
	lw a3, 0(t1)
	xori t3, a3, 45
	xori t4, a3, 43
	sltiu t2, t3, 1
	sltiu t0, t4, 1
	or t1, t0, t2
	bne t1, zero, label56
	xori t1, a3, 42
	xori t4, a3, 47
	xori t3, a3, 37
	sltiu t0, t1, 1
	sltiu t2, t4, 1
	sltiu t4, t3, 1
	or t1, t0, t2
	slti t2, s11, 1
	or t0, t1, t4
	or t3, t0, t2
	bne t3, zero, label44
	j label42
label56:
	li t0, 11
	bge s11, t0, label42
.p2align 2
label44:
	addi t0, a4, -1
pcrel818:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel818)(s2)
pcrel819:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel819)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel819)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel819)(s0)
	beq a3, s5, label45
	beq a3, s6, label55
	li a5, 42
	bne a3, a5, label50
	mulw a4, a4, t0
	j label46
.p2align 2
label82:
	divw a3, t0, a4
pcrel820:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel820)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel820)(s0)
	sw a3, 0(a5)
pcrel821:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel821)(s2)
	bne a4, zero, label76
	j label769
label316:
	mv a2, s9
	mv a1, zero
pcrel822:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel822)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label43
	j label42
label104:
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
label84:
	remw a3, t0, a4
pcrel823:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel823)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel823)(s0)
	sw a3, 0(a5)
pcrel824:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel824)(s2)
	bne a4, zero, label76
	j label769
label283:
	mv s10, a0
	addiw a0, a0, -48
	bltu a0, s3, label289
	j label29
label50:
	li a5, 47
	beq a3, a5, label51
	li a5, 37
	beq a3, a5, label53
	mv a4, zero
	j label46
label55:
	subw a4, t0, a4
pcrel825:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel825)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(pcrel825)(s0)
	sw a4, 0(t0)
pcrel826:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel826)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label43
	j label42
label33:
	addiw a1, a0, -48
	bltu a1, s3, label311
	j label58
.p2align 2
label61:
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label64
	j label65
label53:
	remw a4, t0, a4
	j label46
label332:
	mv s9, a2
	j label24
.p2align 2
label423:
	mv s9, a1
	j label68
.p2align 2
label70:
	sh2add a0, s9, s9
	sh1add s9, a0, a2
.p2align 2
label68:
	jal getch
	addiw a2, a0, -48
	bltu a2, s3, label70
	mv a1, s9
	mv a2, zero
pcrel827:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel827)(s2)
	bne a4, zero, label76
	j label769
label127:
	mv s10, s9
	mv s11, zero
	j label7
label51:
	divw a4, t0, a4
	j label46
