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
pcrel705:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel705)
pcrel706:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel706)
pcrel707:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel707)
	mv s4, zero
	bge zero, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label515
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
	j label607
label515:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label605:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label605
label5:
	addiw s4, s4, 1
	bge s4, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label515
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label18
	slliw a2, zero, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label610
label18:
	addiw a1, a2, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	j label570
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label28
	mv a3, zero
	bge zero, s0, label55
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label506
label28:
	ble s0, zero, label140
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label42
	slliw a2, zero, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	j label586
label140:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label37
	mv a3, zero
	bge zero, s0, label33
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	j label535
label36:
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
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	j label580
label37:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label38
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label18
	slliw a2, zero, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label630
label38:
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
label586:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	j label631
label535:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	j label580
label44:
	addiw a1, a2, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	j label635
label192:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
label638:
	slliw a2, a1, 2
	add a2, s2, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label204
	j label638
label204:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label37
	mv a3, zero
	bge zero, s0, label33
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	j label535
label580:
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	j label580
label33:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label37
	mv a3, zero
	bge zero, s0, label33
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, zero, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label36
	addiw a3, a3, 1
	bge a3, s0, label33
	j label535
label20:
	addiw a1, a2, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	j label616
label114:
	mv a1, a2
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	j label617
label121:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label28
	mv a3, zero
	bge zero, s0, label55
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
label506:
	addiw a3, a3, 1
	bge a3, s0, label55
	j label551
label53:
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
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label596
label55:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label28
	mv a3, zero
	bge zero, s0, label55
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label55
label551:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
label596:
	addiw a3, a3, 1
	bge a3, s0, label55
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label596
label617:
	slliw a2, a1, 2
	add a2, s1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label121
	j label617
label42:
	addiw a1, a2, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	j label589
label631:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label42
	j label631
label589:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
label634:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label44
	j label634
label635:
	slliw a2, a2, 2
	add a2, s2, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label192
	j label635
label570:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
label615:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label20
	j label615
label610:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
label567:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
label612:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label612
label630:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label567
label616:
	slliw a2, a2, 2
	add a2, s1, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label114
	j label616
label607:
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
label609:
	jal getint
	slli a1, s4, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	j label609
