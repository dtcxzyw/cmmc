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
	beq s0, s6, label484
	mv a1, s1
.p2align 2
label484:
	bleu a2, s4, label407
	mv s0, a0
	mv s1, a1
	j label108
label2:
	addiw a1, a0, -48
	bgeu a1, s5, label119
	mv s1, a0
	mv s2, zero
.p2align 2
label105:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s2, s1, a4
	bgeu a1, s5, label5
	mv s1, a0
	j label105
label407:
	mv s0, a1
	j label2
label5:
	subw a0, zero, s2
	mv s1, a0
	bne s0, zero, label468
	mv s1, s2
label468:
	auipc a0, %pcrel_hi(a)
pcrel554:
	auipc a1, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(label468)
	addi s2, a1, %pcrel_lo(pcrel554)
pcrel555:
	auipc a0, %pcrel_hi(c)
	addi s0, a0, %pcrel_lo(pcrel555)
	beq s1, zero, label132
	mv s7, s3
	mv s8, zero
.p2align 2
label8:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label139
	j label138
label469:
	mv a0, s11
.p2align 2
label470:
	sw a0, 0(s7)
	sh2add a1, s8, s2
	sh2add a2, s8, s0
	sw a0, 0(a1)
	addiw s8, s8, 1
	sw a0, 0(a2)
	beq s1, s8, label132
.p2align 2
label19:
	addi s7, s7, 4
	j label8
label132:
	mv a0, s3
	mv a1, zero
label24:
	ble s1, a1, label27
.p2align 2
label95:
	addiw a1, a1, 1
	ble s1, a1, label96
	sh2add a2, a1, s3
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	ble a4, a5, label383
.p2align 2
label101:
	sw a5, 0(a0)
	sw a4, 0(a2)
	addiw a3, a3, 1
	bgt s1, a3, label104
	addi a0, a0, 4
	bgt s1, a1, label95
	j label27
.p2align 2
label104:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label101
	addiw a3, a3, 1
	bgt s1, a3, label104
	addi a0, a0, 4
	bgt s1, a1, label95
	j label27
label138:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s5, label144
label143:
	mv s11, zero
	j label17
.p2align 2
label144:
	mv s11, zero
	j label14
label17:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label470
	j label469
.p2align 2
label173:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s5, label144
	j label143
.p2align 2
label14:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, s5, label152
	mv s10, a0
	j label14
.p2align 2
label152:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label470
	mv a0, s11
	sh2add a1, s8, s2
	sh2add a2, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a1)
	sw s11, 0(a2)
	bne s1, s8, label19
	j label132
label27:
	addiw a0, s1, -4
pcrel556:
	auipc a1, %pcrel_hi(cnt)
	addi a3, a1, %pcrel_lo(pcrel556)
	ble s1, zero, label184
	li a1, 4
	ble s1, a1, label29
	mv a1, s2
	li a4, -100
	mv a2, zero
.p2align 2
label36:
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
	ble a0, a2, label232
	addi a1, a1, 16
	j label36
label30:
	lw a5, 0(a1)
	addiw a2, a2, 1
	max a4, a4, a5
	sh2add t0, a5, a3
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	ble s1, a2, label199
	addi a1, a1, 4
	j label30
label232:
	sh2add a1, a2, s2
	j label30
label199:
	mv a2, a4
	mv t0, zero
	mv a1, zero
label44:
	bge a2, a1, label86
label48:
	mv a1, s0
	mv t0, zero
label49:
	bgt s1, t0, label52
	j label69
.p2align 2
label86:
	lw a5, 0(a3)
	beq a5, zero, label358
	sh2add a4, t0, s2
	j label88
.p2align 2
label366:
	addiw a1, a1, 1
	addi a3, a3, 4
	bge a2, a1, label86
	j label48
.p2align 2
label88:
	sw a1, 0(a4)
	addiw a5, a5, -1
	addiw t0, t0, 1
	beq a5, zero, label366
	addi a4, a4, 4
	j label88
.p2align 2
label52:
	addiw a2, t0, 1
	ble s1, a2, label248
	addiw a3, t0, 5
	ble s1, a3, label253
	sh2add a3, a2, s0
	mv a4, a2
	lw t1, 0(a3)
	sh2add t3, t0, s0
	mv a5, a2
	lw t2, 0(t3)
	blt t1, t2, label474
	j label473
