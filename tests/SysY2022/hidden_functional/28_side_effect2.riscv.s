.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -88
	mv a1, zero
	mv t0, zero
	li a3, 20
	li a4, 2
	li a0, 1
	li a5, 3
	addi a2, sp, 8
	sd ra, 0(sp)
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
	j label2
.p2align 2
label206:
	sw a0, 8(sp)
	mv t2, a0
	bne a0, zero, label8
	mv a1, t1
	addiw t0, t0, 1
	bge t0, a3, label957
.p2align 2
label2:
	addiw t1, a1, 1
	bgt t0, zero, label206
	mv t2, zero
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
label957:
	mv t0, zero
	j label70
label126:
	addiw t1, a1, 8
	li t2, 4
	blt t0, t2, label448
	sw zero, 20(sp)
	lw t2, 16(sp)
	bne t2, zero, label448
	addiw t2, a1, 10
	li t1, 5
	blt t0, t1, label638
	sw zero, 24(sp)
	lw t1, 20(sp)
	bne t1, zero, label638
	addiw t1, a1, 12
	li t2, 6
	bge t0, t2, label131
.p2align 2
label448:
	mv a1, t1
.p2align 2
label75:
	addiw t0, t0, 1
	bge t0, a3, label452
.p2align 2
label70:
	addiw t1, a1, 2
	ble t0, zero, label444
	sw zero, 8(sp)
	mv t2, zero
	addiw t1, a1, 4
	blt t0, a4, label622
	sw zero, 12(sp)
	lw t2, 8(sp)
	beq t2, zero, label960
.p2align 2
label626:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label70
label452:
	mv a4, a0
label77:
	blt a4, a3, label114
label80:
	lw a3, 8(sp)
	addiw a2, a1, 3
	beq a3, zero, label463
	lw a2, 12(sp)
	addiw a1, a1, 6
	bne a2, zero, label82
	j label111
.p2align 2
label444:
	mv t2, a0
	bne a0, zero, label448
	addiw t1, a1, 4
	bge t0, a4, label944
.p2align 2
label622:
	mv t2, a0
	bne a0, zero, label626
	addiw t2, a1, 6
	bge t0, a5, label945
label631:
	mv a1, t2
	addiw t0, t0, 1
	blt t0, a3, label70
	j label452
.p2align 2
label8:
	addiw t1, a1, 2
	bge t0, a4, label216
	mv t2, zero
label220:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
label960:
	addiw t2, a1, 6
	blt t0, a5, label631
label945:
	sw zero, 16(sp)
	lw t1, 12(sp)
	beq t1, zero, label126
label638:
	mv a1, t2
	j label75
label944:
	sw zero, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label626
	addiw t2, a1, 6
	blt t0, a5, label631
	j label945
label11:
	addiw t1, a1, 3
	bge t0, a5, label225
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
label225:
	sw a0, 16(sp)
	lw t2, 12(sp)
	beq t2, zero, label941
	addiw t1, a1, 4
	li t2, 4
	bge t0, t2, label14
label941:
	mv a1, t1
label68:
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
label216:
	sw a0, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label11
	j label220
label463:
	mv a1, a2
label111:
	lw a2, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a2, zero, label82
	mv a1, a4
label82:
	lw a4, 24(sp)
	addiw a2, a1, 3
	bne a4, zero, label106
label471:
	mv a1, a2
label84:
	lw a5, 44(sp)
	addiw a2, a1, 3
	beq a5, zero, label477
	lw a2, 48(sp)
	addiw a1, a1, 6
	beq a2, zero, label92
	j label86
label477:
	mv a1, a2
label86:
	lw a5, 52(sp)
	addiw a2, a1, 3
	beq a5, zero, label485
	lw a5, 56(sp)
	addiw a2, a1, 6
	bne a5, zero, label89
label485:
	mv a1, a2
label92:
	addiw a2, a1, 3
	beq a3, zero, label515
	lw a3, 16(sp)
	addiw a2, a1, 6
	beq a3, zero, label515
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label515
	addiw a1, a1, 12
	beq a4, zero, label103
	j label94
