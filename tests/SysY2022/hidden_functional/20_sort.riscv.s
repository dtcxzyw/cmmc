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
	j label114
.p2align 2
label495:
	bleu a2, s4, label419
	mv s0, a0
	mv s1, a1
.p2align 2
label114:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label495
	mv a1, s1
	j label495
label419:
	mv s0, a1
label2:
	addiw a1, a0, -48
	bgeu a1, s5, label125
	mv s1, a0
	mv s2, zero
	j label111
.p2align 2
label412:
	mv s1, a0
.p2align 2
label111:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s2, s1, a4
	bltu a1, s5, label412
label5:
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
	beq a4, zero, label7
	mv s7, s2
	mv s8, zero
	j label96
label367:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s5, label381
label521:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label493
.p2align 2
label493:
	sw a0, 0(s7)
	sh2add a1, s8, s1
	sh2add a2, s8, s0
	sw a0, 0(a1)
	addiw s8, s8, 1
	sw a0, 0(a2)
	ld a4, 104(sp)
	beq a4, s8, label7
.p2align 2
label107:
	addi s7, s7, 4
.p2align 2
label96:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label367
	mv s9, a0
	mv s10, zero
	j label99
.p2align 2
label490:
	mv a1, s10
.p2align 2
label491:
	bleu a2, s4, label375
	mv s9, a0
	mv s10, a1
.p2align 2
label99:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label491
	j label490
.p2align 2
label375:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s5, label521
.p2align 2
label381:
	mv s10, a0
	mv s11, zero
	j label108
.p2align 2
label403:
	mv s10, a0
.p2align 2
label108:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bltu a1, s5, label403
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label493
	mv a0, s11
	sh2add a1, s8, s1
	sh2add a2, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a1)
	sw s11, 0(a2)
	ld a4, 104(sp)
	bne a4, s8, label107
label7:
	mv a0, s2
	mv a1, zero
label8:
	ld a4, 104(sp)
	bgt a4, a1, label85
	j label11
.p2align 2
label519:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label525
.p2align 2
label92:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	ble a4, a5, label519
.p2align 2
label93:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	ld a4, 104(sp)
	bgt a4, a3, label92
	addi a0, a0, 4
	ble a4, a1, label11
.p2align 2
label85:
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label345
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label93
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label92
	addi a0, a0, 4
	bgt a4, a1, label85
label11:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a2, a0, %pcrel_lo(label11)
	ble a4, zero, label149
	li a0, 3
	ble a4, a0, label289
	mv a0, s1
	li a3, -100
	mv a1, zero
.p2align 2
label80:
	lw a4, 0(a0)
	addiw a1, a1, 4
	max t3, a3, a4
	sh2add t0, a4, a2
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw a5, 4(a0)
	sh2add t1, a5, a2
	lw t2, 0(t1)
	addi t0, t2, 1
	max t2, a5, t3
	sw t0, 0(t1)
	lw t0, 8(a0)
	sh2add a5, t0, a2
	max a4, t2, t0
	lw a3, 0(a5)
	addi t1, a3, 1
	sw t1, 0(a5)
	lw t0, 12(a0)
	sh2add a5, t0, a2
	max a3, a4, t0
	lw t1, 0(a5)
	addi a4, t1, 1
	sw a4, 0(a5)
	ble s3, a1, label339
	addi a0, a0, 16
	j label80
label339:
	mv a5, a3
label69:
	ld a4, 104(sp)
	ble a4, a1, label293
	sh2add a0, a1, s1
	mv a3, a5
	j label74
label78:
	addi a0, a0, 4
label74:
	lw t0, 0(a0)
	addiw a1, a1, 1
	max a3, a3, t0
	sh2add a4, t0, a2
	lw a5, 0(a4)
	addi t1, a5, 1
	sw t1, 0(a4)
	ld a4, 104(sp)
	bgt a4, a1, label78
label293:
	mv a1, a3
	mv a5, zero
	mv a0, zero
label14:
	bge a1, a0, label18
	j label153
.p2align 2
label24:
	addi a3, a3, 4
.p2align 2
label20:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label24
	addiw a0, a0, 1
	addi a2, a2, 4
	blt a1, a0, label153
.p2align 2
label18:
	lw a4, 0(a2)
	beq a4, zero, label158
	sh2add a3, a5, s1
	j label20
label153:
	mv a0, s0
	mv a3, zero
	ld a4, 104(sp)
	bgt a4, zero, label48
	j label31
