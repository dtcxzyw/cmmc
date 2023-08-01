.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	mv t2, zero
	li a1, 20
	li a3, 2
	li a0, 1
	li a4, 3
	li a5, 4
	li t0, 5
	sd ra, 0(sp)
	addi a2, sp, 8
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
	mv t1, zero
	bge zero, a1, label202
.p2align 2
label116:
	addiw t3, t2, 1
	ble t1, zero, label600
	sw a0, 8(sp)
	mv t4, a0
	bne a0, zero, label121
	j label939
.p2align 2
label603:
	mv t2, t3
.p2align 2
label119:
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label600:
	mv t4, zero
	j label603
.p2align 2
label121:
	addiw t3, t2, 2
	bge t1, a3, label609
	mv t4, zero
	j label613
.p2align 2
label124:
	addiw t3, t2, 3
	blt t1, a4, label619
	sw a0, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label127
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label619:
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label609:
	sw a0, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label124
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label127:
	addiw t3, t2, 4
	bge t1, a5, label627
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label627:
	sw a0, 20(sp)
	lw t4, 16(sp)
	beq t4, zero, label942
	addiw t3, t2, 5
	blt t1, t0, label637
	sw a0, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label603
	addiw t3, t2, 6
	li t4, 6
	blt t1, t4, label603
	sw a0, 28(sp)
	lw t4, 24(sp)
	bne t4, zero, label134
	j label603
label202:
	mv t1, zero
.p2align 2
label5:
	blt t1, a1, label52
	j label206
label932:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label415
label414:
	addiw t3, t2, 10
	blt t1, t0, label420
label912:
	sw zero, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label70
label427:
	mv t2, t3
	addiw t1, t1, 1
	j label5
label70:
	addiw t3, t2, 12
	li t4, 6
	blt t1, t4, label427
	sw zero, 28(sp)
	lw t4, 24(sp)
	bne t4, zero, label427
	addiw t3, t2, 14
	li t4, 7
	blt t1, t4, label427
	sw zero, 32(sp)
	lw t4, 28(sp)
	bne t4, zero, label427
	addiw t3, t2, 16
	li t4, 8
	blt t1, t4, label427
	sw zero, 36(sp)
	lw t4, 32(sp)
	bne t4, zero, label427
	addiw t3, t2, 18
	li t4, 9
	blt t1, t4, label427
	sw zero, 40(sp)
	lw t4, 36(sp)
	bne t4, zero, label427
	addiw t3, t2, 20
	li t4, 10
	blt t1, t4, label427
	sw zero, 44(sp)
	lw t4, 40(sp)
	bne t4, zero, label427
	addiw t3, t2, 22
	li t4, 11
	blt t1, t4, label427
	sw zero, 48(sp)
	lw t4, 44(sp)
	bne t4, zero, label427
	addiw t4, t2, 24
	li t3, 12
	bge t1, t3, label503
	mv t3, a0
	j label83
label206:
	mv a3, a0
label8:
	bge a3, a1, label11
	addiw a4, a3, -1
	addiw t2, t2, 1
	ble a3, a4, label11
	j label46
.p2align 2
label52:
	addiw t3, t2, 2
	bgt t1, zero, label375
	mv t4, a0
	bne a0, zero, label380
	j label905
.p2align 2
label926:
	sw zero, 12(sp)
	lw t4, 8(sp)
	beq t4, zero, label951
.p2align 2
label391:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
.p2align 2
label375:
	sw zero, 8(sp)
	mv t4, zero
	addiw t3, t2, 4
	blt t1, a3, label385
	sw zero, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label391
	addiw t3, t2, 6
	blt t1, a4, label396
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label403
	addiw t4, t2, 8
	blt t1, a5, label408
	j label910
.p2align 2
label905:
	addiw t3, t2, 4
	bge t1, a3, label926
.p2align 2
label385:
	mv t4, a0
	bne a0, zero, label391
	addiw t3, t2, 6
	bge t1, a4, label929
.p2align 2
label396:
	mv t4, a0
	bne a0, zero, label403
	addiw t4, t2, 8
	bge t1, a5, label932
