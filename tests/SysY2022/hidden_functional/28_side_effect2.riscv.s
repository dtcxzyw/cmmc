.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
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
.p2align 2
label2:
	addiw t1, a1, 1
	bgt t0, zero, label205
	mv t2, zero
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
.p2align 2
label7:
	addiw t1, a1, 2
	blt t0, a4, label215
	sw a0, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label10
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
.p2align 2
label215:
	mv t2, zero
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
.p2align 2
label205:
	sw a0, 8(sp)
	mv t2, a0
	bne a0, zero, label7
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
.p2align 2
label10:
	addiw t1, a1, 3
	bge t0, a5, label223
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
label223:
	sw a0, 16(sp)
	lw t2, 12(sp)
	bne t2, zero, label12
label937:
	mv a1, t1
label67:
	addiw t0, t0, 1
	blt t0, a3, label2
	j label955
label12:
	addiw t1, a1, 4
	li t2, 4
	blt t0, t2, label937
	sw a0, 20(sp)
	lw t2, 16(sp)
	beq t2, zero, label937
	addiw t1, a1, 5
	li t2, 5
	blt t0, t2, label937
	sw a0, 24(sp)
	lw t2, 20(sp)
	bne t2, zero, label16
	j label937
label955:
	mv t0, zero
.p2align 2
label69:
	addiw t1, a1, 2
	ble t0, zero, label441
	sw zero, 8(sp)
	addiw t2, a1, 4
	blt t0, a4, label450
	j label957
label941:
	mv a4, a0
	j label136
.p2align 2
label456:
	mv a1, t2
	addiw t0, t0, 1
	blt t0, a3, label69
	j label941
label136:
	blt a4, a3, label173
label139:
	lw a3, 8(sp)
	addiw a2, a1, 3
	beq a3, zero, label680
	lw a2, 12(sp)
	addiw a1, a1, 6
	bne a2, zero, label142
	j label171
.p2align 2
label441:
	mv t2, a0
	bne a0, zero, label445
	addiw t2, a1, 4
	bge t0, a4, label940
.p2align 2
label450:
	mv t1, a0
	bne a0, zero, label456
	addiw t1, a1, 6
	blt t0, a5, label461
label943:
	sw zero, 16(sp)
	lw t2, 12(sp)
	bne t2, zero, label468
	addiw t2, a1, 8
	li t1, 4
	bge t0, t1, label81
label473:
	mv a1, t2
	j label134
.p2align 2
label957:
	sw zero, 12(sp)
	lw t1, 8(sp)
	bne t1, zero, label456
	addiw t1, a1, 6
	blt t0, a5, label461
	j label943
label468:
	mv a1, t1
	j label134
label81:
	sw zero, 20(sp)
	lw t1, 16(sp)
	bne t1, zero, label473
	addiw t1, a1, 10
	li t2, 5
	blt t0, t2, label468
	sw zero, 24(sp)
	lw t2, 20(sp)
	bne t2, zero, label468
	j label84
label134:
	addiw t0, t0, 1
	blt t0, a3, label69
	j label941
label940:
	sw zero, 12(sp)
	lw t1, 8(sp)
	bne t1, zero, label456
	addiw t1, a1, 6
	blt t0, a5, label461
	j label943
label680:
	mv a1, a2
	j label171
label142:
	lw a4, 24(sp)
	addiw a2, a1, 3
	bne a4, zero, label166
label695:
	mv a1, a2
label144:
	lw a5, 44(sp)
	addiw a2, a1, 3
	beq a5, zero, label701
	lw a2, 48(sp)
	addiw a1, a1, 6
	beq a2, zero, label152
	j label146
label171:
	lw a2, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a2, zero, label142
	mv a1, a4
	j label142
label701:
	mv a1, a2
label146:
	lw a5, 52(sp)
	addiw a2, a1, 3
	bne a5, zero, label148
label709:
	mv a1, a2
label152:
	addiw a2, a1, 3
	bne a3, zero, label154
label739:
	mv a1, a2
	j label160
