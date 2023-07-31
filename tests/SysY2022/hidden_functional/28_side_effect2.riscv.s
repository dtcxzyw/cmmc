.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	mv a1, zero
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
	mv a2, zero
	li a3, 20
	bge zero, a3, label202
.p2align 2
label5:
	addiw a3, a1, 1
	bgt a2, zero, label207
	mv a4, zero
.p2align 2
label211:
	mv a1, a3
.p2align 2
label8:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
.p2align 2
label207:
	li a4, 1
	sw a4, 8(sp)
	bne a4, zero, label10
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
.p2align 2
label10:
	addiw a3, a1, 2
	li a4, 2
	bge a2, a4, label217
	mv a5, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
.p2align 2
label217:
	li t0, 1
	sw t0, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label912
	addiw a3, a1, 3
	li a4, 3
	bge a2, a4, label226
	mv a4, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
label226:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label17
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
label17:
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label239
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label211
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label211
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	bne a5, zero, label21
	j label211
label202:
	mv a2, zero
	li a3, 20
	blt zero, a3, label72
label430:
	li a3, 1
	j label136
.p2align 2
label72:
	addiw a3, a1, 2
	bgt a2, zero, label435
	li a4, 1
	bne a4, zero, label440
	j label900
.p2align 2
label446:
	li a4, 1
	beq a4, zero, label903
.p2align 2
label452:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	j label430
label136:
	li a2, 20
	blt a3, a2, label173
label139:
	lw a2, 8(sp)
	addiw a0, a1, 3
	bne a2, zero, label172
label141:
	lw a1, 16(sp)
	addiw a4, a0, 3
	addiw a3, a0, 6
	mv a0, a4
	beq a1, zero, label143
	mv a0, a3
label143:
	lw a3, 24(sp)
	addiw a1, a0, 3
	beq a3, zero, label678
	lw a4, 28(sp)
	addiw a1, a0, 6
	bne a4, zero, label146
label684:
	mv a0, a1
	addiw a0, a1, 3
	j label150
.p2align 2
label440:
	mv a1, a3
.p2align 2
label76:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	j label430
label463:
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label469
label907:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label440
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label440
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label440
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label440
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label440
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label440
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label440
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label440
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label440
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label440
	sw zero, 40(sp)
	lw a4, 36(sp)
	bne a4, zero, label440
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label440
	sw zero, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label440
	addiw a3, a1, 22
	li a4, 11
	bge a2, a4, label552
	li a4, 1
	j label101
.p2align 2
label435:
	sw zero, 8(sp)
	mv a4, zero
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label446
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label464
	j label463
.p2align 2
label900:
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label446
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label464
	j label463
label903:
	addiw a3, a1, 6
	li a4, 3
	bge a2, a4, label918
label457:
	li a4, 1
	bne a4, zero, label464
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label469
	j label907
label918:
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label463
label464:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	j label430
label678:
	mv a0, a1
label150:
	lw a4, 44(sp)
	addiw a1, a0, 3
	bne a4, zero, label171
	mv a0, a1
label152:
	lw a4, 52(sp)
	addiw a1, a0, 3
	beq a4, zero, label714
	lw a4, 56(sp)
	addiw a1, a0, 6
	beq a4, zero, label714
	lw a4, 60(sp)
	addiw a1, a0, 9
	beq a4, zero, label714
	lw a1, 64(sp)
	addiw a4, a0, 12
	addiw a5, a0, 15
	mv a0, a5
	bne a1, zero, label157
	mv a0, a4
	j label157
label714:
	mv a0, a1
label157:
	addiw a1, a0, 3
	bne a2, zero, label165
label737:
	mv a0, a1
label159:
	lw a2, 28(sp)
	addiw a1, a0, 3
	beq a2, zero, label161
	mv a0, a1
	li a1, 1
label168:
	addw a0, a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label161:
	lw a2, 32(sp)
	addiw a1, a0, 6
	bne a2, zero, label164
	mv a0, a1
