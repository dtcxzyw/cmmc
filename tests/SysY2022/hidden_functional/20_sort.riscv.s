.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
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
	bleu a1, s4, label120
	mv s0, a0
	mv s1, zero
	j label2
.p2align 2
label473:
	bleu a2, s4, label128
	mv s0, a0
	mv s1, a1
.p2align 2
label2:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label473
	mv a1, s1
	j label473
label128:
	mv s0, a1
label5:
	addiw a2, a0, -48
	bgeu a2, s5, label133
	mv s1, a0
	mv s2, zero
.p2align 2
label8:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s2, s1, a4
	bgeu a1, s5, label11
	mv s1, a0
	j label8
label11:
	subw a0, zero, s2
	sd a0, 104(sp)
	mv a4, a0
	bne s0, zero, label475
	mv a4, s2
	sd s2, 104(sp)
label475:
	ld a4, 104(sp)
pcrel565:
	auipc a0, %pcrel_hi(a)
pcrel566:
	auipc a1, %pcrel_hi(b)
	addiw s3, a4, -3
	addi s2, a0, %pcrel_lo(pcrel565)
	addi s1, a1, %pcrel_lo(pcrel566)
pcrel567:
	auipc a0, %pcrel_hi(c)
	addi s0, a0, %pcrel_lo(pcrel567)
	beq a4, zero, label13
	mv s7, s2
	mv s8, zero
	j label102
label381:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s5, label395
label513:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label489
.p2align 2
label489:
	sw a0, 0(s7)
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	ld a4, 104(sp)
	beq a4, s8, label13
.p2align 2
label113:
	addi s7, s7, 4
.p2align 2
label102:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label381
	mv s9, a0
	mv s10, zero
	j label105
.p2align 2
label389:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s5, label513
.p2align 2
label395:
	mv s10, a0
	mv s11, zero
.p2align 2
label114:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s5, label416
	mv s10, a0
	j label114
.p2align 2
label486:
	mv a1, s10
.p2align 2
label487:
	bleu a2, s4, label389
	mv s9, a0
	mv s10, a1
.p2align 2
label105:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label487
	j label486
.p2align 2
label416:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label489
	mv a0, s11
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	ld a4, 104(sp)
	bne a4, s8, label113
label13:
	mv a0, s2
	mv a1, zero
label14:
	ld a4, 104(sp)
	bgt a4, a1, label17
	j label27
.p2align 2
label505:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label515
.p2align 2
label24:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	ble a4, a5, label505
.p2align 2
label25:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	ld a4, 104(sp)
	bgt a4, a3, label24
	addi a0, a0, 4
	ble a4, a1, label27
.p2align 2
label17:
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label165
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label25
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label24
	addi a0, a0, 4
	bgt a4, a1, label17
label27:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a2, a0, %pcrel_lo(label27)
	ble a4, zero, label187
	li a3, 3
	ble a4, a3, label324
	mv a0, s1
	li a3, -100
	mv a1, zero
.p2align 2
label86:
	lw a4, 0(a0)
	addiw a1, a1, 4
	max t4, a3, a4
	sh2add t0, a4, a2
	lw t1, 0(t0)
	addi t3, t1, 1
	sw t3, 0(t0)
	lw a5, 4(a0)
	sh2add t2, a5, a2
	lw t1, 0(t2)
	addi t3, t1, 1
	sw t3, 0(t2)
	max t3, a5, t4
	lw t0, 8(a0)
	sh2add t1, t0, a2
	lw t2, 0(t1)
	addi t5, t2, 1
	max t2, t0, t3
	sw t5, 0(t1)
	lw t1, 12(a0)
	sh2add a4, t1, a2
	max a3, t2, t1
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	ble s3, a1, label356
	addi a0, a0, 16
	j label86
label356:
	mv a5, a3
label91:
	ld a4, 104(sp)
	ble a4, a1, label361
	sh2add a0, a1, s1
	mv a3, a5
label96:
	lw t0, 0(a0)
	addiw a1, a1, 1
	max a3, a3, t0
	sh2add a4, t0, a2
	lw t1, 0(a4)
	addi a5, t1, 1
	sw a5, 0(a4)
	ld a4, 104(sp)
	ble a4, a1, label361
	addi a0, a0, 4
	j label96
