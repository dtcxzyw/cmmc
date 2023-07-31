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
	mv a2, zero
	blt zero, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label72:
	addiw a3, a1, 2
	ble a2, zero, label436
	j label435
.p2align 2
label983:
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	j label1002
.p2align 2
label440:
	mv a1, a3
.p2align 2
label76:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	j label907
label457:
	li a4, 1
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
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
	j label1023
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
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
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
.p2align 2
label1051:
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label440
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label440
.p2align 2
label1038:
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
	blt a2, a4, label553
	sw zero, 48(sp)
	lw a4, 44(sp)
label101:
	bne a4, zero, label440
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label562
	sw zero, 52(sp)
	lw a4, 48(sp)
label105:
	bne a4, zero, label440
	addiw a3, a1, 26
	li a4, 13
	bge a2, a4, label927
	li a4, 1
	j label109
.p2align 2
label436:
	li a4, 1
	bne a4, zero, label440
	addiw a3, a1, 4
	li a4, 2
	bge a2, a4, label941
.p2align 2
label446:
	li a4, 1
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
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
.p2align 2
label1023:
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label440
	j label1038
.p2align 2
label1002:
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
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
	j label1051
label927:
	sw zero, 56(sp)
	lw a4, 52(sp)
label109:
	bne a4, zero, label440
	addiw a3, a1, 28
	li a4, 14
	bge a2, a4, label928
	li a4, 1
	j label113
label928:
	sw zero, 60(sp)
	lw a4, 56(sp)
label113:
	bne a4, zero, label440
	addiw a3, a1, 30
	li a4, 15
	bge a2, a4, label929
	li a4, 1
	j label117
label929:
	sw zero, 64(sp)
	lw a4, 60(sp)
label117:
	bne a4, zero, label440
	addiw a3, a1, 32
	li a4, 16
	bge a2, a4, label930
	li a4, 1
	j label121
label930:
	sw zero, 68(sp)
	lw a4, 64(sp)
label121:
	bne a4, zero, label440
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label622
	sw zero, 72(sp)
	lw a4, 68(sp)
label125:
	bne a4, zero, label440
	addiw a3, a1, 36
	li a4, 18
	blt a2, a4, label634
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
.p2align 2
label218:
	mv a5, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label72
	li a2, 1
	bge a2, a3, label139
label173:
	addiw a3, a2, -1
	addiw a1, a1, 1
	ble a2, a3, label139
	sh2add a4, a3, a0
	li a5, 1
	sw a5, 0(a4)
	bne a3, zero, label808
	lw a3, 8(sp)
	j label175
.p2align 2
label10:
	addiw a3, a1, 2
	li a4, 2
	blt a2, a4, label218
	li t0, 1
	sw t0, 12(sp)
	lw a5, 8(sp)
	bne a5, zero, label13
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label941:
	sw zero, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label983
.p2align 2
label452:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label207:
	li a4, 1
	sw a4, 8(sp)
	bne a4, zero, label10
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label907:
	li a2, 1
	li a3, 20
	blt a2, a3, label173
	j label139
.p2align 2
label202:
	mv a2, zero
	li a3, 20
	blt zero, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label13:
	addiw a3, a1, 3
	li a4, 3
	blt a2, a4, label227
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label211
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label211
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label211
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label211
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label211
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label211
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label211
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label211
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
	beq a4, zero, label211
	addiw a3, a1, 11
	li a4, 11
	blt a2, a4, label323
	sw a5, 48(sp)
	lw a4, 44(sp)
label33:
	bne a4, zero, label35
	j label211
label227:
	mv a4, zero
	j label211
label136:
	li a3, 20
	blt a2, a3, label173
label139:
	lw a2, 8(sp)
	addiw a0, a1, 3
	bne a2, zero, label172
	mv a1, a0
	j label141
label808:
	addiw a5, a2, -2
	sh2add a4, a5, a0
	lw a3, 0(a4)
label175:
	beq a3, zero, label139
	addiw a2, a2, 1
	j label136
label141:
	lw a3, 16(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label143
	mv a0, a1
label143:
	lw a3, 24(sp)
	addiw a1, a0, 3
	beq a3, zero, label678
	j label145
label172:
	lw a3, 12(sp)
	addiw a1, a1, 6
	beq a3, zero, label141
	mv a0, a1
	j label143
label145:
	lw a4, 28(sp)
	addiw a1, a0, 6
	bne a4, zero, label146
label684:
	addiw a0, a1, 3
	j label150
label146:
	lw a4, 32(sp)
	addiw a1, a0, 9
	bne a4, zero, label684
	lw a4, 36(sp)
	addiw a1, a0, 12
	beq a4, zero, label684
label678:
	mv a0, a1
label150:
	lw a4, 44(sp)
	addiw a1, a0, 3
	bne a4, zero, label171
	j label152
label157:
	addiw a1, a0, 3
	bne a2, zero, label165
	j label737
label171:
	lw a4, 48(sp)
	addiw a1, a0, 6
	bne a4, zero, label152
	mv a0, a1
	j label157
label152:
	lw a4, 52(sp)
	addiw a0, a1, 3
	beq a4, zero, label157
	lw a4, 56(sp)
	addiw a0, a1, 6
	beq a4, zero, label157
	lw a4, 60(sp)
	addiw a0, a1, 9
	beq a4, zero, label157
	lw a4, 64(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label157
	mv a0, a5
	j label157
label159:
	lw a2, 28(sp)
	addiw a1, a0, 3
	bne a2, zero, label745
	j label161
label763:
	mv a1, a0
	li a0, 1
	j label168
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
label161:
	lw a2, 32(sp)
	addiw a1, a0, 6
	bne a2, zero, label164
	j label751
label162:
	lw a3, 40(sp)
	addiw a1, a0, 3
	sltu a2, zero, a3
	mv a0, a2
	j label168
label164:
	lw a1, 36(sp)
	addiw a0, a0, 9
	beq a1, zero, label763
	j label162
label745:
	li a0, 1
label168:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label737:
	mv a0, a1
	j label159
label35:
	addiw a3, a1, 12
	li a4, 12
	bge a2, a4, label334
	mv a4, zero
	j label37
label334:
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
label37:
	beq a4, zero, label211
	addiw a3, a1, 13
	li a4, 13
	bge a2, a4, label346
	mv a4, zero
	j label41
label346:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
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
	blt a2, a4, label368
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
label48:
	beq a4, zero, label211
	addiw a3, a1, 16
	li a4, 16
	bge a2, a4, label379
	mv a4, zero
	j label51
label379:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
label51:
	beq a4, zero, label211
	addiw a3, a1, 17
	li a4, 17
	blt a2, a4, label389
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
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
	bge a2, a3, label406
	mv a3, zero
	j label61
label406:
	li a5, 1
	sw a5, 80(sp)
	lw a3, 76(sp)
label61:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label8
	mv a1, a4
	j label8
label562:
	li a4, 1
	j label105
label389:
	mv a4, zero
	j label54
label368:
	mv a4, zero
	j label48
label643:
	li a3, 1
	j label131
label622:
	li a4, 1
	j label125
label553:
	li a4, 1
	j label101
label634:
	li a4, 1
	j label128
label751:
	mv a0, a1
	j label162
label323:
	mv a4, zero
	j label33
