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
.globl main
main:
.p2align 2
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
	beq s1, a3, label451
	mv a1, s0
.p2align 2
label451:
	li a3, 9
	bleu a2, a3, label373
	mv s1, a0
	mv s0, a1
	j label76
label2:
	addiw a0, s1, -48
	li a1, 10
	bltu a0, a1, label88
	j label87
label373:
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
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s2, s1, a4
	bgeu a1, a2, label365
	mv s1, a0
	j label73
label5:
	subw a1, zero, a0
	mv s2, a1
	bne s0, zero, label435
	j label434
label365:
	mv a0, s2
	j label5
label434:
	mv s2, a0
label435:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label435)
pcrel508:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel508)
pcrel509:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel509)
	beq s2, zero, label100
	mv s4, zero
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
label439:
	sh2add a2, s4, s0
	sh2add a1, s4, s3
	sw a0, 0(a2)
	sh2add a2, s4, s1
	sw a0, 0(a1)
	addiw s4, s4, 1
	sw a0, 0(a2)
	bne s2, s4, label7
	j label100
.p2align 2
label142:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label439
	mv a0, s7
	sh2add a2, s4, s0
	sh2add a1, s4, s3
	sw s7, 0(a2)
	sh2add a2, s4, s1
	sw s7, 0(a1)
	addiw s4, s4, 1
	sw s7, 0(a2)
	bne s2, s4, label7
	j label100
.p2align 2
label9:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label437
	mv a2, s5
.p2align 2
label437:
	li a3, 9
	bleu a1, a3, label114
	mv s6, a0
	mv s5, a2
	j label9
.p2align 2
label114:
	mv s6, a0
	mv s5, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label461
.p2align 2
label120:
	mv s7, zero
.p2align 2
label17:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bgeu a1, a2, label142
	mv s6, a0
	j label17
label100:
	mv a0, zero
	ble s2, zero, label23
.p2align 2
label67:
	addiw a2, a0, 1
	mv a1, a2
	ble s2, a2, label341
.p2align 2
label70:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label71
	addiw a1, a1, 1
	bgt s2, a1, label70
	j label472
.p2align 2
label71:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	bgt s2, a1, label70
	mv a0, a2
	bgt s2, a2, label67
label23:
	addiw a0, s2, -4
pcrel510:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel510)
	ble s2, zero, label153
	li a3, 4
	ble s2, a3, label289
	li a4, -100
	mv a3, zero
	j label64
label61:
	sh2add t0, a2, s3
	addiw a2, a2, 1
	lw a3, 0(t0)
	max a4, a4, a3
	sh2add a5, a3, a1
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	bgt s2, a2, label61
	mv a3, a4
	mv a4, zero
	mv a2, zero
	j label26
label64:
	sh2add a2, a3, s3
	addiw a3, a3, 4
	lw a5, 0(a2)
	max a4, a4, a5
	sh2add t0, a5, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw t0, 4(a2)
	max a5, t0, a4
	sh2add t1, t0, a1
	lw t3, 0(t1)
	addi t2, t3, 1
	sw t2, 0(t1)
	lw t0, 8(a2)
	max a4, a5, t0
	sh2add a5, t0, a1
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	lw a5, 12(a2)
	sh2add a2, a5, a1
	max a4, a4, a5
	lw a5, 0(a2)
	addi t0, a5, 1
	sw t0, 0(a2)
	bgt a0, a3, label64
	mv a2, a3
	j label61
.p2align 2
label472:
	mv a0, a2
	bgt s2, a2, label67
	j label23
label26:
	bge a3, a2, label54
label29:
	mv a5, zero
	bgt s2, zero, label42
	j label32
.p2align 2
label54:
	sh2add t0, a2, a1
	lw a5, 0(t0)
	bne a5, zero, label55
	addiw a2, a2, 1
	j label26
.p2align 2
label55:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a2, 0(t0)
	bne a5, zero, label55
	addiw a2, a2, 1
	bge a3, a2, label54
	j label29
label32:
	bne s2, zero, label165
label164:
	mv a2, zero
	j label35
label165:
	mv a0, zero
.p2align 2
label33:
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
	bne a1, zero, label33
	j label164
label35:
	subw a1, a2, s2
	beq a1, zero, label187
	sh2add a1, a2, s3
	lw a0, 0(a1)
	bne a0, zero, label195
	sh2add a1, a2, s1
	lw a0, 0(a1)
	bne a0, zero, label202
	j label201
.p2align 2
label42:
	addiw a1, a5, 1
	sh2add a2, a5, s1
	ble s2, a1, label209
	addiw a3, a5, 5
	ble s2, a3, label216
	mv a3, a1
	mv a4, a2
	sh2add t2, a1, s1
	lw t0, 0(t2)
	lw t1, 0(a2)
	mv a4, a1
	blt t0, t1, label443
	j label465
.p2align 2
label229:
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(t0)
	sw a4, 0(a2)
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
.p2align 2
label482:
	mv a5, a4
	j label449
.p2align 2
label50:
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a3
	blt t0, t1, label443
	mv a4, a5
.p2align 2
label443:
	sh2add t0, a4, s1
	addiw a5, a3, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label445
	mv a5, a4
.p2align 2
label445:
	sh2add t0, a5, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a4, a5
.p2align 2
label447:
	sh2add t0, a4, s1
	addiw a5, a3, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label449
	mv a5, a4
.p2align 2
label449:
	sh2add a4, a5, s1
	addiw a3, a3, 4
	bgt a0, a3, label50
	mv t0, a4
	sh2add t2, a3, s1
	mv a4, a3
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label441
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(t0)
	sw a4, 0(a2)
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
label216:
	mv t0, a2
	mv a3, a1
	sh2add t2, a1, s1
	mv a4, a1
	lw t1, 0(t2)
	lw t0, 0(a2)
	blt t1, t0, label441
	mv a4, a5
.p2align 2
label441:
	sh2add t0, a4, s1
	addiw a3, a3, 1
	ble s2, a3, label229
.p2align 2
label230:
	mv a5, a4
	sh2add t2, a3, s1
	mv a4, a3
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label441
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(t0)
	sw a4, 0(a2)
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
.p2align 2
label465:
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a3, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label445
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a3, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label449
	j label482
label209:
	mv t0, a2
	lw a3, 0(a2)
	mv a5, a1
	lw a4, 0(a2)
	sw a4, 0(a2)
	sw a3, 0(a2)
	bgt s2, a1, label42
	j label32
label106:
	mv s6, a0
	mv s5, zero
	j label12
label461:
	mv s7, zero
	j label15
label12:
	addiw a0, s6, -48
	li a1, 10
	bltu a0, a1, label120
	j label461
label15:
	subw a1, zero, s7
	mv a0, a1
	bne s5, zero, label439
	mv a0, s7
	j label439
label37:
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
label195:
	li a0, 1
	j label37
label153:
	li a3, -100
	mv a4, zero
	mv a2, zero
	j label26
label341:
	mv a0, a2
	bgt s2, a2, label67
	j label23
label202:
	li a0, 2
	j label37
label87:
	mv a0, zero
	j label5
label187:
	li a0, -123
	j label37
label201:
	addiw a2, a2, 1
	j label35
label289:
	mv a2, zero
	li a4, -100
	j label61
