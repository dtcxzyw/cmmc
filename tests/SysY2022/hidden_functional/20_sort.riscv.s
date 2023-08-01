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
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label82
	mv s1, a0
	mv s0, zero
.p2align 2
label76:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s1, a3, label535
	mv a1, s0
.p2align 2
label535:
	li a3, 9
	bleu a2, a3, label437
	mv s1, a0
	mv s0, a1
	j label76
label2:
	addiw a0, s1, -48
	li a1, 10
	bltu a0, a1, label88
	j label87
label437:
	mv s1, a0
	mv s0, a1
	j label2
label82:
	mv s1, a0
	mv s0, zero
	j label2
label88:
	mv s2, zero
.p2align 2
label73:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s2, s1, a3
	bgeu a1, a2, label429
	mv s1, a0
	j label73
label5:
	subw a1, zero, a0
	mv s2, a1
	bne s0, zero, label511
	j label510
label429:
	mv a0, s2
	j label5
label510:
	mv s2, a0
label511:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label511)
pcrel585:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel585)
pcrel586:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel586)
	beq s2, zero, label100
	mv s4, zero
	j label7
label100:
	mv a0, zero
	j label21
.p2align 2
label7:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label106
	mv s6, a0
	mv s5, zero
	j label9
.p2align 2
label128:
	subw a1, zero, s7
	mv a0, a1
	beq s5, zero, label546
.p2align 2
label515:
	sh2add a1, s4, s0
	sh2add a2, s4, s3
	sw a0, 0(a1)
	sh2add a1, s4, s1
	sw a0, 0(a2)
	addiw s4, s4, 1
	sw a0, 0(a1)
	bne s2, s4, label7
	j label100
label21:
	bgt s2, a0, label67
	j label23
.p2align 2
label9:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label513
	mv a2, s5
.p2align 2
label513:
	li a3, 9
	bleu a1, a3, label114
	mv s6, a0
	mv s5, a2
	j label9
label23:
	addiw a0, s2, -8
pcrel587:
	auipc a1, %pcrel_hi(cnt)
	addi a2, a1, %pcrel_lo(pcrel587)
	ble s2, zero, label153
	li a3, 8
	ble s2, a3, label157
	li a4, -100
	mv a1, zero
	j label28
label25:
	sh2add t0, a1, s3
	addiw a1, a1, 1
	lw a3, 0(t0)
	max a4, a4, a3
	sh2add a5, a3, a2
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	bgt s2, a1, label25
	mv a3, a4
	mv a4, zero
	mv a1, zero
	j label33
label28:
	sh2add a3, a1, s3
	addiw a1, a1, 8
	lw a5, 0(a3)
	max a4, a4, a5
	sh2add t0, a5, a2
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	lw t0, 4(a3)
	max a5, t0, a4
	sh2add t1, t0, a2
	lw t3, 0(t1)
	addi t2, t3, 1
	sw t2, 0(t1)
	lw t0, 8(a3)
	max a4, a5, t0
	sh2add a5, t0, a2
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw t0, 12(a3)
	sh2add a5, t0, a2
	max a4, a4, t0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw t0, 16(a3)
	sh2add a5, t0, a2
	max a4, a4, t0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw t0, 20(a3)
	sh2add a5, t0, a2
	max a4, a4, t0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw t0, 24(a3)
	sh2add a5, t0, a2
	max a4, a4, t0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw a5, 28(a3)
	sh2add a3, a5, a2
	max a4, a4, a5
	lw t0, 0(a3)
	addi a5, t0, 1
	sw a5, 0(a3)
	bgt a0, a1, label28
	j label25
.p2align 2
label67:
	addiw a2, a0, 1
	mv a1, a2
	ble s2, a2, label405
.p2align 2
label70:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label72
	addiw a1, a1, 1
	bgt s2, a1, label70
	j label552
.p2align 2
label72:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	bgt s2, a1, label70
	mv a0, a2
	bgt s2, a2, label67
	j label23
label33:
	bge a3, a1, label36
label236:
	mv a5, zero
	j label43
.p2align 2
label36:
	sh2add t0, a1, a2
	lw a5, 0(t0)
	bne a5, zero, label37
	addiw a1, a1, 1
	j label33
.p2align 2
label37:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a1, 0(t0)
	bne a5, zero, label37
	addiw a1, a1, 1
	bge a3, a1, label36
	j label236
label43:
	bgt s2, a5, label55
