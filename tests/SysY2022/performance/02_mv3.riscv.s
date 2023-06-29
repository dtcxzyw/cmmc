.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel690:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel690)
pcrel691:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel691)
pcrel692:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel692)
	mv s4, zero
	bge zero, s0, label9
	ble s0, zero, label8
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label585
label9:
	ble s0, zero, label12
	mv s4, zero
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	j label591
label585:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label503:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label546
label8:
	addiw s4, s4, 1
	bge s4, s0, label9
	ble s0, zero, label8
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label503
label546:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label589:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label589
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label48
	slliw a2, zero, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label594
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label17
	mv a3, zero
	bge zero, s0, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label595
label20:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label21
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label48
	slliw a2, zero, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label576
label21:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label17:
	ble s0, zero, label103
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label30
	slliw a2, zero, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	j label562
label103:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label20
	mv a3, zero
	bge zero, s0, label27
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, zero, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	j label597
label556:
	addiw a3, a3, 1
	bge a3, s0, label27
	j label599
label26:
	slliw a5, a1, 2
	add a5, s2, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s1, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	j label556
label562:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	j label605
label624:
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	j label624
label220:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label17
	mv a3, zero
	bge zero, s0, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	j label528
label513:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	j label556
label27:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label20
	mv a3, zero
	bge zero, s0, label27
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, zero, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	j label513
label599:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	j label556
label597:
	addiw a3, a3, 1
	bge a3, s0, label27
	j label513
label528:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label571
label42:
	slliw a5, a1, 2
	add a5, s1, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s2, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label571
label44:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label17
	mv a3, zero
	bge zero, s0, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s0, label44
	j label528
label571:
	addiw a3, a3, 1
	bge a3, s0, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label571
label595:
	addiw a3, a3, 1
	bge a3, s0, label44
	j label528
label30:
	addiw a1, a2, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	j label606
label33:
	addiw a1, a2, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	j label609
label155:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	j label610
label162:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label20
	mv a3, zero
	bge zero, s0, label27
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, zero, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label26
	addiw a3, a3, 1
	bge a3, s0, label27
	j label513
label610:
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label162
	j label610
label605:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label30
	j label605
label606:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label33
	j label606
label609:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label155
	j label609
label594:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
label576:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label619
label48:
	addiw a1, a2, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	j label579
label50:
	addiw a1, a2, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	j label623
label213:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label220
	j label624
label619:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label619
label579:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
label622:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label50
	j label622
label623:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label213
	j label623
label591:
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
label593:
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	j label593
