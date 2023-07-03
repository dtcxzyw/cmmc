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
	xori a4, a0, -1
	addi s0, sp, 128
	addi s2, sp, 64
	addi s3, sp, 0
	mv s1, a1
	sltiu a4, a4, 1
	sw zero, 128(sp)
	addiw a1, a2, 1
	sw zero, 4(s0)
	slt a1, a1, a3
	sw zero, 8(s0)
	xori a1, a1, 1
	sw zero, 12(s0)
	or a1, a1, a4
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
	bge a2, a3, label182
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label6
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label11
	j label713
label11:
	addiw a5, t0, 4
	ble a0, a5, label208
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label208
	j label659
label208:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label19
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label19
	j label213
label19:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label6
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label6
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label6
label664:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label6
	j label664
label213:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label19
	j label661
label713:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label11
label202:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label11
	j label658
label6:
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
	ble a3, a1, label182
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label6
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label11
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label11
	j label202
label659:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label208
	j label659
label658:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label11
	j label658
label661:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label19
	j label661
label182:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label24:
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
	li a4, 13
	addiw a3, a1, 4
	bge a3, a4, label26
	mv a1, a3
	j label24
label26:
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
	bge zero, a3, label29
	sh2add a3, zero, s0
	lw a3, 0(a3)
	sh2add a4, zero, s2
	lw a4, 0(a4)
	bge a3, a4, label38
	sh2add a3, zero, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	j label614
label29:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	li a0, 16
	bge zero, a0, label2
	j label33
label34:
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
	ble s5, zero, label33
	j label34
label614:
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label44
label669:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	j label672
label330:
	mv a5, a3
	slli t0, a3, 1
	srli t0, t0, 60
	add t0, a3, t0
	andi t0, t0, -16
	subw a5, a3, t0
	beq a1, a5, label57
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label374
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label105
	j label728
label44:
	addiw t0, t1, 4
	ble a0, t0, label341
	j label340
label374:
	mv a3, a4
label61:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label379
	mv a3, a4
	ble a0, zero, label382
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label88
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label88
label426:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label88
	j label695
label453:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label105
	j label704
label105:
	addiw a5, t0, 4
	ble a0, a5, label460
	j label459
label681:
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label44
	j label669
label382:
	mv a4, a3
	j label65
label78:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label82
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label82
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label82
	j label690
label82:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label422
	mv a3, a4
	ble a0, zero, label382
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label88
label693:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label88
	j label426
label422:
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
	bge a3, a4, label38
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	j label681
label88:
	addiw a5, t0, 4
	ble a0, a5, label433
	j label432
label690:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label82
	j label690
label65:
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
	ble a0, zero, label393
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label71
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label71
	j label397
label393:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label422
	mv a3, a4
	ble a0, zero, label382
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label88
	j label693
label397:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label71
	j label685
label379:
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
	bge a3, a4, label38
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	j label681
label695:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label88
	j label695
label432:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label433
	j label697
label433:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label96
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label96
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label96
	j label699
label96:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label65
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label65
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label65
label702:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label65
	j label702
label697:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label433
	j label697
label699:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label96
	j label699
label71:
	addiw a5, t0, 4
	ble a0, a5, label404
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label404
	j label687
label404:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label78
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label78
	j label689
label687:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label404
	j label687
label689:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label78
	j label689
label685:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label71
	j label685
label459:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label460
	j label706
label460:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label112
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label112
	j label707
label112:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label61
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label61
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label61
label710:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label61
	j label710
label672:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	j label672
label340:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label341
	j label674
label341:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label51
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label51
	j label346
label51:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label55
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label55
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label55
	j label677
label55:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label57
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label374
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label105
	j label728
label677:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label55
	j label677
label674:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label341
	j label674
label346:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label51
label676:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label51
	j label676
label706:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label460
	j label706
label707:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label112
	j label707
label704:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label105
	j label704
label728:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label105
	j label453
label38:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label29
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label38
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	j label614
label57:
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label38
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	j label681
label33:
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
	ble s5, zero, label33
	j label34
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel932:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel932)
	mv a0, s2
	mv s1, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a1, s2
	li a0, 8
	mv a3, s0
	mv a2, zero
	jal radixSort
	ble s0, zero, label824
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label810
	j label809
label824:
	mv s0, zero
	j label817
label809:
	sh2add a3, a1, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw t1, a1, 1
	addiw a4, a1, 3
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label810
	j label809
label810:
	addiw a2, a1, 4
	ble s0, a2, label814
	j label813
label814:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
label929:
	sh2add a2, a1, s1
	lw a2, 0(a2)
	addiw a3, a1, 2
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label896
	j label929
label896:
	mv s0, a0
label817:
	li a0, 102
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label813:
	sh2add a3, a1, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw t1, a1, 1
	addiw a4, a1, 3
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	addiw a1, a1, 5
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label814
	j label813
