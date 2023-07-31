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
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label82
	mv s1, a0
	mv s2, zero
.p2align 2
label76:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label451
	mv s0, s2
.p2align 2
label451:
	li a2, 9
	bleu a1, a2, label373
	mv s1, a0
	mv s2, s0
	j label76
.p2align 2
label82:
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label461
label88:
	mv s1, a0
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
label435:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label435)
pcrel562:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel562)
pcrel563:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel563)
	bne s2, zero, label101
	j label100
.p2align 2
label365:
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label435
	j label480
.p2align 2
label373:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label88
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label435
	j label480
.p2align 2
label461:
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label435
label480:
	mv s2, a0
	j label435
.p2align 2
label100:
	mv a0, zero
	bgt s2, zero, label67
	addiw a0, s2, -4
pcrel564:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel564)
label492:
	li a3, -100
	mv a4, zero
	mv a2, zero
	j label26
.p2align 2
label67:
	addiw a1, a0, 1
	mv a2, a1
	ble s2, a1, label341
.p2align 2
label70:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label71
	addiw a2, a2, 1
	bgt s2, a2, label70
	mv a0, a1
	bgt s2, a1, label67
	addiw a0, s2, -4
pcrel565:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel565)
	bgt s2, zero, label60
	j label492
.p2align 2
label71:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label70
	mv a0, a1
	bgt s2, a1, label67
	addiw a0, s2, -4
pcrel566:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel566)
	ble s2, zero, label492
label60:
	li a3, 4
	bgt s2, a3, label290
	j label289
.p2align 2
label341:
	mv a0, a1
	bgt s2, a1, label67
	addiw a0, s2, -4
pcrel567:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel567)
	bgt s2, zero, label60
	j label492
label290:
	li a4, -100
	mv a2, zero
	j label64
label61:
	sh2add t0, a2, s3
	addiw a2, a2, 1
	lw a3, 0(t0)
	sh2add a5, a3, a1
	max a3, a4, a3
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	bgt s2, a2, label303
	j label302
label64:
	sh2add a3, a2, s3
	addiw a2, a2, 4
	lw a5, 0(a3)
	max a4, a4, a5
	sh2add t0, a5, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw t0, 4(a3)
	max a5, t0, a4
	sh2add t1, t0, a1
	lw t3, 0(t1)
	addi t2, t3, 1
	sw t2, 0(t1)
	lw t0, 8(a3)
	max a4, a5, t0
	sh2add a5, t0, a1
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	lw a5, 12(a3)
	sh2add a3, a5, a1
	max a4, a4, a5
	lw a5, 0(a3)
	addi t0, a5, 1
	sw t0, 0(a3)
	bgt a0, a2, label64
	j label61
.p2align 2
label26:
	bge a3, a2, label54
	j label29
label302:
	mv a4, zero
	mv a2, zero
	j label26
.p2align 2
label54:
	sh2add t0, a2, a1
	lw a5, 0(t0)
	bne a5, zero, label55
	addiw a2, a2, 1
	bge a3, a2, label54
	mv t0, zero
	bgt s2, zero, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
.p2align 2
label55:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a2, 0(t0)
	bne a5, zero, label55
	addiw a2, a2, 1
	bge a3, a2, label54
	mv t0, zero
	bgt s2, zero, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
label467:
	li a0, -123
	j label37
label165:
	mv a0, zero
	j label33
label37:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label42:
	addiw a1, t0, 1
	sh2add a2, t0, s1
	bgt s2, a1, label45
	j label209
.p2align 2
label216:
	mv a4, a2
	mv a3, a1
	sh2add t2, a1, s1
	mv a5, a1
	lw t1, 0(t2)
	lw a4, 0(a2)
	blt t1, a4, label441
	mv a5, t0
	sh2add a4, t0, s1
	addiw a3, a1, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	mv t0, a1
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bgt s2, a1, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
.p2align 2
label45:
	addiw a3, t0, 5
	ble s2, a3, label216
	mv a4, t0
	mv a3, a1
	mv a5, a2
	sh2add t2, a1, s1
	lw t0, 0(t2)
	lw t1, 0(a2)
	mv a5, a1
	blt t0, t1, label443
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a1, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label445
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a1, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a1, 3
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label449
	mv t0, a5
	sh2add a5, a5, s1
	addiw a3, a1, 4
	bgt a0, a3, label270
	mv a4, a5
	sh2add t2, a3, s1
	mv a5, a3
	lw t1, 0(t2)
	lw a4, 0(a4)
	bge t1, a4, label473
