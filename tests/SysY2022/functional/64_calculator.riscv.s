.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
get2:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s9, 8(sp)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s7, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 94
	li s3, 37
	li s2, 47
	li s7, 10
	li s0, 32
	li s6, 40
	xori a4, a0, 10
pcrel779:
	auipc a5, %pcrel_hi(get)
	xori a1, a0, 13
	li s8, 41
	sltu a3, zero, a4
	addi s9, a5, %pcrel_lo(pcrel779)
	sltu a2, zero, a1
	and a1, a2, a3
pcrel780:
	auipc a3, %pcrel_hi(ints)
pcrel781:
	auipc a2, %pcrel_hi(chas)
	addi t2, a3, %pcrel_lo(pcrel780)
	addi s5, a2, %pcrel_lo(pcrel781)
	sd t2, 104(sp)
pcrel782:
	auipc a2, %pcrel_hi(get2)
	addi s1, a2, %pcrel_lo(pcrel782)
	beq a1, zero, label157
	mv s10, s9
	mv s11, zero
.p2align 2
label3:
	sw a0, 0(s10)
	jal getch
	addiw s11, s11, 1
	xori a4, a0, 10
	xori a2, a0, 13
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	beq a2, zero, label165
	addi s10, s10, 4
	j label3
label165:
	mv a0, s11
	addi a5, s1, 4
	mv a1, s9
	mv a4, zero
	li t1, 1
	mv a2, zero
label10:
	ble a0, a2, label101
.p2align 2
label16:
	lw a3, 0(a1)
	addiw a2, a2, 1
	addiw t0, a3, -48
	bltu t0, s7, label17
	beq a3, s6, label100
	j label706
.p2align 2
label17:
	sw a3, 0(a5)
	addiw t1, t1, 1
	addi a1, a1, 4
	addi a5, a5, 4
	bgt a0, a2, label16
label101:
	ble a4, zero, label116
	addiw a0, a4, -4
	ble a0, zero, label393
	sh2add a0, a4, s5
.p2align 2
label104:
	lw a2, 0(a0)
	sh2add a1, t1, s1
	addiw a4, a4, -4
	addiw t1, t1, 8
	sw s0, 0(a1)
	sw a2, 4(a1)
	lw a3, -4(a0)
	sw s0, 8(a1)
	sw a3, 12(a1)
	lw a5, -8(a0)
	sw s0, 16(a1)
	sw a5, 20(a1)
	lw a2, -12(a0)
	sw s0, 24(a1)
	sw a2, 28(a1)
	li a1, 4
	ble a4, a1, label393
	addi a0, a0, -16
	j label104
.p2align 2
label706:
	bne a3, s4, label722
.p2align 2
label21:
	addiw t0, a4, 1
	sh2add a5, t0, s5
	sw s4, 0(a5)
	beq a3, s8, label24
	li a4, 43
	beq a3, a4, label35
	li a4, 45
	bne a3, a4, label724
.p2align 2
label90:
	sh2add a4, t0, s5
	mv a5, t1
.p2align 2
label91:
	lw t1, 0(a4)
	xori a6, t1, 47
	xori t6, t1, 42
	xori t4, t1, 45
	xori t3, t1, 43
	sltiu t5, t4, 1
	sltiu t2, t3, 1
	sltiu t4, t6, 1
	or t3, t2, t5
	sltiu t5, a6, 1
	xori a6, t1, 37
	or t6, t4, t5
	sltiu t4, a6, 1
	or t2, t3, t6
	xori t3, t1, 94
	sltiu a7, t3, 1
	or t5, t4, a7
	or t6, t2, t5
	bne t6, zero, label98
.p2align 2
label95:
	addiw t0, t0, 1
	li t1, 45
	sh2add a4, t0, s5
	sw t1, 0(a4)
	li a4, 42
	beq a3, a4, label80
	j label716
.p2align 2
label98:
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label95
	addi a4, a4, -4
	j label91
.p2align 2
label216:
	mv t0, a5
	li a4, 43
	bne a3, a4, label710
.p2align 2
label35:
	sh2add a4, t0, s5
	mv a5, t1
.p2align 2
label36:
	lw t1, 0(a4)
	xori a6, t1, 42
	xori t4, t1, 45
	xori t3, t1, 43
	sltiu t5, t4, 1
	sltiu t2, t3, 1
	sltiu t4, a6, 1
	or t3, t2, t5
	xori t5, t1, 47
	sltiu t6, t5, 1
	xori t5, t1, 37
	or a6, t4, t6
	sltiu t4, t5, 1
	or t2, t3, a6
	xori a6, t1, 94
	sltiu t6, a6, 1
	or t5, t4, t6
	or t3, t2, t5
	beq t3, zero, label238
	sh2add t2, a5, s1
	addiw t0, t0, -1
	sw s0, 0(t2)
	sw t1, 4(t2)
	addiw t1, a5, 2
	beq t0, zero, label42
	addi a4, a4, -4
	mv a5, t1
	j label36
