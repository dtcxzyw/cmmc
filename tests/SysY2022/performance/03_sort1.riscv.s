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
	or a1, a1, a4
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
	ble a0, zero, label99
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	j label1072
label104:
	addiw a5, t0, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	j label1136
label459:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	j label1137
label110:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
label1138:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	j label1138
label99:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a4, a4, s3
	lw a5, 0(a4)
	addiw a5, a5, 1
	sw a5, 0(a4)
	addiw a1, a1, 1
	ble a3, a1, label4
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label99
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
label1072:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
label1135:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	j label1135
label1136:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	j label1136
label1137:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	j label1137
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
	lw t0, 0(a4)
	addw t0, a5, t0
	sh2add a5, a1, s2
	sw t0, 0(a5)
	sw t0, 4(a3)
	lw t1, 4(a4)
	addw t0, t0, t1
	sw t0, 4(a5)
	sw t0, 8(a3)
	lw t1, 8(a4)
	addw t0, t0, t1
	sw t0, 8(a5)
	sw t0, 12(a3)
	lw a3, 12(a4)
	addw a3, t0, a3
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
	lw t0, 0(a3)
	addw a5, a5, t0
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 4(a3)
	addw a5, a5, t0
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a3, a5, a3
	sw a3, 12(a1)
	mv a1, zero
	li a3, 16
	bge zero, a3, label10
	sh2add a3, zero, s0
	lw a3, 0(a3)
	sh2add a4, zero, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, zero, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label85
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label1082
label10:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label15
label290:
	mv a5, a3
label21:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label23
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label310
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label70
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	j label988
label23:
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label85
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label998
label310:
	mv a3, a4
label27:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label315
	mv a3, a4
	ble a0, zero, label321
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	j label978
label321:
	mv a4, a3
	j label33
label988:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	j label1051
label56:
	addiw a5, t0, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	j label1044
label372:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	j label1110
label64:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
label1113:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label33
	j label1113
label33:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label332
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label41
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	j label1031
label332:
	mv a3, a4
label35:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label337
	mv a3, a4
	ble a0, zero, label321
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	j label1092
label337:
	mv a3, a4
	sh2add a4, a1, s0
	lw a4, 0(a4)
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label85
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label998
label1031:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	j label1094
label1092:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
label1041:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	j label1104
label315:
	mv a3, a4
	sh2add a4, a1, s0
	lw a4, 0(a4)
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label85
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label998
label978:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	j label1041
label1044:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	j label1107
label1104:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label56
	j label1104
label1107:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label372
	j label1107
label1110:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label64
	j label1110
label41:
	addiw a5, t0, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	j label1034
label348:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	j label1100
label48:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
label1101:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label35
	j label1101
label1100:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label48
	j label1100
label1094:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label41
	j label1094
label1034:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
label1097:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label348
	j label1097
label85:
	addiw t0, t1, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	j label1125
label419:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	j label1126
label92:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
label1129:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	j label1129
label70:
	addiw a5, t0, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	j label1115
label395:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	j label1118
label78:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
label1121:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	j label1121
label1082:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label998
label19:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label10
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label85
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label1082
label998:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
label1124:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label85
	j label1124
label1126:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	j label1126
label1125:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label419
	j label1125
label1118:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	j label1118
label1115:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label395
	j label1115
label1051:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
label1114:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label70
	j label1114
label14:
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
label15:
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
	ble s5, zero, label15
	j label14
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1354:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel1354)
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
	ble s0, zero, label1246
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label1232
	j label1231
label1246:
	mv s0, zero
	j label1239
label1231:
	sh2add a3, a1, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t1, a1, 1
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addw a0, a0, t0
	addw a0, t1, a0
	lw t0, 8(a3)
	remw t0, t0, a2
	mulw a5, a5, t0
	addw a0, a0, a5
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw a1, a3, a1
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label1232
	j label1231
label1232:
	addiw a2, a1, 4
	ble s0, a2, label1236
	j label1235
label1236:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
label1351:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label1318
	j label1351
label1318:
	mv s0, a0
label1239:
	li a0, 102
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
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
label1235:
	sh2add a3, a1, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a1, 3
	remw a5, a5, a4
	addiw t1, a1, 1
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addw a0, a0, t0
	addw a0, t1, a0
	lw t0, 8(a3)
	remw t0, t0, a2
	mulw a5, a5, t0
	addw a0, a0, a5
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw a1, a3, a1
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label1236
	j label1235
