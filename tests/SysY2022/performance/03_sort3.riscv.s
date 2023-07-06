.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	xori a4, a0, -1
	sd s1, 136(sp)
	sltiu a4, a4, 1
	mv s1, a1
	sd s3, 240(sp)
	addiw a1, a2, 1
	addi s3, sp, 0
	slt a1, a1, a3
	sd s2, 64(sp)
	xori a1, a1, 1
	addi s2, sp, 72
	or a1, a1, a4
	sd s0, 232(sp)
	addi s0, sp, 144
	sd s5, 224(sp)
	sd s4, 216(sp)
	sd ra, 208(sp)
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
	bge a2, a3, label4
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label114
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label103
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label103
label446:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label103
	j label700
label103:
	addiw a5, t0, 4
	ble a0, a5, label453
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label453
	j label702
label453:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label110
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label110
	j label703
label110:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label114
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label114
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label114
label706:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label114
	j label706
label114:
	slli a5, a4, 1
	addiw a1, a1, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a4, a4, s3
	lw a5, 0(a4)
	addiw a5, a5, 1
	sw a5, 0(a4)
	ble a3, a1, label4
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label114
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label103
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label103
	j label446
label703:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label110
	j label703
label702:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label453
	j label702
label700:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label103
	j label700
label2:
	ld ra, 208(sp)
	ld s4, 216(sp)
	ld s5, 224(sp)
	ld s0, 232(sp)
	ld s2, 64(sp)
	ld s3, 240(sp)
	ld s1, 136(sp)
	addi sp, sp, 248
	ret
label4:
	sw a2, 144(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 72(sp)
	li a1, 1
label5:
	addiw a3, a1, -1
	sh2add a4, a1, s3
	sh2add a3, a3, s2
	lw a5, 0(a3)
	sh2add a3, a1, s0
	sw a5, 0(a3)
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
	li a4, 13
	addw a3, t0, a3
	sw a3, 12(a5)
	addiw a3, a1, 4
	bge a3, a4, label7
	mv a1, a3
	j label5
label7:
	addiw a1, a1, 3
	sh2add a4, a3, s0
	sh2add a1, a1, s2
	sh2add a3, a3, s3
	lw a5, 0(a1)
	sw a5, 0(a4)
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
label609:
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label86
label659:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label86
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label86
	j label692
label86:
	addiw t0, t1, 4
	ble a0, t0, label423
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label423
	j label694
label423:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label92
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label92
	j label695
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
label696:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label21
	j label696
label694:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label423
	j label694
label695:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label92
	j label695
label290:
	mv a5, a3
label21:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label295
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
	j label661
label51:
	sh2add a3, a1, s0
	lw a5, 0(a3)
	mv a3, a4
	sh2add a4, a5, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
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
	ble a0, t0, label86
	j label659
label310:
	mv a3, a4
label27:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label29
	mv a3, a4
	ble a0, zero, label321
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label36
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	j label32
label321:
	mv a4, a3
	j label47
label32:
	addiw a5, t0, 4
	ble a0, a5, label36
label325:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label36
	j label665
label392:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label70
	j label684
label36:
	addiw a5, t0, 4
	ble a0, a5, label332
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label332
	j label667
label332:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label44
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	j label669
label44:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label47
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label47
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label47
	j label672
label673:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label36
	j label325
label672:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label47
	j label672
label665:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label36
	j label665
label667:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label332
	j label667
label47:
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
	ble a0, zero, label356
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label56
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label56
	j label368
label356:
	mv a3, a4
label49:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label51
	mv a3, a4
	ble a0, zero, label321
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label36
	j label673
label368:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label56
	j label675
label56:
	addiw a5, t0, 4
	ble a0, a5, label375
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label375
	j label677
label375:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label63
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label63
	j label678
label63:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label49
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label49
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label49
label681:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label49
	j label681
label678:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label63
	j label678
label669:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label44
	j label669
label675:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label56
	j label675
label29:
	sh2add a3, a1, s0
	lw a5, 0(a3)
	mv a3, a4
	sh2add a4, a5, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
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
	ble a0, t0, label86
	j label659
label677:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label375
	j label677
label70:
	addiw a5, t0, 4
	ble a0, a5, label398
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label398
	j label685
label398:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label76
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label76
	j label686
label76:
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
label687:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label27
	j label687
label661:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	j label67
label295:
	mv a5, a4
	sh2add a4, a4, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
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
	ble a0, t0, label86
	j label659
label67:
	addiw a5, t0, 4
	ble a0, a5, label70
	j label392
label692:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label86
	j label692
label686:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label76
	j label686
label685:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label398
	j label685
label684:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label70
	j label684
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
	j label609
label10:
	sw a2, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	li a0, 16
	bge zero, a0, label2
	j label14
label15:
	addiw a0, s5, -1
	sh2add a1, s5, s0
	sh2add a0, a0, s2
	lw a0, 0(a0)
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
pcrel915:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel915)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 8(sp)
	sd ra, 0(sp)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s2
	li a0, 8
	mv a3, s0
	jal radixSort
	ble s0, zero, label807
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label795
	j label794
label807:
	mv s0, zero
	j label789
label794:
	sh2add a3, a1, s1
	addiw a4, a1, 3
	addiw t1, a1, 1
	lw t0, 0(a3)
	lw a5, 4(a3)
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addiw a1, a1, 5
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label795
	j label794
label795:
	addiw a2, a1, 4
	ble s0, a2, label799
	j label798
label799:
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
label912:
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label880
	j label912
label789:
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
label880:
	mv s0, a0
	j label789
label798:
	sh2add a3, a1, s1
	addiw a4, a1, 3
	addiw t1, a1, 1
	lw t0, 0(a3)
	lw a5, 4(a3)
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addiw a1, a1, 5
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label799
	j label798
