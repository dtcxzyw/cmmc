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
pcrel1253:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1253)
pcrel1254:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1254)
pcrel1255:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1255)
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
	bge zero, s0, label16
	ble s0, zero, label15
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1002
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label22
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1064
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label211
	mv a3, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, zero, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
label1044:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1104
label96:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label211
	mv a3, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, zero, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	j label1044
label1104:
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1104
label98:
	ble s0, zero, label114
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label482
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label111
label114:
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1104
label1169:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	j label1169
label111:
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
	bge t3, s0, label594
	mv t4, t2
	mv t2, t3
	j label111
label594:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label104
	j label109
label104:
	addiw t1, t3, 4
	bge t1, s0, label495
	j label106
label495:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	j label1169
label106:
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
	bge t1, s0, label495
	j label106
label109:
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
	bge t1, s0, label104
	j label109
label482:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label104
	j label109
label211:
	mv a2, zero
	bge zero, s0, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label39
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label42
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	j label1023
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label74
	mv a3, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, zero, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	j label974
label1023:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	j label1083
label974:
	addiw a3, a3, 1
	bge a3, s0, label55
	j label1034
label57:
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	j label1094
label58:
	ble s0, zero, label57
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label287
	j label736
label287:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label68
	j label73
label1160:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	j label1160
label68:
	addiw t1, t3, 4
	bge t1, s0, label335
	j label70
label335:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label57
	j label1160
label70:
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
	bge t1, s0, label335
	j label70
label64:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label68
label73:
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
	bge t1, s0, label68
	j label73
label1124:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1008
label1034:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	j label1094
label55:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label74
	mv a3, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, zero, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	addiw a3, a3, 1
	bge a3, s0, label55
	j label1034
label74:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label405
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label22
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1124
label1094:
	addiw a3, a3, 1
	bge a3, s0, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	j label1094
label42:
	addiw a3, a4, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	j label1144
label231:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	j label1145
label47:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
label1148:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label39
	j label1148
label736:
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
label61:
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
	bge t3, s0, label64
	mv t4, t2
	mv t2, t3
	j label61
label25:
	addiw a3, a4, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	j label1129
label178:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	j label1132
label31:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
label1135:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label22
	j label1135
label1144:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label231
	j label1144
label1145:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label47
	j label1145
label39:
	addiw a2, a2, 1
	bge a2, s0, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label39
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label42
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	j label1023
label1083:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
label1143:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label42
	j label1143
label1132:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	j label1132
label22:
	addiw a2, a2, 1
	bge a2, s0, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label22
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
label1008:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1068
label1064:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1124
label1129:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label178
	j label1129
label405:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label78
	ble s0, zero, label80
	slli a1, zero, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label86
	j label93
label78:
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
label1068:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
label1128:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1128
label1112:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label996:
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
label1116:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1116
label1002:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
label1122:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1122
label86:
	addiw a2, a3, 4
	bge a2, s0, label425
	j label92
label425:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	j label1163
label434:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label78
	ble s0, zero, label80
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, a2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label86
	j label93
label92:
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
	bge a2, s0, label425
	j label92
label93:
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
	bge a2, s0, label86
	j label93
label1163:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label434
	j label1163
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
label15:
	addiw s4, s4, 1
	bge s4, s0, label16
	ble s0, zero, label15
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1002
label80:
	addiw a0, a0, 1
	bge a0, s0, label78
	ble s0, zero, label80
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label86
	j label93
