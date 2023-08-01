.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	mv a2, zero
	sd ra, 0(sp)
	addi a0, sp, 8
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	mv a1, zero
	li a3, 20
	bge zero, a3, label202
.p2align 2
label116:
	addiw a3, a2, 1
	bgt a1, zero, label599
	mv a4, zero
.p2align 2
label603:
	mv a2, a3
.p2align 2
label119:
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
label636:
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	bne a5, zero, label132
	j label603
.p2align 2
label599:
	li a4, 1
	sw a4, 8(sp)
	bne a4, zero, label121
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
.p2align 2
label121:
	addiw a3, a2, 2
	li a4, 2
	blt a1, a4, label610
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label124
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
.p2align 2
label610:
	mv a4, zero
	j label613
.p2align 2
label124:
	addiw a3, a2, 3
	li a4, 3
	blt a1, a4, label619
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label127
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
.p2align 2
label619:
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
.p2align 2
label127:
	addiw a3, a2, 4
	li a4, 4
	bge a1, a4, label627
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
label627:
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label929
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label636
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
label132:
	addiw a3, a2, 6
	li a4, 6
	blt a1, a4, label603
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label603
	addiw a3, a2, 7
	li a4, 7
	blt a1, a4, label603
	sw a5, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label136
	j label603
label202:
	mv a1, zero
label5:
	li a3, 20
	blt a1, a3, label52
	j label206
.p2align 2
label892:
	addiw a3, a2, 4
	li a4, 2
	bge a1, a4, label913
.p2align 2
label385:
	li a4, 1
	bne a4, zero, label391
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label396
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label403
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label897
label408:
	li a4, 1
	bne a4, zero, label415
	addiw a3, a2, 10
	li a4, 5
	blt a1, a4, label420
label899:
	sw zero, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label70
label427:
	mv a2, a3
	addiw a1, a1, 1
	j label5
label206:
	li a3, 1
label8:
	li a1, 20
	blt a3, a1, label45
label11:
	lw a1, 8(sp)
	addiw a0, a2, 3
	bne a1, zero, label13
label14:
	lw a2, 16(sp)
	addiw a4, a0, 3
	addiw a3, a0, 6
	mv a0, a4
	beq a2, zero, label16
	mv a0, a3
label16:
	lw a3, 24(sp)
	addiw a2, a0, 3
	beq a3, zero, label237
	lw a4, 28(sp)
	addiw a2, a0, 6
	bne a4, zero, label21
	j label243
.p2align 2
label52:
	addiw a3, a2, 2
	ble a1, zero, label376
	sw zero, 8(sp)
	mv a4, zero
	addiw a3, a2, 4
	li a4, 2
	blt a1, a4, label385
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label391
	j label937
.p2align 2
label376:
	li a4, 1
	bne a4, zero, label380
	j label892
.p2align 2
label391:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
.p2align 2
label396:
	li a4, 1
	bne a4, zero, label403
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label408
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label415
label414:
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label899
label420:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
.p2align 2
label913:
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label391
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label396
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label403
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label408
	j label897
.p2align 2
label937:
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label396
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label403
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label408
	j label897
label70:
	addiw a3, a2, 12
	li a4, 6
	blt a1, a4, label427
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label427
	addiw a3, a2, 14
	li a4, 7
	blt a1, a4, label427
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label427
	addiw a3, a2, 16
	li a4, 8
	blt a1, a4, label427
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label427
	addiw a3, a2, 18
	li a4, 9
	blt a1, a4, label427
	sw zero, 40(sp)
	lw a4, 36(sp)
	bne a4, zero, label427
	addiw a3, a2, 20
	li a4, 10
	blt a1, a4, label427
	sw zero, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label427
	addiw a3, a2, 22
	li a4, 11
	blt a1, a4, label427
	sw zero, 48(sp)
	lw a4, 44(sp)
	bne a4, zero, label427
	addiw a3, a2, 24
	li a4, 12
	bge a1, a4, label503
	li a4, 1
	j label83
label897:
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label414
label415:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
label237:
	mv a0, a2
label23:
	lw a4, 44(sp)
	addiw a2, a0, 3
	beq a4, zero, label265
	lw a2, 48(sp)
	addiw a0, a0, 6
	beq a2, zero, label25
	j label39
label265:
	mv a0, a2
	j label39
label25:
	addiw a2, a0, 3
	bne a1, zero, label27
	j label269
label39:
	lw a4, 52(sp)
	addiw a2, a0, 3
	bne a4, zero, label41
label322:
	mv a0, a2
	j label25
label41:
	lw a4, 56(sp)
	addiw a2, a0, 6
	beq a4, zero, label322
	lw a4, 60(sp)
	addiw a2, a0, 9
	beq a4, zero, label322
	lw a2, 64(sp)
	addiw a4, a0, 12
	addiw a5, a0, 15
	mv a0, a5
	bne a2, zero, label25
	mv a0, a4
	j label25
label269:
	mv a0, a2
label30:
	lw a2, 28(sp)
	addiw a1, a0, 3
	beq a2, zero, label32
	mv a0, a1
	li a1, 1
label36:
	addw a0, a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label288:
	li a1, 1
	j label36
label32:
	lw a2, 32(sp)
	addiw a1, a0, 6
	beq a2, zero, label301
	lw a2, 36(sp)
	addiw a0, a0, 9
	beq a2, zero, label288
	j label33
