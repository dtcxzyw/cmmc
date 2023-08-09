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
	bleu a1, s4, label114
	mv s0, a0
	mv s1, zero
	j label2
.p2align 2
label468:
	bleu a2, s4, label122
	mv s0, a0
	mv s1, a1
.p2align 2
label2:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s0, s6, label468
	mv a1, s1
	j label468
label122:
	mv s0, a1
label5:
	addiw a2, a0, -48
	bgeu a2, s5, label127
	mv s1, a0
	mv s2, zero
	j label108
.p2align 2
label408:
	mv s1, a0
.p2align 2
label108:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s2, s1, a2
	bltu a1, s5, label408
label8:
	subw a0, zero, s2
	sd a0, 104(sp)
	mv a4, a0
	beq s0, zero, label469
label470:
	ld a4, 104(sp)
pcrel558:
	auipc a1, %pcrel_hi(a)
pcrel559:
	auipc a0, %pcrel_hi(b)
	addiw s3, a4, -4
	addi s2, a1, %pcrel_lo(pcrel558)
	addi s1, a0, %pcrel_lo(pcrel559)
pcrel560:
	auipc a1, %pcrel_hi(c)
	addi s0, a1, %pcrel_lo(pcrel560)
	beq a4, zero, label141
	mv s7, s2
	mv s8, zero
	j label11
.p2align 2
label182:
	subw a1, zero, s11
	mv a0, a1
	beq s9, zero, label500
.p2align 2
label474:
	sw a0, 0(s7)
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw a0, 0(a2)
	addiw s8, s8, 1
	sw a0, 0(a1)
	ld a4, 104(sp)
	beq a4, s8, label141
.p2align 2
label22:
	addi s7, s7, 4
.p2align 2
label11:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label147
	mv s9, a0
	mv s10, zero
	j label14
.p2align 2
label471:
	mv a1, s10
.p2align 2
label472:
	bleu a2, s4, label155
	mv s9, a0
	mv s10, a1
.p2align 2
label14:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s6, label472
	j label471
.p2align 2
label155:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s5, label499
.p2align 2
label161:
	mv s10, a0
	mv s11, zero
.p2align 2
label23:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s5, label182
	mv s10, a0
	j label23
label141:
	mv a0, s2
	mv a1, zero
label27:
	ld a4, 104(sp)
	bgt a4, a1, label98
	j label30
.p2align 2
label509:
	addi a0, a0, 4
	ld a4, 104(sp)
	ble a4, a1, label30
.p2align 2
label98:
	addiw a1, a1, 1
	ld a4, 104(sp)
	ble a4, a1, label382
	sh2add a2, a1, s2
	mv a3, a1
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label106
	addiw a3, a1, 1
	ld a4, 104(sp)
	bgt a4, a3, label105
	addi a0, a0, 4
	bgt a4, a1, label98
	j label30
.p2align 2
label106:
	sw a5, 0(a0)
	addiw a3, a3, 1
	sw a4, 0(a2)
	ld a4, 104(sp)
	ble a4, a3, label509
.p2align 2
label105:
	addi a2, a2, 4
	lw a4, 0(a0)
	lw a5, 0(a2)
	bgt a4, a5, label106
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label105
	addi a0, a0, 4
	bgt a4, a1, label98
label30:
	auipc a0, %pcrel_hi(cnt)
	ld a4, 104(sp)
	addi a2, a0, %pcrel_lo(label30)
	ble a4, zero, label192
	li a0, 4
	ble a4, a0, label32
	mv a0, s1
	li a3, -100
	mv a1, zero
	j label39
.p2align 2
label43:
	addi a0, a0, 16
.p2align 2
label39:
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
	bgt s3, a1, label43
	sh2add a0, a1, s1
	j label33
label37:
	addi a0, a0, 4
label33:
	lw a5, 0(a0)
	addiw a1, a1, 1
	max a3, a3, a5
	sh2add a4, a5, a2
	lw t0, 0(a4)
	addi t1, t0, 1
	sw t1, 0(a4)
	ld a4, 104(sp)
	bgt a4, a1, label37
	mv a1, a3
	mv a5, zero
	mv a0, zero
label47:
	bge a1, a0, label51
	j label247
.p2align 2
label57:
	addi a3, a3, 4
.p2align 2
label53:
	sw a0, 0(a3)
	addiw a4, a4, -1
	addiw a5, a5, 1
	bne a4, zero, label57
	addiw a0, a0, 1
	addi a2, a2, 4
	blt a1, a0, label247
.p2align 2
label51:
	lw a4, 0(a2)
	beq a4, zero, label252
	sh2add a3, a5, s1
	j label53
label247:
	mv a0, s0
	mv a5, zero
label61:
	ld a4, 104(sp)
	bgt a4, a5, label81
	j label64
.p2align 2
label326:
	lw a1, 0(a0)
	sh2add a3, a5, s0
	mv a5, a2
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a1, 0(a3)
	ld a4, 104(sp)
	ble a4, a2, label64
