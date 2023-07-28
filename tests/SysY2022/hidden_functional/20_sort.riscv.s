.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
c:
	.zero	400020
.text
.globl main
main:
.p2align 2
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label82
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label96
	mv a0, zero
	mv a1, zero
	mv s2, zero
label485:
	mv s2, a0
	j label439
label82:
	mv s1, a0
	mv s0, zero
.p2align 2
label2:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label437
	mv a1, s0
.p2align 2
label437:
	bne a2, zero, label91
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label96
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label439
	j label485
label91:
	mv s1, a0
	mv s0, a1
	j label2
label96:
	mv s1, a0
	mv s2, zero
.p2align 2
label8:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s2, s1, a3
	bltu a1, a2, label105
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label439
	j label485
label105:
	mv s1, a0
	j label8
label439:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label439)
pcrel560:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel560)
pcrel561:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel561)
	bne s2, zero, label118
	mv a0, zero
	bgt s2, zero, label166
pcrel562:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel562)
	j label504
label118:
	mv s4, zero
	j label13
label504:
	li a1, -100
	mv a3, zero
	mv a2, zero
	j label39
label166:
	addiw a1, a0, 1
	mv a2, a1
	bgt s2, a1, label74
	mv a0, a1
pcrel563:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel563)
	bgt s2, zero, label30
	j label504
.p2align 2
label74:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label76
	addiw a2, a2, 1
	bgt s2, a2, label74
	mv a0, a1
	bgt s2, a1, label166
pcrel564:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel564)
	bgt s2, zero, label30
	j label504
.p2align 2
label76:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label74
	mv a0, a1
	bgt s2, a1, label166
pcrel565:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel565)
	bgt s2, zero, label30
	j label504
.p2align 2
label13:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label125
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label139
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label166
pcrel566:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel566)
	j label504
.p2align 2
label125:
	mv s6, a0
	mv s5, zero
.p2align 2
label15:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label441
	mv a2, s5
.p2align 2
label441:
	bne a1, zero, label134
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label139
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label443
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label166
pcrel567:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel567)
	j label504
.p2align 2
label134:
	mv s6, a0
	mv s5, a2
	j label15
.p2align 2
label139:
	mv s6, a0
	mv s7, zero
	j label23
.p2align 2
label443:
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw a1, 0(a0)
	sh2add a0, s4, s1
	sw a1, 0(a2)
	addiw s4, s4, 1
	sw a1, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label166
pcrel568:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel568)
	j label504
.p2align 2
label23:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label162
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label443
	mv a1, s7
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw s7, 0(a0)
	sh2add a0, s4, s1
	sw s7, 0(a2)
	addiw s4, s4, 1
	sw s7, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label166
pcrel569:
	auipc a1, %pcrel_hi(cnt)
	addi a0, a1, %pcrel_lo(pcrel569)
	j label504
.p2align 2
label162:
	mv s6, a0
	j label23
label30:
	li a2, 4
	bgt s2, a2, label176
	mv a1, zero
	li a3, -100
	j label34
label176:
	li a3, -100
	mv a1, zero
label31:
	sh2add a2, a1, s3
	lw a4, 0(a2)
	max a3, a3, a4
	sh2add a5, a4, a0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw a5, 4(a2)
	max a4, a5, a3
	sh2add t0, a5, a0
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw a5, 8(a2)
	max a3, a4, a5
	sh2add a4, a5, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	lw a4, 12(a2)
	sh2add a2, a4, a0
	max a3, a3, a4
	lw a5, 0(a2)
	addi a4, a5, 1
	sw a4, 0(a2)
	addiw a2, a1, 8
	addiw a1, a1, 4
	bgt s2, a2, label31
label34:
	sh2add a5, a1, s3
	addiw a1, a1, 1
	lw a2, 0(a5)
	max a3, a3, a2
	sh2add a4, a2, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	bgt s2, a1, label34
	mv a1, a3
	mv a3, zero
	mv a2, zero
.p2align 2
label39:
	bge a1, a2, label42
	mv a1, zero
	bgt s2, zero, label51
	bne s2, zero, label321
	subw a2, zero, s2
	beq a2, zero, label527
label64:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	beq a0, zero, label65
	li a0, 1
	j label67
label65:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	beq a0, zero, label339
	li a0, 2
	j label67