.p2align 2
label284:
	lw a2, 0(a0)
	sh2add a3, a5, s0
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a2, 0(a3)
	ld a4, 104(sp)
	mv a3, a1
	ble a4, a1, label31
.p2align 2
label48:
	addiw a1, a3, 1
	ld a4, 104(sp)
	ble a4, a1, label216
	addiw a2, a3, 4
	ble a4, a2, label226
	sh2add a2, a1, s0
	mv a4, a3
	mv a3, a1
	lw t0, 0(a2)
	sh2add t2, a4, s0
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label481
	mv a5, a4
	j label481
.p2align 2
label514:
	mv a5, a4
	sh2add t1, a4, s0
	addiw t0, a3, 1
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	bge t2, t3, label527
.p2align 2
label483:
	sh2add t1, a4, s0
	addiw t0, a3, 2
	mv a5, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label485
	mv a5, a4
.p2align 2
label485:
	sh2add t1, a5, s0
	addiw t0, a3, 3
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label487
	mv a4, a5
.p2align 2
label487:
	addiw a3, a3, 4
	ble s3, a3, label266
.p2align 2
label57:
	addi a2, a2, 16
	sh2add t2, a4, s0
	mv a5, a3
	lw t0, 0(a2)
	lw t1, 0(t2)
	bge t0, t1, label514
.p2align 2
label481:
	sh2add t1, a5, s0
	addiw t0, a3, 1
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label483
	mv a4, a5
	j label483
.p2align 2
label527:
	mv a4, a5
	sh2add t1, a5, s0
	addiw t0, a3, 2
	mv a5, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label485
	mv a5, a4
	sh2add t1, a4, s0
	addiw t0, a3, 3
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label487
	mv a4, a5
	addiw a3, a3, 4
	bgt s3, a3, label57
	mv a2, a5
	ld a4, 104(sp)
	bgt a4, a3, label62
.p2align 2
label513:
	mv a5, a2
	sh2add a3, a2, s0
	lw a2, 0(a0)
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a2, 0(a3)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label48
	j label31
.p2align 2
label266:
	mv a5, a4
	mv a2, a4
	ld a4, 104(sp)
	ble a4, a3, label513
.p2align 2
label62:
	sh2add a2, a3, s0
	mv a4, a5
	lw t0, 0(a2)
	sh2add t2, a5, s0
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label489
	mv a5, a4
.p2align 2
label489:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label284
.p2align 2
label67:
	addi a2, a2, 4
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 0(a2)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label489
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label67
	lw a2, 0(a0)
	sh2add a3, a5, s0
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a2, 0(a3)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label48
label31:
	ld a4, 104(sp)
	beq a4, zero, label32
	mv a0, s1
	mv a1, zero
.p2align 2
label34:
	lw a5, 0(a0)
	sh2add a3, a1, s2
	lw a2, 0(a3)
	sh2add a3, a1, s0
	subw a4, a5, a2
	addiw a1, a1, 1
	sw a4, 0(a0)
	lw t0, 0(a3)
	subw t1, t0, a4
	subw a5, t1, a2
	sw a5, 0(a3)
	ld a4, 104(sp)
	subw a2, a4, a1
	beq a2, zero, label32
	addi a0, a0, 4
	j label34
label32:
	mv a0, zero
label39:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label198
	lw a1, 0(s1)
	beq a1, zero, label46
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
label216:
	mv a5, a3
	lw a2, 0(a0)
	sh2add a3, a3, s0
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a2, 0(a3)
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label48
	j label31
label226:
	mv a5, a3
	mv a2, zero
	ld a4, 104(sp)
	mv a3, a1
	bgt a4, a1, label62
	mv a5, zero
	lw a2, 0(a0)
	lw a4, 0(s0)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a2, 0(s0)
	ld a4, 104(sp)
	bgt a4, a1, label48
	j label31
label46:
	lw a1, 0(s0)
	bne a1, zero, label209
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label39
.p2align 2
label525:
	addi a0, a0, 4
	ld a4, 104(sp)
	bgt a4, a1, label85
	j label11
label149:
	li a1, -100
	mv a5, zero
	mv a0, zero
	j label14
label209:
	li a0, 2
	j label43
label289:
	li a5, -100
	mv a1, zero
	mv a3, zero
	j label69
label345:
	addi a0, a0, 4
	j label8
label120:
	mv s0, zero
	j label2
label198:
	li a0, -123
	j label43
label125:
	mv s2, zero
	j label5
label158:
	addiw a0, a0, 1
	addi a2, a2, 4
	j label14
