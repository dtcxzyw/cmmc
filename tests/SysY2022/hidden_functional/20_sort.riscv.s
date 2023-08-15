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
	bleu a1, s4, label121
	mv s0, a0
	mv s1, zero
	j label115
.p2align 2
label495:
	bleu a2, s4, label421
	mv s0, a0
	mv s1, a1
.p2align 2
label115:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label495
	mv a1, s1
	j label495
label421:
	mv s0, a1
label2:
	addiw a1, a0, -48
	bgeu a1, s5, label126
	mv s1, a0
	mv s2, zero
	j label5
.p2align 2
label136:
	mv s1, a0
.p2align 2
label5:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s2, s1, a2
	bltu a1, s5, label136
label8:
	subw a0, zero, s2
	sd a0, 104(sp)
	mv a4, a0
	bne s0, zero, label479
	mv a4, s2
	sd s2, 104(sp)
label479:
	ld a4, 104(sp)
pcrel571:
	auipc a1, %pcrel_hi(a)
pcrel572:
	auipc a0, %pcrel_hi(b)
	addiw s3, a4, -3
	addi s2, a1, %pcrel_lo(pcrel571)
	addi s1, a0, %pcrel_lo(pcrel572)
pcrel573:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel573)
	beq a4, zero, label10
	mv s7, s2
	mv s8, zero
	j label100
.p2align 2
label406:
	mv s10, a0
.p2align 2
label109:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, s5, label406
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label521
.p2align 2
label491:
	sw a0, 0(s7)
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	ld a4, 104(sp)
	beq a4, s8, label10
.p2align 2
label108:
	addi s7, s7, 4
.p2align 2
label100:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label378
	mv s9, a0
	mv s10, zero
	j label112
.p2align 2
label492:
	mv a1, s10
.p2align 2
label493:
	bleu a2, s4, label413
	mv s9, a0
	mv s10, a1
.p2align 2
label112:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label493
	j label492
.p2align 2
label413:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s5, label383
.p2align 2
label384:
	mv s11, zero
	j label109
label10:
	ld a4, 104(sp)
	ble a4, zero, label23
	mv a0, s2
	li a1, 1
	bgt a4, a1, label15
	j label23
.p2align 2
label512:
	addi a0, a0, 4
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label23
.p2align 2
label15:
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label22
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label21
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label15
	j label23
.p2align 2
label22:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	ld a4, 104(sp)
	ble a4, a3, label512
.p2align 2
label21:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label22
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label21
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label15
label23:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a2, a0, %pcrel_lo(label23)
	ble a4, zero, label178
	li a0, 3
	ble a4, a0, label182
	mv a0, s1
	li a3, -100
	mv a1, zero
.p2align 2
label36:
	lw a4, 0(a0)
	addiw a1, a1, 4
	sh2add t0, a4, a2
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw a5, 4(a0)
	sh2add t1, a5, a2
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	max t3, a3, a4
	lw t0, 8(a0)
	sh2add t2, t0, a2
	lw t4, 0(t2)
	addi t1, t4, 1
	max t4, a5, t3
	sw t1, 0(t2)
	lw t1, 12(a0)
	max t2, t0, t4
	sh2add a4, t1, a2
	max a3, t2, t1
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	ble s3, a1, label232
	addi a0, a0, 16
	j label36
label232:
	mv a5, a3
label25:
	ld a4, 104(sp)
	ble a4, a1, label186
	sh2add a0, a1, s1
	mv a3, a5
label30:
	lw t0, 0(a0)
	addiw a1, a1, 1
	max a3, a3, t0
	sh2add a4, t0, a2
	lw t1, 0(a4)
	addi a5, t1, 1
	sw a5, 0(a4)
	ld a4, 104(sp)
	ble a4, a1, label186
	addi a0, a0, 4
	j label30
label186:
	mv a1, a3
