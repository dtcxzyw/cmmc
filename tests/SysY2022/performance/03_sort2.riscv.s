.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s0, 208(sp)
	sd s5, 240(sp)
	sd s2, 136(sp)
	sd s3, 232(sp)
	sd s4, 64(sp)
	sd s1, 224(sp)
	sd ra, 216(sp)
	mv s0, a1
	mv a5, a3
	addi s2, sp, 0
	addi s3, sp, 72
	addi s4, sp, 144
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a3, a0, -1
	sltiu a3, a3, 1
	or a1, a3, a1
	sw zero, 144(sp)
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
	sw zero, 72(sp)
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
	ld ra, 216(sp)
	ld s1, 224(sp)
	ld s4, 64(sp)
	ld s3, 232(sp)
	ld s2, 136(sp)
	ld s5, 240(sp)
	ld s0, 208(sp)
	addi sp, sp, 248
	ret
label3:
	addiw s1, a0, -1
	bge a2, a5, label58
	mv a3, a2
	slliw a1, a2, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv a4, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label321
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1363
label58:
	sw a2, 144(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 72(sp)
	sw a1, 4(s4)
	lw a3, 4(s2)
	addw a1, a1, a3
	sw a1, 4(s3)
	sw a1, 8(s4)
	lw a3, 8(s2)
	addw a1, a1, a3
	sw a1, 8(s3)
	sw a1, 12(s4)
	lw a3, 12(s2)
	addw a1, a1, a3
	sw a1, 12(s3)
	sw a1, 16(s4)
	lw a3, 16(s2)
	addw a1, a1, a3
	sw a1, 16(s3)
	sw a1, 20(s4)
	lw a3, 20(s2)
	addw a1, a1, a3
	sw a1, 20(s3)
	sw a1, 24(s4)
	lw a3, 24(s2)
	addw a1, a1, a3
	sw a1, 24(s3)
	sw a1, 28(s4)
	lw a3, 28(s2)
	addw a1, a1, a3
	sw a1, 28(s3)
	sw a1, 32(s4)
	lw a3, 32(s2)
	addw a1, a1, a3
	sw a1, 32(s3)
	sw a1, 36(s4)
	lw a3, 36(s2)
	addw a1, a1, a3
	sw a1, 36(s3)
	sw a1, 40(s4)
	lw a3, 40(s2)
	addw a1, a1, a3
	sw a1, 40(s3)
	sw a1, 44(s4)
	lw a3, 44(s2)
	addw a1, a1, a3
	sw a1, 44(s3)
	sw a1, 48(s4)
	lw a3, 48(s2)
	addw a1, a1, a3
	sw a1, 48(s3)
	sw a1, 52(s4)
	lw a3, 52(s2)
	addw a1, a1, a3
	sw a1, 52(s3)
	sw a1, 56(s4)
	lw a3, 56(s2)
	addw a1, a1, a3
	sw a1, 56(s3)
	sw a1, 60(s4)
	lw a3, 60(s2)
	addw a1, a1, a3
	sw a1, 60(s3)
	mv a1, zero
	li a3, 16
	bge zero, a3, label178
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, zero, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label177
	slli a3, zero, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label457
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label462
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1383
label178:
	sw a2, 144(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label182
label1318:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1384
label177:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label178
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s3, a4
	lw a4, 0(a4)
	bge a3, a4, label177
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label457
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label462
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1318
label1384:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1387
label89:
	slli t1, a5, 1
	srli t1, t1, 60
	add t1, a5, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a5, t1
	beq a5, a1, label503
	j label94
label503:
	mv a5, a3
label91:
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
	bge a3, a4, label177
	slli a3, a1, 2
	add a3, s4, a3
	lw a3, 0(a3)
	slliw a4, a3, 2
	add a4, s0, a4
	lw a4, 0(a4)
	ble a0, zero, label457
	mv a5, a4
	mv t1, zero
	li t2, 4096
	addw t2, zero, t2
	bge t2, a0, label462
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1384
label94:
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
	ble a0, zero, label520
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label635
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	j label1418
label520:
	mv a4, a3
label95:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a4, a4, a5
	beq a4, a1, label525
	ble a0, zero, label528
	mv a4, a3
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label102
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
label1398:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
label1399:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	j label1399
label102:
	addiw t1, a5, 256
	bge t1, a0, label105
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
label1400:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label105
	j label1400
label105:
	addiw t1, a5, 256
	bge t1, a0, label108
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	j label1401
label108:
	addiw t1, a5, 16
	bge t1, a0, label111
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	j label1402
label111:
	addiw t1, a5, 256
	bge t1, a0, label114
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	j label1403
label114:
	addiw t1, a5, 16
	bge t1, a0, label117
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
label1404:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label117
	j label1404
label117:
	addiw t1, a5, 16
	bge t1, a0, label120
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	j label1405
label120:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
label1406:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label123
	j label1406
label1405:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label120
	j label1405
label1403:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label114
	j label1403
label123:
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
	ble a0, zero, label581
	mv a3, a4
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label128
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	j label1409
label581:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a4, a5
	beq a3, a1, label627
	mv a3, a4
	ble a0, zero, label528
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label102
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
label1417:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	j label1398
label128:
	addiw t1, a5, 256
	bge t1, a0, label131
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
label1410:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label131
	j label1410
label131:
	addiw t1, a5, 256
	bge t1, a0, label134
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
label1411:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label134
	j label1411
label134:
	addiw t1, a5, 16
	bge t1, a0, label137
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
label1412:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label137
	j label1412
label1409:
	mv a3, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label128
	j label1409
label137:
	addiw t1, a5, 256
	bge t1, a0, label140
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	j label1413
label140:
	addiw t1, a5, 16
	bge t1, a0, label143
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
label1414:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label143
	j label1414
label1413:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label140
	j label1413
label1402:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label111
	j label1402
label1401:
	mv a4, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label108
	j label1401
label143:
	addiw t1, a5, 16
	bge t1, a0, label146
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	j label1415
label146:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
label1416:
	addiw a5, a5, 1
	slli t1, a3, 1
	srli t1, t1, 60
	add a3, a3, t1
	sraiw a3, a3, 4
	bge a5, a0, label149
	j label1416
label1415:
	mv a3, zero
	mv a5, t1
	addiw t1, t1, 16
	bge t1, a0, label146
	j label1415
label525:
	slli a4, a1, 2
	add a4, s4, a4
	lw a5, 0(a4)
	mv a4, a3
	j label91
label149:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	sraiw a5, a5, 4
	li t1, 16
	mulw a5, a5, t1
	subw a3, a3, a5
	beq a3, a1, label627
	mv a3, a4
	ble a0, zero, label528
	mv a5, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label102
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label102
	j label1417
label627:
	mv a3, a4
	j label525
label528:
	mv a4, a3
	j label123
label1383:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1318
label457:
	mv a5, a4
	slli t1, a4, 1
	srli t1, t1, 60
	add t1, a4, t1
	sraiw t1, t1, 4
	li t2, 16
	mulw t1, t1, t2
	subw a5, a4, t1
	beq a5, a1, label503
	j label94
label462:
	mv t2, a5
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
label1388:
	mv t2, zero
	mv a5, t1
	addiw t1, t1, 256
	bge t1, a0, label467
	j label1388
label467:
	mv t1, t2
	addiw t2, a5, 256
	bge t2, a0, label472
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	j label1389
label472:
	mv t2, t1
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	j label1390
label477:
	mv a5, t2
	addiw t2, t1, 256
	bge t2, a0, label80
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	j label1391
label1389:
	mv t1, zero
	mv a5, t2
	addiw t2, t2, 256
	bge t2, a0, label472
	j label1389
label1387:
	mv a5, zero
	mv t1, t2
	li t2, 4096
	addw t2, t1, t2
	bge t2, a0, label462
	j label1387
label1390:
	mv t2, zero
	mv t1, a5
	addiw a5, a5, 16
	bge a5, a0, label477
	j label1390
label1391:
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 256
	bge t2, a0, label80
	j label1391
label80:
	addiw t2, t1, 16
	bge t2, a0, label83
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
label1392:
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label83
	j label1392
label83:
	addiw t2, t1, 16
	bge t2, a0, label86
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	j label1393
label86:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
label1394:
	addiw t1, t1, 1
	slli t2, a5, 1
	srli t2, t2, 60
	add a5, a5, t2
	sraiw a5, a5, 4
	bge t1, a0, label89
	j label1394
label1393:
	mv a5, zero
	mv t1, t2
	addiw t2, t2, 16
	bge t2, a0, label86
	j label1393
label1418:
	mv a4, zero
	mv a5, t1
	li t1, 4096
	addw t1, a5, t1
	bge t1, a0, label635
	j label1418
label635:
	mv t1, a4
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	j label1419
label640:
	mv a5, t1
	addiw t1, a4, 256
	bge t1, a0, label162
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	j label1420
label1419:
	mv t1, zero
	mv a4, a5
	addiw a5, a5, 256
	bge a5, a0, label640
	j label1419
label1420:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label162
	j label1420
label162:
	addiw t1, a4, 16
	bge t1, a0, label165
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	j label1421
label165:
	addiw t1, a4, 256
	bge t1, a0, label168
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	j label1422
label168:
	addiw t1, a4, 16
	bge t1, a0, label660
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	j label1423
label660:
	mv t1, a5
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	j label1424
label665:
	mv a4, t1
	addiw a5, a5, 1
	slli t1, t1, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
label1425:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a5, a0, label95
	j label1425
label1423:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label660
	j label1423
label1424:
	mv t1, zero
	mv a5, a4
	addiw a4, a4, 16
	bge a4, a0, label665
	j label1424
label1422:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 256
	bge t1, a0, label168
	j label1422
label1421:
	mv a5, zero
	mv a4, t1
	addiw t1, t1, 16
	bge t1, a0, label165
	j label1421
label1363:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1364
label321:
	mv t1, a1
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	j label1376
label326:
	mv a4, t1
	addiw t1, a1, 256
	bge t1, a0, label43
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	j label1377
label1376:
	mv t1, zero
	mv a1, a4
	addiw a4, a4, 256
	bge a4, a0, label326
	j label1376
label43:
	addiw t1, a1, 16
	bge t1, a0, label46
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	j label1378
label1377:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label43
	j label1377
label1364:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1375
label256:
	mv a4, a1
label6:
	slli a1, a4, 1
	srli a1, a1, 60
	add a1, a4, a1
	sraiw a1, a1, 4
	li t1, 16
	mulw a1, a1, t1
	subw t2, a4, a1
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label263
	mv t1, zero
	li a4, 4096
	addw a4, zero, a4
	bge a4, a0, label280
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	j label1367
label263:
	mv a4, a1
label8:
	slli a1, a4, 1
	srli a1, a1, 60
	add a1, a4, a1
	sraiw a1, a1, 4
	li t1, 16
	mulw a1, a1, t1
	subw a1, a4, a1
	slli a1, a1, 2
	add a1, s2, a1
	lw a1, 0(a1)
	addiw a1, a1, 1
	slli a4, t2, 2
	add a4, s2, a4
	sw a1, 0(a4)
	addiw a3, a3, 1
	bge a3, a5, label58
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	ble a0, zero, label256
	mv a4, zero
	li t1, 4096
	addw t1, zero, t1
	bge t1, a0, label321
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1364
label280:
	mv a4, a1
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	j label1368
label1375:
	mv a1, zero
	mv a4, t1
	li t1, 4096
	addw t1, a4, t1
	bge t1, a0, label321
	j label1375
label16:
	addiw t1, a1, 256
	bge t1, a0, label19
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	j label1369
label19:
	addiw t1, a1, 16
	bge t1, a0, label22
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
label1370:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label22
	j label1370
label1369:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label19
	j label1369
label1368:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label16
	j label1368
label1367:
	mv a1, zero
	mv t1, a4
	li a4, 4096
	addw a4, t1, a4
	bge a4, a0, label280
	j label1367
label22:
	addiw t1, a1, 256
	bge t1, a0, label25
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	j label1371
label25:
	addiw t1, a1, 16
	bge t1, a0, label28
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	j label1372
label28:
	addiw t1, a1, 16
	bge t1, a0, label31
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	j label1373
label31:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
label1374:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label8
	j label1374
label1373:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label31
	j label1373
label1372:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label28
	j label1372
label1371:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label25
	j label1371
label46:
	addiw t1, a1, 256
	bge t1, a0, label49
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1379
label1378:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label46
	j label1378
label49:
	addiw t1, a1, 16
	bge t1, a0, label52
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
label1380:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label52
	j label1380
label1379:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 256
	bge t1, a0, label49
	j label1379
label52:
	addiw t1, a1, 16
	bge t1, a0, label55
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1381
label55:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
label1382:
	addiw a1, a1, 1
	slli t1, a4, 1
	srli t1, t1, 60
	add a4, a4, t1
	sraiw a4, a4, 4
	bge a1, a0, label6
	j label1382
label1381:
	mv a4, zero
	mv a1, t1
	addiw t1, t1, 16
	bge t1, a0, label55
	j label1381
label182:
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
	ble s5, zero, label182
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
	j label182
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1802:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1802)
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
	ble s1, zero, label1545
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1531
	j label1530
label1545:
	mv s0, zero
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1771
label1777:
	mv a0, s0
	j label1771
label1530:
	slli a3, a0, 2
	add a3, s2, a3
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t2, a0, 1
	mulw t2, t2, a5
	addiw a5, a0, 2
	remw t1, t1, a5
	mulw t1, a0, t1
	addw a1, a1, t1
	addw a1, a1, t2
	lw t2, 8(a3)
	addiw t1, a0, 4
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a1, a1, a5
	lw t2, 12(a3)
	addiw a5, a0, 5
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 16(a3)
	addiw a1, a0, 6
	remw t2, t2, a1
	mulw t1, t1, t2
	addw a4, a4, t1
	lw t2, 20(a3)
	addiw t1, a0, 7
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a4, a4, a5
	lw t2, 24(a3)
	addiw a5, a0, 8
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, a4, a1
	lw t2, 28(a3)
	addiw a4, a0, 9
	remw t2, t2, a4
	mulw t1, t1, t2
	addw a1, a1, t1
	lw t2, 32(a3)
	addiw t1, a0, 10
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a5, a1, a5
	lw t2, 36(a3)
	addiw a1, a0, 11
	remw t2, t2, a1
	mulw a4, a4, t2
	addw a4, a5, a4
	lw t2, 40(a3)
	addiw a5, a0, 12
	remw t2, t2, a5
	mulw t1, t1, t2
	addw t1, a4, t1
	lw t2, 44(a3)
	addiw a4, a0, 13
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 48(a3)
	addiw a1, a0, 14
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 52(a3)
	addiw a5, a0, 15
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a1, a1, t1
	addw a1, a4, a1
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a5, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1531
	j label1530
label1771:
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
label1531:
	addiw a2, a0, 16
	bge a2, s1, label1535
label1534:
	slli a3, a0, 2
	add a3, s2, a3
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t2, a0, 1
	mulw t2, t2, a5
	addiw a5, a0, 2
	remw t1, t1, a5
	mulw t1, a0, t1
	addw a1, a1, t1
	addw t1, a1, t2
	lw t2, 8(a3)
	addiw a1, a0, 4
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 12(a3)
	addiw a5, a0, 5
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t2, 16(a3)
	addiw t1, a0, 6
	remw t2, t2, t1
	mulw a1, a1, t2
	addw a4, a4, a1
	lw t2, 20(a3)
	addiw a1, a0, 7
	remw t2, t2, a1
	mulw a5, a5, t2
	addw a5, a4, a5
	lw t2, 24(a3)
	addiw a4, a0, 8
	remw t2, t2, a4
	mulw t1, t1, t2
	addw a5, a5, t1
	lw t2, 28(a3)
	addiw t1, a0, 9
	remw t2, t2, t1
	mulw a1, a1, t2
	addw a1, a5, a1
	lw t2, 32(a3)
	addiw a5, a0, 10
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, a1, a4
	lw t2, 36(a3)
	addiw a1, a0, 11
	remw t2, t2, a1
	mulw t1, t1, t2
	addw a4, a4, t1
	lw t2, 40(a3)
	addiw t1, a0, 12
	remw t2, t2, t1
	mulw a5, a5, t2
	addw a5, a4, a5
	lw t2, 44(a3)
	addiw a4, a0, 13
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a5, a5, a1
	lw t2, 48(a3)
	addiw a1, a0, 14
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a5, t1
	lw t2, 52(a3)
	addiw a5, a0, 15
	remw t2, t2, a5
	mulw a4, a4, t2
	addw a4, t1, a4
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a1, a1, t1
	addw a1, a4, a1
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a5, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1535
	j label1534
label1535:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	j label1798
label1761:
	mv s0, a1
	li a0, 102
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label1771
	j label1777
label1798:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1761
	j label1798
