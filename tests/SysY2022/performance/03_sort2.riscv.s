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
	bge a2, a5, label4
	mv a4, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label114
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	j label1190
label102:
	addiw t1, a3, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	j label1261
label106:
	addiw t1, a3, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	j label1194
label109:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
label1265:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label114
	j label1265
label1194:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	j label1264
label1261:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label106
	j label1261
label1264:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label109
	j label1264
label1190:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
label1260:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	j label1260
label114:
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
	ble a0, zero, label116
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1270
label121:
	addiw t1, a3, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	j label1271
label124:
	addiw t1, a3, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	j label1272
label128:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
label1275:
	addiw a3, a3, 1
	slli t1, a1, 1
	srli t1, t1, 60
	add a1, a1, t1
	sraiw a1, a1, 4
	bge a3, a0, label116
	j label1275
label1272:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label128
	j label1272
label116:
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
	bge a4, a5, label4
	slliw a1, a4, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label114
	mv a3, zero
	addiw t1, zero, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label102
	j label1190
label1270:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label121
	j label1270
label1271:
	slli a3, a1, 1
	srli a3, a3, 48
	add a1, a1, a3
	sraiw a1, a1, 16
	mv a3, t1
	addiw t1, t1, 4
	bge t1, a0, label124
	j label1271
label4:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label5:
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
	bge a3, a4, label7
	mv a1, a3
	j label5
label7:
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
	bge zero, a3, label10
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label19
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label307
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label85
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
label1211:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1110
label312:
	mv a5, a3
	slliw a3, a3, 2
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
	bge a3, a4, label19
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label307
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label85
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1211
label23:
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
	ble a0, zero, label323
	mv a4, a3
	mv a5, zero
	addiw t1, zero, 4
	bge t1, a0, label67
	slli a5, a3, 1
	srli a5, a5, 48
	add a4, a3, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	j label1171
label323:
	mv a4, a3
label24:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label62
	ble a0, zero, label331
	mv a4, a3
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label32
	slli t1, a3, 1
	srli t1, t1, 48
	add a4, a3, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1078
label331:
	mv a4, a3
	j label43
label1078:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1148
label43:
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
	ble a0, zero, label367
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label49
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	j label1159
label367:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a4, a5
	beq a3, a1, label396
	mv a3, a4
	ble a0, zero, label331
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1239
label1159:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	j label1229
label49:
	addiw a5, t1, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	j label1162
label1239:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1148
label396:
	mv a3, a4
label62:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
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
	bge a3, a4, label19
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label307
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label85
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1211
label1171:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	j label1241
label1162:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	j label1232
label378:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	j label1235
label57:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
label1238:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label60
	j label1238
label1232:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label378
	j label1232
label1148:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1218
label1229:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label49
	j label1229
label1235:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label57
	j label1235
label32:
	addiw a5, t1, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	j label1221
label342:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	j label1224
label39:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
label1225:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label43
	j label1225
label1221:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label342
	j label1221
label1224:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label39
	j label1224
label1218:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1218
label60:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label396
	mv a3, a4
	ble a0, zero, label331
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label32
	j label1239
label85:
	addiw t2, t1, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	j label1251
label89:
	addiw t2, t1, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	j label1254
label93:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
label1257:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label21
	j label1257
label67:
	addiw t1, a5, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	j label1242
label70:
	addiw t1, a5, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	j label1243
label73:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
label1244:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label24
	j label1244
label19:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label10
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label19
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label307
	mv a5, a4
	mv t1, zero
	addiw t2, zero, 4
	bge t2, a0, label85
	slli t1, a4, 1
	srli t1, t1, 48
	add a5, a4, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1211
label307:
	mv a5, a4
label21:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label312
	j label23
label1110:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1180
label1254:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label93
	j label1254
label1251:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label89
	j label1251
label1180:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
label1250:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1250
label1242:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label70
	j label1242
label1243:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label73
	j label1243
label1241:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label67
	j label1241
label10:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label14
label15:
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
label14:
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
	ble s5, zero, label14
	j label15
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1509:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1509)
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
	ble s1, zero, label1396
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 4
	bge a2, s1, label1382
	j label1381
label1396:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1478
label1484:
	mv a0, s0
	j label1478
label1381:
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
	bge a2, s1, label1382
	j label1381
label1478:
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
label1382:
	addiw a2, a0, 4
	bge a2, s1, label1386
label1385:
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
	bge a2, s1, label1386
	j label1385
label1386:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	j label1505
label1468:
	mv s0, a1
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1478
	j label1484
label1505:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1468
	j label1505
