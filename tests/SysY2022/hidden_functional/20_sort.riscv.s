.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
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
	bne a1, zero, label77
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label91
	mv a0, zero
	subw a1, zero, zero
	mv s2, a1
label398:
	mv s2, a0
	j label352
label77:
	mv s1, a0
	mv s0, zero
label2:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label350
	mv a1, s0
label350:
.p2align 2
	bne a2, zero, label86
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label91
	mv a0, zero
	subw a1, zero, zero
	mv s2, a1
	bne s0, zero, label352
	j label398
label86:
	mv s1, a0
	mv s0, a1
	j label2
label91:
	mv s1, a0
	mv s2, zero
label8:
.p2align 2
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s2, s1, a2
	bltu a1, a3, label102
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label352
	j label398
label102:
	mv s1, a0
	j label8
label352:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label352)
pcrel513:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel513)
pcrel514:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel514)
	bne s2, zero, label115
	mv a0, zero
	bgt s2, zero, label165
pcrel515:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel515)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label115:
	mv s4, zero
	j label13
label492:
	li a0, -123
	j label56
label165:
	addiw a1, a0, 1
	mv a2, a1
	j label67
label56:
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
label67:
.p2align 2
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label165
pcrel516:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel516)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label69:
.p2align 2
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label70
	addiw a2, a2, 1
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label165
pcrel517:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel517)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label70:
.p2align 2
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label165
pcrel518:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel518)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label13:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label122
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label136
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	mv a1, zero
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw zero, 0(a2)
	sh2add a2, s4, s1
	sw zero, 0(a0)
	addiw s4, s4, 1
	sw zero, 0(a2)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label165
pcrel519:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel519)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label122:
.p2align 2
	mv s6, a0
	mv s5, zero
label15:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s6, a3, label354
	mv a2, s5
label354:
.p2align 2
	bne a1, zero, label131
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label136
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s5, zero, label356
	mv a1, zero
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw zero, 0(a2)
	sh2add a2, s4, s1
	sw zero, 0(a0)
	addiw s4, s4, 1
	sw zero, 0(a2)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label165
pcrel520:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel520)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label131:
.p2align 2
	mv s6, a0
	mv s5, a2
	j label15
label136:
.p2align 2
	mv s6, a0
	mv s7, zero
	j label23
label356:
.p2align 2
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw a1, 0(a2)
	sh2add a2, s4, s1
	sw a1, 0(a0)
	addiw s4, s4, 1
	sw a1, 0(a2)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label165
pcrel521:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel521)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label23:
.p2align 2
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s7, s6, a4
	bltu a1, a2, label161
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label356
	mv a1, s7
	sh2add a2, s4, s0
	sh2add a0, s4, s3
	sw s7, 0(a2)
	sh2add a2, s4, s1
	sw s7, 0(a0)
	addiw s4, s4, 1
	sw s7, 0(a2)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label165
pcrel522:
.p2align 2
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel522)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label161:
.p2align 2
	mv s6, a0
	j label23
label255:
	mv a0, zero
	j label58
label60:
.p2align 2
	sh2add a5, a2, a0
	lw a4, 0(a5)
	bne a4, zero, label61
	addiw a2, a2, 1
	bge a1, a2, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label40:
.p2align 2
	addiw a0, a1, 1
	bgt s2, a0, label193
	mv a2, a1
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bne s2, zero, label255
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label193:
.p2align 2
	mv a3, a0
	mv a4, a1
	addiw a2, a0, 4
	bgt s2, a2, label46
	sh2add a2, a0, s1
	sh2add t1, a1, s1
	lw a5, 0(a2)
	mv a2, a0
	lw t0, 0(t1)
	blt a5, t0, label366
	mv a2, a1
	addiw a3, a0, 1
	bgt s2, a3, label252
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label255
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label46:
.p2align 2
	sh2add a5, a3, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label358
	mv a5, a4
label358:
.p2align 2
	sh2add t0, a5, s1
	addiw a4, a3, 1
	sh2add t3, a4, s1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mv t0, a4
	blt t1, t2, label360
	mv t0, a5
label360:
.p2align 2
	sh2add a5, t0, s1
	addiw a4, a3, 2
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw a5, 0(a5)
	blt t1, a5, label362
	mv a4, t0
label362:
.p2align 2
	sh2add a5, a4, s1
	addiw a3, a3, 3
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a5)
	mv a5, a3
	blt t0, t1, label364
	mv a5, a4
label364:
.p2align 2
	mv a3, a2
	mv a4, a5
	addiw a2, a2, 4
	bgt s2, a2, label46
	sh2add a2, a3, s1
	sh2add t1, a5, s1
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	blt a5, t0, label366
	mv a2, a4
	addiw a3, a3, 1
	bgt s2, a3, label252
	sh2add a1, a1, s1
	sh2add a2, a4, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label255
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label366:
.p2align 2
	addiw a3, a3, 1
	bgt s2, a3, label252
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label255
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label252:
.p2align 2
	mv a4, a2
	sh2add a2, a3, s1
	sh2add t1, a4, s1
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	blt a5, t0, label366
	mv a2, a4
	addiw a3, a3, 1
	bgt s2, a3, label252
	sh2add a1, a1, s1
	sh2add a2, a4, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label255
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label30:
.p2align 2
	bgt s2, a2, label33
	mv a3, zero
	mv a2, zero
	bge a1, zero, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label33:
.p2align 2
	sh2add a5, a2, s3
	addiw a2, a2, 1
	lw a3, 0(a5)
	max a1, a1, a3
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	j label30
label51:
	subw a2, a1, s2
	beq a2, zero, label492
label53:
	sh2add a0, a1, s3
	lw a2, 0(a0)
	beq a2, zero, label54
	li a0, 1
	j label56
label54:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, zero, label274
	addiw a1, a1, 1
	j label51
label274:
	li a0, 2
	j label56
label61:
.p2align 2
	sh2add a5, a3, s3
	addiw a4, a4, -1
	addiw a3, a3, 1
	sw a2, 0(a5)
	bne a4, zero, label61
	addiw a2, a2, 1
	bge a1, a2, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label255
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
label58:
.p2align 2
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
	bne a2, zero, label58
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label492
