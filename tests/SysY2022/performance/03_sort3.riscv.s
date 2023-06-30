.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s1, 208(sp)
	sd s3, 240(sp)
	sd s2, 136(sp)
	sd s0, 232(sp)
	sd s5, 64(sp)
	sd s4, 224(sp)
	sd ra, 216(sp)
	mv s1, a1
	addi s3, sp, 0
	addi s2, sp, 72
	addi s0, sp, 144
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a4, a0, -1
	sltiu a4, a4, 1
	or a1, a1, a4
	sw zero, 144(sp)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	sw zero, 16(s0)
	sw zero, 20(s0)
	sw zero, 24(s0)
	sw zero, 28(s0)
	sw zero, 32(s0)
	sw zero, 36(s0)
	sw zero, 40(s0)
	sw zero, 44(s0)
	sw zero, 48(s0)
	sw zero, 52(s0)
	sw zero, 56(s0)
	sw zero, 60(s0)
	sw zero, 72(sp)
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
	sw zero, 0(sp)
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
	beq a1, zero, label3
	j label2
label3:
	addiw s4, a0, -1
	bge a2, a3, label199
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label21
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	j label1169
label17:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	j label1251
label21:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a1, s1
	lw a5, 0(a5)
	ble a0, zero, label23
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	j label1256
label1251:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	j label1251
label28:
	addiw t1, t2, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	j label1257
label258:
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	j label1260
label36:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
label1263:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	j label1263
label10:
	addiw a5, t1, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	j label1172
label216:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
label1250:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	j label1250
label1172:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
label1247:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	j label1247
label1260:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label36
	j label1260
label1169:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	j label1244
label23:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	andi t1, t1, -16
	subw a5, a5, t1
	sh2add a5, a5, s3
	lw a5, 0(a5)
	addiw a5, a5, 1
	sh2add a4, a4, s3
	sw a5, 0(a4)
	addiw a1, a1, 1
	bge a1, a3, label199
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label21
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	j label1169
label1244:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	j label1244
label1256:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	j label1256
label1257:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	j label1257
label2:
	ld ra, 216(sp)
	ld s4, 224(sp)
	ld s5, 64(sp)
	ld s0, 232(sp)
	ld s2, 136(sp)
	ld s3, 240(sp)
	ld s1, 208(sp)
	addi sp, sp, 248
	ret
label199:
	sw a2, 144(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 72(sp)
	li a1, 1
label41:
	addiw a3, a1, -1
	sh2add a3, a3, s2
	lw a5, 0(a3)
	sh2add a3, a1, s0
	sw a5, 0(a3)
	sh2add a4, a1, s3
	lw t1, 0(a4)
	addw t1, a5, t1
	sh2add a5, a1, s2
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
	sh2add a1, a1, s2
	lw a5, 0(a1)
	sh2add a4, a3, s0
	sw a5, 0(a4)
	sh2add a3, a3, s3
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
	sh2add a3, zero, s0
	lw a3, 0(a3)
	sh2add a4, zero, s2
	lw a4, 0(a4)
	bge a3, a4, label55
	sh2add a3, zero, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label380
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1266
label380:
	mv a5, a3
label57:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	andi t1, t1, -16
	subw a5, a5, t1
	beq a1, a5, label385
	sh2add a5, a5, s0
	lw a4, 0(a5)
	sh2add t1, a4, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label402
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label66
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	j label1123
label402:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label116
	mv a3, a4
	ble a0, zero, label434
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1073
label434:
	mv a4, a3
label82:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw a4, 0(a5)
	sh2add t1, a4, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label446
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label88
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1212
label446:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label116
	mv a3, a4
	ble a0, zero, label434
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1296
label1212:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1287
label88:
	addiw a5, t1, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	j label1215
label457:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	j label1291
label1296:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
label1223:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1298
label116:
	sh2add a3, a1, s0
	lw a5, 0(a3)
	mv a3, a4
	sh2add a4, a5, s1
	sw a3, 0(a4)
	sh2add a3, a1, s0
	lw a4, 0(a3)
	addiw a4, a4, 1
	sw a4, 0(a3)
	mv a3, a4
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label55
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label380
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1156
label1231:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1306
label94:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	j label1292
label99:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label116
	mv a3, a4
	ble a0, zero, label434
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1296
label1292:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label99
	j label1292
label104:
	addiw a5, t1, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	j label1299
label485:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	j label1300
label110:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
label1301:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label82
	j label1301
label1299:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label485
	j label1299
label1291:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label94
	j label1291
label1300:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	j label1300
label1073:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1148
label66:
	addiw a5, t1, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	j label1274
label412:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	j label1275
label73:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	j label1278
label78:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label116
	mv a3, a4
	ble a0, zero, label434
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
label1148:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1223
label1298:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label104
	j label1298
label1215:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
label1290:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label457
	j label1290
label1287:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label88
	j label1287
label1278:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label78
	j label1278
label121:
	addiw t1, t2, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	j label1307
label512:
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	j label1308
label128:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
label1311:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	j label1311
label1306:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1306
label1266:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1156
label55:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label46
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label55
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label380
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1266
label1156:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1231
label385:
	mv a5, a4
	sh2add a4, a4, s1
	sw a3, 0(a4)
	sh2add a3, a1, s0
	lw a4, 0(a3)
	addiw a4, a4, 1
	sw a4, 0(a3)
	mv a3, a4
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label55
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label380
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1270
label1123:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	j label1198
label1270:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1156
label1307:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	j label1307
label1308:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	j label1308
label1275:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	j label1275
label1274:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label412
	j label1274
label1198:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
label1273:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label66
	j label1273
label46:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
label50:
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label50
label51:
	addiw a0, s5, -1
	sh2add a0, a0, s2
	lw a0, 0(a0)
	sh2add a1, s5, s0
	sw a0, 0(a1)
	sh2add a1, s5, s3
	lw a1, 0(a1)
	addw a0, a0, a1
	sh2add a1, s5, s2
	sw a0, 0(a1)
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label50
	j label51
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1551:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel1551)
	mv s1, s2
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s2
	mv a2, zero
	mv a3, s0
	jal radixSort
	ble s0, zero, label1438
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s0, label1424
	j label1423
label1438:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1520
label1526:
	mv a0, s0
	j label1520
label1423:
	sh2add a3, a1, s1
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t2, a1, 1
	mulw t2, a5, t2
	addiw a5, a1, 2
	remw t1, t1, a5
	mulw t1, a1, t1
	addw a0, a0, t1
	addw a0, t2, a0
	lw t1, 8(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a0, a0, a5
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw a1, a3, a1
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label1424
	j label1423
label1520:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label1424:
	addiw a2, a1, 4
	bge a2, s0, label1428
label1427:
	sh2add a3, a1, s1
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t2, a1, 1
	mulw t2, a5, t2
	addiw a5, a1, 2
	remw t1, t1, a5
	mulw t1, a1, t1
	addw a0, a0, t1
	addw a0, t2, a0
	lw t1, 8(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a0, a0, a5
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw a1, a3, a1
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label1428
	j label1427
label1428:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	j label1547
label1510:
	mv s0, a0
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1520
	j label1526
label1547:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1510
	j label1547