.p2align 2
label733:
	mv a5, t1
	j label48
.p2align 2
label42:
	addiw t0, t0, 1
	li a5, 43
	sh2add a4, t0, s5
	sw a5, 0(a4)
.p2align 2
label45:
	li a4, 45
	beq a3, a4, label90
	j label733
.p2align 2
label48:
	li a4, 42
	bne a3, a4, label742
.p2align 2
label80:
	sh2add a4, t0, s5
.p2align 2
label81:
	lw t1, 0(a4)
	xori a6, t1, 94
	xori t6, t1, 37
	xori t4, t1, 47
	xori t2, t1, 42
	sltiu t5, t4, 1
	sltiu t3, t2, 1
	sltiu t4, t6, 1
	or t2, t3, t5
	sltiu t3, a6, 1
	or t5, t4, t3
	or t6, t2, t5
	beq t6, zero, label85
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label85
	addi a4, a4, -4
	j label81
.p2align 2
label54:
	sh2add a4, t1, s5
	mv t0, t1
.p2align 2
label55:
	lw t1, 0(a4)
	xori t5, t1, 37
	xori t3, t1, 47
	xori t2, t1, 42
	sltiu t6, t3, 1
	sltiu t4, t2, 1
	sltiu t3, t5, 1
	or t2, t4, t6
	xori t6, t1, 94
	sltiu a6, t6, 1
	or t4, t3, a6
	or t5, t2, t4
	bne t5, zero, label62
.p2align 2
label59:
	addiw t1, t0, 1
	mv t0, a5
	sh2add a4, t1, s5
	sw s2, 0(a4)
	beq a3, s3, label67
	j label713
.p2align 2
label62:
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label59
	addi a4, a4, -4
	j label55
.p2align 2
label67:
	sh2add a3, t1, s5
	mv a4, t0
	mv a5, t1
.p2align 2
label68:
	lw t0, 0(a3)
	xori t6, t0, 94
	xori t5, t0, 37
	xori t2, t0, 47
	xori t1, t0, 42
	sltiu t4, t2, 1
	sltiu t3, t1, 1
	sltiu t2, t5, 1
	or t1, t3, t4
	sltiu t4, t6, 1
	or t3, t2, t4
	or t5, t1, t3
	beq t5, zero, label306
	sh2add t1, a4, s1
	addiw a5, a5, -1
	addiw a4, a4, 2
	sw s0, 0(t1)
	sw t0, 4(t1)
	beq a5, zero, label319
	addi a3, a3, -4
	j label68
.p2align 2
label85:
	addiw t1, t0, 1
	li t2, 42
	sh2add a4, t1, s5
	sw t2, 0(a4)
	beq a3, s2, label54
	mv t0, a5
	beq a3, s3, label67
	mv a4, t1
	sh2add a3, a5, s1
	addi a1, a1, 4
	addiw t1, a5, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label24:
	sh2add a4, t0, s5
	addiw a5, t0, -1
	lw t2, 0(a4)
	beq t2, s6, label204
	sh2add a4, t1, s1
	mv t0, t2
.p2align 2
label26:
	sw s0, 0(a4)
	sh2add t2, a5, s5
	addiw t1, t1, 2
	addiw a5, a5, -1
	sw t0, 4(a4)
	lw t0, 0(t2)
	beq t0, s6, label216
	addi a4, a4, 8
	j label26
.p2align 2
label742:
	mv t1, t0
	beq a3, s2, label54
	mv t0, a5
	beq a3, s3, label67
.p2align 2
label712:
	mv a4, t1
	sh2add a3, t0, s1
	addi a1, a1, 4
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label100:
	addiw a4, a4, 1
	sh2add a5, a4, s5
	sw s6, 0(a5)
	beq a3, s4, label21
	mv t0, a4
	beq a3, s8, label24
	li a4, 43
	beq a3, a4, label35
	j label723
.p2align 2
label722:
	mv t0, a4
	beq a3, s8, label24
	li a4, 43
	beq a3, a4, label35
.p2align 2
label723:
	li a4, 45
	beq a3, a4, label90
	j label733
.p2align 2
label716:
	mv t1, t0
	beq a3, s2, label54
	mv t0, a5
	beq a3, s3, label67
	j label712
.p2align 2
label710:
	li a4, 45
	beq a3, a4, label90
	mv a5, t1
	li a4, 42
	beq a3, a4, label80
	j label742
label393:
	sh2add a0, a4, s5
label111:
	lw a1, 0(a0)
	sh2add a2, t1, s1
	addiw a4, a4, -1
	addiw t1, t1, 2
	sw s0, 0(a2)
	sw a1, 4(a2)
	ble a4, zero, label116
	addi a0, a0, -4
	j label111
