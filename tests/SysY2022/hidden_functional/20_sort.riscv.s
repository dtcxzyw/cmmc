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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s6, 45
	li s5, 10
	li s4, 9
	addiw a1, a0, -48
	bleu a1, s4, label114
	mv s0, a0
	mv s1, zero
.p2align 2
label108:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label476
	mv a1, s1
.p2align 2
label476:
	bleu a2, s4, label400
	mv s0, a0
	mv s1, a1
	j label108
label2:
	addiw a1, a0, -48
	bltu a1, s5, label120
	j label119
label400:
	mv s0, a1
	j label2
label120:
	mv s1, a0
	mv s2, zero
.p2align 2
label5:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s2, s1, a3
	bgeu a1, s5, label8
	mv s1, a0
	j label5
label8:
	subw a0, zero, s2
	mv s1, a0
	bne s0, zero, label460
	mv s1, s2
label460:
	auipc a1, %pcrel_hi(a)
pcrel547:
	auipc a0, %pcrel_hi(b)
	addi s3, a1, %pcrel_lo(label460)
	addi s2, a0, %pcrel_lo(pcrel547)
pcrel548:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel548)
	beq s1, zero, label141
	mv s7, s3
	mv s8, zero
.p2align 2
label11:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label148
	j label147
.p2align 2
label161:
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label490
.p2align 2
label462:
	sw a0, 0(s7)
	sh2add a2, s8, s2
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	beq s1, s8, label141
.p2align 2
label22:
	addi s7, s7, 4
	j label11
label141:
	mv a0, s3
	mv a1, zero
	ble s1, zero, label38
.p2align 2
label30:
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s3
	ble s1, a1, label193
.p2align 2
label34:
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label35
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s1, a3, label34
	j label501
.p2align 2
label35:
	sw a5, 0(a0)
	sw a4, 0(a2)
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s1, a3, label34
	addi a0, a0, 4
	bgt s1, a1, label30
label38:
	addiw a0, s1, -4
pcrel549:
	auipc a1, %pcrel_hi(cnt)
	addi a3, a1, %pcrel_lo(pcrel549)
	ble s1, zero, label209
	li a1, 4
	ble s1, a1, label213
	mv a1, s2
	li a4, -100
	mv a2, zero
.p2align 2
label41:
	lw a5, 0(a1)
	addiw a2, a2, 4
	max t4, a4, a5
	sh2add t1, a5, a3
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	lw t0, 4(a1)
	sh2add t2, t0, a3
	lw t3, 0(t2)
	addi t1, t3, 1
	max t3, t0, t4
	sw t1, 0(t2)
	lw t1, 8(a1)
	sh2add t0, t1, a3
	max a5, t3, t1
	lw a4, 0(t0)
	addi t2, a4, 1
	sw t2, 0(t0)
	lw t1, 12(a1)
	sh2add t0, t1, a3
	max a4, a5, t1
	lw t2, 0(t0)
	addi a5, t2, 1
	sw a5, 0(t0)
	ble a0, a2, label245
	addi a1, a1, 16
	j label41
label245:
	sh2add a1, a2, s2
label47:
	lw a5, 0(a1)
	addiw a2, a2, 1
	max a4, a4, a5
	sh2add t0, a5, a3
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	ble s1, a2, label259
	addi a1, a1, 4
	j label47
label147:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s5, label153
label152:
	mv s11, zero
	j label20
.p2align 2
label153:
	mv s11, zero
	j label17
label20:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label462
	j label461
.p2align 2
label182:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s5, label153
	j label152
.p2align 2
label17:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s5, label161
	mv s10, a0
	j label17
label259:
	mv a2, a4
	mv t0, zero
	mv a1, zero
label55:
	bge a2, a1, label59
label264:
	mv a1, s0
	mv t0, zero
	j label69
.p2align 2
label59:
	lw a5, 0(a3)
	beq a5, zero, label269
	sh2add a4, t0, s2
	j label61
.p2align 2
label277:
	addiw a1, a1, 1
	addi a3, a3, 4
	bge a2, a1, label59
	j label264
label69:
	bgt s1, t0, label89
	j label72
.p2align 2
label61:
	sw a1, 0(a4)
	addiw a5, a5, -1
	addiw t0, t0, 1
	beq a5, zero, label277
	addi a4, a4, 4
	j label61
label72:
	beq s1, zero, label287
	mv a0, s2
	mv a1, zero
.p2align 2
label74:
	lw a5, 0(a0)
	sh2add a3, a1, s3
	lw a2, 0(a3)
	sh2add a3, a1, s0
	subw a4, a5, a2
	addiw a1, a1, 1
	sw a4, 0(a0)
	lw t1, 0(a3)
	subw t0, t1, a4
	subw a5, t0, a2
	subw a2, s1, a1
	sw a5, 0(a3)
	beq a2, zero, label287
	addi a0, a0, 4
	j label74
