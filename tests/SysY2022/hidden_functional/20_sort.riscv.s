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
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label81
	mv s0, zero
	li a2, 10
	bltu a1, a2, label94
	mv a0, zero
	mv a1, zero
	mv s2, zero
label485:
	mv s2, a0
	j label438
label81:
	mv s1, a0
	mv s2, zero
.p2align 2
label2:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label436
	mv s0, s2
.p2align 2
label436:
	li a2, 9
	bgtu a1, a2, label89
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label94
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label438
	j label485
label89:
	mv s1, a0
	mv s2, s0
	j label2
label94:
	mv s1, a0
	mv s2, zero
.p2align 2
label8:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s2, s1, a4
	bltu a1, a2, label103
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label438
	j label485
label103:
	mv s1, a0
	j label8
label438:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label438)
pcrel560:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel560)
pcrel561:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel561)
	bne s2, zero, label116
	mv a0, zero
	bgt s2, zero, label120
	addiw a0, s2, -4
pcrel562:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel562)
	j label504
label116:
	mv s4, zero
	j label64
label120:
	addiw a1, a0, 1
	mv a2, a1
	bgt s2, a1, label61
	mv a0, a1
	addiw a0, s2, -4
pcrel563:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel563)
	bgt s2, zero, label51
	j label504
.p2align 2
label61:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label62
	addiw a2, a2, 1
	bgt s2, a2, label61
	mv a0, a1
	bgt s2, a1, label120
	addiw a0, s2, -4
pcrel564:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel564)
	bgt s2, zero, label51
	j label504
.p2align 2
label62:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label61
	mv a0, a1
	bgt s2, a1, label120
	addiw a0, s2, -4
pcrel565:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel565)
	bgt s2, zero, label51
label504:
	li a3, -100
	mv a4, zero
	mv a2, zero
	j label19
.p2align 2
label64:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label338
	mv s5, zero
	li a2, 10
	bltu a1, a2, label351
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label64
	mv a0, zero
	bgt s2, zero, label120
	addiw a0, s2, -4
pcrel566:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel566)
	j label504
.p2align 2
label338:
	mv s6, a0
	mv s5, zero
.p2align 2
label66:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label450
	mv a2, s5
.p2align 2
label450:
	li a3, 9
	bgtu a1, a3, label346
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label351
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label452
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label64
	mv a0, zero
	bgt s2, zero, label120
	addiw a0, s2, -4
pcrel567:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel567)
	j label504
.p2align 2
label346:
	mv s6, a0
	mv s5, a2
	j label66
.p2align 2
label351:
	mv s6, a0
	mv s7, zero
	j label74
.p2align 2
label452:
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw a1, 0(a0)
	sh2add a0, s4, s1
	sw a1, 0(a2)
	addiw s4, s4, 1
	sw a1, 0(a0)
	bne s2, s4, label64
	mv a0, zero
	bgt s2, zero, label120
	addiw a0, s2, -4
pcrel568:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel568)
	j label504
.p2align 2
label74:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label374
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label452
	mv a1, s7
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw s7, 0(a0)
	sh2add a0, s4, s1
	sw s7, 0(a2)
	addiw s4, s4, 1
	sw s7, 0(a0)
	bne s2, s4, label64
	mv a0, zero
	bgt s2, zero, label120
	addiw a0, s2, -4
pcrel569:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel569)
	j label504
.p2align 2
label374:
	mv s6, a0
	j label74
label51:
	li a3, 4
	bgt s2, a3, label265
	mv a2, zero
	li a4, -100
	j label52
label265:
	li a4, -100
	mv a2, zero
	j label55
label17:
	mv a4, zero
	mv a2, zero
.p2align 2
label19:
	bge a3, a2, label22
	mv a2, zero
	bgt s2, zero, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
label52:
	sh2add t0, a2, s3
	addiw a2, a2, 1
	lw a3, 0(t0)
	sh2add a5, a3, a1
	max a3, a4, a3
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	ble s2, a2, label17
	mv a4, a3
	j label52
label55:
	sh2add a3, a2, s3
	addiw a2, a2, 4
	lw a5, 0(a3)
	max a4, a4, a5
	sh2add t0, a5, a1
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	lw t0, 4(a3)
	max a5, t0, a4
	sh2add t1, t0, a1
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
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
	bgt a0, a2, label55
	j label52
.p2align 2
label22:
	sh2add t0, a2, a1
	lw a5, 0(t0)
	bne a5, zero, label25
	addiw a2, a2, 1
	bge a3, a2, label22
	mv a2, zero
	bgt s2, zero, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
.p2align 2
label25:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a2, 0(t0)
	bne a5, zero, label25
	addiw a2, a2, 1
	bge a3, a2, label22
	mv a2, zero
	bgt s2, zero, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
label523:
	li a0, -123
	j label47
.p2align 2
label31:
	addiw a1, a2, 1
	bgt s2, a1, label32
	mv a5, a2
	sh2add a2, a2, s1
	sh2add a4, a5, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
.p2align 2
label32:
	addiw a4, a2, 5
	bgt s2, a4, label161
	mv a3, a1
	mv a4, a2
	sh2add a5, a1, s1
	sh2add t2, a2, s1
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(t2)
	blt t0, t1, label448
	mv a5, a2
	addiw a3, a1, 1
	bgt s2, a3, label214
	sh2add a2, a2, s1
	sh2add a4, a5, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
.p2align 2
label161:
	mv a5, a2
	mv a3, a1
	j label33
.p2align 2
label448:
	addiw a3, a3, 1
	bgt s2, a3, label214
	sh2add a2, a2, s1
	sh2add a4, a5, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
.p2align 2
label214:
	mv a4, a5
	sh2add a5, a3, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label448
	mv a5, a4
	addiw a3, a3, 1
	bgt s2, a3, label214
	sh2add a2, a2, s1
	sh2add a4, a4, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
label223:
	mv a0, zero
	j label49
label42:
	subw a2, a1, s2
	beq a2, zero, label523
label44:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	beq a0, zero, label45
	li a0, 1
	j label47
label45:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, zero, label242
	addiw a1, a1, 1
	j label42
label242:
	li a0, 2
label47:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label49:
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
	bne a2, zero, label49
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
.p2align 2
label33:
	sh2add a4, a3, s1
	sh2add t2, a5, s1
	lw t0, 0(a4)
	mv a4, a3
	lw t1, 0(t2)
	blt t0, t1, label440
	mv a4, a5
.p2align 2
label440:
	sh2add t0, a4, s1
	addiw a5, a3, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label442
	mv a5, a4
.p2align 2
label442:
	sh2add t0, a5, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label444
	mv a4, a5
.p2align 2
label444:
	sh2add t0, a4, s1
	addiw a5, a3, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label446
	mv a5, a4
.p2align 2
label446:
	addiw a3, a3, 4
	bgt a0, a3, label33
	mv a4, a5
	sh2add a5, a3, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label448
	mv a5, a4
	addiw a3, a3, 1
	bgt s2, a3, label214
	sh2add a2, a2, s1
	sh2add a4, a4, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label31
	bne s2, zero, label223
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label44
	j label523