label116:
	sh2add a0, t1, s1
	li a4, 64
	sw a4, 0(a0)
	lw a1, 4(s1)
	beq a1, a4, label118
	li a2, 1
	mv a0, zero
.p2align 2
label119:
	sh2add a1, a2, s1
	lw a3, 0(a1)
	xori t4, a3, 47
	xori t1, a3, 42
	xori t2, a3, 45
	xori a4, a3, 43
	sltiu a5, t2, 1
	sltiu t0, a4, 1
	sltiu t2, t4, 1
	sltiu a4, t1, 1
	or a1, t0, a5
	xori t4, a3, 37
	or t3, a4, t2
	sltiu t2, t4, 1
	or t1, a1, t3
	xori a1, a3, 94
	sltiu t5, a1, 1
	addiw a1, a2, 1
	or t4, t2, t5
	or t3, t1, t4
	beq t3, zero, label122
	ld t2, 104(sp)
	sh2add t3, a0, t2
	lw t1, 0(t3)
	lw a2, -4(t3)
	addw t4, t1, a2
	mv t2, t4
	bne t0, zero, label687
	mv t2, zero
.p2align 2
label687:
	subw t3, a2, t1
	mv t0, t3
	bne a5, zero, label689
	mv t0, t2
.p2align 2
label689:
	mulw t3, t1, a2
	mv a5, t3
	bne a4, zero, label691
	mv a5, t0
.p2align 2
label691:
	bne a3, s2, label509
	divw a4, a2, t1
	beq a3, s3, label133
	bne a3, s4, label719
.p2align 2
label138:
	beq t1, zero, label524
	mv a3, t1
	li a4, 1
.p2align 2
label139:
	mulw a4, a2, a4
	addiw a3, a3, -1
	bne a3, zero, label139
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	beq a3, a4, label118
.p2align 2
label538:
	mv a2, a1
	j label119
.p2align 2
label509:
	mv a4, a5
	bne a3, s3, label718
.p2align 2
label133:
	remw a4, a2, t1
	beq a3, s4, label138
.p2align 2
label136:
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label538
	j label118
.p2align 2
label718:
	beq a3, s4, label138
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label538
	j label118
label122:
	beq a3, s0, label142
	addiw a0, a0, 1
	addiw a4, a3, -48
	sh2add t0, a1, s1
	ld t2, 104(sp)
	sh2add a5, a0, t2
	sw a4, 0(a5)
	lw t1, 0(t0)
	beq t1, s0, label476
	li a3, 1
.p2align 2
label124:
	addw t0, a2, a3
	sh2add t2, a4, a4
	sh2add t1, t0, s1
	slliw t0, t2, 1
	lw a5, 0(t1)
	ld t2, 104(sp)
	addi t1, t0, -48
	sh2add t3, a0, t2
	addw a4, a5, t1
	addw t1, a1, a3
	addiw a3, a3, 1
	sh2add t0, t1, s1
	sw a4, 0(t3)
	lw a5, 0(t0)
	bne a5, s0, label124
	addw a1, a2, a3
label142:
	sh2add a2, a1, s1
	li a4, 64
	lw a3, 0(a2)
	bne a3, a4, label538
label118:
	ld t2, 104(sp)
	lw a0, 4(t2)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s7, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label204:
	mv t0, a5
	li a4, 43
	beq a3, a4, label35
	li a4, 45
	beq a3, a4, label90
	mv a5, t1
	li a4, 42
	beq a3, a4, label80
	j label742
.p2align 2
label319:
	mv a3, a4
	addi a1, a1, 4
	mv t0, a4
	addiw a4, a5, 1
	sh2add a3, a3, s1
	sh2add t1, a4, s5
	sw s3, 0(t1)
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label713:
	mv a4, t1
	sh2add a3, t0, s1
	addi a1, a1, 4
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label719:
	addiw a0, a0, -1
	ld t2, 104(sp)
	sh2add a2, a0, t2
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label538
	j label118
label306:
	mv a3, a4
	addiw a4, a5, 1
	mv t0, a3
	addi a1, a1, 4
	sh2add t1, a4, s5
	sh2add a3, a3, s1
	sw s3, 0(t1)
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	j label10
label476:
	li a3, 1
	addw a1, a2, a3
	j label142
label157:
	mv a0, zero
	addi a5, s1, 4
	mv a1, s9
	mv a4, zero
	li t1, 1
	mv a2, zero
	j label10
label524:
	li a4, 1
	j label136
label238:
	mv t1, a5
	addiw t0, t0, 1
	li a5, 43
	sh2add a4, t0, s5
	sw a5, 0(a4)
	j label45
label724:
	mv a5, t1
	li a4, 42
	beq a3, a4, label80
	j label742
