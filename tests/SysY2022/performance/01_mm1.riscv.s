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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1196:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1196)
pcrel1197:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1197)
pcrel1198:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1198)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label111
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	j label1015
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label7
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	j label968
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label17
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label21
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1024
label148:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label197
	mv a2, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label953
label21:
	addiw a4, a2, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	j label1031
label953:
	addiw a2, a2, 1
	bge a2, s0, label91
	j label1007
label93:
	ble s0, zero, label109
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 4
	ble s0, a5, label468
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
	j label106
label101:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label109
	j label101
label109:
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1061
label468:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label99
label104:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label99
	j label104
label99:
	addiw t1, t3, 4
	bge t1, s0, label481
	j label103
label481:
	mv t1, t3
	j label101
label103:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label481
	j label103
label106:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, a5, 4
	bge t3, s0, label580
	mv t4, a5
	mv a5, t3
	j label106
label580:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label99
	j label104
label1061:
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1061
label1078:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label974
label197:
	mv a1, zero
	bge zero, s0, label201
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label34
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label37
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	j label988
label201:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label69
	mv a2, zero
	bge zero, s0, label50
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, zero, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	j label999
label69:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label391
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label17
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label21
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1078
label391:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label73
	ble s0, zero, label87
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label80
label79:
	slli a1, a1, 2
	add a1, a4, a1
	lw a5, 0(a1)
	lw t1, 4(a1)
	addw a0, a0, a5
	addw a0, a0, t1
	lw a5, 8(a1)
	addw a0, a0, a5
	lw a1, 12(a1)
	addw a0, a0, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label80
	j label79
label1007:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1061
label91:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label197
	mv a2, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	j label1007
label999:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1053
label50:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label69
	mv a2, zero
	bge zero, s0, label50
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, zero, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	j label999
label53:
	ble s0, zero, label52
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 4
	ble s0, a5, label273
	j label726
label1053:
	addiw a2, a2, 1
	bge a2, s0, label50
	j label1107
label52:
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a2, a2, 1
	bge a2, s0, label50
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1053
label63:
	addiw t1, t3, 4
	bge t1, s0, label321
	j label65
label321:
	mv t1, t3
	j label66
label65:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label321
	j label65
label66:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label52
	j label66
label273:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label63
label68:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label63
	j label68
label1107:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1053
label726:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
label56:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, a5, 4
	bge t3, s0, label307
	mv t4, a5
	mv a5, t3
	j label56
label307:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label63
	j label68
label37:
	addiw a4, a2, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	j label1097
label39:
	addiw a4, a2, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	j label1098
label42:
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
label1101:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	j label1101
label23:
	addiw a4, a2, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1086
label25:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
label1087:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label17
	j label1087
label1097:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	j label1097
label1098:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label42
	j label1098
label34:
	addiw a1, a1, 1
	bge a1, s0, label201
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label34
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label37
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
label988:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
label1096:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	j label1096
label974:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1028
label1024:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1078
label1086:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1086
label1028:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1082
label17:
	addiw a1, a1, 1
	bge a1, s0, label148
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label17
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label21
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label974
label1082:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label21
	j label1082
label1031:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
label1085:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label23
	j label1085
label1015:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
label1123:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	j label1123
label968:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
label1076:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	j label1076
label83:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	j label1114
label432:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label73
	ble s0, zero, label87
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label80
	j label79
label87:
	addiw a2, a2, 1
	bge a2, s0, label73
	ble s0, zero, label87
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label80
	j label79
label1114:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label432
	j label1114
label111:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label111
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label111
	j label1015
label7:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label7
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label7
	j label968
label80:
	addiw a3, a1, 4
	bge a3, s0, label83
label86:
	slli a1, a1, 2
	add a1, a4, a1
	lw t1, 0(a1)
	lw a5, 4(a1)
	addw a0, a0, t1
	addw a0, a0, a5
	lw a5, 8(a1)
	addw a0, a0, a5
	lw a1, 12(a1)
	addw a0, a0, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	j label86
label73:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
