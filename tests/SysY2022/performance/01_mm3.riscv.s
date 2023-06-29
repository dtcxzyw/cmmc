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
pcrel1192:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1192)
pcrel1193:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1193)
pcrel1194:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1194)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label114
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1064
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label10
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1065
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
	addiw a4, zero, 4
	bge a4, s0, label20
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label1017
label148:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label197
	mv a2, zero
	bge zero, s0, label109
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	j label999
label92:
	ble s0, zero, label108
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 4
	ble s0, a5, label467
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
	j label105
label1053:
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1107
label100:
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
	bge t1, s0, label108
	j label100
label108:
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1053
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
	bge t1, s0, label98
	j label103
label105:
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
	bge t3, s0, label579
	mv t4, a5
	mv a5, t3
	j label105
label579:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label98
	j label103
label98:
	addiw t1, t3, 4
	bge t1, s0, label480
	j label102
label480:
	mv t1, t3
	j label100
label102:
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
	bge t1, s0, label480
	j label102
label467:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label98
	j label103
label1107:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1053
label999:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1053
label109:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label197
	mv a2, zero
	bge zero, s0, label109
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	j label999
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
	j label982
label201:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label48
	mv a2, zero
	bge zero, s0, label70
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, zero, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	j label939
label982:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	j label1036
label939:
	addiw a2, a2, 1
	bge a2, s0, label70
label993:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	j label1047
label70:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label48
	mv a2, zero
	bge zero, s0, label70
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, zero, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	j label993
label73:
	ble s0, zero, label72
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 4
	ble s0, a5, label333
	j label727
label72:
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	j label1047
label83:
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
	bge t1, s0, label72
	j label83
label333:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label80
	j label79
label80:
	addiw t1, t3, 4
	bge t1, s0, label372
	j label82
label372:
	mv t1, t3
	j label83
label82:
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
	bge t1, s0, label372
	j label82
label79:
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
	bge t1, s0, label80
	j label79
label24:
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
	j label1080
label28:
	addiw a1, a1, 1
	bge a1, s0, label148
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label20
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label967
label1080:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1080
label1047:
	addiw a2, a2, 1
	bge a2, s0, label70
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label73
	j label1047
label1071:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
label967:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label1021
label48:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label255
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label20
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label1071
label255:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label52
	ble s0, zero, label54
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label60
label67:
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
	bge a3, s0, label60
	j label67
label727:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
label86:
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
	bge t3, s0, label445
	mv t4, a5
	mv a5, t3
	j label86
label445:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label80
	j label79
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
	j label1091
label39:
	addiw a4, a2, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	j label1092
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
label1093:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label34
	j label1093
label1091:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label39
	j label1091
label1092:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label41
	j label1092
label1036:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	j label1090
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
	j label982
label1090:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label37
	j label1090
label1017:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label1071
label20:
	addiw a4, a2, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	j label1024
label22:
	addiw a4, a2, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	j label1079
label1024:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
label1078:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label22
	j label1078
label1079:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	j label1079
label1021:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
label1075:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label20
	j label1075
label1008:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1062
label114:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label114
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1008
label1064:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1008
label1062:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
label1116:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1116
label961:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1015
label10:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label10
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label961
label1065:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label961
label1015:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
label1069:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1069
label60:
	addiw a3, a1, 4
	bge a3, s0, label63
	j label66
label63:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	j label1100
label284:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label52
	ble s0, zero, label54
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label60
	j label67
label1100:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label284
	j label1100
label66:
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
	bge a3, s0, label63
	j label66
label54:
	addiw a2, a2, 1
	bge a2, s0, label52
	ble s0, zero, label54
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label60
	j label67
label52:
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
