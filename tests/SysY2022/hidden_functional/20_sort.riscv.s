.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
cnt:
	.zero	1600080
.p2align 3
a:
	.zero	400020
.p2align 3
b:
	.zero	400020
.p2align 3
c:
	.zero	400020
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s5, 10
	li s6, 45
	li s4, 9
	addiw a1, a0, -48
	bleu a1, s4, label121
	mv s0, a0
	mv s1, zero
	j label2
.p2align 2
label130:
	mv s0, a0
	mv s1, a1
.p2align 2
label2:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label479
	mv a1, s1
label479:
	bgtu a2, s4, label130
	mv s0, a1
label5:
	addiw a2, a0, -48
	bgeu a2, s5, label134
	mv s1, a0
	mv s2, zero
	j label115
.p2align 2
label423:
	mv s1, a0
.p2align 2
label115:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, s5, label423
label8:
	subw a0, zero, s2
	sd a0, 104(sp)
	mv a4, a0
	bne s0, zero, label481
	mv a4, s2
	sd s2, 104(sp)
label481:
	ld a4, 104(sp)
pcrel567:
	auipc a0, %pcrel_hi(a)
pcrel568:
	auipc a1, %pcrel_hi(b)
	addiw s3, a4, -3
	addi s2, a0, %pcrel_lo(pcrel567)
	addi s1, a1, %pcrel_lo(pcrel568)
pcrel569:
	auipc a0, %pcrel_hi(c)
	addi s0, a0, %pcrel_lo(pcrel569)
	beq a4, zero, label26
	mv s7, s2
	mv s8, zero
	j label11
.p2align 2
label190:
	mv s10, a0
.p2align 2
label23:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s5, label190
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label485
	mv a0, s11
	sh2add a1, s8, s1
	sh2add a2, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a1)
	sw s11, 0(a2)
	ld a4, 104(sp)
	beq a4, s8, label26
.p2align 2
label22:
	addi s7, s7, 4
.p2align 2
label11:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label154
	mv s9, a0
	mv s10, zero
.p2align 2
label14:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label483
	mv a1, s10
label483:
	bleu a2, s4, label162
	mv s9, a0
	mv s10, a1
	j label14
.p2align 2
label162:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s5, label510
.p2align 2
label168:
	mv s10, a0
	mv s11, zero
	j label23
label154:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s5, label168
label510:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label485
label485:
	sw a0, 0(s7)
	sh2add a1, s8, s1
	sh2add a2, s8, s0
	sw a0, 0(a1)
	addiw s8, s8, 1
	sw a0, 0(a2)
	ld a4, 104(sp)
	bne a4, s8, label22
label26:
	ld a4, 104(sp)
	ble a4, zero, label27
	mv a0, s2
	li a1, 1
	bgt a4, a1, label107
	j label27
.p2align 2
label113:
	addi a0, a0, 4
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label27
.p2align 2
label107:
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label111
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label114
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label107
	j label27
.p2align 2
label111:
	sw a5, 0(a0)
	sw a4, 0(a2)
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label113
.p2align 2
label114:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label111
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label114
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label107
label27:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a1, a0, %pcrel_lo(label27)
	ble a4, zero, label198
	li a0, 3
	ble a4, a0, label202
	mv a0, s1
	li a3, -100
	mv a2, zero
.p2align 2
label40:
	lw a4, 0(a0)
	addiw a2, a2, 4
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw a5, 4(a0)
	sh2add t1, a5, a1
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	max t3, a3, a4
	lw t0, 8(a0)
	sh2add t2, t0, a1
	lw t4, 0(t2)
	addi t1, t4, 1
	max t4, a5, t3
	sw t1, 0(t2)
	lw t1, 12(a0)
	max t2, t0, t4
	sh2add a4, t1, a1
	max a3, t2, t1
	lw a5, 0(a4)
	addi t0, a5, 1
	sw t0, 0(a4)
	ble s3, a2, label252
	addi a0, a0, 16
	j label40
label252:
	mv a5, a3
label29:
	ld a4, 104(sp)
	ble a4, a2, label45
	sh2add a0, a2, s1
	mv a3, a5
	j label34
label38:
	addi a0, a0, 4
label34:
	lw t0, 0(a0)
	addiw a2, a2, 1
	max a3, a3, t0
	sh2add a4, t0, a1
	lw t1, 0(a4)
	addi a5, t1, 1
	sw a5, 0(a4)
	ld a4, 104(sp)
	bgt a4, a2, label38
