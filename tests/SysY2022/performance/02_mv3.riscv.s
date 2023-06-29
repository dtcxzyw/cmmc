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
pcrel701:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel701)
pcrel702:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel702)
pcrel703:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel703)
	mv s4, zero
	bge zero, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label511
label9:
	ble s0, zero, label10
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	j label601
label5:
	addiw s4, s4, 1
	bge s4, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label511:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label599:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label599
label10:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label46
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label602
label86:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label15
	mv a3, zero
	bge zero, s0, label39
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	j label536
label15:
	ble s0, zero, label95
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label29
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	j label570
label95:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label24
	mv a3, zero
	bge zero, s0, label23
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, zero, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	j label605
label24:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label25
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label46
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label613
label570:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	j label614
label29:
	addiw a1, a2, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	j label573
label536:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label580
label39:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label15
	mv a3, zero
	bge zero, s0, label39
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	j label536
label46:
	addiw a1, a2, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	j label587
label200:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	j label632
label50:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	j label633
label212:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label15
	mv a3, zero
	bge zero, s0, label39
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	j label536
label519:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
label563:
	addiw a3, a3, 1
	bge a3, s0, label23
	j label607
label22:
	sh2add a5, a1, s2
	lw t1, 0(a5)
	sh2add t2, a3, s1
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	j label563
label23:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label24
	mv a3, zero
	bge zero, s0, label23
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, zero, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	j label519
label159:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label24
	mv a3, zero
	bge zero, s0, label23
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, zero, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	addiw a3, a3, 1
	bge a3, s0, label23
	j label519
label607:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label22
	j label563
label605:
	addiw a3, a3, 1
	bge a3, s0, label23
	j label519
label580:
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label580
label41:
	sh2add a5, a1, s1
	lw t1, 0(a5)
	sh2add t2, a3, s2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label580
label621:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	j label621
label633:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label212
	j label633
label573:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	j label617
label142:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	j label618
label34:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label159
	j label621
label617:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label142
	j label617
label614:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label29
	j label614
label618:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label34
	j label618
label613:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label584
label25:
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
label584:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label628
label602:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label584
label587:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	j label631
label632:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label50
	j label632
label631:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label200
	j label631
label628:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label46
	j label628
label601:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
label637:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	j label637
