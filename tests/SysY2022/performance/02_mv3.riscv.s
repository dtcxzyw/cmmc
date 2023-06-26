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
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s3, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel595:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel595)
pcrel596:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel596)
pcrel597:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel597)
	mv s4, zero
	bge zero, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
label510:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label535
label55:
	addiw s4, s4, 1
	bge s4, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label510
label535:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
label560:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label560
label4:
	ble s1, zero, label7
	mv s4, zero
	slli a0, zero, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label539
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label43
	j label42
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label540
label12:
	ble s1, zero, label91
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label15
	j label23
label91:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label26
	mv a4, zero
	bge zero, s1, label33
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, zero, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	j label470
label20:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	j label542
label130:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label26
	mv a4, zero
	bge zero, s1, label33
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, zero, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	j label470
label26:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label27
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label43
	j label42
label27:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label470:
	addiw a4, a4, 1
	bge a4, s1, label33
label495:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	j label520
label32:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	j label520
label33:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s3, a3
	bge a1, s1, label26
	mv a4, zero
	bge zero, s1, label33
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, zero, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	addiw a4, a4, 1
	bge a4, s1, label33
	j label495
label43:
	addiw a2, a1, 16
	bge a2, s1, label45
	j label50
label520:
	addiw a4, a4, 1
	bge a4, s1, label33
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label32
	j label520
label540:
	addiw a4, a4, 1
	bge a4, s1, label39
label501:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
label526:
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label526
label37:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label526
label39:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s0, a3
	bge a1, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	j label501
label542:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	j label542
label15:
	addiw a2, a1, 16
	bge a2, s1, label18
label17:
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
	bge a2, s1, label18
	j label17
label18:
	addiw a2, a1, 16
	bge a2, s1, label20
label22:
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
	bge a2, s1, label20
	j label22
label45:
	addiw a2, a1, 16
	bge a2, s1, label47
	j label49
label47:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	j label556
label254:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	j label501
label556:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label254
	j label556
label23:
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
	bge a2, s1, label15
	j label23
label42:
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
	bge a2, s1, label43
	j label42
label50:
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
	bge a2, s1, label45
	j label50
label49:
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
	bge a2, s1, label47
	j label49
label539:
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label539
