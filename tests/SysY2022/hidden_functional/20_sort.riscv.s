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
	bgtu a1, a2, label83
	mv s0, zero
	li a2, 10
	bltu a1, a2, label96
	mv a0, zero
	mv a1, zero
	mv s2, zero
label485:
	mv s2, a0
	j label437
label83:
	mv s1, a0
	mv s2, zero
.p2align 2
label2:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label435
	mv s0, s2
.p2align 2
label435:
	li a2, 9
	bgtu a1, a2, label91
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label96
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label437
	j label485
label91:
	mv s1, a0
	mv s2, s0
	j label2
label96:
	mv s1, a0
	mv s2, zero
	j label76
label437:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label437)
pcrel567:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel567)
pcrel568:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel568)
	bne s2, zero, label109
	mv a0, zero
	bgt s2, zero, label155
	addiw a0, s2, -4
pcrel569:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel569)
	j label504
label109:
	mv s4, zero
	j label10
.p2align 2
label76:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label374
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label437
	j label485
label374:
	mv s1, a0
	j label76
label504:
	li a3, -100
	mv a4, zero
	mv a2, zero
	j label29
.p2align 2
label74:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label73
	mv a0, a1
	bgt s2, a1, label155
	addiw a0, s2, -4
pcrel570:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel570)
	bgt s2, zero, label63
	j label504
label155:
	addiw a1, a0, 1
	mv a2, a1
	bgt s2, a1, label73
	mv a0, a1
	addiw a0, s2, -4
pcrel571:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel571)
	bgt s2, zero, label63
	j label504
.p2align 2
label73:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label74
	addiw a2, a2, 1
	bgt s2, a2, label73
	mv a0, a1
	bgt s2, a1, label155
	addiw a0, s2, -4
pcrel572:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel572)
	bgt s2, zero, label63
	j label504
.p2align 2
label10:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label115
	mv s5, zero
	li a2, 10
	bltu a1, a2, label128
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
	bgt s2, zero, label155
	addiw a0, s2, -4
pcrel573:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel573)
	j label504
.p2align 2
label115:
	mv s6, a0
	mv s5, zero
.p2align 2
label12:
	jal getch
	li a3, 45
	li a2, 1
	addiw a1, a0, -48
	beq s6, a3, label439
	mv a2, s5
.p2align 2
label439:
	li a3, 9
	bgtu a1, a3, label123
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label128
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label441
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label155
	addiw a0, s2, -4
pcrel574:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel574)
	j label504
.p2align 2
label123:
	mv s6, a0
	mv s5, a2
	j label12
.p2align 2
label128:
	mv s6, a0
	mv s7, zero
.p2align 2
label18:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s6, a3
	bltu a1, a2, label137
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label441
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
	bgt s2, zero, label155
	addiw a0, s2, -4
pcrel575:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel575)
	j label504
.p2align 2
label137:
	mv s6, a0
	j label18
.p2align 2
label441:
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw a1, 0(a0)
	sh2add a0, s4, s1
	sw a1, 0(a2)
	addiw s4, s4, 1
	sw a1, 0(a0)
	bne s2, s4, label10
	mv a0, zero
	bgt s2, zero, label155
	addiw a0, s2, -4
pcrel576:
	auipc a2, %pcrel_hi(cnt)
	addi a1, a2, %pcrel_lo(pcrel576)
	ble s2, zero, label504
label63:
	li a3, 4
	bgt s2, a3, label298
	mv a2, zero
	li a4, -100
	j label64
label298:
	li a4, -100
	mv a2, zero
	j label67
label27:
	mv a4, zero
	mv a2, zero
.p2align 2
label29:
	bge a3, a2, label32
	mv a5, zero
	bgt s2, zero, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
label64:
	sh2add t0, a2, s3
	addiw a2, a2, 1
	lw a3, 0(t0)
	sh2add a5, a3, a1
	max a3, a4, a3
	lw t1, 0(a5)
	addi t0, t1, 1
	sw t0, 0(a5)
	ble s2, a2, label27
	mv a4, a3
	j label64