label45:
	addiw a1, a3, -1
	addiw a2, a2, 1
	ble a3, a1, label11
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	beq a1, zero, label51
	addiw a5, a3, -2
	sh2add a4, a5, a0
	lw a1, 0(a4)
label48:
	beq a1, zero, label11
	addiw a3, a3, 1
	j label8
label51:
	lw a1, 8(sp)
	j label48
label27:
	lw a2, 16(sp)
	addiw a1, a0, 6
	beq a2, zero, label276
	lw a2, 20(sp)
	addiw a1, a0, 9
	bne a2, zero, label276
	addiw a0, a0, 12
	beq a3, zero, label288
	j label30
label243:
	mv a0, a2
label19:
	addiw a0, a0, 3
	j label23
label13:
	lw a3, 12(sp)
	addiw a0, a2, 6
	bne a3, zero, label16
	j label14
.p2align 2
label380:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
label301:
	mv a0, a1
label33:
	lw a2, 40(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label36
.p2align 2
label403:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
label276:
	mv a0, a1
	j label30
label21:
	lw a4, 32(sp)
	addiw a2, a0, 9
	beq a4, zero, label22
	mv a0, a2
	addiw a0, a2, 3
	j label23
.p2align 2
label613:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
label22:
	lw a2, 36(sp)
	addiw a0, a0, 12
	bne a2, zero, label23
	j label19
label136:
	addiw a3, a2, 8
	li a4, 8
	blt a1, a4, label603
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label138
	j label603
label929:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label116
	j label202
label138:
	addiw a3, a2, 9
	li a4, 9
	blt a1, a4, label603
	li a4, 1
	sw a4, 40(sp)
	lw a5, 36(sp)
	beq a5, zero, label603
	addiw a3, a2, 10
	li a4, 10
	blt a1, a4, label603
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label603
	addiw a3, a2, 11
	li a4, 11
	blt a1, a4, label603
	li a4, 1
	sw a4, 48(sp)
	lw a5, 44(sp)
	bne a5, zero, label144
	j label603
label503:
	sw zero, 52(sp)
	lw a4, 48(sp)
label83:
	bne a4, zero, label427
	addiw a3, a2, 26
	li a4, 13
	bge a1, a4, label512
	li a4, 1
label86:
	bne a4, zero, label427
	addiw a3, a2, 28
	li a4, 14
	blt a1, a4, label522
	sw zero, 60(sp)
	lw a4, 56(sp)
	j label89
label144:
	addiw a3, a2, 12
	li a4, 12
	blt a1, a4, label721
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label146
label721:
	mv a4, zero
label146:
	bne a4, zero, label148
	j label603
label522:
	li a4, 1
label89:
	bne a4, zero, label427
	addiw a3, a2, 30
	li a4, 15
	blt a1, a4, label531
	sw zero, 64(sp)
	lw a4, 60(sp)
	j label92
label531:
	li a4, 1
label92:
	bne a4, zero, label427
	addiw a3, a2, 32
	li a4, 16
	blt a1, a4, label540
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label95
label540:
	li a4, 1
label95:
	bne a4, zero, label427
	addiw a3, a2, 34
	li a4, 17
	bge a1, a4, label548
	li a4, 1
	j label98
label548:
	sw zero, 72(sp)
	lw a4, 68(sp)
label98:
	bne a4, zero, label427
	addiw a3, a2, 36
	li a4, 18
	blt a1, a4, label558
	sw zero, 76(sp)
	lw a4, 72(sp)
	j label101
label558:
	li a4, 1
label101:
	bne a4, zero, label427
	addiw a4, a2, 38
	li a3, 19
	bge a1, a3, label566
	li a3, 1
	j label104
label566:
	sw zero, 80(sp)
	lw a3, 76(sp)
label104:
	addiw a5, a2, 40
	mv a2, a4
	beq a3, zero, label887
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label206
label148:
	addiw a3, a2, 13
	li a4, 13
	bge a1, a4, label732
	mv a4, zero
	j label150
label732:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
label150:
	beq a4, zero, label603
	addiw a3, a2, 14
	li a4, 14
	bge a1, a4, label744
	mv a4, zero
	j label154
label744:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
label154:
	beq a4, zero, label603
	addiw a3, a2, 15
	li a4, 15
	bge a1, a4, label756
	mv a4, zero
	j label158
label756:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
label158:
	beq a4, zero, label603
	addiw a3, a2, 16
	li a4, 16
	bge a1, a4, label768
	mv a4, zero
	j label162
label768:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
label162:
	beq a4, zero, label603
	addiw a3, a2, 17
	li a4, 17
	bge a1, a4, label780
	mv a4, zero
	j label166
label780:
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
label166:
	beq a4, zero, label603
	addiw a3, a2, 18
	li a4, 18
	bge a1, a4, label792
	mv a4, zero
	j label170
label792:
	li a5, 1
	sw a5, 76(sp)
	lw a4, 72(sp)
label170:
	beq a4, zero, label603
	addiw a4, a2, 19
	li a3, 19
	bge a1, a3, label804
	mv a3, zero
label173:
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label119
	mv a2, a4
	j label119
label887:
	mv a2, a5
	addiw a1, a1, 1
	j label5
label512:
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label86
label804:
	li a5, 1
	sw a5, 80(sp)
	lw a3, 76(sp)
	j label173
