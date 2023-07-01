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
pcrel1238:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1238)
pcrel1239:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1239)
pcrel1240:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1240)
	mv s5, zero
	ble s0, zero, label126
	ble s0, zero, label5
	slli a0, zero, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label989
label126:
	mv s4, zero
	ble s0, zero, label11
	ble s0, zero, label114
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label983
label989:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label1047
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label21
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1050
label148:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label197
	mv a3, zero
	ble s0, zero, label91
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, zero, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	j label1031
label983:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label1041
label197:
	mv a2, zero
	ble s0, zero, label201
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label34
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label37
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label1010
label201:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label69
	mv a3, zero
	ble s0, zero, label50
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	j label1021
label50:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label69
	mv a3, zero
	ble s0, zero, label50
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	j label1021
label53:
	ble s0, zero, label52
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label273
	j label733
label273:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	ble s0, t1, label59
	j label64
label93:
	ble s0, zero, label109
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label468
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label106
label468:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	ble s0, t1, label100
label99:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	ble s0, t1, label100
	j label99
label100:
	addiw t1, t3, 4
	ble s0, t1, label507
	j label102
label507:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
label1152:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label109
	j label1152
label109:
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1089
label59:
	addiw t1, t3, 4
	ble s0, t1, label286
	j label61
label286:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
label1143:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	ble s0, t1, label52
	j label1143
label1079:
	addiw a3, a3, 1
	ble s0, a3, label50
	j label1137
label52:
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1079
label102:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	ble s0, t1, label507
	j label102
label106:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t5, t4
	sw t4, 12(t3)
	addiw t3, t2, 4
	ble s0, t3, label580
	mv t4, t2
	mv t2, t3
	j label106
label580:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	ble s0, t1, label100
	j label99
label61:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	ble s0, t1, label286
	j label61
label64:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	ble s0, t1, label59
	j label64
label1031:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1089
label91:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label197
	mv a3, zero
	ble s0, zero, label91
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, zero, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	j label1031
label1089:
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1089
label1108:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label996
label1021:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1079
label69:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label391
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label21
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1108
label1137:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label1079
label37:
	addiw a3, a4, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	j label1127
label217:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	j label1128
label42:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
label1131:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label34
	j label1131
label733:
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
label66:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t5, t4
	sw t4, 12(t3)
	addiw t3, t2, 4
	ble s0, t3, label385
	mv t4, t2
	mv t2, t3
	j label66
label385:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	ble s0, t1, label59
	j label64
label1054:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1112
label21:
	addiw a3, a4, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	j label1057
label169:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	j label1116
label25:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
label1117:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label17
	j label1117
label1127:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label217
	j label1127
label1128:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label42
	j label1128
label34:
	addiw a2, a2, 1
	ble s0, a2, label201
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label34
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label37
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
label1010:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
label1126:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label1126
label1057:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	j label1115
label996:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1054
label1116:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	j label1116
label1115:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label169
	j label1115
label1112:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1112
label1050:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label1108
label391:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label88
	ble s0, zero, label74
	slli a1, zero, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label81
	j label80
label17:
	addiw a2, a2, 1
	ble s0, a2, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label21
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label21
	j label996
label1047:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label1105:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label1105
label1041:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label1099
label114:
	addiw s4, s4, 1
	ble s0, s4, label11
	ble s0, zero, label114
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label1041
label1099:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
label1157:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label1157
label5:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label5
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label989
label80:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label81
	j label80
label81:
	addiw a2, a3, 4
	ble s0, a2, label424
	j label87
label424:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
label1146:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	j label1146
label433:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label88
	ble s0, zero, label74
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, a2
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label81
	j label80
label87:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label424
	j label87
label74:
	addiw a0, a0, 1
	ble s0, a0, label88
	ble s0, zero, label74
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label81
	j label80
label88:
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
