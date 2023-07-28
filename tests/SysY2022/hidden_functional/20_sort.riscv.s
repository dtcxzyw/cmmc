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
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label77
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label91
	mv a0, zero
	mv a1, zero
	mv s2, zero
label420:
	mv s2, a0
	j label374
label77:
	mv s1, a0
	mv s0, zero
.p2align 2
label2:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label372
	mv a1, s0
.p2align 2
label372:
	bne a2, zero, label86
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label91
	mv a0, zero
	mv a1, zero
	mv s2, zero
	bne s0, zero, label374
	j label420
label86:
	mv s1, a0
	mv s0, a1
	j label2
label91:
	mv s1, a0
	mv s2, zero
.p2align 2
label8:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s2, a2
	addi a3, a4, -48
	addw s2, s1, a3
	bltu a1, a2, label100
	mv a0, s2
	subw a1, zero, s2
	mv s2, a1
	bne s0, zero, label374
	j label420
label100:
	mv s1, a0
	j label8
label374:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(label374)
pcrel535:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel535)
pcrel536:
	auipc a0, %pcrel_hi(c)
	addi s1, a0, %pcrel_lo(pcrel536)
	bne s2, zero, label113
	mv a0, zero
	bgt s2, zero, label161
pcrel537:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel537)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
label113:
	mv s4, zero
	j label13
label514:
	li a0, -123
	j label56
label161:
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
.p2align 2
label67:
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label161
pcrel538:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel538)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label69:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bgt a3, a4, label70
	addiw a2, a2, 1
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label161
pcrel539:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel539)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label70:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	bgt s2, a2, label69
	mv a0, a1
	bgt s2, a1, label161
pcrel540:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel540)
	li a1, -100
	bgt s2, zero, label33
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label13:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label120
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label134
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
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label161
pcrel541:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel541)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label120:
	mv s6, a0
	mv s5, zero
.p2align 2
label15:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s6, a3, label376
	mv a2, s5
.p2align 2
label376:
	bne a1, zero, label129
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label134
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label378
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw zero, 0(a0)
	sh2add a0, s4, s1
	sw zero, 0(a2)
	addiw s4, s4, 1
	sw zero, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label161
pcrel542:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel542)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label129:
	mv s6, a0
	mv s5, a2
	j label15
.p2align 2
label134:
	mv s6, a0
	mv s7, zero
	j label23
.p2align 2
label378:
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw a1, 0(a0)
	sh2add a0, s4, s1
	sw a1, 0(a2)
	addiw s4, s4, 1
	sw a1, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label161
pcrel543:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel543)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label23:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s7, a2
	addi a4, a3, -48
	addw s7, s6, a4
	bltu a1, a2, label157
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label378
	mv a1, s7
	sh2add a0, s4, s0
	sh2add a2, s4, s3
	sw s7, 0(a0)
	sh2add a0, s4, s1
	sw s7, 0(a2)
	addiw s4, s4, 1
	sw s7, 0(a0)
	bne s2, s4, label13
	mv a0, zero
	bgt s2, zero, label161
pcrel544:
	auipc a1, %pcrel_hi(cnt)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel544)
	li a1, -100
	mv a3, zero
	bge a1, zero, label60
	mv a1, zero
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label157:
	mv s6, a0
	j label23
label251:
	mv a0, zero
	j label58
.p2align 2
label60:
	sh2add a5, a2, a0
	lw a4, 0(a5)
	bne a4, zero, label61
	addiw a2, a2, 1
	bge a1, a2, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label40:
	addiw a0, a1, 1
	bgt s2, a0, label189
	mv a2, a1
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bne s2, zero, label251
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label189:
	mv a3, a0
	mv a4, a1
	addiw a2, a0, 4
	bgt s2, a2, label46
	sh2add a2, a0, s1
	sh2add t1, a1, s1
	lw a5, 0(a2)
	mv a2, a0
	lw t0, 0(t1)
	blt a5, t0, label388
	mv a2, a1
	addiw a3, a0, 1
	bgt s2, a3, label248
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label251
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label46:
	sh2add a5, a3, s1
	sh2add t2, a4, s1
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	blt t0, t1, label380
	mv a5, a4
.p2align 2
label380:
	sh2add t0, a5, s1
	addiw a4, a3, 1
	sh2add t2, a4, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label382
	mv a4, a5
.p2align 2
label382:
	sh2add t0, a4, s1
	addiw a5, a3, 2
	sh2add t2, a5, s1
	lw t1, 0(t2)
	lw t0, 0(t0)
	blt t1, t0, label384
	mv a5, a4
.p2align 2
label384:
	sh2add a4, a5, s1
	addiw a3, a3, 3
	sh2add t2, a3, s1
	lw t0, 0(t2)
	lw t1, 0(a4)
	mv a4, a3
	blt t0, t1, label386
	mv a4, a5
.p2align 2
label386:
	mv a3, a2
	addiw a2, a2, 4
	bgt s2, a2, label46
	sh2add a2, a3, s1
	sh2add t1, a4, s1
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	blt a5, t0, label388
	mv a2, a4
	addiw a3, a3, 1
	bgt s2, a3, label248
	sh2add a1, a1, s1
	sh2add a2, a4, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label251
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label388:
	addiw a3, a3, 1
	bgt s2, a3, label248
	sh2add a1, a1, s1
	sh2add a2, a2, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label251
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label248:
	mv a4, a2
	sh2add a2, a3, s1
	sh2add t1, a4, s1
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	blt a5, t0, label388
	mv a2, a4
	addiw a3, a3, 1
	bgt s2, a3, label248
	sh2add a1, a1, s1
	sh2add a2, a4, s1
	lw a3, 0(a1)
	lw a4, 0(a2)
	sw a4, 0(a1)
	mv a1, a0
	sw a3, 0(a2)
	bgt s2, a0, label40
	bne s2, zero, label251
	mv a1, zero
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label30:
	bgt s2, a2, label33
	mv a3, zero
	mv a2, zero
	bge a1, zero, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label33:
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
	beq a2, zero, label514
label53:
	sh2add a0, a1, s3
	lw a2, 0(a0)
	beq a2, zero, label54
	li a0, 1
	j label56
label54:
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, zero, label270
	addiw a1, a1, 1
	j label51
label270:
	li a0, 2
	j label56
.p2align 2
label61:
	sh2add a5, a3, s3
	addiw a4, a4, -1
	addiw a3, a3, 1
	sw a2, 0(a5)
	bne a4, zero, label61
	addiw a2, a2, 1
	bge a1, a2, label60
	mv a1, zero
	bgt s2, zero, label40
	bne s2, zero, label251
	subw a2, zero, s2
	bne a2, zero, label53
	j label514
.p2align 2
label58:
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
	j label514
