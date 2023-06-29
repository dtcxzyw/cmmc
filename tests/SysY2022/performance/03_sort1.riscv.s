.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s0, 240(sp)
	sd s5, 232(sp)
	sd s2, 224(sp)
	sd s3, 216(sp)
	sd s4, 208(sp)
	sd s1, 200(sp)
	sd ra, 192(sp)
	mv s0, a1
	mv a5, a3
	addi s2, sp, 0
	addi s3, sp, 64
	addi s4, sp, 128
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a3, a0, -1
	sltiu a3, a3, 1
	or a1, a3, a1
	sw zero, 128(sp)
	sw zero, 4(s4)
	sw zero, 8(s4)
	sw zero, 12(s4)
	sw zero, 16(s4)
	sw zero, 20(s4)
	sw zero, 24(s4)
	sw zero, 28(s4)
	sw zero, 32(s4)
	sw zero, 36(s4)
	sw zero, 40(s4)
	sw zero, 44(s4)
	sw zero, 48(s4)
	sw zero, 52(s4)
	sw zero, 56(s4)
	sw zero, 60(s4)
	sw zero, 64(sp)
	sw zero, 4(s3)
	sw zero, 8(s3)
	sw zero, 12(s3)
	sw zero, 16(s3)
	sw zero, 20(s3)
	sw zero, 24(s3)
	sw zero, 28(s3)
	sw zero, 32(s3)
	sw zero, 36(s3)
	sw zero, 40(s3)
	sw zero, 44(s3)
	sw zero, 48(s3)
	sw zero, 52(s3)
	sw zero, 56(s3)
	sw zero, 60(s3)
	sw zero, 0(sp)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	sw zero, 16(s2)
	sw zero, 20(s2)
	sw zero, 24(s2)
	sw zero, 28(s2)
	sw zero, 32(s2)
	sw zero, 36(s2)
	sw zero, 40(s2)
	sw zero, 44(s2)
	sw zero, 48(s2)
	sw zero, 52(s2)
	sw zero, 56(s2)
	sw zero, 60(s2)
	beq a1, zero, label3
	j label2
label3:
	addiw s1, a0, -1
	bge a2, a5, label199
	mv a4, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label21
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1123
label10:
	addiw t1, a3, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	j label1193
label14:
	addiw t1, a3, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	j label1129
label17:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
label1197:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	j label1197
label1193:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	j label1193
label1129:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
label1196:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	j label1196
label1123:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1190
label23:
	slli a3, a1, 1
	srli a3, a3, 60
	add a3, a1, a3
	sraiw a3, a3, 4
	li t1, 16
	mulw a3, a3, t1
	subw a1, a1, a3
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	addiw a1, a1, 1
	slli a3, t2, 2
	add a3, s2, a3
	sw a1, 0(a3)
	addiw a4, a4, 1
	bge a4, a5, label199
	slliw a1, a4, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label21
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1123
label1190:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1190
label21:
	slli a3, a1, 1
	srli a3, a3, 60
	add a3, a1, a3
	sraiw a3, a3, 4
	li t1, 16
	mulw a3, a3, t1
	subw t2, a1, a3
	slliw a1, a4, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label23
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	j label1201
label28:
	addiw t1, a3, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	j label1202
label31:
	addiw t1, a3, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	j label1203
label35:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
label1206:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	j label1206
label1203:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	j label1203
label1201:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	j label1201
label1202:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label31
	j label1202
label2:
	ld ra, 192(sp)
	ld s1, 200(sp)
	ld s4, 208(sp)
	ld s3, 216(sp)
	ld s2, 224(sp)
	ld s5, 232(sp)
	ld s0, 240(sp)
	addi sp, sp, 248
	ret
label199:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label41:
	addiw a3, a1, -1
	slli a3, a3, 2
	add a3, s3, a3
	lw a5, 0(a3)
	slli a3, a1, 2
	add a3, s4, a3
	sw a5, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw t1, 0(a4)
	addw t1, a5, t1
	slli a5, a1, 2
	add a5, s3, a5
	sw t1, 0(a5)
	sw t1, 4(a3)
	lw t2, 4(a4)
	addw t1, t1, t2
	sw t1, 4(a5)
	sw t1, 8(a3)
	lw t2, 8(a4)
	addw t1, t1, t2
	sw t1, 8(a5)
	sw t1, 12(a3)
	lw a3, 12(a4)
	addw a3, t1, a3
	sw a3, 12(a5)
	addiw a3, a1, 4
	li a4, 13
	bge a3, a4, label43
	mv a1, a3
	j label41
label43:
	addiw a1, a1, 3
	slli a1, a1, 2
	add a1, s3, a1
	lw a5, 0(a1)
	slli a4, a3, 2
	add a4, s4, a4
	sw a5, 0(a4)
	slli a3, a3, 2
	add a3, s2, a3
	lw t1, 0(a3)
	addw a5, a5, t1
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t1, 4(a3)
	addw a5, a5, t1
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a3, a5, a3
	sw a3, 12(a1)
	mv a1, zero
	li a3, 16
	bge zero, a3, label46
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label55
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label380
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label60
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	j label1210
label60:
	addiw t2, t1, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	j label1214
