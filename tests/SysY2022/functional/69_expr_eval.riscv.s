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
	li s6, 45
	li s3, 10
	li s5, 43
pcrel811:
	auipc s2, %pcrel_hi(ops)
	li s7, 256
pcrel812:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel811)
	addi s1, s0, %pcrel_lo(pcrel812)
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
label44:
	addi a3, a4, 1
pcrel813:
	auipc s2, %pcrel_hi(ops)
	sw a3, %pcrel_lo(pcrel813)(s2)
	sw s10, 4(a5)
	beq a2, zero, label334
	mv s9, a0
	mv s10, a1
	mv s11, a2
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
label99:
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
	bge a1, s7, label201
	addi a0, a0, 256
	j label16
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
label334:
	mv s9, a1
	j label26
.p2align 2
label24:
	addi a0, a0, 256
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
	blt a1, s7, label24
	bne s11, zero, label95
	mv a0, s9
	mv s9, s10
.p2align 2
label26:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(label26)(s0)
	xori a3, a0, 32
	addiw a1, a2, 1
	sh2add a4, a1, s1
	sw a1, %pcrel_lo(label26)(s0)
	sltiu a1, a3, 1
	sw s9, 0(a4)
	xori a4, a0, 10
	sltiu a2, a4, 1
	or a3, a1, a2
	beq a3, zero, label285
.p2align 2
label94:
	jal getch
	xori a3, a0, 10
	xori a4, a0, 32
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	bne a4, zero, label94
	mv s10, a0
	addiw a0, a0, -48
	bgeu a0, s3, label31
.p2align 2
label291:
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
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label66
.p2align 2
label67:
	addiw a1, a0, -48
	bltu a1, s3, label425
	jal getch
pcrel814:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel814)(s2)
	li a2, 1
	mv a1, a0
	mv a0, s9
	bne a4, zero, label78
	j label770
.p2align 2
label80:
	bne a3, s6, label462
	subw a3, t0, a4
pcrel815:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel815)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel815)(s0)
	sw a3, 0(t0)
pcrel816:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel816)(s2)
	beq a4, zero, label770
.p2align 2
label78:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel817:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel817)(s2)
pcrel818:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel818)(s0)
	addi t3, a5, -2
	addi t2, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t2, %pcrel_lo(pcrel818)(s0)
	lw t0, -4(t1)
	sw t3, %pcrel_lo(pcrel818)(s0)
	bne a3, s5, label80
	addw a3, a4, t0
	lw a5, %pcrel_lo(pcrel818)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel818)(s0)
	sw a3, 0(t0)
	lw a4, %pcrel_lo(pcrel817)(s2)
	bne a4, zero, label78
.p2align 2
label770:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label770)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label99
.p2align 2
label462:
	li a5, 42
	bne a3, a5, label772
	mulw a3, a4, t0
pcrel819:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel819)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel819)(s0)
	sw a3, 0(t0)
pcrel820:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel820)(s2)
	bne a4, zero, label78
	j label770
.p2align 2
label772:
	li a5, 47
	bne a3, a5, label781
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
	bne a4, zero, label78
	j label770
.p2align 2
label781:
	li a5, 37
	bne a3, a5, label784
	remw a3, t0, a4
pcrel823:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel823)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel823)(s0)
	sw a3, 0(t0)
pcrel824:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel824)(s2)
	bne a4, zero, label78
	j label770
.p2align 2
label31:
	jal getch
	xori a3, s10, 45
	xori a4, s10, 43
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	beq a4, zero, label297
	mv s11, s3
.p2align 2
label32:
	beq s11, zero, label63
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label35
.p2align 2
label61:
	jal getch
	xori a4, a0, 10
	xori a3, a0, 32
	sltiu a2, a4, 1
	sltiu a1, a3, 1
	or a3, a1, a2
	bne a3, zero, label61
	addiw a1, a0, -48
	bltu a1, s3, label313
