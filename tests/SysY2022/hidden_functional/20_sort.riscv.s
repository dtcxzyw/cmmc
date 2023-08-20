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
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s2, s1, a2
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
	beq a4, zero, label10
	mv s7, s2
	mv s8, zero
	j label100
.p2align 2
label414:
	mv s10, a0
.p2align 2
label112:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s5, label414
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label495
	mv a0, s11
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	ld a4, 104(sp)
	beq a4, s8, label10
.p2align 2
label111:
	addi s7, s7, 4
.p2align 2
label100:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label378
	mv s9, a0
	mv s10, zero
.p2align 2
label103:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label493
	mv a1, s10
label493:
	bleu a2, s4, label386
	mv s9, a0
	mv s10, a1
	j label103
.p2align 2
label386:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s5, label522
.p2align 2
label392:
	mv s10, a0
	mv s11, zero
	j label112
label378:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s5, label392
label522:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label495
label495:
	sw a0, 0(s7)
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	ld a4, 104(sp)
	bne a4, s8, label111
label10:
	ld a4, 104(sp)
	ble a4, zero, label11
	mv a0, s2
	li a1, 1
	bgt a4, a1, label91
	j label11
.p2align 2
label521:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label526
.p2align 2
label98:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	ble a4, a5, label521
.p2align 2
label95:
	sw a5, 0(a0)
	sw a4, 0(a2)
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label98
	addi a0, a0, 4
	addiw a1, a1, 1
	ble a4, a1, label11
.p2align 2
label91:
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label95
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label98
	addi a0, a0, 4
	addiw a1, a1, 1
	bgt a4, a1, label91
label11:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a1, a0, %pcrel_lo(label11)
	ble a4, zero, label157
	li a0, 3
	ble a4, a0, label161
	mv a0, s1
	li a3, -100
	mv a2, zero
	j label24
.p2align 2
label28:
	addi a0, a0, 16
.p2align 2
label24:
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
	max t4, a5, t3
	sh2add t2, t0, a1
	lw t1, 0(t2)
	addi t5, t1, 1
	sw t5, 0(t2)
	lw t1, 12(a0)
	max t2, t0, t4
	sh2add a4, t1, a1
	max a3, t2, t1
	lw a5, 0(a4)
	addi t0, a5, 1
	sw t0, 0(a4)
	bgt s3, a2, label28
	mv a5, a3
label13:
	ld a4, 104(sp)
	ble a4, a2, label29
	sh2add a0, a2, s1
	mv a3, a5
	j label18
label22:
	addi a0, a0, 4
label18:
	lw t0, 0(a0)
	addiw a2, a2, 1
	max a3, a3, t0
	sh2add a4, t0, a1
	lw a5, 0(a4)
	addi t1, a5, 1
	sw t1, 0(a4)
	ld a4, 104(sp)
	bgt a4, a2, label22
label29:
	addiw a2, a3, 1
	blt a3, zero, label31
	mv a0, zero
	mv a5, zero
	lw a4, 0(a1)
	bne a4, zero, label78
	j label84
.p2align 2
label83:
	addi a3, a3, 4
.p2align 2
label79:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label83
	addiw a0, a0, 1
	ble a2, a0, label31
.p2align 2
label86:
	addi a1, a1, 4
	lw a4, 0(a1)
	beq a4, zero, label84
.p2align 2
label78:
	sh2add a3, a5, s1
	j label79
label31:
	ld a4, 104(sp)
	ble a4, zero, label56
	mv a1, s0
	mv a5, zero
	li a0, 1
	bgt a4, a0, label39
	j label36
.p2align 2
label512:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	ble a4, a0, label56
.p2align 2
label38:
	addi a1, a1, 4
	mv a5, a0
	ld a4, 104(sp)
	addiw a0, a0, 1
	ble a4, a0, label36
.p2align 2
label39:
	addiw a2, a5, 4
	ld a4, 104(sp)
	ble a4, a2, label238
	sh2add a2, a0, s0
	mv a3, a0
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a4, a0
	lw t1, 0(t2)
	blt t0, t1, label483
	mv a4, a5
label483:
	sh2add t2, a4, s0
	lw t0, 4(a2)
	addiw t3, a3, 1
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label485
	mv a5, a4
label485:
	sh2add t2, a5, s0
	lw t0, 8(a2)
	addiw t3, a3, 2
	lw t1, 0(t2)
	mv a4, t3
	blt t0, t1, label487
	mv a4, a5
label487:
	sh2add t2, a4, s0
	lw t0, 12(a2)
	addiw t3, a3, 3
	lw t1, 0(t2)
	mv a5, t3
	blt t0, t1, label489
	mv a5, a4
label489:
	addiw a3, a3, 4
	ble s3, a3, label275
.p2align 2
label45:
	addi a2, a2, 16
	sh2add t2, a5, s0
	mv a4, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	blt t0, t1, label483
	mv a4, a5
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
	bgt s3, a3, label45
	mv t0, a4
	ld a4, 104(sp)
	ble a4, a3, label512
.p2align 2
label50:
	sh2add a2, a3, s0
	mv a4, t0
	sh2add t2, t0, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label491
	mv a5, a4
label491:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label293
.p2align 2
label55:
	addi a2, a2, 4
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label491
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label55
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	bgt a4, a0, label38
label56:
	ld a4, 104(sp)
	beq a4, zero, label297
	mv a0, s1
	mv a1, zero
.p2align 2
label58:
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
	beq a2, zero, label297
	addi a0, a0, 4
	j label58
label297:
	mv a0, zero
label63:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label319
	lw a1, 0(s1)
	bne a1, zero, label325
	lw a1, 0(s0)
	beq a1, zero, label329
	li a0, 2
	j label70
label36:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label38
	j label56
label84:
	addiw a0, a0, 1
	bgt a2, a0, label86
	j label31
label238:
	mv t0, a5
	mv a3, a0
	ld a4, 104(sp)
	mv a5, zero
	bgt a4, a0, label50
	mv a2, s0
	lw a3, 0(a1)
	lw t0, 0(s0)
	sw t0, 0(a1)
	sw a3, 0(s0)
	j label56
label325:
	li a0, 1
label70:
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
label526:
	addi a0, a0, 4
	addiw a1, a1, 1
	ld a4, 104(sp)
	bgt a4, a1, label91
	j label11
.p2align 2
label293:
	sh2add a2, a5, s0
	lw a3, 0(a1)
	lw t0, 0(a2)
	sw t0, 0(a1)
	sw a3, 0(a2)
	ld a4, 104(sp)
	bgt a4, a0, label38
	j label56
label275:
	mv t0, a5
	ld a4, 104(sp)
	bgt a4, a3, label50
	j label512
label329:
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label63
label161:
	li a5, -100
	mv a2, zero
	mv a3, zero
	j label13
label121:
	mv s0, zero
	j label5
label134:
	mv s2, zero
	j label8
label157:
	li a3, -100
	j label29
label319:
	li a0, -123
	j label70
