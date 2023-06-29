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
pcrel1257:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1257)
pcrel1258:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1258)
pcrel1259:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1259)
	mv s5, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1112
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label114
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	j label1050
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label19
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1059
label148:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label197
	mv a3, zero
	bge zero, s0, label33
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, zero, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label955
label197:
	mv a2, zero
	bge zero, s0, label337
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label98
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label101
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	j label978
label955:
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1015
label978:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	j label1038
label1015:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1075
label33:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label197
	mv a3, zero
	bge zero, s0, label33
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, zero, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1015
label35:
	ble s0, zero, label51
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label219
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label48
label219:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label41
	j label46
label41:
	addiw t1, t3, 4
	bge t1, s0, label232
	j label45
label232:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	j label1139
label51:
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1075
label1139:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	j label1139
label46:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	bge t1, s0, label41
	j label46
label48:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label331
	mv t4, t2
	mv t2, t3
	j label48
label331:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label41
	j label46
label45:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	bge t1, s0, label232
	j label45
label1075:
	addiw a3, a3, 1
	bge a3, s0, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1075
label1003:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1063
label1128:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	j label1128
label28:
	addiw a2, a2, 1
	bge a2, s0, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label19
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1003
label337:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label77
	mv a3, zero
	bge zero, s0, label58
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, zero, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	j label1025
label77:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label484
	mv a2, zero
	bge zero, s0, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label19
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1119
label484:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label81
	ble s0, zero, label83
	slli a1, zero, 12
	add a1, s1, a1
	mv a3, zero
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label499
	j label89
label1085:
	addiw a3, a3, 1
	bge a3, s0, label58
	j label1145
label729:
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label64
label61:
	ble s0, zero, label60
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label366
	j label729
label366:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label71
label76:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	bge t1, s0, label71
	j label76
label60:
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	j label1085
label1151:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	j label1151
label71:
	addiw t1, t3, 4
	bge t1, s0, label414
	j label73
label414:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label60
	j label1151
label73:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
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
	bge t1, s0, label414
	j label73
label64:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label67
	mv t4, t2
	mv t2, t3
	j label64
label67:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label71
	j label76
label1025:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	j label1085
label58:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label77
	mv a3, zero
	bge zero, s0, label58
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, zero, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	addiw a3, a3, 1
	bge a3, s0, label58
	j label1025
label1145:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label61
	j label1085
label101:
	addiw a3, a4, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	j label1159
label555:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	j label1162
label107:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
label1165:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label98
	j label1165
label19:
	addiw a3, a4, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	j label1124
label163:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	j label1127
label24:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label28
	j label1128
label1162:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label107
	j label1162
label1159:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label555
	j label1159
label98:
	addiw a2, a2, 1
	bge a2, s0, label337
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label98
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label101
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
label1038:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
label1158:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label101
	j label1158
label1119:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1003
label1059:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1119
label1063:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1123
label1127:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label24
	j label1127
label1123:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label19
	j label1123
label1124:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label163
	j label1124
label996:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1056
label8:
	addiw s5, s5, 1
	bge s5, s0, label126
	ble s0, zero, label8
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label996
label1056:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label1116:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1116
label1112:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label996
label1050:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	j label1110
label114:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label114
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	j label1050
label1110:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
label1170:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label114
	j label1170
label499:
	mv a2, a3
	addiw a3, a4, 4
	bge a3, s0, label517
	j label93
label517:
	mv a3, a4
	sh2add a4, a4, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	j label1155
label93:
	sh2add a4, a4, a1
	lw t1, 0(a4)
	lw a5, 4(a4)
	addw a2, a2, t1
	addw a2, a2, a5
	lw a5, 8(a4)
	addw a2, a2, a5
	lw a4, 12(a4)
	addw a2, a2, a4
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label517
	j label93
label1155:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label539
	j label1155
label89:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	lw t1, 4(a4)
	addw a3, a3, a5
	addw a3, a3, t1
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label499
	j label89
label539:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label81
	ble s0, zero, label83
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, a2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label499
	j label89
label83:
	addiw a0, a0, 1
	bge a0, s0, label81
	ble s0, zero, label83
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, s2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label499
	j label89
label81:
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
