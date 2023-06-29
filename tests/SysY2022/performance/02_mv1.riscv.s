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
pcrel687:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel687)
pcrel688:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel688)
pcrel689:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel689)
	mv s4, zero
	bge zero, s1, label4
	ble s1, zero, label52
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
label540:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
label626:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	j label626
label52:
	addiw s4, s4, 1
	bge s4, s1, label4
	ble s1, zero, label52
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label52
	j label540
label4:
	ble s1, zero, label7
	mv s4, zero
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label588
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label43
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	j label589
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label12
	mv a3, zero
	bge zero, s1, label39
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label590
label12:
	ble s1, zero, label89
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label26
	slliw a1, zero, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	j label557
label89:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label15
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	j label592
label557:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	j label600
label26:
	addiw a2, a1, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	j label560
label592:
	addiw a3, a3, 1
	bge a3, s1, label22
label508:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
label551:
	addiw a3, a3, 1
	bge a3, s1, label22
	j label594
label21:
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
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	j label551
label594:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	j label551
label15:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label16
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label43
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	j label572
label16:
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
label31:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	j label607
label153:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label15
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	j label508
label43:
	addiw a2, a1, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	j label575
label22:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label15
	mv a3, zero
	bge zero, s1, label22
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, zero, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label21
	addiw a3, a3, 1
	bge a3, s1, label22
	j label508
label524:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label567
label37:
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
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label567
label39:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label12
	mv a3, zero
	bge zero, s1, label39
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	j label524
label567:
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label567
label590:
	addiw a3, a3, 1
	bge a3, s1, label39
	j label524
label607:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label153
	j label607
label45:
	addiw a2, a1, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	j label619
label47:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	j label620
label206:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label12
	mv a3, zero
	bge zero, s1, label39
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label39
	j label524
label620:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label206
	j label620
label600:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label26
	j label600
label560:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	j label603
label29:
	addiw a2, a1, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	j label606
label603:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label29
	j label603
label606:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label31
	j label606
label589:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
label572:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
label615:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label43
	j label615
label575:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
label618:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label45
	j label618
label619:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s1, label47
	j label619
label588:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label588