label41:
	blt a1, zero, label43
	mv a0, zero
	mv a5, zero
	lw a4, 0(a2)
	bne a4, zero, label90
	j label96
.p2align 2
label365:
	addiw a0, a0, 1
	blt a1, a0, label43
.p2align 2
label98:
	addi a2, a2, 4
	lw a4, 0(a2)
	beq a4, zero, label96
.p2align 2
label90:
	sh2add a3, a5, s1
.p2align 2
label91:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	beq a4, zero, label365
	addi a3, a3, 4
	j label91
label43:
	ld a4, 104(sp)
	ble a4, zero, label44
	mv a1, s0
	mv a5, zero
	li a0, 1
	bgt a4, a0, label65
	j label82
.p2align 2
label305:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	ble a4, a0, label44
.p2align 2
label84:
	addi a1, a1, 4
	mv a5, a0
	ld a4, 104(sp)
	addiw a0, a0, 1
	ble a4, a0, label82
.p2align 2
label65:
	addiw a2, a5, 4
	ld a4, 104(sp)
	ble a4, a2, label288
	sh2add a2, a0, s0
	mv a3, a0
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a4, a0
	lw t2, 0(t1)
	blt t0, t2, label483
	mv a4, a5
.p2align 2
label483:
	sh2add t2, a4, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label485
	mv a5, a4
.p2align 2
label485:
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label487
	mv a4, a5
.p2align 2
label487:
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label489
	mv a5, a4
.p2align 2
label489:
	addiw a3, a3, 4
	ble s3, a3, label343
.p2align 2
label81:
	addi a2, a2, 16
	sh2add t1, a5, s0
	mv a4, a3
	lw t0, 0(a2)
	lw t2, 0(t1)
	blt t0, t2, label483
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label485
	mv a5, a4
	sh2add t2, a4, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label487
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label489
	mv a5, a4
	addiw a3, a3, 4
	bgt s3, a3, label81
	mv t0, a4
	ld a4, 104(sp)
	bgt a4, a3, label70
.p2align 2
label516:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label84
	j label44
.p2align 2
label343:
	mv t0, a5
	ld a4, 104(sp)
	ble a4, a3, label516
.p2align 2
label70:
	sh2add a2, a3, s0
	mv a4, t0
	sh2add t1, t0, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label481
	mv a5, a4
.p2align 2
label481:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label305
.p2align 2
label75:
	addi a2, a2, 4
	mv a4, a5
	sh2add t1, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t2, 0(t1)
	blt t0, t2, label481
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label75
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	bgt a4, a0, label84
	j label44
label288:
	mv t0, a5
	mv a3, a0
	mv a5, zero
	ld a4, 104(sp)
	bgt a4, a0, label70
	mv a2, s0
	lw a3, 0(a1)
	lw t0, 0(s0)
	sw t0, 0(a1)
	sw a3, 0(s0)
label44:
	ld a4, 104(sp)
	beq a4, zero, label45
	mv a0, s1
	mv a1, zero
	j label56
.p2align 2
label59:
	addi a0, a0, 4
.p2align 2
label56:
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
	bne a2, zero, label59
label45:
	mv a0, zero
label46:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label248
	lw a1, 0(s1)
	beq a1, zero, label53
	li a0, 1
label50:
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
label378:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s5, label384
label383:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label491
	j label491
label96:
	addiw a0, a0, 1
	bge a1, a0, label98
	j label43
label82:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label84
	j label44
label53:
	lw a1, 0(s0)
	bne a1, zero, label259
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label46
.p2align 2
label521:
	mv a0, s11
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	ld a4, 104(sp)
	bne a4, s8, label108
	j label10
label248:
	li a0, -123
	j label50
label259:
	li a0, 2
	j label50
label182:
	li a5, -100
	mv a1, zero
	mv a3, zero
	j label25
label178:
	li a1, -100
	j label41
label121:
	mv s0, zero
	j label2
label126:
	mv s2, zero
	j label8