.p2align 2
label408:
	mv t3, a0
	beq a0, zero, label911
.p2align 2
label415:
	mv t2, t4
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
.p2align 2
label929:
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label403
	addiw t4, t2, 8
	blt t1, a5, label408
label910:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label415
	j label414
.p2align 2
label951:
	addiw t3, t2, 6
	blt t1, a4, label396
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label403
	addiw t4, t2, 8
	blt t1, a5, label408
	j label910
label911:
	addiw t3, t2, 10
	bge t1, t0, label912
label420:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
label11:
	lw a2, 8(sp)
	addiw a1, t2, 3
	bne a2, zero, label13
label14:
	lw a3, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a3, zero, label16
	mv a1, a4
label16:
	lw a4, 24(sp)
	addiw a3, a1, 3
	beq a4, zero, label237
	lw a5, 28(sp)
	addiw a3, a1, 6
	beq a5, zero, label243
	lw a5, 32(sp)
	addiw a3, a1, 9
	bne a5, zero, label251
	lw a3, 36(sp)
	addiw a1, a1, 12
	bne a3, zero, label23
	j label19
label237:
	mv a1, a3
label23:
	lw a5, 44(sp)
	addiw a3, a1, 3
	beq a5, zero, label265
	lw a3, 48(sp)
	addiw a1, a1, 6
	beq a3, zero, label25
	j label39
label265:
	mv a1, a3
	j label39
label25:
	addiw a3, a1, 3
	bne a2, zero, label27
	j label269
label39:
	lw a5, 52(sp)
	addiw a3, a1, 3
	bne a5, zero, label41
label322:
	mv a1, a3
	j label25
label269:
	mv a1, a3
label30:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label32
	mv a1, a2
label36:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label32:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label35
	mv a0, a2
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a2, zero, a3
	mv a0, a2
	j label36
label41:
	lw a5, 56(sp)
	addiw a3, a1, 6
	beq a5, zero, label322
	lw a5, 60(sp)
	addiw a3, a1, 9
	beq a5, zero, label322
	lw a3, 64(sp)
	addiw a5, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a3, zero, label25
	mv a1, a5
	j label25
label46:
	sh2add a5, a4, a2
	sw a0, 0(a5)
	beq a4, zero, label51
	addiw t0, a3, -2
	sh2add a5, t0, a2
	lw a4, 0(a5)
label48:
	beq a4, zero, label11
	addiw a3, a3, 1
	j label8
label51:
	lw a4, 8(sp)
	j label48
label13:
	lw a3, 12(sp)
	addiw a1, t2, 6
	bne a3, zero, label16
	j label14
label243:
	mv a1, a3
label19:
	addiw a1, a1, 3
	j label23
label27:
	lw a3, 16(sp)
	addiw a2, a1, 6
	beq a3, zero, label276
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label276
	addiw a1, a1, 12
	beq a4, zero, label36
	j label30
.p2align 2
label380:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
.p2align 2
label939:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
.p2align 2
label403:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
label276:
	mv a1, a2
	j label30
label134:
	addiw t3, t2, 7
	li t4, 7
	blt t1, t4, label603
	sw a0, 32(sp)
	lw t4, 28(sp)
	bne t4, zero, label136
	j label603
