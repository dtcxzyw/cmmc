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
	bge a2, a3, label4
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label99
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label104
	j label706
label104:
	addiw a5, t0, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label459
	j label699
label459:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label111
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label111
	j label700
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
label703:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	j label703
label706:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label104
label453:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
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
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label104
	j label453
label700:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label111
	j label700
label699:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label459
	j label699
label698:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label104
	j label698
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
	li a4, 13
	addiw a3, a1, 4
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
	bge a3, a4, label96
	j label651
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
label606:
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label84
label654:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label84
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label84
	j label688
label96:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label10
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label96
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label289
	j label606
label289:
	mv a5, a3
label20:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label22
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label309
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label69
	j label656
label657:
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label84
	j label654
label309:
	mv a3, a4
label26:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label314
	mv a3, a4
	ble a0, zero, label317
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label34
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	j label30
label314:
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
	bge a3, a4, label96
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label289
	j label657
label317:
	mv a4, a3
	j label45
label30:
	addiw a5, t0, 4
	ble a0, a5, label34
label321:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label34
	j label660
label34:
	addiw a5, t0, 4
	ble a0, a5, label328
	j label327
label328:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label40
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label40
	j label663
label45:
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
	ble a0, zero, label352
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label50
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label50
	j label356
label352:
	mv a3, a4
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a3, a4, a5
	beq a1, a3, label381
	mv a3, a4
	ble a0, zero, label317
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label34
	j label677
label356:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label50
	j label668
label381:
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
	bge a3, a4, label96
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label289
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label84
	j label654
label674:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label62
	j label674
label62:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label381
	mv a3, a4
	ble a0, zero, label317
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label34
label677:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label34
	j label321
label40:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label45
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label45
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label45
label664:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label45
	j label664
label50:
	addiw a5, t0, 4
	ble a0, a5, label362
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label362
	j label669
label362:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label58
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label58
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label58
	j label671
label58:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label62
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label62
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label62
	j label674
label327:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label328
	j label662
label660:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label34
	j label660
label662:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label328
	j label662
label671:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label58
	j label671
label669:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label362
	j label669
label668:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label50
	j label668
label663:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label40
	j label663
label69:
	addiw a5, t0, 4
	ble a0, a5, label394
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label394
	j label680
label394:
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
	j label681
label76:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label26
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label26
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label26
label684:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label26
	j label684
label84:
	addiw t0, t1, 4
	ble a0, t0, label418
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label418
	j label689
label418:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label91
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label91
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label91
	j label691
label91:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label20
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label20
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label20
label692:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label20
	j label692
label688:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label84
	j label688
label689:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label418
	j label689
label691:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label91
	j label691
label680:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label394
	j label680
label681:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label76
	j label681
label656:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label69
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label69
label679:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label69
	j label679
label651:
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label289
	j label606
label22:
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label96
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label289
	j label657
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
pcrel914:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel914)
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
	ble s0, zero, label806
	mv a0, zero
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label812
	j label793
label806:
	mv s0, zero
	j label788
label812:
	mv a1, a2
	addiw a2, a0, 4
	ble s0, a2, label798
	j label797
label793:
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw t1, a0, 1
	addiw a4, a0, 3
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a2, a2, t0
	lw t0, 8(a3)
	addw a2, t1, a2
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw t0, t0, a1
	remw a0, a3, a0
	mulw a5, a5, t0
	addw a2, a2, a5
	mulw a0, a4, a0
	addw a2, a2, a0
	mv a0, a1
	addiw a1, a1, 4
	ble s0, a1, label812
	j label793
label798:
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
label911:
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addiw a0, a0, 1
	addw a1, a1, a2
	ble s0, a0, label879
	j label911
label788:
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
label879:
	mv s0, a1
	j label788
label797:
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw t1, a0, 1
	addiw a4, a0, 3
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a1, a1, t0
	lw t0, 8(a3)
	addw a1, t1, a1
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw t0, t0, a2
	remw a0, a3, a0
	mulw a5, a5, t0
	addw a1, a1, a5
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 4
	ble s0, a2, label798
	j label797
