.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	mv a1, zero
	sd ra, 80(sp)
	addi a0, sp, 0
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	mv a2, zero
	li a3, 20
	blt zero, a3, label5
	li a2, 1
	blt a2, a3, label173
	j label139
.p2align 2
label5:
	addiw a3, a1, 1
	ble a2, zero, label208
	li a4, 1
	sw a4, 0(sp)
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
label208:
	mv a4, zero
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
label10:
	addiw a3, a1, 2
	li a4, 2
	blt a2, a4, label218
	li t0, 1
	sw t0, 4(sp)
	lw a5, 0(sp)
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
label72:
	addiw a3, a1, 2
	ble a2, zero, label436
	sw zero, 0(sp)
	mv a4, zero
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label446
	sw zero, 4(sp)
	lw a4, 0(sp)
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label440
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label440
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	j label1095
.p2align 2
label436:
	li a4, 1
	bne a4, zero, label440
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label446
	sw zero, 4(sp)
	lw a4, 0(sp)
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label440
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label440
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	j label1065
.p2align 2
label1095:
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label440
	j label1082
.p2align 2
label446:
	li a4, 1
	bne a4, zero, label452
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label457
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label440
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label440
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label440
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label440
	j label1049
.p2align 2
label1065:
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label440
.p2align 2
label1082:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label440
	j label1098
.p2align 2
label1049:
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label440
	j label1067
label173:
	addiw a3, a2, -1
	addiw a1, a1, 1
	ble a2, a3, label139
	sh2add a4, a3, a0
	li a5, 1
	sw a5, 0(a4)
	bne a3, zero, label808
	lw a3, 0(sp)
label175:
	bne a3, zero, label177
	j label139
.p2align 2
label1098:
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label440
.p2align 2
label1067:
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label440
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label440
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label440
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label440
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label440
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label440
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label440
	addiw a3, a1, 22
	li a4, 11
	blt a2, a4, label553
	j label1106
.p2align 2
label13:
	addiw a3, a1, 3
	li a4, 3
	blt a2, a4, label227
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label17
	j label941
label227:
	mv a4, zero
	j label15
label17:
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label941
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label941
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label941
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label941
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label941
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label941
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label941
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label941
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label941
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label941
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label941
	li a4, 1
	sw a4, 32(sp)
	lw a5, 28(sp)
	beq a5, zero, label941
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label941
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label941
	addiw a3, a1, 11
	li a4, 11
	blt a2, a4, label323
	sw a5, 40(sp)
	lw a4, 36(sp)
	j label33
label323:
	mv a4, zero
label33:
	beq a4, zero, label941
	addiw a3, a1, 12
	li a4, 12
	bge a2, a4, label334
	mv a4, zero
	j label37
.p2align 2
label440:
	mv a1, a3
.p2align 2
label76:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	li a2, 1
	blt a2, a3, label173
	j label139
label457:
	li a4, 1
	bne a4, zero, label440
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label440
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label440
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label440
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label440
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label440
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label440
	j label1049
label1106:
	sw zero, 40(sp)
	lw a4, 36(sp)
label101:
	bne a4, zero, label440
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label562
	sw zero, 44(sp)
	lw a4, 40(sp)
	j label105
label562:
	li a4, 1
label105:
	bne a4, zero, label440
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label574
	sw zero, 48(sp)
	lw a4, 44(sp)
	j label109
label574:
	li a4, 1
label109:
	bne a4, zero, label440
	addiw a3, a1, 28
	li a4, 14
	blt a2, a4, label586
	sw zero, 52(sp)
	lw a4, 48(sp)
	j label113
label586:
	li a4, 1
label113:
	bne a4, zero, label440
	addiw a3, a1, 30
	li a4, 15
	blt a2, a4, label598
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label117
label598:
	li a4, 1
label117:
	bne a4, zero, label440
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label610
	sw zero, 60(sp)
	lw a4, 56(sp)
	j label121
label610:
	li a4, 1
label121:
	bne a4, zero, label440
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label622
	sw zero, 64(sp)
	lw a4, 60(sp)
	j label125
label622:
	li a4, 1
label125:
	bne a4, zero, label440
	addiw a3, a1, 36
	li a4, 18
	blt a2, a4, label634
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label128
label634:
	li a4, 1
label128:
	bne a4, zero, label440
	addiw a4, a1, 38
	li a3, 19
	blt a2, a3, label643
	sw zero, 72(sp)
	lw a3, 68(sp)
	j label131