.p2align 2
label307:
	lw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	mv t0, a2
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label52
label69:
	beq s1, zero, label70
	mv a0, s2
	mv a1, zero
	j label72
.p2align 2
label474:
	sh2add t2, a5, s0
	addiw t1, a4, 1
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label476
	mv t0, a5
.p2align 2
label476:
	sh2add t2, t0, s0
	addiw t1, a4, 2
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label478
	mv a5, t0
.p2align 2
label478:
	sh2add t2, a5, s0
	addiw t1, a4, 3
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label480
	mv t0, a5
.p2align 2
label480:
	addiw a4, a4, 4
	ble a0, a4, label293
.p2align 2
label59:
	addi a3, a3, 16
	sh2add t3, t0, s0
	mv a5, a4
	lw t1, 0(a3)
	lw t2, 0(t3)
	blt t1, t2, label474
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 1
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label476
	mv t0, a5
	sh2add t2, a5, s0
	addiw t1, a4, 2
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label478
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 3
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label480
	mv t0, a5
	addiw a4, a4, 4
	bgt a0, a4, label59
	sh2add a3, a4, s0
	mv a5, a4
	sh2add t3, t0, s0
	lw t1, 0(a3)
	lw t2, 0(t3)
	blt t1, t2, label482
	j label509
label253:
	sh2add a3, a2, s0
	mv a4, a2
	sh2add t3, t0, s0
	mv a5, a2
	lw t1, 0(a3)
	lw t2, 0(t3)
	blt t1, t2, label482
	mv a5, t0
.p2align 2
label482:
	addiw a4, a4, 1
	ble s1, a4, label307
.p2align 2
label65:
	addi a3, a3, 4
	mv t0, a5
	sh2add t3, a5, s0
	lw t1, 0(a3)
	mv a5, a4
	lw t2, 0(t3)
	blt t1, t2, label482
	mv a5, t0
	addiw a4, a4, 1
	bgt s1, a4, label65
	lw a3, 0(a1)
	sh2add a4, t0, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	mv t0, a2
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label52
	j label69
.p2align 2
label72:
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
	beq a2, zero, label70
	addi a0, a0, 4
	j label72
.p2align 2
label293:
	sh2add a3, a4, s0
	mv a5, a4
	sh2add t3, t0, s0
	lw t1, 0(a3)
	lw t2, 0(t3)
	blt t1, t2, label482
.p2align 2
label509:
	mv a5, t0
	addiw a4, a4, 1
	bgt s1, a4, label65
	lw a3, 0(a1)
	sh2add a4, t0, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	mv t0, a2
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label52
	j label69
label70:
	mv a0, zero
label77:
	subw a2, a0, s1
	beq a2, zero, label340
	lw a1, 0(s2)
	bne a1, zero, label346
	lw a1, 0(s0)
	bne a1, zero, label351
	addiw a0, a0, 1
	addi s2, s2, 4
	addi s0, s0, 4
	j label77
label96:
	addi a0, a0, 4
	j label24
label81:
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
label346:
	li a0, 1
	j label81
.p2align 2
label383:
	addiw a3, a3, 1
	bgt s1, a3, label104
	addi a0, a0, 4
	bgt s1, a1, label95
	j label27
label29:
	mv a1, s2
	mv a2, zero
	li a4, -100
	j label30
label351:
	li a0, 2
	j label81
label340:
	li a0, -123
	j label81
.p2align 2
label473:
	mv a5, t0
	j label474
label248:
	mv a5, t0
	sh2add a4, t0, s0
	lw a3, 0(a1)
	lw t0, 0(a4)
	sw t0, 0(a1)
	mv t0, a2
	addi a1, a1, 4
	sw a3, 0(a4)
	j label49
label184:
	li a2, -100
	mv t0, zero
	mv a1, zero
	j label44
.p2align 2
label139:
	mv s9, a0
	mv s10, zero
.p2align 2
label20:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label472
	mv a1, s10
.p2align 2
label472:
	bleu a2, s4, label173
	mv s9, a0
	mv s10, a1
	j label20
label114:
	mv s0, zero
	j label2
label119:
	mv s2, zero
	j label5
label358:
	addiw a1, a1, 1
	addi a3, a3, 4
	j label44
