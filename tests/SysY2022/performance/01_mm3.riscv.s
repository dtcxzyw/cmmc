.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel586:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel586)
pcrel587:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel587)
	ble s0, zero, label92
	j label407
label92:
	mv s3, zero
	ble s0, zero, label16
	j label442
label16:
	li a0, 65
	jal _sysy_starttime
pcrel588:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel588)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label130
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label27
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
label529:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label24
label130:
	mv a3, zero
	mv a4, zero
	mv a2, s1
	ble s0, zero, label159
	mv a5, zero
	mv t1, s2
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label35
	li a4, 1
	ble s0, a4, label42
	slliw a5, a4, 12
	add t1, s2, a5
	mv t0, t1
	lw a5, 0(t1)
	bne a5, zero, label35
	j label421
label24:
	addiw a4, a5, 4
	ble s0, a4, label27
	j label529
label159:
	mv a2, zero
	ble s0, zero, label231
	mv a4, zero
	mv a5, zero
	mv a3, s1
	li a4, 4
	ble s0, a4, label80
	mv a5, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label80
	j label560
label421:
	addiw a4, a4, 1
	ble s0, a4, label42
	j label483
label231:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	ble s0, zero, label47
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label67
	li a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label65
	j label497
label47:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label242
	mv a2, zero
	ble s0, zero, label130
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label27
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label529
label242:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label62
	mv a2, zero
	mv a3, zero
	mv a4, zero
	mv a1, s1
	li a2, 4
	ble s0, a2, label56
label59:
	sh2add a3, a3, a1
	lw t1, 0(a3)
	lw t0, 4(a3)
	addw a5, a4, t1
	lw t1, 8(a3)
	addw a4, a5, t0
	lw t0, 12(a3)
	addw a5, a4, t1
	mv a3, a2
	addw a4, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label56
	j label59
label62:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
label483:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	j label510
label456:
	li t1, 4
	mv t3, zero
	j label37
label35:
	ble s0, zero, label34
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label181
	j label456
label37:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label40
	mv t3, t1
	mv t1, t2
	j label37
label42:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label159
	mv a4, zero
	ble s0, zero, label42
	mv a5, zero
	mv t1, s2
	sh2add t0, a3, s2
	lw a5, 0(t0)
	bne a5, zero, label35
	li a4, 1
	ble s0, a4, label42
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label42
	j label483
label40:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	j label40
label67:
	ble s0, zero, label74
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label301
	j label436
label301:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t4, 0(a2)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t0)
	ble s0, t1, label74
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	j label72
label436:
	li t1, 4
	mv t3, zero
label69:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label72
	mv t3, t1
	mv t1, t2
	j label69
label72:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label74
	j label72
label510:
	addiw a4, a4, 1
	ble s0, a4, label42
	j label536
label34:
	addiw a4, a4, 1
	ble s0, a4, label42
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label42
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label42
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	j label510
label181:
	mv t1, zero
	mv t2, t0
	mv t4, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t0)
	ble s0, t1, label34
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label34
	j label40
label74:
	addiw a4, a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
label522:
	addiw a4, a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	j label522
label497:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	j label522
label65:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label47
	mv a4, zero
	ble s0, zero, label65
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label67
	li a4, 1
	ble s0, a4, label65
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label65
	j label497
label536:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label35
	j label510
label560:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label80
	j label560
label76:
	addiw a2, a2, 1
	ble s0, a2, label231
	ble s0, zero, label76
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	li a4, 4
	ble s0, a4, label80
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label80
	j label560
label22:
	addiw a2, a2, 1
	ble s0, a2, label130
	ble s0, zero, label22
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s0, a4, label27
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label529
label80:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label76
	j label80
label27:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label22
	j label27
label56:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label265
	j label56
label265:
	mv s2, a4
	addiw a0, a0, 1
	ble s0, a0, label62
	ble s0, zero, label60
	slli a2, a0, 12
	mv a3, zero
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label56
	j label59
label60:
	addiw a0, a0, 1
	ble s0, a0, label62
	ble s0, zero, label60
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label56
	j label59
label5:
	addiw s4, s4, 1
	ble s0, s4, label92
	ble s0, zero, label5
	j label407
label15:
	addiw s3, s3, 1
	ble s0, s3, label16
	ble s0, zero, label15
	j label442
label407:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label7:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	j label7
label442:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label13:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label15
	j label13