.p2align 2
label81:
	addiw a2, a5, 1
	ld a4, 104(sp)
	ble a4, a2, label310
	addiw a1, a5, 5
	ble a4, a1, label315
	sh2add a1, a2, s0
	mv a4, a5
	mv a3, a2
	lw t0, 0(a1)
	sh2add t2, a5, s0
	mv a5, a2
	lw t1, 0(t2)
	blt t0, t1, label478
	mv a5, a4
.p2align 2
label478:
	sh2add t1, a5, s0
	addiw t0, a3, 1
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label480
	mv a4, a5
.p2align 2
label480:
	sh2add t1, a4, s0
	addiw t0, a3, 2
	mv a5, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label482
	mv a5, a4
.p2align 2
label482:
	sh2add t1, a5, s0
	addiw t0, a3, 3
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label484
	mv a4, a5
.p2align 2
label484:
	addiw a3, a3, 4
	ble s3, a3, label93
.p2align 2
label94:
	addi a1, a1, 16
	sh2add t2, a4, s0
	mv a5, a3
	lw t0, 0(a1)
	lw t1, 0(t2)
	blt t0, t1, label478
	mv a5, a4
	sh2add t1, a4, s0
	addiw t0, a3, 1
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label480
	mv a4, a5
	sh2add t1, a5, s0
	addiw t0, a3, 2
	mv a5, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label482
	mv a5, a4
	sh2add t1, a4, s0
	addiw t0, a3, 3
	mv a4, t0
	sh2add t4, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	blt t2, t3, label484
	mv a4, a5
	addiw a3, a3, 4
	bgt s3, a3, label94
	sh2add a1, a3, s0
	mv a5, a3
	sh2add t2, a4, s0
	lw t0, 0(a1)
	lw t1, 0(t2)
	blt t0, t1, label476
.p2align 2
label503:
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label87
	lw a1, 0(a0)
	sh2add a3, a5, s0
	mv a5, a2
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a1, 0(a3)
	ld a4, 104(sp)
	bgt a4, a2, label81
	j label64
.p2align 2
label93:
	sh2add a1, a3, s0
	mv a5, a3
	sh2add t2, a4, s0
	lw t0, 0(a1)
	lw t1, 0(t2)
	bge t0, t1, label503
.p2align 2
label476:
	addiw a3, a3, 1
	ld a4, 104(sp)
	ble a4, a3, label326
.p2align 2
label87:
	addi a1, a1, 4
	mv a4, a5
	sh2add t2, a5, s0
	lw t0, 0(a1)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label476
	mv a5, a4
	addiw a3, a3, 1
	ld a4, 104(sp)
	bgt a4, a3, label87
	lw a1, 0(a0)
	sh2add a3, a5, s0
	mv a5, a2
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a1, 0(a3)
	ld a4, 104(sp)
	bgt a4, a2, label81
label64:
	ld a4, 104(sp)
	beq a4, zero, label270
	mv a0, s1
	mv a1, zero
.p2align 2
label76:
	lw a4, 0(a0)
	sh2add a5, a1, s2
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
	beq a2, zero, label270
	addi a0, a0, 4
	j label76
label315:
	sh2add a1, a2, s0
	mv a3, a2
	mv a4, a5
	lw t0, 0(a1)
	sh2add t2, a5, s0
	mv a5, a2
	lw t1, 0(t2)
	blt t0, t1, label476
	mv a5, a4
	j label476
label270:
	mv a0, zero
label65:
	ld a4, 104(sp)
	subw a1, a0, a4
	beq a1, zero, label275
	lw a1, 0(s1)
	bne a1, zero, label281
	lw a1, 0(s0)
	beq a1, zero, label285
	li a0, 2
	j label69
label147:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s5, label161
label499:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label474
	j label474
label281:
	li a0, 1
label69:
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
label500:
	mv a0, s11
	sh2add a2, s8, s1
	sh2add a1, s8, s0
	sw s11, 0(s7)
	addiw s8, s8, 1
	sw s11, 0(a2)
	sw s11, 0(a1)
	ld a4, 104(sp)
	bne a4, s8, label22
	j label141
label32:
	mv a0, s1
	mv a1, zero
	li a3, -100
	j label33
label192:
	li a1, -100
	mv a5, zero
	mv a0, zero
	j label47
label382:
	addi a0, a0, 4
	j label27
label275:
	li a0, -123
	j label69
label114:
	mv s0, zero
	j label5
label285:
	addiw a0, a0, 1
	addi s1, s1, 4
	addi s0, s0, 4
	j label65
label469:
	mv a4, s2
	sd s2, 104(sp)
	j label470
label127:
	mv s2, zero
	j label8
label310:
	lw a1, 0(a0)
	sh2add a3, a5, s0
	mv a5, a2
	lw a4, 0(a3)
	sw a4, 0(a0)
	addi a0, a0, 4
	sw a1, 0(a3)
	j label61
label252:
	addiw a0, a0, 1
	addi a2, a2, 4
	j label47
