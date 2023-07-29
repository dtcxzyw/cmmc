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
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label82
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label87
	mv a0, zero
	mv a1, zero
	mv s2, zero
label486:
	mv s2, a0
	j label436
label82:
	mv s1, a0
	mv s0, zero
	j label74
label87:
	mv s1, a0
	mv s2, zero
.p2align 2
label5:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label96
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label436
	j label486
label96:
	mv s1, a0
	j label5
label436:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label436)
pcrel566:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel566)
pcrel567:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel567)
	bne s2, zero, label109
	mv a0, zero
	bgt s2, zero, label26
	addiw a0, s2, -4
pcrel568:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel568)
	j label505
label109:
	mv s4, zero
	j label10
.p2align 2
label74:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label452
	mv a1, s0
.p2align 2
label452:
	bne a2, zero, label378
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label87
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label436
	j label486
label378:
	mv s1, a0
	mv s0, a1
	j label74
label505:
	li a3, -100
	mv a4, zero
	mv a2, zero
	j label35
.p2align 2
label26:
	addiw a1, a0, 1
	mv a2, a1
	bgt s2, a1, label29
	mv a0, a1
	addiw a0, s2, -4
pcrel569:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel569)
	bgt s2, zero, label67
	j label505
.p2align 2
label29:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label30
	addiw a2, a2, 1
	bgt s2, a2, label29
	mv a0, a1
	bgt s2, a1, label26
	addiw a0, s2, -4
pcrel570:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel570)
	bgt s2, zero, label67
	j label505
.p2align 2
label30:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label29
	mv a0, a1
	bgt s2, a1, label26
	addiw a0, s2, -4
pcrel571:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel571)
	bgt s2, zero, label67
	j label505
label33:
	mv a4, zero
	mv a2, zero
.p2align 2
label35:
	bge a3, a2, label61
	mv a2, zero
	bgt s2, zero, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
label67:
	li a3, 4
	bgt s2, a3, label322
	mv a2, zero
	li a4, -100
	j label68
label322:
	li a4, -100
	mv a2, zero
	j label71
label68:
	sh2add t0, a2, s3
	addiw a2, a2, 1
	lw a3, 0(t0)
	sh2add a5, a3, a1
	max a3, a4, a3
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	ble s2, a2, label33
	mv a4, a3
	j label68
.p2align 2
label10:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label116
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label130
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
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label26
	addiw a0, s2, -4
pcrel572:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel572)
	j label505
.p2align 2
label116:
	mv s6, a0
	mv s5, zero
.p2align 2
label12:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label438
	mv a2, s5
.p2align 2
label438:
	bne a1, zero, label125
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label130
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label440
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label26
	addiw a0, s2, -4
pcrel573:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel573)
	j label505
.p2align 2
label125:
	mv s6, a0
	mv s5, a2
	j label12
.p2align 2
label130:
	mv s6, a0
	mv s7, zero
.p2align 2
label18:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label139
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label440
	mv a1, s7
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw s7, 0(a0)
	sh2add a0, s4, s1
	sw s7, 0(a2)
	addiw s4, s4, 1
	sw s7, 0(a0)
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label26
	addiw a0, s2, -4
pcrel574:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel574)
	j label505
.p2align 2
label139:
	mv s6, a0
	j label18
.p2align 2
label440:
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw a1, 0(a0)
	sh2add a0, s4, s1
	sw a1, 0(a2)
	addiw s4, s4, 1
	sw a1, 0(a0)
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label26
	addiw a0, s2, -4
pcrel575:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel575)
	j label505
.p2align 2
label61:
	sh2add t0, a2, a1
	lw a5, 0(t0)
	bne a5, zero, label64
	addiw a2, a2, 1
	bge a3, a2, label61
	mv a2, zero
	bgt s2, zero, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
.p2align 2
label64:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a2, 0(t0)
	bne a5, zero, label64
	addiw a2, a2, 1
	bge a3, a2, label61
	mv a2, zero
	bgt s2, zero, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