.p2align 2
label89:
	addiw a2, t0, 1
	ble s1, a2, label327
	addiw a3, t0, 5
	ble s1, a3, label335
	sh2add a3, a2, s0
	mv a4, a2
	mv t2, a1
	lw t1, 0(a3)
	mv a5, a2
	lw t3, 0(a1)
	blt t1, t3, label466
	j label465
.p2align 2
label391:
	lw a3, 0(a1)
	mv t0, a2
	lw a4, 0(t1)
	sw a4, 0(a1)
	addi a1, a1, 4
	sw a3, 0(t1)
	bgt s1, a2, label89
	j label72
.p2align 2
label465:
	mv a5, t0
.p2align 2
label466:
	sh2add t2, a5, s0
	addiw t1, a4, 1
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label468
	mv t0, a5
.p2align 2
label468:
	sh2add t2, t0, s0
	addiw t1, a4, 2
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label470
	mv a5, t0
.p2align 2
label470:
	sh2add t2, a5, s0
	addiw t1, a4, 3
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label472
	mv t0, a5
.p2align 2
label472:
	sh2add t1, t0, s0
	addiw a4, a4, 4
	bgt a0, a4, label100
	j label99
.p2align 2
label496:
	mv a4, t0
	sh2add t1, t0, s0
	addiw a5, a5, 1
	bgt s1, a5, label107
	lw a3, 0(a1)
	mv t0, a2
	lw a4, 0(t1)
	sw a4, 0(a1)
	addi a1, a1, 4
	sw a3, 0(t1)
	bgt s1, a2, label89
	j label72
.p2align 2
label100:
	addi a3, a3, 16
	mv t2, t1
	lw t1, 0(a3)
	mv a5, a4
	lw t3, 0(t2)
	blt t1, t3, label466
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 1
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label468
	mv t0, a5
	sh2add t2, a5, s0
	addiw t1, a4, 2
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label470
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 3
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label472
	mv t0, a5
	sh2add t1, a5, s0
	addiw a4, a4, 4
	bgt a0, a4, label100
	sh2add a3, a4, s0
	mv a5, a4
	lw t2, 0(a3)
	lw t3, 0(t1)
	blt t2, t3, label474
	j label496
.p2align 2
label99:
	sh2add a3, a4, s0
	mv a5, a4
	lw t2, 0(a3)
	lw t3, 0(t1)
	bge t2, t3, label496
.p2align 2
label474:
	sh2add t1, a4, s0
	addiw a5, a5, 1
	ble s1, a5, label391
.p2align 2
label107:
	addi a3, a3, 4
	mv t0, a4
	lw t2, 0(a3)
	mv a4, a5
	lw t3, 0(t1)
	blt t2, t3, label474
	mv a4, t0
	sh2add t1, t0, s0
	addiw a5, a5, 1
	bgt s1, a5, label107
	lw a3, 0(a1)
	mv t0, a2
	lw a4, 0(t1)
	sw a4, 0(a1)
	addi a1, a1, 4
	sw a3, 0(t1)
	bgt s1, a2, label89
	j label72
label335:
	sh2add a3, a2, s0
	mv t1, a1
	mv a5, a2
	lw t2, 0(a3)
	mv a4, a2
	lw t3, 0(a1)
	blt t2, t3, label474
	mv a4, t0
	j label474
label287:
	mv a0, zero
label79:
	subw a1, a0, s1
	bne a1, zero, label85
	j label309
label83:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label85:
	lw a1, 0(s2)
	beq a1, zero, label86
	li a0, 1
	j label83
label327:
	mv t1, a1
	lw a3, 0(a1)
	mv t0, a2
	lw a4, 0(a1)
	sw a4, 0(a1)
	addi a1, a1, 4
	sw a3, 0(t1)
	bgt s1, a2, label89
	j label72
label86:
	lw a1, 0(s0)
	bne a1, zero, label320
	addiw a0, a0, 1
	addi s2, s2, 4
	addi s0, s0, 4
	j label79
.p2align 2
label490:
	mv a0, s11
	sw s11, 0(s7)
	sh2add a2, s8, s2
	sh2add a1, s8, s0
	sw s11, 0(a2)
	addiw s8, s8, 1
	sw s11, 0(a1)
	bne s1, s8, label22
	j label141
.p2align 2
label501:
	addi a0, a0, 4
	bgt s1, a1, label30
	j label38
label193:
	addi a0, a0, 4
	bgt s1, a1, label30
	j label38
label309:
	li a0, -123
	j label83
label461:
	mv a0, s11
	j label462
label320:
	li a0, 2
	j label83
.p2align 2
label148:
	mv s9, a0
	mv s10, zero
.p2align 2
label23:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label464
	mv a1, s10
.p2align 2
label464:
	bleu a2, s4, label182
	mv s9, a0
	mv s10, a1
	j label23
label209:
	li a2, -100
	mv t0, zero
	mv a1, zero
	j label55
label119:
	mv s2, zero
	j label8
label269:
	addiw a1, a1, 1
	addi a3, a3, 4
	j label55
label213:
	mv a1, s2
	mv a2, zero
	li a4, -100
	j label47
label114:
	mv s0, zero
	j label2
