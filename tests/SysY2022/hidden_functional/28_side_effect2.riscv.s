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
	j label2
.p2align 2
label209:
	mv a1, t1
	addiw t0, t0, 1
	bge t0, a3, label952
.p2align 2
label2:
	addiw t1, a1, 1
	bgt t0, zero, label205
	mv t2, zero
	j label209
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
	j label952
.p2align 2
label215:
	mv t2, zero
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label952
.p2align 2
label205:
	sw a0, 8(sp)
	mv t2, a0
	bne a0, zero, label7
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label952
.p2align 2
label10:
	addiw t1, a1, 3
	bge t0, a5, label223
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label952
label223:
	sw a0, 16(sp)
	lw t2, 12(sp)
	bne t2, zero, label12
label934:
	mv a1, t1
label67:
	addiw t0, t0, 1
	blt t0, a3, label2
	j label952
label12:
	addiw t1, a1, 4
	li t2, 4
	blt t0, t2, label934
	sw a0, 20(sp)
	lw t2, 16(sp)
	bne t2, zero, label14
	j label934
label952:
	mv t0, zero
	j label69
.p2align 2
label456:
	mv a1, t2
	addiw t0, t0, 1
	bge t0, a3, label938
.p2align 2
label69:
	addiw t1, a1, 2
	ble t0, zero, label441
	sw zero, 8(sp)
	addiw t2, a1, 4
	blt t0, a4, label450
	sw zero, 12(sp)
	lw t1, 8(sp)
	bne t1, zero, label456
	addiw t1, a1, 6
	blt t0, a5, label461
	j label940
.p2align 2
label441:
	mv t2, a0
	bne a0, zero, label445
	addiw t2, a1, 4
	bge t0, a4, label937
.p2align 2
label450:
	mv t1, a0
	bne a0, zero, label456
	addiw t1, a1, 6
	bge t0, a5, label940
label461:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label69
	j label938
label940:
	sw zero, 16(sp)
	lw t2, 12(sp)
	bne t2, zero, label468
	addiw t2, a1, 8
	li t1, 4
	bge t0, t1, label81
label473:
	mv a1, t2
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
	beq t2, zero, label84
label468:
	mv a1, t1
label134:
	addiw t0, t0, 1
	blt t0, a3, label69
	j label938
label937:
	sw zero, 12(sp)
	lw t1, 8(sp)
	bne t1, zero, label456
	addiw t1, a1, 6
	blt t0, a5, label461
	j label940
label938:
	mv a4, a0
label136:
	bge a4, a3, label146
	addiw a5, a4, -1
	addiw a1, a1, 1
	ble a4, a5, label146
	sh2add t0, a5, a2
	sw a0, 0(t0)
	beq a5, zero, label141
	lw a5, -4(t0)
label143:
	beq a5, zero, label146
	addiw a4, a4, 1
	j label136
label146:
	lw a3, 8(sp)
	addiw a2, a1, 3
	beq a3, zero, label700
	lw a4, 12(sp)
	addiw a1, a1, 6
	bne a4, zero, label148
	j label178
label700:
	mv a1, a2
label178:
	lw a2, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a2, zero, label148
	mv a1, a4
label148:
	lw a4, 24(sp)
	addiw a2, a1, 3
	bne a4, zero, label172
label708:
	mv a1, a2
label150:
	lw a5, 44(sp)
	addiw a2, a1, 3
	beq a5, zero, label714
	lw a2, 48(sp)
	addiw a1, a1, 6
	beq a2, zero, label158
	j label152
label714:
	mv a1, a2
label152:
	lw a5, 52(sp)
	addiw a2, a1, 3
	beq a5, zero, label722
	lw a5, 56(sp)
	addiw a2, a1, 6
	bne a5, zero, label155
label722:
	mv a1, a2
label158:
	addiw a2, a1, 3
	bne a3, zero, label166
label752:
	mv a1, a2
label160:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label162
label760:
	mv a1, a2
label169:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label172:
	lw a5, 28(sp)
	addiw a2, a1, 6
	bne a5, zero, label175
label173:
	addiw a1, a2, 3
	j label150
label162:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label165
label163:
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a0, zero, a3
	j label169
label166:
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label167
	j label752
label155:
	lw a5, 60(sp)
	addiw a2, a1, 9
	beq a5, zero, label722
	lw a5, 64(sp)
	addiw a2, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a5, zero, label158
	mv a1, a2
	j label158
label14:
	addiw t1, a1, 5
	li t2, 5
	blt t0, t2, label934
	sw a0, 24(sp)
	lw t2, 20(sp)
	bne t2, zero, label16
	j label934
label175:
	lw a5, 32(sp)
	addiw a2, a1, 9
	beq a5, zero, label176
	j label173
label167:
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label752
	addiw a1, a1, 12
	beq a4, zero, label169
	j label160
label165:
	lw a3, 36(sp)
	addiw a2, a1, 9
	beq a3, zero, label760
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
	blt t0, t3, label545
	sw zero, 44(sp)
	lw t1, 40(sp)
	j label94
label176:
	lw a5, 36(sp)
	addiw a2, a1, 12
	bne a5, zero, label708
	j label173
