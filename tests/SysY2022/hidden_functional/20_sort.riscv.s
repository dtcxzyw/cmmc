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
	bleu a1, s4, label114
	mv s0, a0
	mv s1, zero
.p2align 2
label2:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label468
	mv a1, s1
.p2align 2
label468:
	bleu a2, s4, label122
	mv s0, a0
	mv s1, a1
	j label2
label122:
	mv s0, a1
label5:
	addiw a2, a0, -48
	bgeu a2, s5, label127
	mv s1, a0
	mv s2, zero
.p2align 2
label8:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s2, s1, a4
	bgeu a1, s5, label11
	mv s1, a0
	j label8
label11:
	subw a0, zero, s2
	mv s1, a0
	bne s0, zero, label470
	mv s1, s2
label470:
	auipc a1, %pcrel_hi(a)
pcrel560:
	auipc a0, %pcrel_hi(b)
	addi s3, a1, %pcrel_lo(label470)
	addi s2, a0, %pcrel_lo(pcrel560)
pcrel561:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel561)
	beq s1, zero, label13
	mv s7, s3
	mv s8, zero
.p2align 2
label96:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label373
	mv s10, a0
	mv s9, zero
	j label102
.p2align 2
label373:
	mv s9, a0
	mv s10, zero
	j label99
label508:
	mv s11, zero
	j label108
label102:
	addiw a0, s10, -48
	bltu a0, s5, label386
	j label508
label108:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label484
	mv a0, s11
.p2align 2
label484:
	sw a0, 0(s7)
	sh2add a2, s8, s2
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	beq s1, s8, label13
.p2align 2
label110:
	addi s7, s7, 4
	j label96
.p2align 2
label99:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label482
	mv a1, s10
.p2align 2
label482:
	bleu a2, s4, label380
	mv s9, a0
	mv s10, a1
	j label99
.p2align 2
label380:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s5, label508
.p2align 2
label386:
	mv s11, zero
.p2align 2
label105:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, s5, label394
	mv s10, a0
	j label105
.p2align 2
label394:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label484
	mv a0, s11
	sh2add a2, s8, s2
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	bne s1, s8, label110
label13:
	mv a0, s3
	mv a1, zero
label14:
	ble s1, a1, label27
.p2align 2
label17:
	addiw a1, a1, 1
	ble s1, a1, label158
	sh2add a2, a1, s3
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label25
	j label22
.p2align 2
label24:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label25
	addiw a3, a3, 1
	bgt s1, a3, label24
	addi a0, a0, 4
	bgt s1, a1, label17
	j label27
.p2align 2
label25:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	bgt s1, a3, label24
	addi a0, a0, 4
	bgt s1, a1, label17
label27:
	addiw a0, s1, -4
pcrel562:
	auipc a1, %pcrel_hi(cnt)
	addi a3, a1, %pcrel_lo(pcrel562)
	ble s1, zero, label181
	li a2, 4
	ble s1, a2, label319
	mv a1, s2
	li a4, -100
	mv a2, zero
.p2align 2
label83:
	lw a5, 0(a1)
	addiw a2, a2, 4
	max t4, a4, a5
	sh2add t2, a5, a3
	lw t1, 0(t2)
	addi t3, t1, 1
	sw t3, 0(t2)
	lw t0, 4(a1)
	sh2add t1, t0, a3
	lw t2, 0(t1)
	addi t3, t2, 1
	max t2, t0, t4
	sw t3, 0(t1)
	lw t1, 8(a1)
	sh2add t0, t1, a3
	max a5, t2, t1
	lw a4, 0(t0)
	addi t2, a4, 1
	sw t2, 0(t0)
	lw t1, 12(a1)
	sh2add t0, t1, a3
	max a4, a5, t1
	lw t2, 0(t0)
	addi a5, t2, 1
	sw a5, 0(t0)
	ble a0, a2, label351
	addi a1, a1, 16
	j label83
.p2align 2
label22:
	addiw a3, a3, 1
	bgt s1, a3, label24
	addi a0, a0, 4
	bgt s1, a1, label17
	j label27
label181:
	li a2, -100
	mv t0, zero
	mv a1, zero
label30:
	bge a2, a1, label72
	j label34
label365:
	mv a2, a4
	mv t0, zero
	mv a1, zero
	j label30
.p2align 2
label72:
	lw a5, 0(a3)
	beq a5, zero, label304
	sh2add a4, t0, s2
.p2align 2
label74:
	sw a1, 0(a4)
	addiw a5, a5, -1
	addiw t0, t0, 1
	bne a5, zero, label78
	addiw a1, a1, 1
	addi a3, a3, 4
	bge a2, a1, label72
	j label34
.p2align 2
label78:
	addi a4, a4, 4
	j label74
label34:
	mv a1, s0
	mv a5, zero
	ble s1, zero, label55
.p2align 2
label38:
	addiw a2, a5, 1
	ble s1, a2, label39
	addiw a3, a5, 5
	ble s1, a3, label204
	sh2add a3, a2, s0
	mv a4, a2
	lw t1, 0(a3)
	sh2add t3, a5, s0
	mv t0, a2
	lw t2, 0(t3)
	blt t1, t2, label472
	j label471