label515:
	mv a1, a2
label94:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label96
label523:
	mv a1, a2
label103:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label106:
	lw a5, 28(sp)
	addiw a2, a1, 6
	beq a5, zero, label567
	lw a5, 32(sp)
	addiw a2, a1, 9
	beq a5, zero, label108
label567:
	addiw a1, a2, 3
	j label84
label96:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label99
label97:
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a0, zero, a3
	j label103
label114:
	addiw a5, a4, -1
	addiw a1, a1, 1
	ble a4, a5, label80
	sh2add t0, a5, a2
	sw a0, 0(t0)
	bne a5, zero, label116
	lw a5, 8(sp)
	j label118
label116:
	lw a5, -4(t0)
label118:
	beq a5, zero, label80
	addiw a4, a4, 1
	j label77
label14:
	sw a0, 20(sp)
	lw t2, 16(sp)
	beq t2, zero, label941
	addiw t1, a1, 5
	li t2, 5
	blt t0, t2, label941
	sw a0, 24(sp)
	lw t2, 20(sp)
	bne t2, zero, label17
	j label941
label89:
	lw a5, 60(sp)
	addiw a2, a1, 9
	beq a5, zero, label485
	lw a5, 64(sp)
	addiw a2, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a5, zero, label92
	mv a1, a2
	j label92
label99:
	lw a3, 36(sp)
	addiw a2, a1, 9
	beq a3, zero, label523
	j label97
label108:
	lw a5, 36(sp)
	addiw a2, a1, 12
	bne a5, zero, label471
	j label567
label131:
	sw zero, 28(sp)
	lw t2, 24(sp)
	bne t2, zero, label448
	addiw t2, a1, 14
	li t1, 7
	blt t0, t1, label638
	sw zero, 32(sp)
	lw t1, 28(sp)
	bne t1, zero, label638
	addiw t1, a1, 16
	li t2, 8
	blt t0, t2, label448
	sw zero, 36(sp)
	lw t2, 32(sp)
	bne t2, zero, label448
	addiw t2, a1, 18
	li t1, 9
	blt t0, t1, label638
	sw zero, 40(sp)
	lw t1, 36(sp)
	bne t1, zero, label638
	addiw t3, a1, 20
	li t2, 10
	bge t0, t2, label714
	mv t1, a0
	j label139
label17:
	addiw t1, a1, 6
	li t2, 6
	blt t0, t2, label941
	sw a0, 28(sp)
	lw t2, 24(sp)
	beq t2, zero, label941
	addiw t1, a1, 7
	li t2, 7
	blt t0, t2, label941
	sw a0, 32(sp)
	lw t2, 28(sp)
	beq t2, zero, label941
	addiw t1, a1, 8
	li t2, 8
	blt t0, t2, label941
	sw a0, 36(sp)
	lw t2, 32(sp)
	beq t2, zero, label941
	addiw t1, a1, 9
	li t2, 9
	blt t0, t2, label941
	sw a0, 40(sp)
	lw t2, 36(sp)
	beq t2, zero, label941
	addiw t1, a1, 10
	li t3, 10
	blt t0, t3, label310
	sw a0, 44(sp)
	lw t2, 40(sp)
	j label27
label714:
	sw zero, 44(sp)
	lw t1, 40(sp)
label139:
	beq t1, zero, label141
label719:
	mv a1, t3
	j label75
label141:
	addiw t2, a1, 22
	li t3, 11
	bge t0, t3, label723
	mv t1, a0
label143:
	bne t1, zero, label638
	addiw t4, a1, 24
	li t2, 12
	bge t0, t2, label735
	mv t1, a0
	j label147
label735:
	sw zero, 52(sp)
	lw t1, 48(sp)
label147:
	bne t1, zero, label743
	addiw t3, a1, 26
	li t2, 13
	blt t0, t2, label748
	sw zero, 56(sp)
	lw t1, 52(sp)
	j label151