.p2align 2
label42:
	sh2add a5, a2, a0
	lw a4, 0(a5)
	bne a4, zero, label43
	addiw a2, a2, 1
	bge a1, a2, label42
	mv a1, zero
	bgt s2, zero, label51
	bne s2, zero, label321
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label51:
	addiw a0, a1, 1
	bgt s2, a0, label52
	mv a4, a1
	sh2add a1, a1, s1
	sh2add a3, a4, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	bne s2, zero, label321
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label453:
	addiw a2, a2, 1
	bgt s2, a2, label312
	sh2add a1, a1, s1
	sh2add a3, a4, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	bgt s2, a0, label51
	bne s2, zero, label321
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label312:
	mv a3, a4
	sh2add a4, a2, s1
	sh2add t1, a3, s1
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	blt a5, t0, label453
	mv a4, a3
	addiw a2, a2, 1
	bgt s2, a2, label312
	sh2add a1, a1, s1
	sh2add a3, a3, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	bgt s2, a0, label51
	bne s2, zero, label321
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label53:
	sh2add a4, a2, s1
	sh2add t1, a3, s1
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	blt a5, t0, label445
	mv a4, a3
.p2align 2
label445:
	sh2add a5, a4, s1
	addiw a3, a2, 1
	sh2add t1, a3, s1
	lw t0, 0(t1)
	lw a5, 0(a5)
	blt t0, a5, label447
	mv a3, a4
.p2align 2
label447:
	sh2add a5, a3, s1
	addiw a4, a2, 2
	sh2add t1, a4, s1
	lw t0, 0(t1)
	lw a5, 0(a5)
	blt t0, a5, label449
	mv a4, a3
.p2align 2
label449:
	sh2add a5, a4, s1
	addiw a3, a2, 3
	sh2add t1, a3, s1
	lw t0, 0(t1)
	lw a5, 0(a5)
	blt t0, a5, label451
	mv a3, a4
.p2align 2
label451:
	addiw a4, a2, 8
	addiw a2, a2, 4
	bgt s2, a4, label53
	sh2add a4, a2, s1
	sh2add t1, a3, s1
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	blt a5, t0, label453
	mv a4, a3
	addiw a2, a2, 1
	bgt s2, a2, label312
	sh2add a1, a1, s1
	sh2add a3, a3, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	bgt s2, a0, label51
	bne s2, zero, label321
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label52:
	addiw a3, a1, 5
	bgt s2, a3, label258
	mv a2, a0
	mv a3, a1
	sh2add a4, a0, s1
	sh2add t1, a1, s1
	lw a5, 0(a4)
	mv a4, a0
	lw t0, 0(t1)
	blt a5, t0, label453
	mv a4, a1
	addiw a2, a0, 1
	bgt s2, a2, label312
	sh2add a1, a1, s1
	sh2add a3, a4, s1
	lw a2, 0(a1)
	lw a4, 0(a3)
	sw a4, 0(a1)
	mv a1, a0
	sw a2, 0(a3)
	bgt s2, a0, label51
	bne s2, zero, label321
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
.p2align 2
label258:
	mv a3, a1
	mv a2, a0
	j label53
.p2align 2
label43:
	sh2add a5, a3, s3
	addiw a4, a4, -1
	addiw a3, a3, 1
	sw a2, 0(a5)
	bne a4, zero, label43
	addiw a2, a2, 1
	bge a1, a2, label42
	mv a1, zero
	bgt s2, zero, label51
	bne s2, zero, label321
	subw a2, zero, s2
	bne a2, zero, label64
	j label527
label321:
	mv a0, zero
.p2align 2
label69:
	sh2add a2, a0, s3
	sh2add a4, a0, s0
	lw a3, 0(a2)
	lw a1, 0(a4)
	subw a3, a3, a1
	sw a3, 0(a2)
	sh2add a2, a0, s1
	addiw a0, a0, 1
	lw a4, 0(a2)
	subw a3, a4, a3
	subw a1, a3, a1
	sw a1, 0(a2)
	subw a2, s2, a0
	bne a2, zero, label69
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label64
label527:
	li a0, -123
label67:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
label62:
	subw a2, a1, s2
	bne a2, zero, label64
	j label527
label339:
	addiw a1, a1, 1
	j label62
