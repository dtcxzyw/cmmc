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
pcrel814:
	auipc s2, %pcrel_hi(ops)
	li s5, 43
	li s3, 10
pcrel815:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel814)
	addi s1, s0, %pcrel_lo(pcrel815)
.p2align 2
label2:
	jal getch
	xori a2, a0, 10
	xori a4, a0, 32
	sltiu a3, a2, 1
	sltiu a1, a4, 1
	or a4, a1, a3
	bne a4, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label103
	jal getch
	li s11, 1
	mv s10, zero
label4:
	beq s8, zero, label101
	mv s9, a0
	j label8
label768:
	addiw a3, a4, 1
pcrel816:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel816)(s2)
	sw s10, 4(a5)
	beq a1, zero, label396
label783:
	mv s9, a0
	mv s10, a2
	mv s11, a1
.p2align 2
label95:
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
label90:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label101
.p2align 2
label8:
	mv a0, s1
	mv a1, zero
.p2align 2
label13:
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
	bge a1, s7, label16
	addi a0, a0, 256
	j label13
.p2align 2
label16:
	mv a0, s4
	mv a1, zero
.p2align 2
label17:
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
	bge a1, s7, label20
	addi a0, a0, 256
	j label17
.p2align 2
label20:
	bne s11, zero, label95
	mv a0, s9
	mv s9, s10
.p2align 2
label21:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(label21)(s0)
	xori a4, a0, 32
	addiw a1, a2, 1
	sh2add a3, a1, s1
	sw a1, %pcrel_lo(label21)(s0)
	sltiu a1, a4, 1
	sw s9, 0(a3)
	xori a3, a0, 10
	sltiu a2, a3, 1
	or a4, a1, a2
	beq a4, zero, label275
.p2align 2
label24:
	jal getch
	xori a4, a0, 10
	xori a3, a0, 32
	sltiu a2, a4, 1
	sltiu a1, a3, 1
	or a3, a1, a2
	bne a3, zero, label24
.p2align 2
label275:
	mv s10, a0
	addiw a0, a0, -48
	bgeu a0, s3, label27
	mv s9, a0
.p2align 2
label87:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label491
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label87
.p2align 2
label103:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label507
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label103
.p2align 2
label491:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	beq a2, zero, label62
.p2align 2
label86:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label86
	addiw a1, a0, -48
	bltu a1, s3, label415
.p2align 2
label64:
	jal getch
	li a2, 1
	mv a1, s9
pcrel817:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel817)(s2)
	bne a4, zero, label70
	j label69
.p2align 2
label82:
	addw a3, a4, t0
pcrel818:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel818)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel818)(s0)
	sw a3, 0(a5)
pcrel819:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel819)(s2)
	beq a4, zero, label69
.p2align 2
label70:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel820:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel820)(s2)
pcrel821:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel821)(s0)
	addi t3, a5, -2
	addi t2, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t2, %pcrel_lo(pcrel821)(s0)
	lw t0, -4(t1)
	sw t3, %pcrel_lo(pcrel821)(s0)
	beq a3, s5, label82
	beq a3, s6, label73
	li a5, 42
	beq a3, a5, label79
	li a5, 47
	bne a3, a5, label787
	divw a3, t0, a4
	lw t0, %pcrel_lo(pcrel821)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel821)(s0)
	sw a3, 0(a5)
	lw a4, %pcrel_lo(pcrel820)(s2)
	bne a4, zero, label70
	j label69
label62:
	addiw a1, a0, -48
	bgeu a1, s3, label64
.p2align 2
label415:
	mv s9, a1
.p2align 2
label83:
	jal getch
	addiw a2, a0, -48
	bgeu a2, s3, label476
	sh2add a0, s9, s9
	sh1add s9, a0, a2
	j label83
.p2align 2
label79:
	mulw a3, a4, t0
pcrel822:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel822)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel822)(s0)
	sw a3, 0(a5)
pcrel823:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel823)(s2)
	bne a4, zero, label70
	j label69
.p2align 2
label787:
	li a5, 37
	beq a3, a5, label78
	mv a3, zero
pcrel824:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel824)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel824)(s0)
	sw zero, 0(a5)
pcrel825:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel825)(s2)
	bne a4, zero, label70
	j label69