label64:
	addiw t2, t1, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	j label1150
label67:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
label1218:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	j label1218
label72:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label409
	j label77
label409:
	mv a5, a3
label74:
	slliw a3, a5, 2
	add a3, s0, a3
	sw a4, 0(a3)
	slli a3, a1, 2
	add a4, s4, a3
	lw a3, 0(a4)
	addiw a3, a3, 1
	sw a3, 0(a4)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label55
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label380
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label60
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	j label1079
label77:
	slli a3, a5, 2
	add a5, s4, a3
	lw a3, 0(a5)
	slliw a3, a3, 2
	add t1, s0, a3
	lw a3, 0(t1)
	sw a4, 0(t1)
	lw a4, 0(a5)
	addiw a4, a4, 1
	sw a4, 0(a5)
	ble a0, zero, label426
	mv a4, a3
	mv a5, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli a5, a3, 1
	srli a5, a5, 48
	add a4, a3, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1177
label426:
	mv a4, a3
label78:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label80
	ble a0, zero, label437
	mv a4, a3
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a4, a3, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1158
label1177:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1244
label88:
	addiw a5, t1, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	j label1161
label99:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	slli a4, a4, 2
	add a5, s4, a4
	lw a4, 0(a5)
	slliw a4, a4, 2
	add t1, s0, a4
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label473
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1168
label473:
	mv a3, a4
label101:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label478
	mv a3, a4
	ble a0, zero, label437
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1234
label478:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label74
label1168:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1235
label1161:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	j label1228
label448:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	j label1229
label94:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
label1230:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label99
	j label1230
label1228:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label448
	j label1228
label1229:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	j label1229
label437:
	mv a4, a3
	j label99
label1234:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1158
label1235:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1235
label107:
	addiw a5, t1, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	j label1238
label489:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	j label1239
label113:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
label1240:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label101
	j label1240
label1238:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	j label1238
label1239:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label113
	j label1239
label1158:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
label1225:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1225
label121:
	addiw t1, a5, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	j label1245
label125:
	addiw t1, a5, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	j label1181
label129:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
label1251:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	j label1251
label1210:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	j label1079
label55:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label46
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label55
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label380
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label60
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	j label1210
label380:
	mv a5, a4
	slli t1, a4, 1
	srli t1, t1, 60
	add t1, a4, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a4, t1
	beq a5, a1, label409
	j label77
label1079:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
label1213:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label60
	j label1213
label1214:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	j label1214
label1150:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
label1217:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	j label1217
label1245:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	j label1245
label1181:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
label1248:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label129
	j label1248
label1244:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1244
label80:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label74
label46:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
label50:
	slli a0, s5, 2
	add a0, s4, a0
	lw a2, 0(a0)
	slli a0, s5, 2
	add a0, s3, a0
	lw a3, 0(a0)
	mv a0, s1
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label50
	addiw a0, s5, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s5, 2
	add a1, s4, a1
	sw a0, 0(a1)
	slli a1, s5, 2
	add a1, s2, a1
	lw a1, 0(a1)
	addw a0, a0, a1
	slli a1, s5, 2
	add a1, s3, a1
	sw a0, 0(a1)
	j label50
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1479:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1479)
	mv s2, s0
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s0
	mv a2, zero
	mv a3, s1
	jal radixSort
	ble s1, zero, label1366
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 4
	bge a2, s1, label1352
	j label1351
label1366:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1448
label1454:
	mv a0, s0
	j label1448
label1351:
	slli a3, a0, 2
	add a4, s2, a3
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw a3, a0, 3
	remw t1, t1, a3
	addiw t2, a0, 1
	mulw t2, t2, t1
	addiw t1, a0, 2
	remw a5, a5, t1
	mulw a5, a0, a5
	addw a1, a1, a5
	addw a1, a1, t2
	lw a5, 8(a4)
	remw a5, a5, a2
	mulw a5, t1, a5
	addw a1, a1, a5
	lw a4, 12(a4)
	addiw a0, a0, 5
	remw a0, a4, a0
	mulw a0, a3, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s1, label1352
	j label1351
label1448:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label1352:
	addiw a2, a0, 4
	bge a2, s1, label1356
label1355:
	slli a3, a0, 2
	add a4, s2, a3
	lw t1, 0(a4)
	lw a5, 4(a4)
	addiw a3, a0, 3
	remw a5, a5, a3
	addiw t2, a0, 1
	mulw t2, t2, a5
	addiw a5, a0, 2
	remw t1, t1, a5
	mulw t1, a0, t1
	addw a1, a1, t1
	addw a1, a1, t2
	lw t1, 8(a4)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a1, a1, a5
	lw a4, 12(a4)
	addiw a0, a0, 5
	remw a0, a4, a0
	mulw a0, a3, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s1, label1356
	j label1355
label1356:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	j label1475
label1438:
	mv s0, a1
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1448
	j label1454
label1475:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1438
	j label1475
