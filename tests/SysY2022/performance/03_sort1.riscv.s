.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s1, 240(sp)
	sd s3, 232(sp)
	sd s2, 224(sp)
	sd s0, 216(sp)
	sd s5, 208(sp)
	sd s4, 200(sp)
	sd ra, 192(sp)
	mv s1, a1
	addi s3, sp, 0
	addi s2, sp, 64
	addi s0, sp, 128
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a4, a0, -1
	sltiu a4, a4, 1
	or a1, a4, a1
	sw zero, 128(sp)
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
	sw zero, 64(sp)
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
	ld ra, 192(sp)
	ld s4, 200(sp)
	ld s5, 208(sp)
	ld s0, 216(sp)
	ld s2, 224(sp)
	ld s3, 232(sp)
	ld s1, 240(sp)
	addi sp, sp, 248
	ret
label3:
	addiw s4, a0, -1
	bge a2, a3, label4
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label114
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	j label1249
label110:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	j label1334
label114:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	sh2add a5, a1, s1
	lw a5, 0(a5)
	ble a0, zero, label116
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	j label1339
label122:
	addiw t1, t2, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	j label1264
label513:
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
	j label1343
label128:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
label1344:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label116
	j label1344
label1334:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label114
	j label1334
label103:
	addiw a5, t1, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	j label1252
label470:
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
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
label1333:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label110
	j label1333
label1252:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
label1330:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label470
	j label1330
label1264:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	j label1342
label1343:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label128
	j label1343
label1249:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	j label1327
label116:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	sh2add a5, a5, s3
	lw a5, 0(a5)
	addiw a5, a5, 1
	sh2add a4, a4, s3
	sw a5, 0(a4)
	addiw a1, a1, 1
	bge a1, a3, label4
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label114
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	j label1249
label1327:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label103
	j label1327
label1342:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label513
	j label1342
label1339:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label122
	j label1339
label4:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label5:
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
	bge a3, a4, label7
	mv a1, a3
	j label5
label7:
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
	bge zero, a3, label91
	sh2add a3, zero, s0
	lw a3, 0(a3)
	sh2add a4, zero, s2
	lw a4, 0(a4)
	bge a3, a4, label90
	sh2add a3, zero, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label277
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label78
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1271
label91:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label95
label78:
	addiw t1, t2, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	j label1316
label409:
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
	j label1319
label85:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
label1320:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label14
	j label1320
label1316:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label409
	j label1316
label1319:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t2
	addiw t2, t2, 4
	bge t2, a0, label85
	j label1319
label90:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label90
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label277
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label78
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
label1272:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1159
label282:
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
	bge a3, a4, label90
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label277
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label78
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1272
label293:
	mv a3, a4
label17:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label55
	mv a3, a4
	ble a0, zero, label301
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1125
label25:
	addiw a5, t1, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	j label1206
label312:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	j label1285
label32:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
label1288:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label36
	j label1288
label1206:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
label1284:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label312
	j label1284
label1285:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label32
	j label1285
label1125:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1203
label301:
	mv a4, a3
	j label36
label1203:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1281
label36:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw a4, 0(a5)
	sh2add t1, a4, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label337
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label42
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	j label1214
label337:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a4, a5
	beq a3, a1, label55
	mv a3, a4
	ble a0, zero, label301
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1302
label1214:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	j label1292
label1302:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1203
label42:
	addiw a5, t1, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	j label1217
label348:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	j label1296
label49:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
label1299:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label53
	j label1299
label53:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label55
	mv a3, a4
	ble a0, zero, label301
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1302
label1281:
	slli t1, a4, 1
	srli t1, t1, 48
	add a4, a4, t1
	sraiw a4, a4, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label25
	j label1281
label1217:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
label1295:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label348
	j label1295
label1292:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label42
	j label1292
label1296:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label49
	j label1296
label60:
	addiw a5, t1, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	j label1305
label379:
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	j label1308
label68:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
label1311:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label17
	j label1311
label277:
	mv a5, a3
label14:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label282
	sh2add a5, a5, s0
	lw a4, 0(a5)
	sh2add t1, a4, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	lw a3, 0(a5)
	addiw a3, a3, 1
	sw a3, 0(a5)
	ble a0, zero, label293
	mv a3, a4
	mv t1, zero
	addiw a5, zero, 4
	bge a5, a0, label60
	slli t1, a4, 1
	srli t1, t1, 48
	add a3, a4, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	j label1148
label55:
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
	bge a3, a4, label90
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label277
	mv a5, a3
	mv t2, zero
	addiw t1, zero, 4
	bge t1, a0, label78
	slli t2, a3, 1
	srli t2, t2, 48
	add a5, a3, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1272
label1148:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	j label1226
label1159:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
label1315:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1315
label1271:
	slli t2, a5, 1
	srli t2, t2, 48
	add a5, a5, t2
	sraiw a5, a5, 16
	mv t2, t1
	addiw t1, t1, 4
	bge t1, a0, label78
	j label1272
label1308:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t1
	addiw t1, t1, 4
	bge t1, a0, label68
	j label1308
label1305:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label379
	j label1305
label1226:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
label1304:
	slli t1, a3, 1
	srli t1, t1, 48
	add a3, a3, t1
	sraiw a3, a3, 16
	mv t1, a5
	addiw a5, a5, 4
	bge a5, a0, label60
	j label1304
label95:
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
	ble s5, zero, label95
label96:
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
	ble s5, zero, label95
	j label96
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1586:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel1586)
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
	ble s0, zero, label1473
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s0, label1459
	j label1458
label1473:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1555
label1561:
	mv a0, s0
	j label1555
label1458:
	sh2add a3, a1, s1
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t2, a1, 1
	mulw t2, t2, a5
	addiw a5, a1, 2
	remw t1, t1, a5
	mulw t1, a1, t1
	addw a0, a0, t1
	addw a0, a0, t2
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
	bge a2, s0, label1459
	j label1458
label1555:
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
label1459:
	addiw a2, a1, 4
	bge a2, s0, label1463
label1462:
	sh2add a3, a1, s1
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t2, a1, 1
	mulw t2, t2, a5
	addiw a5, a1, 2
	remw t1, t1, a5
	mulw t1, a1, t1
	addw a0, a0, t1
	addw a0, a0, t2
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
	bge a2, s0, label1463
	j label1462
label1463:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	j label1582
label1545:
	mv s0, a0
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1555
	j label1561
label1582:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a2, a0
	addiw a1, a1, 1
	bge a1, s0, label1545
	j label1582