label157:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label160:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label162
label767:
	mv a1, a2
	j label157
label166:
	lw a5, 28(sp)
	addiw a2, a1, 6
	bne a5, zero, label167
label791:
	addiw a1, a2, 3
	j label144
label162:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label165
label163:
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a0, zero, a3
	j label157
label148:
	lw a5, 56(sp)
	addiw a2, a1, 6
	beq a5, zero, label709
	lw a5, 60(sp)
	addiw a2, a1, 9
	beq a5, zero, label709
	lw a5, 64(sp)
	addiw a2, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a5, zero, label152
	mv a1, a2
	j label152
label173:
	addiw a5, a4, -1
	addiw a1, a1, 1
	ble a4, a5, label139
	sh2add t0, a5, a2
	sw a0, 0(t0)
	beq a5, zero, label179
	j label175
label176:
	beq a5, zero, label139
	addiw a4, a4, 1
	j label136
label179:
	lw a5, 8(sp)
	j label176
label154:
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label155
	j label739
label461:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label69
	j label941
label175:
	addiw t1, a4, -2
	sh2add t0, t1, a2
	lw a5, 0(t0)
	j label176
label155:
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label739
	addiw a1, a1, 12
	beq a4, zero, label157
	j label160
label167:
	lw a5, 32(sp)
	addiw a2, a1, 9
	bne a5, zero, label791
	lw a5, 36(sp)
	addiw a2, a1, 12
	bne a5, zero, label695
	j label791
label165:
	lw a3, 36(sp)
	addiw a2, a1, 9
	beq a3, zero, label767
	j label163
label84:
	addiw t2, a1, 12
	li t1, 6
	blt t0, t1, label473
	sw zero, 28(sp)
	lw t1, 24(sp)
	bne t1, zero, label473
	addiw t1, a1, 14
	li t2, 7
	blt t0, t2, label468
	sw zero, 32(sp)
	lw t2, 28(sp)
	bne t2, zero, label468
	addiw t2, a1, 16
	li t1, 8
	blt t0, t1, label473
	sw zero, 36(sp)
	lw t1, 32(sp)
	bne t1, zero, label473
	addiw t1, a1, 18
	li t2, 9
	blt t0, t2, label468
	sw zero, 40(sp)
	lw t2, 36(sp)
	bne t2, zero, label468
	addiw t2, a1, 20
	li t3, 10
	bge t0, t3, label544
	mv t1, a0
label94:
	bne t1, zero, label473
	addiw t3, a1, 22
	li t2, 11
	bge t0, t2, label556
	mv t1, a0
label98:
	bne t1, zero, label564
	addiw t2, a1, 24
	li t3, 12
	bge t0, t3, label568
	mv t1, a0
	j label102
label16:
	addiw t1, a1, 6
	li t2, 6
	blt t0, t2, label937
	sw a0, 28(sp)
	lw t2, 24(sp)
	beq t2, zero, label937
	addiw t1, a1, 7
	li t2, 7
	blt t0, t2, label937
	sw a0, 32(sp)
	lw t2, 28(sp)
	beq t2, zero, label937
	addiw t1, a1, 8
	li t2, 8
	blt t0, t2, label937
	sw a0, 36(sp)
	lw t2, 32(sp)
	beq t2, zero, label937
	addiw t1, a1, 9
	li t2, 9
	blt t0, t2, label937
	sw a0, 40(sp)
	lw t2, 36(sp)
	beq t2, zero, label937
	addiw t1, a1, 10
	li t3, 10
	blt t0, t3, label308
	sw a0, 44(sp)
	lw t2, 40(sp)
label26:
	bne t2, zero, label28
	j label937
label568:
	sw zero, 52(sp)
	lw t1, 48(sp)
label102:
	bne t1, zero, label473
	addiw t4, a1, 26
	li t2, 13
	bge t0, t2, label580
	mv t1, a0
label106:
	beq t1, zero, label108
label588:
	mv a1, t4
	j label134
label108:
	addiw t3, a1, 28
	li t2, 14
	bge t0, t2, label592
	mv t1, a0
