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
	sd s10, 80(sp)
	sd s9, 88(sp)
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
label479:
	bleu a2, s4, label129
	mv s0, a0
	mv s1, a1
.p2align 2
label2:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label479
	mv a1, s1
	j label479
label129:
	mv s0, a1
label5:
	addiw a2, a0, -48
	bgeu a2, s5, label134
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
	beq s0, zero, label480
label481:
	ld a4, 104(sp)
pcrel585:
	auipc a1, %pcrel_hi(a)
pcrel586:
	auipc a0, %pcrel_hi(b)
	addiw s3, a4, -3
	addi s2, a1, %pcrel_lo(pcrel585)
	addi s1, a0, %pcrel_lo(pcrel586)
pcrel587:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel587)
	beq a4, zero, label29
	mv s7, s2
	mv s8, zero
	j label14
label510:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label485
.p2align 2
label485:
	sw a0, 0(s7)
	sh2add a1, s8, s1
	sh2add a2, s8, s0
	sw a0, 0(a1)
	addiw s8, s8, 1
	sw a0, 0(a2)
	ld a4, 104(sp)
	beq a4, s8, label29
.p2align 2
label28:
	addi s7, s7, 4
.p2align 2
label14:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label163
	mv s9, a0
	mv s10, zero
	j label17
.p2align 2
label483:
	bleu a2, s4, label171
	mv s9, a0
	mv s10, a1
.p2align 2
label17:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label483
	mv a1, s10
	j label483
.p2align 2
label171:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s5, label510
.p2align 2
label177:
	mv s11, zero
	j label23
.p2align 2
label186:
	mv s10, a0
.p2align 2
label23:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bltu a1, s5, label186
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
	bne a4, s8, label28
label29:
	ld a4, 104(sp)
	ble a4, zero, label42
	mv a0, s2
	li a1, 1
	bgt a4, a1, label34
	j label42
.p2align 2
label40:
	addi a0, a0, 4
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label42
.p2align 2
label34:
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	ble a4, a5, label215
.p2align 2
label38:
	sw a5, 0(a0)
	sw a4, 0(a2)
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label40
.p2align 2
label41:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label38
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label41
	j label525
label163:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s5, label177
	j label510
label42:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a1, a0, %pcrel_lo(label42)
	ble a4, zero, label227
	li a0, 3
	ble a4, a0, label371
	mv a0, s1
	li a3, -100
	mv a2, zero
	j label103
.p2align 2
label107:
	addi a0, a0, 16
.p2align 2
label103:
	lw a4, 0(a0)
	addiw a2, a2, 4
	max t4, a3, a4
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	lw a5, 4(a0)
	sh2add t2, a5, a1
	lw t1, 0(t2)
	addi t3, t1, 1
	sw t3, 0(t2)
	max t3, a5, t4
	lw t0, 8(a0)
	sh2add t1, t0, a1
	lw t2, 0(t1)
	addi t5, t2, 1
	max t2, t0, t3
	sw t5, 0(t1)
	lw t1, 12(a0)
	sh2add a4, t1, a1
	max a3, t2, t1
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	bgt s3, a2, label107
	mv a5, a3
label108:
	ld a4, 104(sp)
	ble a4, a2, label43
	sh2add a0, a2, s1
	mv a3, a5
	j label113
label117:
	addi a0, a0, 4
label113:
	lw t0, 0(a0)
	addiw a2, a2, 1
	max a3, a3, t0
	sh2add a4, t0, a1
	lw t1, 0(a4)
	addi a5, t1, 1
	sw a5, 0(a4)
	ld a4, 104(sp)
	bgt a4, a2, label117
label43:
	addiw a2, a3, 1
	blt a3, zero, label45
	mv a0, zero
	mv a5, zero
	lw a4, 0(a1)
	bne a4, zero, label95
	j label92
.p2align 2
label366:
	addiw a0, a0, 1
	ble a2, a0, label45
.p2align 2
label94:
	addi a1, a1, 4
	lw a4, 0(a1)
	beq a4, zero, label92
.p2align 2
label95:
	sh2add a3, a5, s1
.p2align 2
label96:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	beq a4, zero, label366
	addi a3, a3, 4
	j label96
label45:
	ld a4, 104(sp)
	ble a4, zero, label46
	mv a1, s0
	mv a5, zero
	li a0, 1
	bgt a4, a0, label70
	j label67
.p2align 2
label346:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	ble a4, a0, label46
.p2align 2
label69:
	addi a1, a1, 4
	mv a5, a0
	ld a4, 104(sp)
	addiw a0, a0, 1
	ble a4, a0, label67
.p2align 2
label70:
	addiw a2, a5, 4
	ld a4, 104(sp)
	ble a4, a2, label291
	sh2add a2, a0, s0
	mv a3, a0
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a4, a0
	lw t1, 0(t2)
	blt t0, t1, label487
	mv a4, a5
	j label487
.p2align 2
label489:
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label491
	mv a4, a5
.p2align 2
label491:
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label493
	mv a5, a4
.p2align 2
label493:
	addiw a3, a3, 4
	ble s3, a3, label328
.p2align 2
label76:
	addi a2, a2, 16
	sh2add t2, a5, s0
	mv a4, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	bge t0, t1, label518
.p2align 2
label487:
	sh2add t2, a4, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label489
	mv a5, a4
	j label489
.p2align 2
label518:
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label489
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label491
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label493
	mv a5, a4
	addiw a3, a3, 4
	bgt s3, a3, label76
	mv t0, a4
	ld a4, 104(sp)
	bgt a4, a3, label81
.p2align 2
label517:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label69
	j label46
.p2align 2
label328:
	mv t0, a5
	ld a4, 104(sp)
	ble a4, a3, label517
.p2align 2
label81:
	sh2add a2, a3, s0
	mv a4, t0
	sh2add t1, t0, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label495
	mv a5, a4
.p2align 2
label495:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label346
.p2align 2
label86:
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
	bgt a4, a3, label86
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	bgt a4, a0, label69
label46:
	ld a4, 104(sp)
	beq a4, zero, label47
	mv a0, s1
	mv a1, zero
.p2align 2
label49:
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
	beq a2, zero, label47
	addi a0, a0, 4
	j label49
label47:
	mv a0, zero
label54:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label260
	lw a1, 0(s1)
	beq a1, zero, label61
	li a0, 1
label58:
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
label92:
	addiw a0, a0, 1
	bgt a2, a0, label94
	j label45
label67:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label69
	j label46
label291:
	mv t0, a5
	mv a3, a0
	ld a4, 104(sp)
	mv a5, zero
	bgt a4, a0, label81
	mv a2, s0
	lw a3, 0(a1)
	lw t0, 0(s0)
	sw t0, 0(a1)
	sw a3, 0(s0)
	j label46
label61:
	lw a1, 0(s0)
	bne a1, zero, label271
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label54
label371:
	li a5, -100
	mv a2, zero
	mv a3, zero
	j label108
label271:
	li a0, 2
	j label58
label260:
	li a0, -123
	j label58
label480:
	mv a4, s2
	sd s2, 104(sp)
	j label481
label134:
	mv s2, zero
	j label11
label121:
	mv s0, zero
	j label5
.p2align 2
label525:
	addi a0, a0, 4
	addiw a1, a1, 1
	ld a4, 104(sp)
	bgt a4, a1, label34
	j label42
.p2align 2
label215:
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label41
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label34
	j label42
label227:
	li a3, -100
	j label43