label45:
	bne s2, zero, label260
label259:
	mv a2, zero
	j label48
label260:
	mv a0, zero
.p2align 2
label46:
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
	subw a1, s2, a0
	bne a1, zero, label46
	j label259
label48:
	subw a1, a2, s2
	beq a1, zero, label282
	sh2add a0, a2, s3
	lw a1, 0(a0)
	beq a1, zero, label51
	li a0, 1
label53:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label55:
	addiw a1, a5, 1
	sh2add a2, a5, s1
	ble s2, a1, label304
	addiw a3, a5, 9
	bgt s2, a3, label310
	mv t0, a2
	mv a3, a1
	sh2add a4, a1, s1
	lw t1, 0(a4)
	mv a4, a1
	lw t0, 0(a2)
	blt t1, t0, label533
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a1, 1
	bgt s2, a3, label399
	j label398
.p2align 2
label310:
	mv a3, a1
	mv t0, a2
	j label57
.p2align 2
label398:
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(t0)
	sw a4, 0(a2)
	sw a3, 0(t0)
	bgt s2, a1, label55
	j label45
.p2align 2
label57:
	sh2add a4, a3, s1
	lw t1, 0(a4)
	mv a4, a3
	lw t0, 0(t0)
	blt t1, t0, label517
	mv a4, a5
.p2align 2
label517:
	sh2add t0, a4, s1
	addiw a5, a3, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label519
	mv a5, a4
.p2align 2
label519:
	sh2add t0, a5, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label521
	mv a4, a5
.p2align 2
label521:
	sh2add t0, a4, s1
	addiw a5, a3, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label523
	mv a5, a4
.p2align 2
label523:
	sh2add t0, a5, s1
	addiw a4, a3, 4
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label525
	mv a4, a5
.p2align 2
label525:
	sh2add t0, a4, s1
	addiw a5, a3, 5
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label527
	mv a5, a4
.p2align 2
label527:
	sh2add t0, a5, s1
	addiw a4, a3, 6
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label529
	mv a4, a5
.p2align 2
label529:
	sh2add t0, a4, s1
	addiw a5, a3, 7
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label531
	mv a5, a4
.p2align 2
label531:
	sh2add t0, a5, s1
	addiw a3, a3, 8
	bgt a0, a3, label57
	sh2add a4, a3, s1
	lw t1, 0(a4)
	mv a4, a3
	lw t0, 0(t0)
	blt t1, t0, label533
	mv a4, a5
.p2align 2
label533:
	sh2add t0, a4, s1
	addiw a3, a3, 1
	ble s2, a3, label398
.p2align 2
label399:
	mv a5, a4
	sh2add a4, a3, s1
	lw t1, 0(a4)
	mv a4, a3
	lw t0, 0(t0)
	blt t1, t0, label533
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label399
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(t0)
	sw a4, 0(a2)
	sw a3, 0(t0)
	bgt s2, a1, label55
	j label45
.p2align 2
label114:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label545
.p2align 2
label120:
	mv s7, zero
.p2align 2
label15:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bgeu a1, a2, label128
	mv s6, a0
	j label15
label106:
	mv s6, a0
	mv s5, zero
	j label12
label545:
	mv s7, zero
	j label18
label12:
	addiw a0, s6, -48
	li a1, 10
	bltu a0, a1, label120
	j label545
label18:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label515
	mv a0, s7
	j label515
label51:
	sh2add a1, a2, s1
	lw a0, 0(a1)
	beq a0, zero, label296
	li a0, 2
	j label53
.p2align 2
label552:
	mv a0, a2
	bgt s2, a2, label67
	j label23
.p2align 2
label546:
	mv a0, s7
	sh2add a1, s4, s0
	sh2add a2, s4, s3
	sw s7, 0(a1)
	sh2add a1, s4, s1
	sw s7, 0(a2)
	addiw s4, s4, 1
	sw s7, 0(a1)
	bne s2, s4, label7
	j label100
label405:
	mv a0, a2
	bgt s2, a2, label67
	j label23
label296:
	addiw a2, a2, 1
	j label48
label153:
	li a3, -100
	mv a4, zero
	mv a1, zero
	j label33
label157:
	mv a1, zero
	li a4, -100
	j label25
label87:
	mv a0, zero
	j label5
label304:
	mv t0, a2
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(a2)
	sw a4, 0(a2)
	sw a3, 0(a2)
	j label43
label282:
	li a0, -123
	j label53