.p2align 2
label441:
	sh2add a4, a5, s1
	addiw a3, a3, 1
	ble s2, a3, label229
.p2align 2
label230:
	mv t0, a5
	sh2add t2, a3, s1
	mv a5, a3
	lw t1, 0(t2)
	lw a4, 0(a4)
	blt t1, a4, label441
	mv a5, t0
	sh2add a4, t0, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	mv t0, a1
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bgt s2, a1, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
.p2align 2
label443:
	sh2add t0, a5, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label445
	mv a4, a5
.p2align 2
label445:
	sh2add t0, a4, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a5, a4
.p2align 2
label447:
	sh2add t0, a5, s1
	addiw a4, a3, 3
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label449
	mv t0, a5
.p2align 2
label449:
	sh2add a5, t0, s1
	addiw a3, a3, 4
	ble a0, a3, label269
.p2align 2
label270:
	mv a4, t0
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a3
	blt t0, t1, label443
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label445
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a3, 3
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label449
	mv t0, a5
	sh2add a5, a5, s1
	addiw a3, a3, 4
	bgt a0, a3, label270
	mv a4, a5
	sh2add t2, a3, s1
	mv a5, a3
	lw t1, 0(t2)
	lw a4, 0(a4)
	blt t1, a4, label441
	j label473
.p2align 2
label269:
	mv a4, a5
	sh2add t2, a3, s1
	mv a5, a3
	lw t1, 0(t2)
	lw a4, 0(a4)
	blt t1, a4, label441
.p2align 2
label473:
	mv a5, t0
	sh2add a4, t0, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	mv t0, a1
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bgt s2, a1, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
label29:
	mv t0, zero
	bgt s2, zero, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
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
	subw a2, s2, a0
	bne a2, zero, label33
	mv a1, zero
label35:
	subw a2, a1, s2
	beq a2, zero, label467
label39:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	bne a0, zero, label195
	j label40
.p2align 2
label209:
	mv a4, a2
	lw a3, 0(a2)
	mv t0, a1
	lw a5, 0(a2)
	sw a5, 0(a2)
	sw a3, 0(a2)
	bgt s2, a1, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
.p2align 2
label229:
	lw a3, 0(a2)
	mv t0, a1
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bgt s2, a1, label42
	bne s2, zero, label165
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label39
	j label467
label40:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, zero, label202
	addiw a1, a1, 1
	j label35
label303:
	mv a4, a3
	j label61
label195:
	li a0, 1
	j label37
label202:
	li a0, 2
	j label37
label289:
	mv a2, zero
	li a4, -100
	j label61
label101:
	mv s4, zero
.p2align 2
label7:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label107
	j label106
.p2align 2
label114:
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label120
	mv a0, zero
	mv a2, zero
	mv a1, zero
	beq s5, zero, label483
.p2align 2
label439:
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw a1, 0(a2)
	sh2add a2, s4, s1
	sw a1, 0(a0)
	addiw s4, s4, 1
	sw a1, 0(a2)
	bne s2, s4, label7
	mv a0, zero
	bgt s2, zero, label67
	addiw a0, s2, -4
pcrel568:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel568)
	j label492
.p2align 2
label106:
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label463
.p2align 2
label120:
	mv s6, a0
	mv s7, zero
.p2align 2
label17:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s7, s6, a2
	bgeu a1, a3, label142
	mv s6, a0
	j label17
.p2align 2
label107:
	mv s6, a0
	mv s5, zero
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
label142:
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label439
	mv a1, s7
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw s7, 0(a2)
	sh2add a2, s4, s1
	sw s7, 0(a0)
	addiw s4, s4, 1
	sw s7, 0(a2)
	bne s2, s4, label7
	mv a0, zero
	bgt s2, zero, label67
	addiw a0, s2, -4
pcrel569:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel569)
	j label492
.p2align 2
label463:
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label439
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw zero, 0(a2)
	sh2add a2, s4, s1
	sw zero, 0(a0)
	addiw s4, s4, 1
	sw zero, 0(a2)
	bne s2, s4, label7
	mv a0, zero
	bgt s2, zero, label67
	addiw a0, s2, -4
pcrel570:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel570)
	j label492
.p2align 2
label483:
	mv a1, a0
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw a1, 0(a2)
	sh2add a2, s4, s1
	sw a1, 0(a0)
	addiw s4, s4, 1
	sw a1, 0(a2)
	bne s2, s4, label7
	mv a0, zero
	bgt s2, zero, label67
	addiw a0, s2, -4
pcrel571:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel571)
	j label492
