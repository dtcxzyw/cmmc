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
pcrel1242:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1242)
pcrel1243:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1243)
pcrel1244:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1244)
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
	j label1101
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
	j label993
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
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
	j label1054
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label211
	mv a3, zero
	bge zero, s0, label38
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	j label1011
label41:
	ble s0, zero, label40
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label234
	j label720
label234:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label47
label52:
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
	bge t1, s0, label47
	j label52
label40:
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	j label1070
label47:
	addiw t1, t3, 4
	bge t1, s0, label247
	j label51
label247:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
label1134:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label40
	j label1134
label51:
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
	bge t1, s0, label247
	j label51
label1070:
	addiw a3, a3, 1
	bge a3, s0, label38
	j label1129
label211:
	mv a2, zero
	bge zero, s0, label351
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label114
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label105
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	j label974
label1011:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	j label1070
label38:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label211
	mv a3, zero
	bge zero, s0, label38
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label38
	j label1011
label351:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label82
	mv a3, zero
	bge zero, s0, label63
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, zero, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
label1021:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1080
label82:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label498
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
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
	j label1113
label974:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	j label1033
label1129:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label41
	j label1070
label1033:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	j label1092
label109:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	j label1154
label114:
	addiw a2, a2, 1
	bge a2, s0, label351
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label114
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label105
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	j label1033
label1154:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label114
	j label1154
label29:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1122
label33:
	addiw a2, a2, 1
	bge a2, s0, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
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
	j label999
label1122:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1122
label1080:
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1080
label65:
	ble s0, zero, label81
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label379
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label68
label75:
	addiw t1, t3, 4
	bge t1, s0, label427
	j label77
label427:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	j label1144
label77:
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
	bge t1, s0, label427
	j label77
label81:
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1080
label1144:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label81
	j label1144
label68:
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
	bge t3, s0, label71
	mv t4, t2
	mv t2, t3
	j label68
label71:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label75
label80:
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
	bge t1, s0, label75
	j label80
label63:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label82
	mv a3, zero
	bge zero, s0, label63
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, zero, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label63
	j label1021
label720:
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
label54:
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
	bge t3, s0, label346
	mv t4, t2
	mv t2, t3
	j label54
label346:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label47
	j label52
label379:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label75
	j label80
label105:
	addiw a3, a4, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	j label1152
label568:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	j label1153
label25:
	addiw a3, a4, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	j label1061
label182:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	j label1121
label1153:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label109
	j label1153
label1152:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label568
	j label1152
label1092:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
label1151:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label105
	j label1151
label1061:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	j label1120
label1121:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	j label1121
label1120:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label182
	j label1120
label1113:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
label999:
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
label1117:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1117
label1054:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1113
label498:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label101
	ble s0, zero, label87
	slli a1, zero, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label94
	j label93
label101:
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
label1101:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label987:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1046
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
	j label987
label1046:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label1105:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1105
label993:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1052
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
	j label993
label1052:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
label1111:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1111
label94:
	addiw a2, a3, 4
	bge a2, s0, label531
	j label100
label531:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	j label1148
label540:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label101
	ble s0, zero, label87
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, a2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label94
	j label93
label1148:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label540
	j label1148
label87:
	addiw a0, a0, 1
	bge a0, s0, label101
	ble s0, zero, label87
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label94
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
	bge a2, s0, label94
	j label93
label100:
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
	bge a2, s0, label531
	j label100
