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
	li s3, 10
	li s5, 43
	li s7, 256
pcrel814:
	auipc s2, %pcrel_hi(ops)
	li s6, 45
pcrel815:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel814)
	addi s1, s0, %pcrel_lo(pcrel815)
.p2align 2
label2:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label4
	jal getch
	li s11, 1
	mv s10, zero
	j label8
.p2align 2
label6:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label4:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label6
	mv s10, s9
	mv s11, zero
label8:
	beq s8, zero, label105
	mv s9, a0
	j label12
.p2align 2
label24:
	beq s11, zero, label274
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
label94:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label105
.p2align 2
label12:
	mv a0, s1
	mv a1, zero
	j label17
.p2align 2
label104:
	addi a0, a0, 256
.p2align 2
label17:
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
	blt a1, s7, label104
	mv a0, s4
	mv a1, zero
.p2align 2
label21:
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
	bge a1, s7, label24
	addi a0, a0, 256
	j label21
.p2align 2
label274:
	mv a0, s9
	mv s9, s10
.p2align 2
label25:
	auipc s0, %pcrel_hi(oprs)
	lw a3, %pcrel_lo(label25)(s0)
	xori a4, a0, 10
	addiw a1, a3, 1
	xori a3, a0, 32
	sh2add a2, a1, s1
	sw a1, %pcrel_lo(label25)(s0)
	sltiu a1, a3, 1
	sw s9, 0(a2)
	sltiu a2, a4, 1
	or a3, a1, a2
	beq a3, zero, label284
.p2align 2
label28:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label28
.p2align 2
label284:
	mv s10, a0
	addiw a0, a0, -48
	bgeu a0, s3, label31
	mv s9, a0
	j label91
.p2align 2
label93:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label91:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label93
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	beq a2, zero, label67
.p2align 2
label66:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label66
.p2align 2
label67:
	addiw a1, a0, -48
	bgeu a1, s3, label69
	mv s9, a1
	j label88
.p2align 2
label90:
	sh2add a0, s9, s9
	sh1add s9, a0, a2
.p2align 2
label88:
	jal getch
	addiw a2, a0, -48
	bltu a2, s3, label90
	mv a1, s9
	mv a2, zero
pcrel816:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel816)(s2)
	bne a4, zero, label75
	j label74
.p2align 2
label456:
	bne a3, s6, label769
	subw a3, t0, a4
pcrel817:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel817)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel817)(s0)
	sw a3, 0(t0)
pcrel818:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel818)(s2)
	beq a4, zero, label74
.p2align 2
label75:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel819:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel819)(s2)
pcrel820:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel820)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel820)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel820)(s0)
	bne a3, s5, label456
	addw a3, a4, t0
	lw a5, %pcrel_lo(pcrel820)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel820)(s0)
	sw a3, 0(t0)
	lw a4, %pcrel_lo(pcrel819)(s2)
	bne a4, zero, label75
.p2align 2
label74:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label74)(s0)
	mv s9, a0
	mv s10, a1
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label94
.p2align 2
label769:
	li a5, 42
	beq a3, a5, label87
	li a5, 47
	bne a3, a5, label786
	divw a3, t0, a4
pcrel821:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel821)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel821)(s0)
	sw a3, 0(t0)
pcrel822:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel822)(s2)
	bne a4, zero, label75
	j label74
.p2align 2
label786:
	li a5, 37
	beq a3, a5, label85
	mv a3, zero
pcrel823:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel823)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel823)(s0)
	sw zero, 0(t0)
pcrel824:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel824)(s2)
	bne a4, zero, label75
	j label74
.p2align 2
label31:
	jal getch
	xori a3, s10, 45
	xori a2, s10, 43
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label304
	xori a1, s10, 42
	xori a3, s10, 47
	xori a5, s10, 37
	li s11, 20
	sltiu a2, a1, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a1, a2, a4
	or a2, a1, a3
	bne a2, zero, label33
	mv s11, zero
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label66
	j label67
.p2align 2
label69:
	jal getch
	li a2, 1
	mv a1, s9