label643:
	li a3, 1
label131:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label76
	mv a1, a5
	j label76
label553:
	li a4, 1
	j label101
.p2align 2
label452:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label72
	li a2, 1
	blt a2, a3, label173
label139:
	lw a2, 0(sp)
	addiw a0, a1, 3
	bne a2, zero, label172
	mv a1, a0
	j label141
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
	blt a2, a3, label173
	j label139
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
label941:
	mv a1, a3
	j label8
.p2align 2
label15:
	bne a4, zero, label17
	j label941
label141:
	lw a3, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label143
	mv a0, a1
	j label143
label172:
	lw a3, 4(sp)
	addiw a1, a1, 6
	beq a3, zero, label141
	mv a0, a1
label143:
	lw a3, 16(sp)
	addiw a1, a0, 3
	bne a3, zero, label145
label678:
	mv a0, a1
	j label150
label145:
	lw a4, 20(sp)
	addiw a1, a0, 6
	bne a4, zero, label146
	j label684
label150:
	lw a4, 36(sp)
	addiw a1, a0, 3
	bne a4, zero, label171
	j label152
label684:
	addiw a0, a1, 3
	j label150
label147:
	lw a4, 28(sp)
	addiw a1, a0, 12
	bne a4, zero, label678
	j label684
label136:
	li a3, 20
	blt a2, a3, label173
	j label139
label177:
	addiw a2, a2, 1
	j label136
label152:
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label157
	lw a4, 48(sp)
	addiw a0, a1, 6
	beq a4, zero, label157
	lw a4, 52(sp)
	addiw a0, a1, 9
	beq a4, zero, label157
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label157
	mv a0, a5
label157:
	addiw a1, a0, 3
	bne a2, zero, label165
label737:
	mv a0, a1
	j label159
label171:
	lw a4, 40(sp)
	addiw a1, a0, 6
	bne a4, zero, label152
	mv a0, a1
	j label157
label159:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label161
	li a0, 1
	j label168
label161:
	lw a2, 24(sp)
	addiw a1, a0, 6
	bne a2, zero, label164
	mv a0, a1
	lw a3, 32(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label168
label167:
	addiw a0, a0, 12
	beq a3, zero, label763
	j label159
label168:
	addw a0, a1, a0
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label162:
	lw a3, 32(sp)
	addiw a1, a0, 3
	sltu a2, zero, a3
	mv a0, a2
	j label168
label164:
	lw a1, 28(sp)
	addiw a0, a0, 9
	beq a1, zero, label763
	j label162
label165:
	lw a2, 8(sp)
	addiw a1, a0, 6
	beq a2, zero, label737
	lw a2, 12(sp)
	addiw a1, a0, 9
	beq a2, zero, label167
	j label737
label763:
	mv a1, a0
	li a0, 1
	j label168
label146:
	lw a4, 24(sp)
	addiw a1, a0, 9
	beq a4, zero, label147
	j label684
label808:
	addiw a5, a2, -2
	sh2add a4, a5, a0
	lw a3, 0(a4)
	j label175
label334:
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
label37:
	beq a4, zero, label941
	addiw a3, a1, 13
	li a4, 13
	blt a2, a4, label347
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	j label41
label347:
	mv a4, zero
label41:
	beq a4, zero, label941
	addiw a3, a1, 14
	li a4, 14
	blt a2, a4, label359
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label44
label359:
	mv a4, zero
label44:
	beq a4, zero, label941
	addiw a3, a1, 15
	li a4, 15
	bge a2, a4, label367
	mv a4, zero
	j label48
label367:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
label48:
	beq a4, zero, label941
	addiw a3, a1, 16
	li a4, 16
	blt a2, a4, label380
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	j label51
label380:
	mv a4, zero
label51:
	beq a4, zero, label941
	addiw a3, a1, 17
	li a4, 17
	blt a2, a4, label389
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	j label54
label389:
	mv a4, zero
label54:
	beq a4, zero, label941
	addiw a3, a1, 18
	li a4, 18
	blt a2, a4, label398
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	j label57
label398:
	mv a4, zero
label57:
	beq a4, zero, label941
	addiw a4, a1, 19
	li a3, 19
	bge a2, a3, label406
	mv a3, zero
	j label61
label406:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
label61:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label8
	mv a1, a4
	j label8