.p2align 2
label613:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
label35:
	lw a2, 36(sp)
	addiw a1, a1, 9
	beq a2, zero, label36
	mv a0, a1
	lw a3, 40(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label36
label136:
	addiw t3, t2, 8
	li t4, 8
	blt t1, t4, label603
	sw a0, 36(sp)
	lw t4, 32(sp)
	bne t4, zero, label138
	j label603
label637:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
label942:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label116
	j label202
label138:
	addiw t3, t2, 9
	li t4, 9
	blt t1, t4, label603
	sw a0, 40(sp)
	lw t4, 36(sp)
	beq t4, zero, label603
	addiw t3, t2, 10
	li t4, 10
	blt t1, t4, label603
	sw a0, 44(sp)
	lw t4, 40(sp)
	beq t4, zero, label603
	addiw t3, t2, 11
	li t4, 11
	blt t1, t4, label603
	sw a0, 48(sp)
	lw t4, 44(sp)
	beq t4, zero, label603
	addiw t3, t2, 12
	li t4, 12
	blt t1, t4, label721
	sw a0, 52(sp)
	lw t4, 48(sp)
	j label146
label503:
	sw zero, 52(sp)
	lw t3, 48(sp)
label83:
	beq t3, zero, label85
label508:
	mv t2, t4
	addiw t1, t1, 1
	j label5
label85:
	addiw t4, t2, 26
	li t3, 13
	bge t1, t3, label512
	mv t3, a0
label86:
	bne t3, zero, label508
	addiw t4, t2, 28
	li t3, 14
	blt t1, t3, label522
	sw zero, 60(sp)
	lw t3, 56(sp)
	j label89
label721:
	mv t4, zero
label146:
	bne t4, zero, label148
	j label603
label522:
	mv t3, a0
label89:
	bne t3, zero, label508
	addiw t4, t2, 30
	li t3, 15
	blt t1, t3, label531
	sw zero, 64(sp)
	lw t3, 60(sp)
	j label92
label531:
	mv t3, a0
label92:
	bne t3, zero, label508
	addiw t4, t2, 32
	li t3, 16
	blt t1, t3, label540
	sw zero, 68(sp)
	lw t3, 64(sp)
	j label95
label540:
	mv t3, a0
label95:
	bne t3, zero, label508
	addiw t4, t2, 34
	li t3, 17
	bge t1, t3, label548
	mv t3, a0
	j label98
label548:
	sw zero, 72(sp)
	lw t3, 68(sp)
label98:
	bne t3, zero, label508
	addiw t4, t2, 36
	li t3, 18
	blt t1, t3, label558
	sw zero, 76(sp)
	lw t3, 72(sp)
	j label101
label558:
	mv t3, a0
label101:
	bne t3, zero, label508
	addiw t4, t2, 38
	li t3, 19
	bge t1, t3, label566
	mv t3, a0
	j label104
label566:
	sw zero, 80(sp)
	lw t3, 76(sp)
label104:
	addiw t5, t2, 40
	mv t2, t4
	beq t3, zero, label900
	addiw t1, t1, 1
	blt t1, a1, label52
	j label206
label148:
	addiw t3, t2, 13
	li t4, 13
	bge t1, t4, label732
	mv t4, zero
	j label150
label732:
	sw a0, 56(sp)
	lw t4, 52(sp)
label150:
	beq t4, zero, label603
	addiw t3, t2, 14
	li t4, 14
	bge t1, t4, label744
	mv t4, zero
	j label154
label744:
	sw a0, 60(sp)
	lw t4, 56(sp)
label154:
	beq t4, zero, label603
	addiw t3, t2, 15
	li t4, 15
	bge t1, t4, label756
	mv t4, zero
	j label158
label756:
	sw a0, 64(sp)
	lw t4, 60(sp)
label158:
	beq t4, zero, label603
	addiw t3, t2, 16
	li t4, 16
	bge t1, t4, label768
	mv t4, zero
	j label162
label768:
	sw a0, 68(sp)
	lw t4, 64(sp)
label162:
	beq t4, zero, label603
	addiw t3, t2, 17
	li t4, 17
	bge t1, t4, label780
	mv t4, zero
	j label166
label780:
	sw a0, 72(sp)
	lw t4, 68(sp)
label166:
	beq t4, zero, label603
	addiw t3, t2, 18
	li t4, 18
	bge t1, t4, label792
	mv t4, zero
	j label170
label792:
	sw a0, 76(sp)
	lw t4, 72(sp)
label170:
	beq t4, zero, label603
	addiw t4, t2, 19
	li t3, 19
	bge t1, t3, label804
	mv t3, zero
label173:
	addiw t5, t2, 20
	mv t2, t5
	bne t3, zero, label119
	mv t2, t4
	j label119
label804:
	sw a0, 80(sp)
	lw t3, 76(sp)
	j label173
label512:
	sw zero, 56(sp)
	lw t3, 52(sp)
	j label86
label900:
	mv t2, t5
	addiw t1, t1, 1
	j label5
label251:
	mv a1, a3
	addiw a1, a3, 3
	j label23
