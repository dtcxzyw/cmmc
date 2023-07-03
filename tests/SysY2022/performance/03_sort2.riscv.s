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
	j label2
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
	j label453
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
	j label757
label459:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label111
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label111
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label111
	j label758
label111:
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
label761:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	j label761
label453:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	j label698
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
label698:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
label756:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label104
	j label756
label757:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label459
	j label757
label758:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label111
	j label758
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
	ble a0, t0, label24
	j label655
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
	ble s5, zero, label14
	j label15
label290:
	mv a5, a3
	slli t0, a3, 1
	srli t0, t0, 60
	add t0, a3, t0
	andi t0, t0, -16
	subw a5, a3, t0
	beq a1, a5, label38
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label334
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label45
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label42
label334:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label363
	mv a3, a4
	ble a0, zero, label369
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label66
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label63
label42:
	addiw a5, t0, 4
	ble a0, a5, label45
	j label338
label363:
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
	ble a0, t0, label24
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label294
label63:
	addiw a5, t0, 4
	ble a0, a5, label66
label373:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label679
label66:
	addiw a5, t0, 4
	ble a0, a5, label379
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label379
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label379
	j label733
label379:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label73
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label73
	j label736
label73:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label78
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label78
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label78
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label78
label737:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label78
	j label737
label369:
	mv a4, a3
	j label78
label679:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label732
label78:
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
	ble a0, zero, label404
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label84
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label84
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label84
	j label687
label404:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label433
	mv a3, a4
	ble a0, zero, label369
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label66
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label752
label687:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label84
	j label742
label752:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label679
label433:
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
	ble a0, t0, label24
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label294
label732:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label732
label733:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label379
	j label733
label742:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label84
	j label742
label84:
	addiw a5, t0, 4
	ble a0, a5, label415
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label415
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label415
	j label745
label415:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label91
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label91
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label91
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label91
	j label748
label91:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label95
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label95
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label95
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label95
label749:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label95
	j label749
label95:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label433
	mv a3, a4
	ble a0, zero, label369
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label66
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label752
label745:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label415
	j label745
label748:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label91
	j label748
label736:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label73
	j label736
label30:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	j label714
label36:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label38
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label334
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label45
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label45
label338:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label45
	j label669
label714:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	j label714
label24:
	addiw t0, t1, 4
	ble a0, t0, label300
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label300
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label300
	j label712
label300:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label30
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label30
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label30
	j label713
label45:
	addiw a5, t0, 4
	ble a0, a5, label344
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label344
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label344
	j label723
label344:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label51
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label51
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label51
	j label724
label51:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label57
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label57
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label57
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label57
	j label725
label57:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label363
	mv a3, a4
	ble a0, zero, label369
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label66
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label66
	j label373
label725:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label57
	j label725
label294:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label658
label38:
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
	ble a0, t0, label24
	slli t1, a3, 1
	srli t1, t1, 48
	add a5, a3, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label294
label658:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label711
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
	ble a0, t0, label24
label655:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label294
label711:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label24
	j label711
label712:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	addiw t0, t0, 4
	ble a0, t0, label300
	j label712
label713:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label30
	j label713
label723:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label344
	j label723
label724:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label51
	j label724
label669:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label45
label722:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	addiw a5, a5, 4
	ble a0, a5, label45
	j label722
label14:
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
	ble s5, zero, label14
	j label15
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel972:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel972)
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
	ble s0, zero, label864
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label850
	j label849
label864:
	mv s0, zero
	j label857
label849:
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
	ble s0, a2, label850
	j label849
label850:
	addiw a2, a1, 4
	ble s0, a2, label854
	j label853
label854:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
label969:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addw a0, a0, a2
	addiw a1, a1, 1
	ble s0, a1, label936
	j label969
label936:
	mv s0, a0
label857:
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
label853:
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
	ble s0, a2, label854
	j label853
