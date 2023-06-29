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
label1135:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1204
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
	j label1138
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
	j label1141
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
	j label1135
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
label1211:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label21
	j label1211
label1138:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
label1207:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label14
	j label1207
label1141:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
label1210:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	j label1210
label1204:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label10
	j label1204
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
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	j label1215
label29:
	addiw t1, a3, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	j label1149
label32:
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
	j label1219
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
label1220:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label23
	j label1220
label1219:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label35
	j label1219
label1149:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
label1218:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	j label1218
label1215:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label29
	j label1215
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
	bge t2, a0, label61
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1224
label61:
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
	j label1161
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
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	j label1231
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
label1232:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label72
	j label1232
label72:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label409
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
	j label1192
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
	bge a5, a0, label107
	slli t1, a3, 1
	srli t1, t1, 48
	add a4, a3, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1113
label1192:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1261
label1182:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1251
label107:
	addiw a5, t1, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	j label1254
label489:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	j label1257
label115:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
label1260:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label84
	j label1260
label1254:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label489
	j label1254
label1251:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1251
label1257:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label115
	j label1257
label437:
	mv a4, a3
label84:
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
	ble a0, zero, label449
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label92
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	j label1172
label449:
	mv a3, a4
label86:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label454
	mv a3, a4
	ble a0, zero, label437
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1240
label454:
	mv a3, a4
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label74
label1172:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	j label1241
label92:
	addiw a5, t1, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	j label1175
label465:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	j label1245
label99:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
label1248:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label86
	j label1248
label1240:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1182
label1245:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label99
	j label1245
label1113:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label107
	j label1182
label1241:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label92
	j label1241
label1175:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
label1244:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label465
	j label1244
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
	j label1262
label125:
	addiw t1, a5, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	j label1196
label128:
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
label1266:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label78
	j label1266
label1231:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label67
	j label1231
label1224:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1089
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
	bge t2, a0, label61
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1224
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
label1089:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1227
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
	bge t2, a0, label61
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1089
label1227:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label61
	j label1227
label1161:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
label1230:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label64
	j label1230
label1262:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label125
	j label1262
label1196:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
label1265:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	j label1265
label1261:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1261
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
label51:
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
	ble s5, zero, label51
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
	j label51
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1496:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1496)
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
	ble s1, zero, label1383
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s1, label1369
	j label1368
label1383:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1465
label1471:
	mv a0, s0
	j label1465
label1368:
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
	bge a2, s1, label1369
	j label1368
label1465:
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
label1369:
	addiw a2, a0, 4
	bge a2, s1, label1373
label1372:
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
	bge a2, s1, label1373
	j label1372
label1373:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	j label1492
label1455:
	mv s0, a1
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1465
	j label1471
label1492:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1455
	j label1492
