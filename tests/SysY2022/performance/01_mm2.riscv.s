.data
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
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s2, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1588:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1588)
pcrel1589:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1589)
pcrel1590:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1590)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label114
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1511
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label10
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1512
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label148:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label233
	mv a2, zero
	bge zero, s0, label109
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1468
label233:
	mv a1, zero
	bge zero, s0, label237
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label34
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label37
	j label45
label237:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label48
	mv a2, zero
	bge zero, s0, label88
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, zero, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
label1461:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	j label1493
label88:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label48
	mv a2, zero
	bge zero, s0, label88
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, zero, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	j label1461
label1468:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1500
label1298:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
	j label96
label93:
	ble s0, zero, label92
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 16
	ble s0, a5, label824
	j label1298
label824:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label103
label108:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label103
	j label108
label109:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label233
	mv a2, zero
	bge zero, s0, label109
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1468
label92:
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1500
label103:
	addiw t1, t3, 16
	bge t1, s0, label940
	j label105
label940:
	mv t1, t3
	j label106
label105:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label940
	j label105
label106:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, t4, a5
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label92
	j label106
label1493:
	addiw a2, a2, 1
	bge a2, s0, label88
	j label1525
label71:
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	addiw a2, a2, 1
	bge a2, s0, label88
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	j label1493
label82:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, t4, a5
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label71
	j label82
label1500:
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1500
label1525:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label72
	j label1493
label48:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label327
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label327:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label52
	ble s0, zero, label54
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label61
	j label60
label52:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
label60:
	slli a1, a1, 2
	add a6, a4, a1
	lw s2, 0(a6)
	lw s6, 4(a6)
	lw s5, 8(a6)
	lw s4, 12(a6)
	lw t5, 16(a6)
	lw t4, 20(a6)
	lw a5, 24(a6)
	lw a1, 28(a6)
	lw s3, 32(a6)
	lw s7, 36(a6)
	lw t3, 40(a6)
	lw t1, 44(a6)
	lw t2, 48(a6)
	lw a7, 52(a6)
	lw t6, 56(a6)
	lw a6, 60(a6)
	addw a0, a0, s2
	addw a0, a0, s6
	addw a0, a0, s5
	addw a0, a0, s4
	addw a0, a0, t5
	addw a0, a0, t4
	addw a0, a0, a5
	addw a0, a0, a1
	addw a0, a0, s3
	addw a0, a0, s7
	addw a0, a0, t3
	addw a0, a0, t1
	addw a0, a0, t2
	addw a0, a0, a7
	addw a0, a0, t6
	addw a0, a0, a6
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label61
	j label60
label1290:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
	j label85
label72:
	ble s0, zero, label71
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 16
	ble s0, a5, label476
	j label1290
label96:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t4, t2
	addw t4, t5, t4
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label928
	mv t4, a5
	mv a5, t3
	j label96
label928:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label103
	j label108
label476:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label79
label78:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label79
	j label78
label79:
	addiw t1, t3, 16
	bge t1, s0, label585
	j label81
label585:
	mv t1, t3
	j label82
label81:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label585
	j label81
label85:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t4, t2
	addw t4, t5, t4
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label800
	mv t4, a5
	mv a5, t3
	j label85
label800:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label79
	j label78
label28:
	addiw a1, a1, 1
	bge a1, s0, label148
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label1519:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1519
label1477:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1509
label114:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label114
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1477
label1511:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1477
label1509:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
label1541:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1541
label1512:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
label1451:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
label1515:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1515
label10:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label10
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1451
label37:
	addiw a4, a2, 16
	bge a4, s0, label39
label44:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label39
	j label44
label39:
	addiw a4, a2, 16
	bge a4, s0, label41
	j label43
label41:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
label1522:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	j label1522
label45:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label37
	j label45
label34:
	addiw a1, a1, 1
	bge a1, s0, label237
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label34
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label37
	j label45
label43:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label41
	j label43
label19:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label20
	j label19
label20:
	addiw a4, a2, 16
	bge a4, s0, label22
	j label27
label22:
	addiw a4, a2, 16
	bge a4, s0, label25
	j label24
label25:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1519
label24:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label25
	j label24
label27:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label22
	j label27
label61:
	addiw a3, a1, 16
	bge a3, s0, label64
label67:
	slli a1, a1, 2
	add t4, a4, a1
	lw s2, 0(t4)
	lw s5, 4(t4)
	lw s4, 8(t4)
	lw s6, 12(t4)
	lw s7, 16(t4)
	lw a6, 20(t4)
	lw s3, 24(t4)
	lw a7, 28(t4)
	lw t2, 32(t4)
	lw a1, 36(t4)
	lw t5, 40(t4)
	lw t1, 44(t4)
	lw a5, 48(t4)
	lw t6, 52(t4)
	lw t3, 56(t4)
	lw t4, 60(t4)
	addw a0, a0, s2
	addw a0, a0, s5
	addw a0, a0, s4
	addw a0, a0, s6
	addw a0, a0, s7
	addw a0, a0, a6
	addw a0, a0, s3
	addw a0, a0, a7
	addw a0, a0, t2
	addw a0, a0, a1
	addw a0, a0, t5
	addw a0, a0, t1
	addw a0, a0, a5
	addw a0, a0, t6
	addw a0, a0, t3
	addw a0, a0, t4
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label64
	j label67
label64:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	j label1524
label405:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label52
	ble s0, zero, label54
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label61
	j label60
label1524:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label405
	j label1524
label54:
	addiw a2, a2, 1
	bge a2, s0, label52
	ble s0, zero, label54
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label61
	j label60