label16:
	addiw t1, a1, 6
	li t2, 6
	blt t0, t2, label934
	sw a0, 28(sp)
	lw t2, 24(sp)
	beq t2, zero, label934
	addiw t1, a1, 7
	li t2, 7
	blt t0, t2, label934
	sw a0, 32(sp)
	lw t2, 28(sp)
	beq t2, zero, label934
	addiw t1, a1, 8
	li t2, 8
	blt t0, t2, label934
	sw a0, 36(sp)
	lw t2, 32(sp)
	beq t2, zero, label934
	addiw t1, a1, 9
	li t2, 9
	blt t0, t2, label934
	sw a0, 40(sp)
	lw t2, 36(sp)
	bne t2, zero, label24
	j label934
label545:
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
label24:
	addiw t1, a1, 10
	li t3, 10
	blt t0, t3, label308
	sw a0, 44(sp)
	lw t2, 40(sp)
label25:
	bne t2, zero, label27
	j label934
label568:
	sw zero, 52(sp)
	lw t1, 48(sp)
label102:
	bne t1, zero, label473
	addiw t3, a1, 26
	li t2, 13
	bge t0, t2, label580
	mv t1, a0
label106:
	beq t1, zero, label108
label564:
	mv a1, t3
	j label134
label108:
	addiw t2, a1, 28
	li t3, 14
	bge t0, t3, label592
	mv t1, a0
label109:
	bne t1, zero, label473
	addiw t3, a1, 30
	li t2, 15
	blt t0, t2, label602
	sw zero, 64(sp)
	lw t1, 60(sp)
	j label113
label602:
	mv t1, a0
label113:
	bne t1, zero, label564
	addiw t4, a1, 32
	li t2, 16
	blt t0, t2, label614
	sw zero, 68(sp)
	lw t1, 64(sp)
	j label117
label614:
	mv t1, a0
label117:
	beq t1, zero, label119
	mv a1, t4
	j label134
label119:
	addiw t2, a1, 34
	li t3, 17
	bge t0, t3, label625
	mv t1, a0
	j label120
label625:
	sw zero, 72(sp)
	lw t1, 68(sp)
label120:
	bne t1, zero, label473
	addiw t3, a1, 36
	li t2, 18
	bge t0, t2, label634
	mv t1, a0
	j label124
label634:
	sw zero, 76(sp)
	lw t1, 72(sp)
label124:
	bne t1, zero, label564
	addiw t2, a1, 38
	li t3, 19
	bge t0, t3, label646
	mv t1, a0
label128:
	bne t1, zero, label473
	addiw a1, a1, 40
	blt t0, a3, label134
	sw zero, 84(sp)
	j label134
label27:
	addiw t1, a1, 11
	li t3, 11
	blt t0, t3, label317
	sw a0, 48(sp)
	lw t2, 44(sp)
	j label28
label317:
	mv t2, zero
label28:
	beq t2, zero, label934
	addiw t1, a1, 12
	li t3, 12
	bge t0, t3, label325
	mv t2, zero
label32:
	beq t2, zero, label934
	addiw t1, a1, 13
	li t3, 13
	bge t0, t3, label337
	mv t2, zero
	j label36
label337:
	sw a0, 56(sp)
	lw t2, 52(sp)
label36:
	beq t2, zero, label934
	addiw t1, a1, 14
	li t3, 14
	bge t0, t3, label349
	mv t2, zero
	j label39
label349:
	sw a0, 60(sp)
	lw t2, 56(sp)
label39:
	beq t2, zero, label934
	addiw t1, a1, 15
	li t3, 15
	blt t0, t3, label359
	sw a0, 64(sp)
	lw t2, 60(sp)
label42:
	beq t2, zero, label934
	addiw t1, a1, 16
	li t3, 16
	blt t0, t3, label368
	sw a0, 68(sp)
	lw t2, 64(sp)
	j label46
label368:
	mv t2, zero
label46:
	beq t2, zero, label934
	addiw t1, a1, 17
	li t3, 17
	blt t0, t3, label380
	sw a0, 72(sp)
	lw t2, 68(sp)
label50:
	beq t2, zero, label934
	addiw t1, a1, 18
	li t3, 18
	blt t0, t3, label392
	sw a0, 76(sp)
	lw t2, 72(sp)
label54:
	beq t2, zero, label934
	addiw t1, a1, 19
	li t3, 19
	bge t0, t3, label403
	mv t2, zero
	j label58
label403:
	sw a0, 80(sp)
	lw t2, 76(sp)
label58:
	beq t2, zero, label934
	addiw a1, a1, 20
	blt t0, a3, label67
	sw a0, 84(sp)
	j label67
label359:
	mv t2, zero
	j label42
label556:
	sw zero, 48(sp)
	lw t1, 44(sp)
	j label98
label592:
	sw zero, 60(sp)
	lw t1, 56(sp)
	j label109
label392:
	mv t2, zero
	j label54
label380:
	mv t2, zero
	j label50
label325:
	sw a0, 52(sp)
	lw t2, 48(sp)
	j label32
label580:
	sw zero, 56(sp)
	lw t1, 52(sp)
	j label106
label141:
	lw a5, 8(sp)
	j label143
label308:
	mv t2, zero
	j label25
.p2align 2
label445:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label69
	j label938
label646:
	sw zero, 80(sp)
	lw t1, 76(sp)
	j label128
