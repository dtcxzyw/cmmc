.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	mv t2, zero
	li a1, 20
	li a0, 1
	li a3, 2
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
label2:
	blt t1, a1, label5
	j label202
label237:
	sw a0, 20(sp)
	lw t4, 16(sp)
label17:
	bne t4, zero, label19
label241:
	mv t2, t3
	addiw t1, t1, 1
	j label2
label202:
	mv t1, zero
	j label69
.p2align 2
label5:
	addiw t3, t2, 1
	ble t1, zero, label208
	j label207
.p2align 2
label921:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label208:
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label207:
	sw a0, 8(sp)
	mv t4, a0
	beq a0, zero, label921
	addiw t3, t2, 2
	bge t1, a3, label216
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label216:
	sw a0, 12(sp)
	lw t4, 8(sp)
	beq t4, zero, label923
	addiw t3, t2, 3
	bge t1, a4, label225
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label69:
	blt t1, a1, label72
	j label430
label917:
	sw zero, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label89
label485:
	mv t2, t3
	addiw t1, t1, 1
	j label69
label430:
	mv a3, a0
	j label136
.p2align 2
label72:
	addiw t3, t2, 2
	bgt t1, zero, label435
	mv t4, a0
	bne a0, zero, label440
	j label911
.p2align 2
label445:
	mv t4, a0
	beq a0, zero, label448
.p2align 2
label449:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label136:
	blt a3, a1, label139
label146:
	lw a2, 8(sp)
	addiw a1, t2, 3
	bne a2, zero, label177
	j label178
label148:
	lw a4, 24(sp)
	addiw a3, a1, 3
	beq a4, zero, label694
	lw a5, 28(sp)
	addiw a3, a1, 6
	bne a5, zero, label173
	j label790
label178:
	lw a3, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a3, zero, label148
	mv a1, a4
	j label148
.p2align 2
label435:
	sw zero, 8(sp)
	mv t4, zero
	addiw t3, t2, 4
	blt t1, a3, label445
	sw zero, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label449
	addiw t3, t2, 6
	bge t1, a4, label954
.p2align 2
label454:
	mv t4, a0
	beq a0, zero, label914
.p2align 2
label461:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
.p2align 2
label911:
	addiw t3, t2, 4
	blt t1, a3, label445
	sw zero, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label449
	addiw t3, t2, 6
	blt t1, a4, label454
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label461
	j label947
.p2align 2
label448:
	addiw t3, t2, 6
	blt t1, a4, label454
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label461
.p2align 2
label947:
	addiw t4, t2, 8
	blt t1, a5, label466
label952:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label473
label472:
	addiw t3, t2, 10
	blt t1, t0, label478
	j label917
.p2align 2
label914:
	addiw t4, t2, 8
	bge t1, a5, label933
.p2align 2
label466:
	mv t3, a0
	beq a0, zero, label916
.p2align 2
label473:
	mv t2, t4
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
.p2align 2
label225:
	sw a0, 16(sp)
	lw t4, 12(sp)
	beq t4, zero, label925
	addiw t3, t2, 4
	bge t1, a5, label237
	mv t4, zero
	j label17
.p2align 2
label954:
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label461
	addiw t4, t2, 8
	blt t1, a5, label466
	j label952
label916:
	addiw t3, t2, 10
	bge t1, t0, label917
label478:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label89:
	addiw t3, t2, 12
	li t4, 6
	blt t1, t4, label485
	sw zero, 28(sp)
	lw t4, 24(sp)
	bne t4, zero, label485
	addiw t3, t2, 14
	li t4, 7
	blt t1, t4, label485
	sw zero, 32(sp)
	lw t4, 28(sp)
	bne t4, zero, label485
	addiw t3, t2, 16
	li t4, 8
	blt t1, t4, label485
	sw zero, 36(sp)
	lw t4, 32(sp)
	bne t4, zero, label485
	addiw t3, t2, 18
	li t4, 9
	blt t1, t4, label485
	sw zero, 40(sp)
	lw t4, 36(sp)
	bne t4, zero, label485
	addiw t3, t2, 20
	li t4, 10
	blt t1, t4, label485
	sw zero, 44(sp)
	lw t4, 40(sp)
	bne t4, zero, label485
	addiw t3, t2, 22
	li t4, 11
	blt t1, t4, label485
	sw zero, 48(sp)
	lw t4, 44(sp)
	bne t4, zero, label485
	addiw t4, t2, 24
	li t3, 12
	bge t1, t3, label561
	mv t3, a0
	j label102
