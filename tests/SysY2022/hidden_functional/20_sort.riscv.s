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
	addi sp, sp, -96
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
	jal getch
	li s5, 10
	li s6, 45
	li s4, 9
	addiw a1, a0, -48
	bleu a1, s4, label82
	mv s1, a0
	mv s0, zero
.p2align 2
label76:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s1, s6, label456
	mv a1, s0
.p2align 2
label456:
	bleu a2, s4, label373
	mv s1, a0
	mv s0, a1
	j label76
label2:
	addiw a1, a0, -48
	bltu a1, s5, label88
	j label87
label373:
	mv s0, a1
	j label2
label82:
	mv s0, zero
	j label2
label88:
	mv s1, a0
	mv s2, zero
.p2align 2
label73:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s2, s1, a3
	bgeu a1, s5, label365
	mv s1, a0
	j label73
label5:
	subw a1, zero, a0
	mv s2, a1
	bne s0, zero, label440
	j label439
label365:
	mv a0, s2
	j label5
label439:
	mv s2, a0
label440:
	auipc a0, %pcrel_hi(a)
pcrel518:
	auipc a1, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(label440)
	addi s3, a1, %pcrel_lo(pcrel518)
pcrel519:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel519)
	beq s2, zero, label100
	mv s7, zero
	j label7
label100:
	mv a0, zero
	j label21
.p2align 2
label7:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label107
	mv s8, zero
	j label12
.p2align 2
label107:
	mv s9, a0
	mv s8, zero
	j label9
label469:
	mv s10, zero
	j label15
label12:
	addiw a1, a0, -48
	bltu a1, s5, label120
	j label469
label15:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label444
	mv a0, s10
.p2align 2
label444:
	sh2add a1, s7, s0
	sh2add a2, s7, s3
	sw a0, 0(a1)
	sh2add a1, s7, s1
	sw a0, 0(a2)
	addiw s7, s7, 1
	sw a0, 0(a1)
	bne s2, s7, label7
	j label100
label21:
	bgt s2, a0, label67
	j label23
.p2align 2
label114:
	mv s8, a1
	addiw a1, a0, -48
	bgeu a1, s5, label469
.p2align 2
label120:
	mv s9, a0
	mv s10, zero
.p2align 2
label17:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s9, a2
	bgeu a1, s5, label142
	mv s9, a0
	j label17
.p2align 2
label9:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label442
	mv a1, s8
.p2align 2
label442:
	bleu a2, s4, label114
	mv s9, a0
	mv s8, a1
	j label9
label23:
	addiw a0, s2, -4
pcrel520:
	auipc a1, %pcrel_hi(cnt)
	addi a2, a1, %pcrel_lo(pcrel520)
	bgt s2, zero, label60
	j label153
label26:
	blt a3, a1, label29
.p2align 2
label54:
	sh2add t0, a1, a2
	lw a5, 0(t0)
	beq a5, zero, label276
.p2align 2
label55:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a1, 0(t0)
	bne a5, zero, label55
	addiw a1, a1, 1
	bge a3, a1, label54
	j label29
label60:
	li a3, 4
	ble s2, a3, label289
	li a4, -100
	mv a1, zero
	j label64
label61:
	sh2add t0, a1, s3
	addiw a1, a1, 1
	lw a3, 0(t0)
	max a4, a4, a3
	sh2add a5, a3, a2
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	bgt s2, a1, label61
	mv a3, a4
	mv a4, zero
	mv a1, zero
	j label26
.p2align 2
label64:
	sh2add a3, a1, s3
	addiw a1, a1, 4
	lw a5, 0(a3)
	max a4, a4, a5
	sh2add t0, a5, a2
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	lw t0, 4(a3)
	max a5, t0, a4
	sh2add t1, t0, a2
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	lw t0, 8(a3)
	max a4, a5, t0
	sh2add a5, t0, a2
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw a5, 12(a3)
	sh2add a3, a5, a2
	max a4, a4, a5
	lw a5, 0(a3)
	addi t0, a5, 1
	sw t0, 0(a3)
	bgt a0, a1, label64
	j label61
.p2align 2
label67:
	addiw a2, a0, 1
	mv a1, a2
	bgt s2, a2, label70
	j label341