.p2align 2
label258:
	lw a3, 0(a1)
	sh2add a4, a5, s0
	mv a5, a2
	lw t0, 0(a4)
	sw t0, 0(a1)
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label38
label55:
	beq s1, zero, label56
	mv a0, s2
	mv a1, zero
.p2align 2
label67:
	lw a5, 0(a0)
	sh2add a4, a1, s3
	lw a2, 0(a4)
	sh2add a4, a1, s0
	subw a3, a5, a2
	addiw a1, a1, 1
	sw a3, 0(a0)
	lw t0, 0(a4)
	subw a5, t0, a3
	subw t1, a5, a2
	subw a2, s1, a1
	sw t1, 0(a4)
	beq a2, zero, label56
	addi a0, a0, 4
	j label67
.p2align 2
label472:
	sh2add t2, t0, s0
	addiw t1, a4, 1
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label474
	mv a5, t0
.p2align 2
label474:
	sh2add t2, a5, s0
	addiw t1, a4, 2
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label476
	mv t0, a5
.p2align 2
label476:
	sh2add t2, t0, s0
	addiw t1, a4, 3
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label478
	mv a5, t0
.p2align 2
label478:
	addiw a4, a4, 4
	ble a0, a4, label47
.p2align 2
label48:
	addi a3, a3, 16
	sh2add t3, a5, s0
	mv t0, a4
	lw t1, 0(a3)
	lw t2, 0(t3)
	blt t1, t2, label472
	mv t0, a5
	sh2add t2, a5, s0
	addiw t1, a4, 1
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label474
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 2
	mv t0, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label476
	mv t0, a5
	sh2add t2, a5, s0
	addiw t1, a4, 3
	mv a5, t1
	sh2add t5, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	blt t3, t4, label478
	mv a5, t0
	addiw a4, a4, 4
	bgt a0, a4, label48
	sh2add a3, a4, s0
	sh2add t3, t0, s0
	lw t1, 0(a3)
	mv a5, a4
	lw t2, 0(t3)
	blt t1, t2, label480
	j label502
label204:
	sh2add a3, a2, s0
	mv a4, a2
	mv t0, a5
	sh2add t3, a5, s0
	lw t1, 0(a3)
	mv a5, a2
	lw t2, 0(t3)
	blt t1, t2, label480
	mv a5, t0
.p2align 2
label480:
	addiw a4, a4, 1
	ble s1, a4, label258
.p2align 2
label53:
	addi a3, a3, 4
	mv t0, a5
	sh2add t3, a5, s0
	lw t1, 0(a3)
	mv a5, a4
	lw t2, 0(t3)
	blt t1, t2, label480
	mv a5, t0
	addiw a4, a4, 1
	bgt s1, a4, label53
	lw a3, 0(a1)
	sh2add a4, t0, s0
	mv a5, a2
	lw t0, 0(a4)
	sw t0, 0(a1)
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label38
	j label55
.p2align 2
label47:
	sh2add a3, a4, s0
	mv t0, a5
	sh2add t3, a5, s0
	lw t1, 0(a3)
	mv a5, a4
	lw t2, 0(t3)
	blt t1, t2, label480
.p2align 2
label502:
	mv a5, t0
	addiw a4, a4, 1
	bgt s1, a4, label53
	lw a3, 0(a1)
	sh2add a4, t0, s0
	mv a5, a2
	lw t0, 0(a4)
	sw t0, 0(a1)
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label38
	j label55
label56:
	mv a0, zero
label57:
	subw a1, a0, s1
	beq a1, zero, label269
	lw a1, 0(s2)
	bne a1, zero, label275
	j label62
label39:
	lw a3, 0(a1)
	sh2add a4, a5, s0
	mv a5, a2
	lw t0, 0(a4)
	sw t0, 0(a1)
	addi a1, a1, 4
	sw a3, 0(a4)
	bgt s1, a2, label38
	j label55
label62:
	lw a1, 0(s0)
	beq a1, zero, label279
	li a0, 2
	j label64
label275:
	li a0, 1
label64:
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
	addi sp, sp, 104
	ret
label351:
	sh2add a1, a2, s2
label90:
	lw a5, 0(a1)
	addiw a2, a2, 1
	max a4, a4, a5
	sh2add t0, a5, a3
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	ble s1, a2, label365
	addi a1, a1, 4
	j label90
label279:
	addiw a0, a0, 1
	addi s2, s2, 4
	addi s0, s0, 4
	j label57
label269:
	li a0, -123
	j label64
label319:
	mv a1, s2
	mv a2, zero
	li a4, -100
	j label90
label114:
	mv s0, zero
	j label5
label304:
	addiw a1, a1, 1
	addi a3, a3, 4
	j label30
label158:
	addi a0, a0, 4
	j label14
label127:
	mv s2, zero
	j label11
.p2align 2
label471:
	mv t0, a5
	j label472