label933:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label473
	j label472
label19:
	addiw t3, t2, 5
	blt t1, t0, label241
	sw a0, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label241
	addiw t3, t2, 6
	li t4, 6
	blt t1, t4, label241
	sw a0, 28(sp)
	lw t4, 24(sp)
	beq t4, zero, label241
	addiw t3, t2, 7
	li t4, 7
	blt t1, t4, label241
	sw a0, 32(sp)
	lw t4, 28(sp)
	beq t4, zero, label241
	addiw t3, t2, 8
	li t4, 8
	blt t1, t4, label241
	sw a0, 36(sp)
	lw t4, 32(sp)
	beq t4, zero, label241
	addiw t3, t2, 9
	li t4, 9
	blt t1, t4, label241
	sw a0, 40(sp)
	lw t4, 36(sp)
	bne t4, zero, label29
	j label241
label694:
	mv a1, a3
label150:
	lw a5, 44(sp)
	addiw a3, a1, 3
	beq a5, zero, label700
	lw a3, 48(sp)
	addiw a1, a1, 6
	bne a3, zero, label166
label152:
	addiw a3, a1, 3
	bne a2, zero, label154
	j label704
label757:
	mv a1, a3
	j label152
label704:
	mv a1, a3
label157:
	lw a3, 28(sp)
	addiw a2, a1, 3
	bne a3, zero, label730
	lw a3, 32(sp)
	addiw a2, a1, 6
	beq a3, zero, label736
	lw a2, 36(sp)
	addiw a1, a1, 9
	beq a2, zero, label163
	mv a0, a1
	lw a3, 40(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label163
label700:
	mv a1, a3
label166:
	lw a5, 52(sp)
	addiw a3, a1, 3
	beq a5, zero, label757
	lw a5, 56(sp)
	addiw a3, a1, 6
	beq a5, zero, label757
	lw a5, 60(sp)
	addiw a3, a1, 9
	beq a5, zero, label757
	lw a3, 64(sp)
	addiw a5, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a3, zero, label152
	mv a1, a5
	j label152
label730:
	mv a1, a2
label163:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label139:
	addiw a4, a3, -1
	addiw t2, t2, 1
	ble a3, a4, label146
	sh2add a5, a4, a2
	sw a0, 0(a5)
	beq a4, zero, label141
	addiw a5, a3, -2
	sh2add t0, a5, a2
	lw a4, 0(t0)
	j label142
label141:
	lw a4, 8(sp)
label142:
	beq a4, zero, label146
	addiw a3, a3, 1
	j label136
label177:
	lw a3, 12(sp)
	addiw a1, t2, 6
	bne a3, zero, label148
	j label178
label154:
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label155
label711:
	mv a1, a2
	j label157
.p2align 2
label440:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label736:
	mv a0, a2
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a2, zero, a3
	mv a0, a2
	j label163
label790:
	mv a1, a3
	addiw a1, a3, 3
	j label150
label173:
	lw a5, 32(sp)
	addiw a3, a1, 9
	beq a5, zero, label174
	j label790
label155:
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label711
	addiw a1, a1, 12
	beq a4, zero, label163
	j label157
label174:
	lw a3, 36(sp)
	addiw a1, a1, 12
	bne a3, zero, label150
	addiw a1, a1, 3
	j label150
.p2align 2
label923:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label925:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label29:
	addiw t3, t2, 10
	li t4, 10
	blt t1, t4, label241
	sw a0, 44(sp)
	lw t4, 40(sp)
	bne t4, zero, label31
	j label241
label561:
	sw zero, 52(sp)
	lw t3, 48(sp)
label102:
	beq t3, zero, label104
label566:
	mv t2, t4
	addiw t1, t1, 1
	j label69
label104:
	addiw t4, t2, 26
	li t3, 13
	bge t1, t3, label570
	mv t3, a0
	j label105
label31:
	addiw t3, t2, 11
	li t4, 11
	blt t1, t4, label241
	sw a0, 48(sp)
	lw t4, 44(sp)
	beq t4, zero, label241
	addiw t3, t2, 12
	li t4, 12
	blt t1, t4, label331
	sw a0, 52(sp)
	lw t4, 48(sp)
label35:
	bne t4, zero, label37
	j label241
label570:
	sw zero, 56(sp)
	lw t3, 52(sp)
label105:
	bne t3, zero, label566
	addiw t4, t2, 28
	li t3, 14
	blt t1, t3, label580
	sw zero, 60(sp)
	lw t3, 56(sp)
	j label108
label37:
	addiw t3, t2, 13
	li t4, 13
	blt t1, t4, label343
	sw a0, 56(sp)
	lw t4, 52(sp)
label39:
	beq t4, zero, label241
	addiw t3, t2, 14
	li t4, 14
	blt t1, t4, label355
	sw a0, 60(sp)
	lw t4, 56(sp)
label43:
	bne t4, zero, label45
	j label241
label580:
	mv t3, a0
label108:
	bne t3, zero, label566
	addiw t4, t2, 30
	li t3, 15
	blt t1, t3, label589
	sw zero, 64(sp)
	lw t3, 60(sp)
label111:
	bne t3, zero, label566
	addiw t4, t2, 32
	li t3, 16
	bge t1, t3, label597
	mv t3, a0
label114:
	bne t3, zero, label566
	addiw t4, t2, 34
	li t3, 17
	bge t1, t3, label606
	mv t3, a0
	j label117
label606:
	sw zero, 72(sp)
	lw t3, 68(sp)
label117:
	bne t3, zero, label566
	addiw t4, t2, 36
	li t3, 18
	blt t1, t3, label616
	sw zero, 76(sp)
	lw t3, 72(sp)
label120:
	bne t3, zero, label566
	addiw t4, t2, 38
	li t3, 19
	blt t1, t3, label625
	sw zero, 80(sp)
	lw t3, 76(sp)
	j label123
label625:
	mv t3, a0
label123:
	addiw t5, t2, 40
	mv t2, t4
	beq t3, zero, label898
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label45:
	addiw t3, t2, 15
	li t4, 15
	bge t1, t4, label366
	mv t4, zero
	j label47
label366:
	sw a0, 64(sp)
	lw t4, 60(sp)
label47:
	beq t4, zero, label241
	addiw t3, t2, 16
	li t4, 16
	bge t1, t4, label378
	mv t4, zero
	j label51
label378:
	sw a0, 68(sp)
	lw t4, 64(sp)
label51:
	beq t4, zero, label241
	addiw t3, t2, 17
	li t4, 17
	bge t1, t4, label390
	mv t4, zero
	j label55
label390:
	sw a0, 72(sp)
	lw t4, 68(sp)
label55:
	beq t4, zero, label241
	addiw t3, t2, 18
	li t4, 18
	blt t1, t4, label403
	sw a0, 76(sp)
	lw t4, 72(sp)
	j label59
label403:
	mv t4, zero
label59:
	beq t4, zero, label241
	addiw t4, t2, 19
	li t3, 19
	blt t1, t3, label415
	sw a0, 80(sp)
	lw t3, 76(sp)
	j label62
label415:
	mv t3, zero
label62:
	addiw t5, t2, 20
	mv t2, t5
	bne t3, zero, label67
	mv t2, t4
	addiw t1, t1, 1
	j label2
label67:
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label331:
	mv t4, zero
	j label35
label616:
	mv t3, a0
	j label120
label597:
	sw zero, 68(sp)
	lw t3, 64(sp)
	j label114
label589:
	mv t3, a0
	j label111
label355:
	mv t4, zero
	j label43
label898:
	mv t2, t5
	addiw t1, t1, 1
	j label69
label343:
	mv t4, zero
	j label39