label162:
	lw a2, 40(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label168
label173:
	addiw a2, a3, -1
	addiw a1, a1, 1
	ble a3, a2, label139
	sh2add a4, a2, a0
	li a5, 1
	sw a5, 0(a4)
	beq a2, zero, label179
	addiw a5, a3, -2
	sh2add a4, a5, a0
	lw a2, 0(a4)
label175:
	beq a2, zero, label139
	addiw a3, a3, 1
	j label136
label171:
	lw a1, 48(sp)
	addiw a0, a0, 6
	beq a1, zero, label157
	j label152
label172:
	lw a3, 12(sp)
	addiw a0, a1, 6
	bne a3, zero, label143
	j label141
label165:
	lw a2, 16(sp)
	addiw a1, a0, 6
	beq a2, zero, label737
	lw a2, 20(sp)
	addiw a1, a0, 9
	bne a2, zero, label737
	addiw a0, a0, 12
	beq a3, zero, label763
	j label159
label146:
	lw a4, 32(sp)
	addiw a1, a0, 9
	beq a4, zero, label147
	j label684
label912:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
label164:
	lw a2, 36(sp)
	addiw a0, a0, 9
	bne a2, zero, label162
label763:
	li a1, 1
	j label168
label469:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	j label430
label147:
	lw a1, 36(sp)
	addiw a0, a0, 12
	bne a1, zero, label150
	addiw a0, a0, 3
	j label150
label21:
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label211
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label23
	j label211
label239:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	j label202
label23:
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label211
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label211
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label211
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label211
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label211
	li a4, 1
	sw a4, 40(sp)
	lw a5, 36(sp)
	beq a5, zero, label211
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label211
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label31
	j label211
label552:
	sw zero, 48(sp)
	lw a4, 44(sp)
label101:
	bne a4, zero, label440
	addiw a3, a1, 24
	li a4, 12
	bge a2, a4, label561
	li a4, 1
	j label105
label561:
	sw zero, 52(sp)
	lw a4, 48(sp)
label105:
	bne a4, zero, label440
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label574
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label109
label31:
	addiw a3, a1, 11
	li a4, 11
	blt a2, a4, label323
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	j label33
label323:
	mv a4, zero
label33:
	bne a4, zero, label35
	j label211
label574:
	li a4, 1
label109:
	bne a4, zero, label440
	addiw a3, a1, 28
	li a4, 14
	bge a2, a4, label585
	li a4, 1
	j label113
label35:
	addiw a3, a1, 12
	li a4, 12
	bge a2, a4, label334
	mv a4, zero
label37:
	beq a4, zero, label211
	addiw a3, a1, 13
	li a4, 13
	blt a2, a4, label347
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	j label41
label585:
	sw zero, 60(sp)
	lw a4, 56(sp)
label113:
	bne a4, zero, label440
	addiw a3, a1, 30
	li a4, 15
	blt a2, a4, label598
	sw zero, 64(sp)
	lw a4, 60(sp)
label117:
	bne a4, zero, label440
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label610
	sw zero, 68(sp)
	lw a4, 64(sp)
label121:
	bne a4, zero, label440
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label622
	sw zero, 72(sp)
	lw a4, 68(sp)
	j label125
label347:
	mv a4, zero
label41:
	beq a4, zero, label211
	addiw a3, a1, 14
	li a4, 14
	bge a2, a4, label358
	mv a4, zero
	j label44
label358:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
label44:
	beq a4, zero, label211
	addiw a3, a1, 15
	li a4, 15
	bge a2, a4, label367
	mv a4, zero
	j label48
label367:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
label48:
	beq a4, zero, label211
	addiw a3, a1, 16
	li a4, 16
	blt a2, a4, label380
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	j label51
label622:
	li a4, 1
label125:
	bne a4, zero, label440
	addiw a3, a1, 36
	li a4, 18
	bge a2, a4, label633
	li a4, 1
	j label128
label380:
	mv a4, zero
label51:
	bne a4, zero, label53
	j label211
label633:
	sw zero, 76(sp)
	lw a4, 72(sp)
label128:
	bne a4, zero, label440
	addiw a4, a1, 38
	li a3, 19
	blt a2, a3, label643
	sw zero, 80(sp)
	lw a3, 76(sp)
label131:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label76
	mv a1, a5
	j label76
label53:
	addiw a3, a1, 17
	li a4, 17
	blt a2, a4, label389
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
	j label54
label389:
	mv a4, zero
label54:
	beq a4, zero, label211
	addiw a3, a1, 18
	li a4, 18
	bge a2, a4, label397
	mv a4, zero
	j label57
label397:
	li a5, 1
	sw a5, 76(sp)
	lw a4, 72(sp)
label57:
	beq a4, zero, label211
	addiw a4, a1, 19
	li a3, 19
	blt a2, a3, label407
	li a5, 1
	sw a5, 80(sp)
	lw a3, 76(sp)
	j label61
label407:
	mv a3, zero
label61:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label8
	mv a1, a4
	j label8
label179:
	lw a2, 8(sp)
	j label175
label643:
	li a3, 1
	j label131
label610:
	li a4, 1
	j label121
label598:
	li a4, 1
	j label117
label334:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label37