label361:
	mv a1, a3
	mv a5, zero
	mv a0, zero
label30:
	bge a1, a0, label75
	j label34
.p2align 2
label81:
	addi a3, a3, 4
.p2align 2
label77:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label81
	addiw a0, a0, 1
	addi a2, a2, 4
	blt a1, a0, label34
.p2align 2
label75:
	lw a4, 0(a2)
	beq a4, zero, label309
	sh2add a3, a5, s1
	j label77
label34:
	mv a0, s0
	mv a3, zero
label35:
	ld a4, 104(sp)
	bgt a4, a3, label55
label38:
	ld a4, 104(sp)
	beq a4, zero, label198
	mv a0, s1
	mv a1, zero
.p2align 2
label49:
	sh2add a5, a1, s2
	lw a4, 0(a0)
	lw a2, 0(a5)
	sh2add a5, a1, s0
	subw a3, a4, a2
	addiw a1, a1, 1
	sw a3, 0(a0)
	lw a4, 0(a5)
	subw t1, a4, a3
	subw t0, t1, a2
	sw t0, 0(a5)
	ld a4, 104(sp)
	subw a2, a4, a1
	beq a2, zero, label198
	addi a0, a0, 4
	j label49
.p2align 2
label298:
	sh2add a2, a5, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	ble a4, a1, label38
.p2align 2
label55:
	addiw a1, a3, 1
	ld a4, 104(sp)
	ble a4, a1, label238
	addiw a2, a3, 4
	ble a4, a2, label243
	sh2add a2, a1, s0
	mv a4, a3
	mv a3, a1
	sh2add t2, a4, s0
	lw t0, 0(a2)
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label477
	mv a5, a4
	j label477
.p2align 2
label479:
	sh2add t2, a4, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label481
	mv a5, a4
.p2align 2
label481:
	sh2add t2, a5, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label483
	mv a4, a5
.p2align 2
label483:
	addiw a3, a3, 4
	ble s3, a3, label280
.p2align 2
label62:
	addi a2, a2, 16
	sh2add t2, a4, s0
	mv a5, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	bge t0, t1, label509
.p2align 2
label477:
	sh2add t2, a5, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label479
	mv a4, a5
	j label479
.p2align 2
label509:
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label479
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label481
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label483
	mv a4, a5
	addiw a3, a3, 4
	bgt s3, a3, label62
	mv a2, a5
	ld a4, 104(sp)
	bgt a4, a3, label67
.p2align 2
label508:
	mv a5, a2
	lw a3, 0(a0)
	sh2add a2, a2, s0
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label55
	j label38
.p2align 2
label280:
	mv a5, a4
	mv a2, a4
	ld a4, 104(sp)
	ble a4, a3, label508
.p2align 2
label67:
	sh2add a2, a3, s0
	mv a4, a5
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label485
	mv a5, a4
.p2align 2
label485:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label298
.p2align 2
label72:
	addi a2, a2, 4
	mv a4, a5
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label485
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label72
	sh2add a2, a5, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label55
	j label38
label198:
	mv a0, zero
label39:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label203
	lw a1, 0(s1)
	bne a1, zero, label209
	lw a1, 0(s0)
	beq a1, zero, label213
	li a0, 2
	j label43
label243:
	mv a5, a3
	mv a2, zero
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label67
	mv a5, zero
	lw a3, 0(a0)
	mv a2, s0
	lw a4, 0(s0)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(s0)
	mv a3, a1
	j label35
label209:
	li a0, 1
label43:
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
.p2align 2
label515:
	addi a0, a0, 4
	ld a4, 104(sp)
	bgt a4, a1, label17
	j label27
label187:
	li a1, -100
	mv a5, zero
	mv a0, zero
	j label30
label203:
	li a0, -123
	j label43
label213:
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label39
label309:
	addiw a0, a0, 1
	addi a2, a2, 4
	j label30
label165:
	addi a0, a0, 4
	j label14
label324:
	li a5, -100
	mv a1, zero
	mv a3, zero
	j label91
label238:
	mv a5, a3
	sh2add a2, a3, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	mv a3, a1
	j label35
label120:
	mv s0, zero
	j label5
label133:
	mv s2, zero
	j label11