label748:
	mv t1, a0
label151:
	bne t1, zero, label719
	addiw t2, a1, 28
	li t3, 14
	blt t0, t3, label760
	sw zero, 60(sp)
	lw t1, 56(sp)
	j label155
label760:
	mv t1, a0
label155:
	bne t1, zero, label638
	addiw t3, a1, 30
	li t2, 15
	bge t0, t2, label771
	mv t1, a0
label159:
	bne t1, zero, label719
	addiw t4, a1, 32
	li t2, 16
	blt t0, t2, label784
	sw zero, 68(sp)
	lw t1, 64(sp)
	j label163
label784:
	mv t1, a0
label163:
	bne t1, zero, label743
	addiw t2, a1, 34
	li t3, 17
	bge t0, t3, label795
	mv t1, a0
label167:
	bne t1, zero, label638
	addiw t3, a1, 36
	li t2, 18
	bge t0, t2, label807
	mv t1, a0
label171:
	bne t1, zero, label719
	addiw t2, a1, 38
	li t3, 19
	bge t0, t3, label819
	mv t1, a0
label175:
	bne t1, zero, label638
	addiw a1, a1, 40
	blt t0, a3, label75
	sw zero, 84(sp)
	j label75
label310:
	mv t2, zero
label27:
	beq t2, zero, label941
	addiw t1, a1, 11
	li t3, 11
	blt t0, t3, label322
	sw a0, 48(sp)
	lw t2, 44(sp)
	j label31
label322:
	mv t2, zero
label31:
	beq t2, zero, label941
	addiw t1, a1, 12
	li t3, 12
	blt t0, t3, label334
	sw a0, 52(sp)
	lw t2, 48(sp)
	j label35
label334:
	mv t2, zero
label35:
	beq t2, zero, label941
	addiw t1, a1, 13
	li t3, 13
	blt t0, t3, label346
	sw a0, 56(sp)
	lw t2, 52(sp)
label38:
	beq t2, zero, label941
	addiw t1, a1, 14
	li t3, 14
	blt t0, t3, label355
	sw a0, 60(sp)
	lw t2, 56(sp)
label41:
	beq t2, zero, label941
	addiw t1, a1, 15
	li t3, 15
	blt t0, t3, label364
	sw a0, 64(sp)
	lw t2, 60(sp)
label45:
	beq t2, zero, label941
	addiw t1, a1, 16
	li t3, 16
	blt t0, t3, label376
	sw a0, 68(sp)
	lw t2, 64(sp)
label48:
	beq t2, zero, label941
	addiw t1, a1, 17
	li t3, 17
	blt t0, t3, label385
	sw a0, 72(sp)
	lw t2, 68(sp)
label51:
	beq t2, zero, label941
	addiw t1, a1, 18
	li t3, 18
	blt t0, t3, label394
	sw a0, 76(sp)
	lw t2, 72(sp)
label55:
	beq t2, zero, label941
	addiw t1, a1, 19
	li t3, 19
	bge t0, t3, label405
	mv t2, zero
	j label58
label405:
	sw a0, 80(sp)
	lw t2, 76(sp)
label58:
	beq t2, zero, label941
	addiw a1, a1, 20
	blt t0, a3, label68
	sw a0, 84(sp)
	j label68
label723:
	sw zero, 48(sp)
	lw t1, 44(sp)
	j label143
label743:
	mv a1, t4
	j label75
label394:
	mv t2, zero
	j label55
label385:
	mv t2, zero
	j label51
label376:
	mv t2, zero
	j label48
label819:
	sw zero, 80(sp)
	lw t1, 76(sp)
	j label175
label364:
	mv t2, zero
	j label45
label346:
	mv t2, zero
	j label38
label807:
	sw zero, 76(sp)
	lw t1, 72(sp)
	j label171
label795:
	sw zero, 72(sp)
	lw t1, 68(sp)
	j label167
label771:
	sw zero, 64(sp)
	lw t1, 60(sp)
	j label159
label355:
	mv t2, zero
	j label41
