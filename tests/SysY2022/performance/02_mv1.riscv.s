.data
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
pcrel615:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel615)
pcrel616:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel616)
pcrel617:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel617)
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
	j label550
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
	j label556
label550:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
label500:
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
label554:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label554
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
	j label500
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label18
	j label17
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label28
	mv a4, zero
	bge zero, s1, label55
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, zero, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	j label491
label18:
	addiw a2, a1, 16
	bge a2, s1, label20
	j label25
label36:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	j label563
label217:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label42
	mv a4, zero
	bge zero, s1, label49
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, zero, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	j label485
label42:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label43
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label18
	j label17
label43:
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
label539:
	addiw a4, a4, 1
	bge a4, s1, label49
	j label566
label48:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, a5, t1
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	j label539
label49:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s3, a3
	bge a1, s1, label42
	mv a4, zero
	bge zero, s1, label49
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, zero, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
label512:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	j label539
label566:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	j label539
label28:
	ble s1, zero, label178
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label31
	j label39
label178:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label42
	mv a4, zero
	bge zero, s1, label49
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, zero, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	addiw a4, a4, 1
	bge a4, s1, label49
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label48
	j label485
label39:
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
	j label39
label485:
	addiw a4, a4, 1
	bge a4, s1, label49
	j label512
label545:
	addiw a4, a4, 1
	bge a4, s1, label55
	j label572
label53:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, a5, t1
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	j label545
label22:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	j label559
label133:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label28
	mv a4, zero
	bge zero, s1, label55
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, zero, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
label491:
	addiw a4, a4, 1
	bge a4, s1, label55
	j label518
label55:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s0, a3
	bge a1, s1, label28
	mv a4, zero
	bge zero, s1, label55
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, zero, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	addiw a4, a4, 1
	bge a4, s1, label55
label518:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	j label545
label572:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label53
	j label545
label563:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label217
	j label563
label559:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label133
	j label559
label31:
	addiw a2, a1, 16
	bge a2, s1, label34
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
	bge a2, s1, label34
	j label33
label34:
	addiw a2, a1, 16
	bge a2, s1, label36
	j label38
label20:
	addiw a2, a1, 16
	bge a2, s1, label22
	j label24
label38:
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
	bge a2, s1, label36
	j label38
label17:
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
	bge a2, s1, label18
	j label17
label25:
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
	bge a2, s1, label20
	j label25
label24:
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
	bge a2, s1, label22
	j label24
label556:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
label557:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label557