label110:
	bne t1, zero, label564
	addiw t2, a1, 30
	li t3, 15
	bge t0, t3, label604
	mv t1, a0
	j label114
label604:
	sw zero, 64(sp)
	lw t1, 60(sp)
label114:
	bne t1, zero, label473
	addiw t4, a1, 32
	li t2, 16
	bge t0, t2, label616
	mv t1, a0
label118:
	bne t1, zero, label588
	addiw t3, a1, 34
	li t2, 17
	bge t0, t2, label628
	mv t1, a0
	j label122
label564:
	mv a1, t3
	j label134
label628:
	sw zero, 72(sp)
	lw t1, 68(sp)
label122:
	bne t1, zero, label564
	addiw t2, a1, 36
	li t3, 18
	bge t0, t3, label640
	mv t1, a0
	j label125
label640:
	sw zero, 76(sp)
	lw t1, 72(sp)
label125:
	bne t1, zero, label473
	addiw t3, a1, 38
	li t2, 19
	bge t0, t2, label649
	mv t1, a0
label129:
	bne t1, zero, label564
	addiw a1, a1, 40
	blt t0, a3, label134
	sw zero, 84(sp)
	j label134
label28:
	addiw t1, a1, 11
	li t3, 11
	blt t0, t3, label320
	sw a0, 48(sp)
	lw t2, 44(sp)
	j label30
label320:
	mv t2, zero
label30:
	beq t2, zero, label937
	addiw t1, a1, 12
	li t3, 12
	bge t0, t3, label331
	mv t2, zero
label34:
	beq t2, zero, label937
	addiw t1, a1, 13
	li t3, 13
	bge t0, t3, label343
	mv t2, zero
	j label37
label343:
	sw a0, 56(sp)
	lw t2, 52(sp)
label37:
	beq t2, zero, label937
	addiw t1, a1, 14
	li t3, 14
	bge t0, t3, label352
	mv t2, zero
	j label40
label352:
	sw a0, 60(sp)
	lw t2, 56(sp)
label40:
	beq t2, zero, label937
	addiw t1, a1, 15
	li t3, 15
	blt t0, t3, label362
	sw a0, 64(sp)
	lw t2, 60(sp)
label44:
	beq t2, zero, label937
	addiw t1, a1, 16
	li t3, 16
	blt t0, t3, label374
	sw a0, 68(sp)
	lw t2, 64(sp)
	j label47
label374:
	mv t2, zero
label47:
	beq t2, zero, label937
	addiw t1, a1, 17
	li t3, 17
	blt t0, t3, label383
	sw a0, 72(sp)
	lw t2, 68(sp)
label50:
	beq t2, zero, label937
	addiw t1, a1, 18
	li t3, 18
	blt t0, t3, label392
	sw a0, 76(sp)
	lw t2, 72(sp)
label54:
	beq t2, zero, label937
	addiw t1, a1, 19
	li t3, 19
	bge t0, t3, label403
	mv t2, zero
	j label58
label403:
	sw a0, 80(sp)
	lw t2, 76(sp)
label58:
	beq t2, zero, label937
	addiw a1, a1, 20
	blt t0, a3, label67
	sw a0, 84(sp)
	j label67
label580:
	sw zero, 56(sp)
	lw t1, 52(sp)
	j label106
label544:
	sw zero, 44(sp)
	lw t1, 40(sp)
	j label94
label392:
	mv t2, zero
	j label54
label383:
	mv t2, zero
	j label50
label362:
	mv t2, zero
	j label44
.p2align 2
label445:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label69
	j label941
label331:
	sw a0, 52(sp)
	lw t2, 48(sp)
	j label34
label308:
	mv t2, zero
	j label26
label556:
	sw zero, 48(sp)
	lw t1, 44(sp)
	j label98
label616:
	sw zero, 68(sp)
	lw t1, 64(sp)
	j label118
label592:
	sw zero, 60(sp)
	lw t1, 56(sp)
	j label110
label649:
	sw zero, 80(sp)
	lw t1, 76(sp)
	j label129