label67:
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
	bgt a0, a2, label67
	j label64
.p2align 2
label32:
	sh2add t0, a2, a1
	lw a5, 0(t0)
	bne a5, zero, label33
	addiw a2, a2, 1
	bge a3, a2, label32
	mv a5, zero
	bgt s2, zero, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label51:
	addiw a1, a5, 1
	sh2add a2, a5, s1
	bgt s2, a1, label54
	mv a4, a2
	lw a3, 0(a2)
	lw a5, 0(a2)
	sw a5, 0(a2)
	mv a5, a1
	sw a3, 0(a2)
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label54:
	addiw a3, a5, 5
	bgt s2, a3, label241
	mv a4, a2
	mv a3, a1
	sh2add t0, a1, s1
	lw t1, 0(t0)
	mv t0, a1
	lw a4, 0(a2)
	blt t1, a4, label443
	mv t0, a5
	sh2add a4, a5, s1
	addiw a3, a1, 1
	bgt s2, a3, label254
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a5, a1
	sw a3, 0(a4)
	bgt s2, a1, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label59:
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a3
	blt t0, t1, label445
	mv a4, a5
.p2align 2
label445:
	sh2add t0, a4, s1
	addiw a5, a3, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a5, a4
.p2align 2
label447:
	sh2add t0, a5, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label449
	mv a4, a5
.p2align 2
label449:
	sh2add t0, a4, s1
	addiw a5, a3, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label451
	mv a5, a4
.p2align 2
label451:
	sh2add a4, a5, s1
	addiw a3, a3, 4
	bgt a0, a3, label59
	sh2add t0, a3, s1
	lw t1, 0(t0)
	mv t0, a3
	lw a4, 0(a4)
	blt t1, a4, label443
.p2align 2
label480:
	mv t0, a5
	sh2add a4, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label254
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a5, a1
	sw a3, 0(a4)
	bgt s2, a1, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label241:
	mv a3, a1
	mv a4, a2
	sh2add t2, a1, s1
	lw t0, 0(t2)
	lw t1, 0(a2)
	mv a4, a1
	blt t0, t1, label445
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a1, 1
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label447
	mv a5, a4
	sh2add t0, a4, s1
	addiw a4, a1, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label449
	mv a4, a5
	sh2add t0, a5, s1
	addiw a5, a1, 3
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label451
	mv a5, a4
	sh2add a4, a4, s1
	addiw a3, a1, 4
	bgt a0, a3, label59
	sh2add t0, a3, s1
	lw t1, 0(t0)
	mv t0, a3
	lw a4, 0(a4)
	bge t1, a4, label480
.p2align 2
label443:
	sh2add a4, t0, s1
	addiw a3, a3, 1
	bgt s2, a3, label254
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a5, a1
	sw a3, 0(a4)
	bgt s2, a1, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label254:
	mv a5, t0
	sh2add t0, a3, s1
	lw t1, 0(t0)
	mv t0, a3
	lw a4, 0(a4)
	blt t1, a4, label443
	mv t0, a5
	sh2add a4, a5, s1
	addiw a3, a3, 1
	bgt s2, a3, label254
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	mv a5, a1
	sw a3, 0(a4)
	bgt s2, a1, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
	j label527
.p2align 2
label33:
	sh2add t0, a4, s3
	addiw a5, a5, -1
	addiw a4, a4, 1
	sw a2, 0(t0)
	bne a5, zero, label33
	addiw a2, a2, 1
	bge a3, a2, label32
	mv a5, zero
	bgt s2, zero, label51
	bne s2, zero, label189
	mv a1, zero
	subw a2, zero, s2
	beq a2, zero, label527
label48:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	beq a0, zero, label49
	li a0, 1
	j label46
label49:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	beq a0, zero, label225
	li a0, 2
	j label46
label189:
	mv a0, zero
.p2align 2
label42:
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
	bne a2, zero, label42
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label48
label527:
	li a0, -123
label46:
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
label44:
	subw a2, a1, s2
	bne a2, zero, label48
	j label527
label225:
	addiw a1, a1, 1
	j label44