.p2align 2
label46:
	sh2add t1, a3, s1
	mv a5, a3
	sh2add t2, a4, s1
	lw t0, 0(t1)
	lw t1, 0(t2)
	blt t0, t1, label444
	mv a5, a4
.p2align 2
label444:
	sh2add t0, a5, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label446
	mv a4, a5
.p2align 2
label446:
	sh2add t0, a4, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label448
	mv a5, a4
.p2align 2
label448:
	sh2add t0, a5, s1
	addiw a4, a3, 3
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label450
	mv a4, a5
.p2align 2
label450:
	addiw a3, a3, 4
	bgt a0, a3, label46
	mv a5, a4
	sh2add a4, a3, s1
	sh2add t2, a5, s1
	lw t0, 0(a4)
	mv a4, a3
	lw t1, 0(t2)
	blt t0, t1, label442
.p2align 2
label476:
	mv a4, a5
	addiw a3, a3, 1
	bgt s2, a3, label215
	sh2add a2, a2, s1
	sh2add a4, a5, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
label264:
	mv a0, zero
.p2align 2
label59:
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
	bne a2, zero, label59
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
label530:
	li a0, -123
	j label57
.p2align 2
label41:
	addiw a1, a2, 1
	bgt s2, a1, label42
	mv a4, a2
	sh2add a2, a2, s1
	sh2add a4, a4, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
.p2align 2
label42:
	addiw a4, a2, 5
	bgt s2, a4, label202
	mv a3, a1
	mv a5, a2
	sh2add a4, a1, s1
	sh2add t2, a2, s1
	lw t0, 0(a4)
	mv a4, a1
	lw t1, 0(t2)
	blt t0, t1, label442
	mv a4, a2
	addiw a3, a1, 1
	bgt s2, a3, label215
	sh2add a2, a2, s1
	sh2add a4, a4, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
.p2align 2
label202:
	mv a4, a2
	mv a3, a1
	sh2add t1, a1, s1
	mv a5, a1
	sh2add t2, a2, s1
	lw t0, 0(t1)
	lw t1, 0(t2)
	blt t0, t1, label444
	mv a5, a2
	sh2add t0, a2, s1
	addiw a4, a1, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label446
	mv a4, a2
	sh2add t0, a2, s1
	addiw a5, a1, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label448
	mv a5, a2
	sh2add t0, a2, s1
	addiw a4, a1, 3
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label450
	mv a4, a2
	addiw a3, a1, 4
	bgt a0, a3, label46
	sh2add a4, a3, s1
	sh2add t2, a2, s1
	lw t0, 0(a4)
	mv a4, a3
	lw t1, 0(t2)
	bge t0, t1, label476
.p2align 2
label442:
	addiw a3, a3, 1
	bgt s2, a3, label215
	sh2add a2, a2, s1
	sh2add a4, a4, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
.p2align 2
label215:
	mv a5, a4
	sh2add a4, a3, s1
	sh2add t2, a5, s1
	lw t0, 0(a4)
	mv a4, a3
	lw t1, 0(t2)
	blt t0, t1, label442
	mv a4, a5
	addiw a3, a3, 1
	bgt s2, a3, label215
	sh2add a2, a2, s1
	sh2add a4, a5, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a2, a1
	sw a3, 0(a4)
	bgt s2, a1, label41
	bne s2, zero, label264
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label54
	j label530
label52:
	subw a2, a1, s2
	beq a2, zero, label530
label54:
	sh2add a0, a1, s3
	lw a2, 0(a0)
	beq a2, zero, label55
	li a0, 1
	j label57
label55:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, zero, label283
	addiw a1, a1, 1
	j label52
label283:
	li a0, 2
label57:
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
label71:
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
	lw t3, 0(t1)
	addi t2, t3, 1
	sw t2, 0(t1)
	lw t0, 8(a3)
	max a4, a5, t0
	sh2add a5, t0, a1
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
	lw a5, 12(a3)
	sh2add a3, a5, a1
	max a4, a4, a5
	lw a5, 0(a3)
	addi t0, a5, 1
	sw t0, 0(a3)
	bgt a0, a2, label71
	j label68