label60:
	jal getch
pcrel825:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel825)(s2)
	li a2, 1
	mv a1, s9
	sh2add a5, a4, s4
	bne a4, zero, label45
	j label44
.p2align 2
label297:
	xori a2, s10, 42
	xori a3, s10, 47
	xori a5, s10, 37
	li s11, 20
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a1, a4
	or a1, a2, a3
	bne a1, zero, label32
	mv s11, zero
	xori a2, a0, 32
	xori a4, a0, 10
	sltiu a1, a2, 1
	sltiu a3, a4, 1
	or a2, a1, a3
	bne a2, zero, label66
	j label67
label47:
	addw a4, a4, t0
label48:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label48)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(label48)(s0)
	sw a4, 0(t0)
pcrel826:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel826)(s2)
	sh2add a5, a4, s4
	beq a4, zero, label44
.p2align 2
label45:
	sh2add t1, a4, s4
	lw a3, 0(t1)
	xori t1, a3, 45
	xori t2, a3, 43
	sltiu t3, t1, 1
	sltiu t0, t2, 1
	or t2, t0, t3
	beq t2, zero, label59
	li t0, 11
	bge s11, t0, label44
.p2align 2
label46:
	addi t0, a4, -1
pcrel827:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel827)(s2)
pcrel828:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel828)(s0)
	addi t2, a5, -2
	addi t3, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t3, %pcrel_lo(pcrel828)(s0)
	lw t0, -4(t1)
	sw t2, %pcrel_lo(pcrel828)(s0)
	beq a3, s5, label47
	bne a3, s6, label51
	subw a4, t0, a4
	lw a5, %pcrel_lo(pcrel828)(s0)
	addiw a3, a5, 1
	sh2add t0, a3, s1
	sw a3, %pcrel_lo(pcrel828)(s0)
	sw a4, 0(t0)
	lw a4, %pcrel_lo(pcrel827)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label45
	j label44
label59:
	xori t1, a3, 42
	xori t2, a3, 47
	xori t3, a3, 37
	sltiu t0, t1, 1
	sltiu t4, t2, 1
	sltiu t2, t3, 1
	or t1, t0, t4
	slti t4, s11, 1
	or t0, t1, t2
	or t3, t0, t4
	bne t3, zero, label46
	j label44
label51:
	li a5, 42
	bne a3, a5, label52
	mulw a4, a4, t0
	j label48
.p2align 2
label784:
	mv a3, zero
pcrel829:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel829)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel829)(s0)
	sw zero, 0(t0)
pcrel830:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel830)(s2)
	bne a4, zero, label78
	j label770
label285:
	mv s10, a0
	addiw a0, a0, -48
	bltu a0, s3, label291
	j label31
label52:
	li a5, 47
	bne a3, a5, label54
	divw a4, t0, a4
	j label48
label54:
	li a5, 37
	bne a3, a5, label375
	remw a4, t0, a4
	j label48
label35:
	addiw a1, a0, -48
	bgeu a1, s3, label60
label313:
	mv s9, a1
	j label37
.p2align 2
label39:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label37:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label39
	mv a1, s9
	mv a2, zero
pcrel831:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel831)(s2)
	sh2add a5, a4, s4
	bne a4, zero, label45
	j label44
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
label425:
	mv s9, a1
	j label70
.p2align 2
label72:
	sh2add a0, s9, s9
	sh1add s9, a0, a2
.p2align 2
label70:
	jal getch
	addiw a2, a0, -48
	bltu a2, s3, label72
	mv a1, a0
	mv a2, zero
pcrel832:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel832)(s2)
	mv a0, s9
	bne a4, zero, label78
	j label770
label127:
	mv s10, s9
	mv s11, zero
	j label7
.p2align 2
label201:
	mv a0, s4
	mv a1, zero
	j label21
label375:
	mv a4, zero
	j label48