.p2align 2
label27:
	jal getch
	xori a3, s10, 45
	xori a2, s10, 43
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	beq a2, zero, label294
	mv s11, s3
	beq s3, zero, label59
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label32
.p2align 2
label58:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label58
	addiw a1, a0, -48
	bltu a1, s3, label316
label57:
	jal getch
	li a1, 1
	mv a2, s9
pcrel826:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel826)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label41
	addiw a3, a4, 1
	sw a3, %pcrel_lo(pcrel826)(s2)
	sw s10, 4(a5)
	beq a1, zero, label396
	j label783
label316:
	mv s9, a1
.p2align 2
label34:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label321
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label34
.p2align 2
label69:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label69)(s0)
	mv s9, a0
	mv s10, a1
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label90
.p2align 2
label73:
	subw a3, t0, a4
pcrel827:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel827)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel827)(s0)
	sw a3, 0(a5)
pcrel828:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel828)(s2)
	bne a4, zero, label70
	j label69
.p2align 2
label294:
	xori a2, s10, 42
	xori a4, s10, 47
	xori a5, s10, 37
	li s11, 20
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	or a2, a1, a3
	or a1, a2, a4
	bne a1, zero, label29
	mv s11, zero
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label86
	j label62
label43:
	addw a4, a4, t0
.p2align 2
label44:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label44)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(label44)(s0)
	sw a4, 0(t0)
pcrel829:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel829)(s2)
	sh2add a5, a4, s4
	beq a4, zero, label768
.p2align 2
label41:
	sh2add t1, a4, s4
	lw a3, 0(t1)
	xori t2, a3, 45
	xori t3, a3, 43
	sltiu t1, t2, 1
	sltiu t0, t3, 1
	or t3, t0, t1
	bne t3, zero, label54
	xori t1, a3, 42
	xori t3, a3, 47
	xori t4, a3, 37
	slti t5, s11, 1
	sltiu t0, t1, 1
	sltiu t2, t3, 1
	sltiu t3, t4, 1
	or t1, t0, t2
	or t0, t1, t3
	or t2, t0, t5
	beq t2, zero, label56
.p2align 2
label42:
	addiw t0, a4, -1
pcrel830:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel830)(s2)
pcrel831:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel831)(s0)
	addi t3, a5, -2
	addi t2, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t2, %pcrel_lo(pcrel831)(s0)
	lw t0, -4(t1)
	sw t3, %pcrel_lo(pcrel831)(s0)
	beq a3, s5, label43
	bne a3, s6, label767
	subw a4, t0, a4
	lw a5, %pcrel_lo(pcrel831)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(pcrel831)(s0)
	sw a4, 0(t0)
	lw a4, %pcrel_lo(pcrel830)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label41
	addiw a3, a4, 1
	sw a3, %pcrel_lo(pcrel830)(s2)
	sw s10, 4(a5)
	beq a1, zero, label396
	j label783
.p2align 2
label29:
	beq s11, zero, label59
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label58
	j label32
label321:
	mv a2, s9
	mv a1, zero
pcrel832:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel832)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label41
	addiw a3, a4, 1
	sw a3, %pcrel_lo(pcrel832)(s2)
	sw s10, 4(a5)
label396:
	mv s9, a2
	j label21
label101:
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
label78:
	remw a3, t0, a4
pcrel833:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel833)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel833)(s0)
	sw a3, 0(a5)
pcrel834:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel834)(s2)
	bne a4, zero, label70
	j label69
label767:
	li a5, 42
	bne a3, a5, label49
	mulw a4, a4, t0
	j label44
label49:
	li a5, 47
	beq a3, a5, label52
	li a5, 37
	beq a3, a5, label51
	mv a4, zero
	j label44
.p2align 2
label476:
	mv a1, s9
	mv a2, zero
pcrel835:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel835)(s2)
	bne a4, zero, label70
	j label69
.p2align 2
label59:
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label86
	j label62
label32:
	addiw a1, a0, -48
	bltu a1, s3, label316
	j label57
label54:
	li t0, 11
	blt s11, t0, label42
label56:
	addiw a3, a4, 1
pcrel836:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel836)(s2)
	sw s10, 4(a5)
	beq a1, zero, label396
	j label783
label51:
	remw a4, t0, a4
	j label44
label52:
	divw a4, t0, a4
	j label44
label507:
	mv s10, s9
	mv s11, zero
	j label4