pcrel825:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel825)(s2)
	bne a4, zero, label75
	j label74
.p2align 2
label304:
	mv s11, s3
	bne s3, zero, label762
.p2align 2
label63:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label66
	j label67
.p2align 2
label762:
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a4, a2, 1
	or a3, a1, a4
	beq a3, zero, label36
.p2align 2
label62:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label62
	addiw a1, a0, -48
	bgeu a1, s3, label41
label325:
	mv s9, a1
	j label38
.p2align 2
label40:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label38:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label40
	mv a1, s9
	mv a2, zero
pcrel826:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel826)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label47
	addi a3, a4, 1
	sw a3, %pcrel_lo(pcrel826)(s2)
	sw s10, 4(a5)
	j label347
.p2align 2
label87:
	mulw a3, a4, t0
pcrel827:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel827)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel827)(s0)
	sw a3, 0(t0)
pcrel828:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel828)(s2)
	bne a4, zero, label75
	j label74
label41:
	jal getch
	li a2, 1
	mv a1, s9
pcrel829:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel829)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label47
label46:
	addi a3, a4, 1
pcrel830:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel830)(s2)
	sw s10, 4(a5)
	beq a2, zero, label347
label780:
	mv s9, a0
	mv s10, a1
	mv s11, a2
	j label99
label50:
	addw a4, a4, t0
label51:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(label51)(s0)
	addiw a3, t0, 1
	sh2add a5, a3, s1
	sw a3, %pcrel_lo(label51)(s0)
	sw a4, 0(a5)
pcrel831:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel831)(s2)
	sh2add a5, a4, s4
	beq a4, zero, label765
.p2align 2
label47:
	sh2add t1, a4, s4
	lw a3, 0(t1)
	xori t2, a3, 45
	xori t3, a3, 43
	sltiu t1, t2, 1
	sltiu t0, t3, 1
	or t3, t0, t1
	bne t3, zero, label61
	xori t1, a3, 42
	xori t2, a3, 47
	xori t5, a3, 37
	slti t4, s11, 1
	sltiu t0, t1, 1
	sltiu t3, t2, 1
	sltiu t2, t5, 1
	or t1, t0, t3
	or t0, t1, t2
	or t3, t0, t4
	bne t3, zero, label49
	j label46
label61:
	li t0, 11
	bge s11, t0, label46
.p2align 2
label49:
	addi t0, a4, -1
pcrel832:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel832)(s2)
pcrel833:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel833)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel833)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel833)(s0)
	beq a3, s5, label50
	bne a3, s6, label764
	subw a4, t0, a4
	lw t0, %pcrel_lo(pcrel833)(s0)
	addiw a3, t0, 1
	sh2add a5, a3, s1
	sw a3, %pcrel_lo(pcrel833)(s0)
	sw a4, 0(a5)
	lw a4, %pcrel_lo(pcrel832)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label47
	j label46
label105:
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
label85:
	remw a3, t0, a4
pcrel834:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel834)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel834)(s0)
	sw a3, 0(t0)
pcrel835:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel835)(s2)
	bne a4, zero, label75
	j label74
label765:
	addi a3, a4, 1
pcrel836:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel836)(s2)
	sw s10, 4(a5)
	bne a2, zero, label780
label347:
	mv s9, a1
	j label25
label764:
	li a5, 42
	bne a3, a5, label56
	mulw a4, a4, t0
	j label51
label56:
	li a5, 47
	bne a3, a5, label57
	divw a4, t0, a4
	j label51
label57:
	li a5, 37
	beq a3, a5, label58
	mv a4, zero
	j label51
label36:
	addiw a1, a0, -48
	bltu a1, s3, label325
	j label41
label33:
	beq s11, zero, label63
	xori a3, a0, 32
	xori a2, a0, 10
	sltiu a1, a3, 1
	sltiu a4, a2, 1
	or a3, a1, a4
	bne a3, zero, label62
	j label36
label58:
	remw a4, t0, a4
	j label51