.p2align 2
label480:
	mv a0, a2
	bgt s2, a2, label67
	j label23
.p2align 2
label70:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label71
	addiw a1, a1, 1
	bgt s2, a1, label70
	j label480
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
	j label23
.p2align 2
label142:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label444
	mv a0, s10
	sh2add a1, s7, s0
	sh2add a2, s7, s3
	sw s10, 0(a1)
	sh2add a1, s7, s1
	sw s10, 0(a2)
	addiw s7, s7, 1
	sw s10, 0(a1)
	bne s2, s7, label7
	j label100
label29:
	mv a4, zero
	bgt s2, zero, label42
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
	bne a1, zero, label39
	j label187
label37:
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
	addi sp, sp, 96
	ret
label39:
	sh2add a1, a2, s3
	lw a0, 0(a1)
	beq a0, zero, label40
	li a0, 1
	j label37
.p2align 2
label42:
	addiw a1, a4, 1
	sh2add a2, a4, s1
	ble s2, a1, label209
	addiw a3, a4, 5
	ble s2, a3, label216
	mv a3, a1
	mv a5, a2
	sh2add t2, a1, s1
	lw t0, 0(t2)
	lw t1, 0(a2)
	mv a5, a1
	blt t0, t1, label448
	j label473
.p2align 2
label229:
	lw a3, 0(a2)
	lw a4, 0(t0)
	sw a4, 0(a2)
	mv a4, a1
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
.p2align 2
label50:
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a3
	blt t0, t1, label448
	mv a5, a4
.p2align 2
label448:
	sh2add t0, a5, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label450
	mv a4, a5
.p2align 2
label450:
	sh2add t0, a4, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label452
	mv a5, a4
.p2align 2
label452:
	sh2add t0, a5, s1
	addiw a4, a3, 3
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label454
	mv a4, a5
.p2align 2
label454:
	sh2add a5, a4, s1
	addiw a3, a3, 4
	bgt a0, a3, label50
.p2align 2
label269:
	mv t0, a5
	mv a5, a4
	sh2add a4, a3, s1
	lw t1, 0(a4)
	mv a4, a3
	lw t0, 0(t0)
	blt t1, t0, label446
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	lw a4, 0(t0)
	sw a4, 0(a2)
	mv a4, a1
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
label216:
	mv t0, a2
	mv a3, a1
	mv a5, a4
	sh2add a4, a1, s1
	lw t1, 0(a4)
	mv a4, a1
	lw t0, 0(a2)
	blt t1, t0, label446
	mv a4, a5
.p2align 2
label446:
	sh2add t0, a4, s1
	addiw a3, a3, 1
	ble s2, a3, label229
.p2align 2
label230:
	mv a5, a4
	sh2add a4, a3, s1
	lw t1, 0(a4)
	mv a4, a3
	lw t0, 0(t0)
	blt t1, t0, label446
	mv a4, a5
	sh2add t0, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label230
	lw a3, 0(a2)
	lw a4, 0(t0)
	sw a4, 0(a2)
	mv a4, a1
	sw a3, 0(t0)
	bgt s2, a1, label42
	j label32
.p2align 2
label473:
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label450
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label452
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a3, 3
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label454
	mv a4, a5
	sh2add a5, a5, s1
	addiw a3, a3, 4
	bgt a0, a3, label50
	j label269
label209:
	mv t0, a2
	lw a3, 0(a2)
	lw a4, 0(a2)
	sw a4, 0(a2)
	mv a4, a1
	sw a3, 0(a2)
	bgt s2, a1, label42
	j label32
label40:
	sh2add a1, a2, s1
	lw a0, 0(a1)
	bne a0, zero, label202
	addiw a2, a2, 1
	j label35
label153:
	li a3, -100
	mv a4, zero
	mv a1, zero
	j label26
label341:
	mv a0, a2
	bgt s2, a2, label67
	j label23
label202:
	li a0, 2
	j label37
label289:
	mv a1, zero
	li a4, -100
	j label61
label187:
	li a0, -123
	j label37
label87:
	mv a0, zero
	j label5
label276:
	addiw a1, a1, 1
	j label26
