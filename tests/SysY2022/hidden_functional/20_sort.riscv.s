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
	sd s10, 80(sp)
	sd s9, 88(sp)
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
	j label8
.p2align 2
label143:
	mv s1, a0
.p2align 2
label8:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s2, s1, a4
	bltu a1, s5, label143
label11:
	subw a0, zero, s2
	sd a0, 104(sp)
	mv a4, a0
	beq s0, zero, label474
label475:
	ld a4, 104(sp)
pcrel564:
	auipc a1, %pcrel_hi(a)
pcrel565:
	auipc a0, %pcrel_hi(b)
	addiw s3, a4, -3
	addi s2, a1, %pcrel_lo(pcrel564)
	addi s1, a0, %pcrel_lo(pcrel565)
pcrel566:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel566)
	beq a4, zero, label13
	mv s7, s2
	mv s8, zero
	j label102
.p2align 2
label409:
	mv s10, a0
.p2align 2
label111:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s5, label409
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label512
.p2align 2
label487:
	sw a0, 0(s7)
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	ld a4, 104(sp)
	beq a4, s8, label13
.p2align 2
label110:
	addi s7, s7, 4
.p2align 2
label102:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label381
	mv s9, a0
	mv s10, zero
	j label114
.p2align 2
label488:
	mv a1, s10
.p2align 2
label489:
	bleu a2, s4, label416
	mv s9, a0
	mv s10, a1
.p2align 2
label114:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label489
	j label488
.p2align 2
label416:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s5, label386
.p2align 2
label387:
	mv s11, zero
	j label111
label13:
	mv a0, s2
	mv a1, zero
label14:
	ld a4, 104(sp)
	bgt a4, a1, label17
	j label27
.p2align 2
label506:
	addi a0, a0, 4
	ld a4, 104(sp)
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
	ble a4, a5, label22
.p2align 2
label25:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	ld a4, 104(sp)
	ble a4, a3, label506
.p2align 2
label24:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label25
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label24
	addi a0, a0, 4
	bgt a4, a1, label17
	j label27
.p2align 2
label22:
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label24
	addi a0, a0, 4
	bgt a4, a1, label17
label27:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a2, a0, %pcrel_lo(label27)
	ble a4, zero, label187
	li a0, 3
	ble a4, a0, label191
	mv a0, s1
	li a3, -100
	mv a1, zero
.p2align 2
label30:
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
	lw t0, 8(a0)
	sh2add t1, t0, a2
	lw t3, 0(t1)
	addi t2, t3, 1
	max t3, a5, t4
	sw t2, 0(t1)
	lw t1, 12(a0)
	max t2, t0, t3
	sh2add a4, t1, a2
	max a3, t2, t1
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	ble s3, a1, label223
	addi a0, a0, 16
	j label30
label223:
	mv a5, a3
label35:
	ld a4, 104(sp)
	ble a4, a1, label228
	sh2add a0, a1, s1
	mv a3, a5
label40:
	lw t0, 0(a0)
	addiw a1, a1, 1
	max a3, a3, t0
	sh2add a4, t0, a2
	lw t1, 0(a4)
	addi a5, t1, 1
	sw a5, 0(a4)
	ld a4, 104(sp)
	ble a4, a1, label228
	addi a0, a0, 4
	j label40
label228:
	mv a1, a3
	mv a5, zero
	mv a0, zero
label47:
	bge a1, a0, label51
	j label246
.p2align 2
label57:
	addi a3, a3, 4
.p2align 2
label53:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label57
	addiw a0, a0, 1
	addi a2, a2, 4
	blt a1, a0, label246
.p2align 2
label51:
	lw a4, 0(a2)
	beq a4, zero, label251
	sh2add a3, a5, s1
	j label53
label246:
	mv a0, s0
	mv a3, zero
label61:
	ld a4, 104(sp)
	bgt a4, a3, label81
	j label64
.p2align 2
label331:
	sh2add a2, a5, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	ble a4, a1, label64
.p2align 2
label81:
	addiw a1, a3, 1
	ld a4, 104(sp)
	ble a4, a1, label309
	addiw a2, a3, 4
	ble a4, a2, label314
	sh2add a2, a1, s0
	mv a4, a3
	mv a3, a1
	sh2add t2, a4, s0
	lw t0, 0(a2)
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label479
	mv a5, a4
.p2align 2
label479:
	sh2add t2, a5, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label481
	mv a4, a5
.p2align 2
label481:
	sh2add t2, a4, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label483
	mv a5, a4
.p2align 2
label483:
	sh2add t2, a5, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label485
	mv a4, a5
.p2align 2
label485:
	addiw a3, a3, 4
	ble s3, a3, label369
.p2align 2
label98:
	addi a2, a2, 16
	sh2add t2, a4, s0
	mv a5, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	blt t0, t1, label479
	mv a5, a4
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label481
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label483
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label485
	mv a4, a5
	addiw a3, a3, 4
	bgt s3, a3, label98
	mv a2, a5
	ld a4, 104(sp)
	bgt a4, a3, label87
.p2align 2
label509:
	mv a5, a2
	lw a3, 0(a0)
	sh2add a2, a2, s0
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label81
	j label64
.p2align 2
label369:
	mv a5, a4
	mv a2, a4
	ld a4, 104(sp)
	ble a4, a3, label509
.p2align 2
label87:
	sh2add a2, a3, s0
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label477
	mv a5, a4
.p2align 2
label477:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label331
.p2align 2
label92:
	addi a2, a2, 4
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label477
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label92
	sh2add a2, a5, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label81
label64:
	ld a4, 104(sp)
	beq a4, zero, label269
	mv a0, s1
	mv a1, zero
.p2align 2
label75:
	sh2add a3, a1, s2
	lw a5, 0(a0)
	lw a2, 0(a3)
	sh2add a3, a1, s0
	subw a4, a5, a2
	addiw a1, a1, 1
	sw a4, 0(a0)
	lw t1, 0(a3)
	subw a5, t1, a4
	subw t0, a5, a2
	sw t0, 0(a3)
	ld a4, 104(sp)
	subw a2, a4, a1
	beq a2, zero, label269
	addi a0, a0, 4
	j label75
label314:
	mv a5, a3
	mv a2, zero
	mv a3, a1
	ld a4, 104(sp)
	bgt a4, a1, label87
	mv a5, zero
	lw a3, 0(a0)
	mv a2, s0
	lw a4, 0(s0)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(s0)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label81
	j label64
label269:
	mv a0, zero
label65:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label274
	lw a1, 0(s1)
	beq a1, zero, label72
	li a0, 1
label69:
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
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label381:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s5, label387
label386:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label487
	j label487
label72:
	lw a1, 0(s0)
	bne a1, zero, label285
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label65
.p2align 2
label512:
	mv a0, s11
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	ld a4, 104(sp)
	bne a4, s8, label110
	j label13
label274:
	li a0, -123
	j label69
label133:
	mv s2, zero
	j label11
label285:
	li a0, 2
	j label69
label120:
	mv s0, zero
	j label5
label191:
	li a5, -100
	mv a1, zero
	mv a3, zero
	j label35
label165:
	addi a0, a0, 4
	j label14
label309:
	mv a5, a3
	sh2add a2, a3, s0
	lw a3, 0(a0)
	lw a4, 0(a2)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a3, 0(a2)
	mv a3, a1
	j label61
label251:
	addiw a0, a0, 1
	addi a2, a2, 4
	j label47
label474:
	mv a4, s2
	sd s2, 104(sp)
	j label475
label187:
	li a1, -100
	mv a5, zero
	mv a0, zero
	j label47