label45:
	addiw a2, a3, 1
	blt a3, zero, label47
	mv a0, zero
	mv a5, zero
	lw a4, 0(a1)
	bne a4, zero, label97
	j label94
.p2align 2
label102:
	addi a3, a3, 4
.p2align 2
label98:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label102
	addiw a0, a0, 1
	ble a2, a0, label47
.p2align 2
label96:
	addi a1, a1, 4
	lw a4, 0(a1)
	beq a4, zero, label94
.p2align 2
label97:
	sh2add a3, a5, s1
	j label98
label47:
	ld a4, 104(sp)
	ble a4, zero, label72
	mv a1, s0
	mv a3, zero
	li a0, 1
	bgt a4, a0, label52
	j label266
.p2align 2
label513:
	mv a5, a2
	lw a3, 0(a1)
	sh2add a2, a2, s0
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	ble a4, a0, label72
.p2align 2
label71:
	addi a1, a1, 4
	mv a3, a0
	ld a4, 104(sp)
	addiw a0, a0, 1
	ble a4, a0, label266
.p2align 2
label52:
	addiw a2, a3, 4
	ld a4, 104(sp)
	ble a4, a2, label271
	sh2add a2, a0, s0
	mv a4, a3
	mv a3, a0
	sh2add t2, a4, s0
	lw t0, 0(a2)
	mv a5, a0
	lw t1, 0(t2)
	blt t0, t1, label487
	mv a5, a4
label487:
	sh2add t2, a5, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label489
	mv a4, a5
label489:
	sh2add t2, a4, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label491
	mv a5, a4
label491:
	sh2add t2, a5, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label493
	mv a4, a5
label493:
	addiw a3, a3, 4
	ble s3, a3, label308
.p2align 2
label58:
	addi a2, a2, 16
	sh2add t2, a4, s0
	mv a5, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	blt t0, t1, label487
	mv a5, a4
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label489
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label491
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label493
	mv a4, a5
	addiw a3, a3, 4
	bgt s3, a3, label58
	mv a2, a5
	ld a4, 104(sp)
	ble a4, a3, label513
.p2align 2
label63:
	sh2add a2, a3, s0
	mv a4, a5
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label495
	mv a5, a4
label495:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label326
.p2align 2
label68:
	addi a2, a2, 4
	mv a4, a5
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label495
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label68
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	bgt a4, a0, label71
label72:
	ld a4, 104(sp)
	beq a4, zero, label338
	mv a0, s1
	mv a1, zero
.p2align 2
label74:
	sh2add a3, a1, s2
	lw a5, 0(a0)
	lw a2, 0(a3)
	sh2add a3, a1, s0
	subw a4, a5, a2
	addiw a1, a1, 1
	sw a4, 0(a0)
	lw a5, 0(a3)
	subw t0, a5, a4
	subw t1, t0, a2
	sw t1, 0(a3)
	ld a4, 104(sp)
	subw a2, a4, a1
	beq a2, zero, label338
	addi a0, a0, 4
	j label74
label338:
	mv a0, zero
label79:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label360
	lw a1, 0(s1)
	beq a1, zero, label84
	li a0, 1
label86:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label266:
	mv a5, a3
	sh2add a2, a3, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label71
	j label72
label94:
	addiw a0, a0, 1
	bgt a2, a0, label96
	j label47
label271:
	mv a5, a3
	mv a2, zero
	ld a4, 104(sp)
	mv a3, a0
	bgt a4, a0, label63
	mv a5, zero
	lw a3, 0(a1)
	mv a2, s0
	lw t0, 0(s0)
	sw t0, 0(a1)
	sw a3, 0(s0)
	j label72
label84:
	lw a1, 0(s0)
	beq a1, zero, label370
	li a0, 2
	j label86
.p2align 2
label326:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label71
	j label72
label134:
	mv s2, zero
	j label8
label308:
	mv a5, a4
	mv a2, a4
	ld a4, 104(sp)
	bgt a4, a3, label63
	j label513
label370:
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label79
label360:
	li a0, -123
	j label86
label121:
	mv s0, zero
	j label5
label198:
	li a3, -100
	j label45
label202:
	li a5, -100
	mv a2, zero
	mv a3, zero
	j label29
