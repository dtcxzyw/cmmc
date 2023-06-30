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
	j label1173
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
	j label1256
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
	j label1261
label1256:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label21
	j label1256
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
	j label1262
label258:
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	j label1265
label35:
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
label1266:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label23
	j label1266
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
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	j label1252
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
label1255:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label17
	j label1255
label1252:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label216
	j label1252
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
label1173:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
label1249:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label10
	j label1249
label1265:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label35
	j label1265
label1262:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label258
	j label1262
label1261:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label28
	j label1261
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
	j label1270
label46:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label50
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
	j label1312
label512:
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	j label1315
label129:
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
label1318:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label57
	j label1318
label1270:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1159
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
	j label1270
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
	ble a0, zero, label396
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label63
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	j label1125
label1159:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1235
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
label396:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label113
	mv a3, a4
	ble a0, zero, label428
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1061
label1125:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	j label1201
label428:
	mv a4, a3
	j label94
label83:
	addiw a5, t1, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	j label1216
label439:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	j label1293
label90:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	j label1296
label94:
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
	ble a0, zero, label464
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label100
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	j label1224
label464:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label113
	mv a3, a4
	ble a0, zero, label428
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1309
label1224:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	j label1300
label100:
	addiw a5, t1, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	j label1227
label1309:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1213
label1296:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label94
	j label1296
label1227:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	j label1303
label475:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	j label1304
label106:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	j label1305
label111:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label113
	mv a3, a4
	ble a0, zero, label428
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1309
label1305:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label111
	j label1305
label1216:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
label1292:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label439
	j label1292
label1061:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1137
label1304:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	j label1304
label1213:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
label1289:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1289
label70:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	j label1282
label75:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label113
	mv a3, a4
	ble a0, zero, label428
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
label1137:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label83
	j label1213
label1300:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label100
	j label1300
label1293:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label90
	j label1293
label1303:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label475
	j label1303
label1282:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label75
	j label1282
label63:
	addiw a5, t1, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	j label1278
label406:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	j label1281
label1235:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
label1311:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1311
label1315:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label129
	j label1315
label1312:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label512
	j label1312
label113:
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
	j label1159
label1278:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label406
	j label1278
label1281:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	j label1281
label1201:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
label1277:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label63
	j label1277
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
	j label51
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1557:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel1557)
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
	ble s0, zero, label1444
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s0, label1430
	j label1429
label1444:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1526
label1532:
	mv a0, s0
	j label1526
label1429:
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
	bge a2, s0, label1430
	j label1429
label1526:
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
label1430:
	addiw a2, a1, 4
	bge a2, s0, label1434
label1433:
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
	bge a2, s0, label1434
	j label1433
label1434:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	j label1553
label1516:
	mv s0, a0
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1526
	j label1532
label1553:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	bge a1, s0, label1516
	j label1553
