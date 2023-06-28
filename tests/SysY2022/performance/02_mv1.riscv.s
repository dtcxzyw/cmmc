.data
.section .rodata
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -64
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel608:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel608)
pcrel609:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel609)
pcrel610:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel610)
	mv s4, zero
	bge zero, s1, label9
	ble s1, zero, label8
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label546
label9:
	ble s1, zero, label12
	mv s4, zero
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label552
label546:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
label498:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
label550:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label550
label8:
	addiw s4, s4, 1
	bge s4, s1, label9
	ble s1, zero, label8
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label498
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label48
	j label47
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label23
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	j label554
label22:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label23
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	j label503
label562:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	j label562
label163:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label37
	mv a3, zero
	bge zero, s1, label41
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, zero, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	j label487
label37:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label38
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label48
	j label47
label38:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
label565:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	j label539
label44:
	slliw a5, a1, 2
	add a5, s3, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
label539:
	addiw a3, a3, 1
	bge a3, s1, label41
	j label565
label23:
	ble s1, zero, label124
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label26
	j label34
label124:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label37
	mv a3, zero
	bge zero, s1, label41
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, zero, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
label487:
	addiw a3, a3, 1
	bge a3, s1, label41
	j label513
label52:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	j label570
label268:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label23
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	j label503
label513:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	j label539
label41:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label37
	mv a3, zero
	bge zero, s1, label41
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, zero, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label44
	addiw a3, a3, 1
	bge a3, s1, label41
	j label513
label554:
	addiw a3, a3, 1
	bge a3, s1, label22
label503:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	j label529
label20:
	slliw a5, a1, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
label529:
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label20
	j label529
label570:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	j label570
label26:
	addiw a2, a1, 16
	bge a2, s1, label28
	j label33
label28:
	addiw a2, a1, 16
	bge a2, s1, label31
	j label30
label31:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label163
	j label562
label30:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label31
	j label30
label33:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label28
	j label33
label34:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label26
	j label34
label47:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label48
	j label47
label48:
	addiw a2, a1, 16
	bge a2, s1, label50
	j label55
label50:
	addiw a2, a1, 16
	bge a2, s1, label52
label54:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label52
	j label54
label55:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label50
	j label55
label552:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
label553:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label553
