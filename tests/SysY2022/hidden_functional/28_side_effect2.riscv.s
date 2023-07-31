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
label116:
	addiw a3, a1, 1
	bgt a2, zero, label599
	mv a4, zero
.p2align 2
label603:
	mv a1, a3
.p2align 2
label119:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
.p2align 2
label599:
	li a4, 1
	sw a4, 8(sp)
	bne a4, zero, label121
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
.p2align 2
label121:
	addiw a3, a1, 2
	li a4, 2
	bge a2, a4, label609
	mv a4, zero
	j label613
.p2align 2
label124:
	addiw a3, a1, 3
	li a4, 3
	blt a2, a4, label619
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label917
	addiw a3, a1, 4
	li a4, 4
	bge a2, a4, label627
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
label619:
	mv a4, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
.p2align 2
label609:
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label124
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
label627:
	li a4, 1
	sw a4, 20(sp)
	lw a5, 16(sp)
	beq a5, zero, label603
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label603
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	beq a4, zero, label603
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label603
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label603
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label603
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label603
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label603
	li a4, 1
	sw a4, 36(sp)
	lw a5, 32(sp)
	bne a5, zero, label137
	j label603
label202:
	mv a2, zero
	li a3, 20
	blt zero, a3, label52
label206:
	li a3, 1
label8:
	li a2, 20
	blt a3, a2, label45
label11:
	lw a2, 8(sp)
	addiw a0, a1, 3
	bne a2, zero, label13
label14:
	lw a1, 16(sp)
	addiw a4, a0, 3
	addiw a3, a0, 6
	mv a0, a4
	beq a1, zero, label16
	mv a0, a3
label16:
	lw a3, 24(sp)
	addiw a1, a0, 3
	beq a3, zero, label237
	lw a4, 28(sp)
	addiw a1, a0, 6
	bne a4, zero, label21
	j label243
.p2align 2
label52:
	addiw a3, a1, 2
	ble a2, zero, label376
	sw zero, 8(sp)
	mv a4, zero
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label386
	j label920
.p2align 2
label892:
	addiw a3, a1, 4
	li a4, 2
	bge a2, a4, label908
.p2align 2
label386:
	li a4, 1
	beq a4, zero, label895
.p2align 2
label392:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
.p2align 2
label376:
	li a4, 1
	beq a4, zero, label892
.p2align 2
label380:
	mv a1, a3
.p2align 2
label56:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label920:
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label392
	addiw a3, a1, 6
	li a4, 3
	bge a2, a4, label930
label397:
	li a4, 1
	beq a4, zero, label898
label404:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label895:
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label397
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label404
label403:
	addiw a3, a1, 8
	li a4, 4
	bge a2, a4, label899
label409:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label52
	j label206
label908:
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label392
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label397
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label404
	j label403
label898:
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label409
label899:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label380
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label380
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label380
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label380
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label380
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label380
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label380
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label380
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label380
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label380
	sw zero, 40(sp)
	lw a4, 36(sp)
	bne a4, zero, label380
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label380
	sw zero, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label380
	addiw a3, a1, 22
	li a4, 11
	blt a2, a4, label493
	sw zero, 48(sp)
	lw a4, 44(sp)
	j label81
label930:
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label404
	j label403
label237:
	mv a0, a1
label23:
	lw a4, 44(sp)
	addiw a1, a0, 3
	beq a4, zero, label265
	lw a1, 48(sp)
	addiw a0, a0, 6
	beq a1, zero, label25
	j label39
label265:
	mv a0, a1
	j label39
label25:
	addiw a1, a0, 3
	bne a2, zero, label27
	j label269
label39:
	lw a4, 52(sp)
	addiw a1, a0, 3
	bne a4, zero, label41
label322:
	mv a0, a1
	j label25
label41:
	lw a4, 56(sp)
	addiw a1, a0, 6
	beq a4, zero, label322
	lw a4, 60(sp)
	addiw a1, a0, 9
	beq a4, zero, label322
	lw a1, 64(sp)
	addiw a4, a0, 12
	addiw a5, a0, 15
	mv a0, a5
	bne a1, zero, label25
	mv a0, a4
	j label25
label269:
	mv a0, a1
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
label32:
	lw a2, 32(sp)
	addiw a1, a0, 6
	beq a2, zero, label301
	lw a2, 36(sp)
	addiw a0, a0, 9
	beq a2, zero, label288
	j label33
label45:
	addiw a2, a3, -1
	addiw a1, a1, 1
	ble a3, a2, label11
	sh2add a4, a2, a0
	li a5, 1
	sw a5, 0(a4)
	bne a2, zero, label360
	lw a2, 8(sp)
	j label49
label360:
	addiw a4, a3, -2
	sh2add a5, a4, a0
	lw a2, 0(a5)
label49:
	beq a2, zero, label11
	addiw a3, a3, 1
	j label8
label13:
	lw a3, 12(sp)
	addiw a0, a1, 6
	bne a3, zero, label16
	j label14
label243:
	mv a0, a1
label19:
	addiw a0, a0, 3
	j label23
label27:
	lw a2, 16(sp)
	addiw a1, a0, 6
	beq a2, zero, label269
	lw a2, 20(sp)
	addiw a1, a0, 9
	beq a2, zero, label29
	j label269
label301:
	mv a0, a1
label33:
	lw a2, 40(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label36
label21:
	lw a4, 32(sp)
	addiw a1, a0, 9
	bne a4, zero, label251
	lw a1, 36(sp)
	addiw a0, a0, 12
	bne a1, zero, label23
	j label19
label613:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
label29:
	addiw a0, a0, 12
	bne a3, zero, label30
label288:
	li a1, 1
	j label36
label917:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	j label202
label137:
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label603
	li a4, 1
	sw a4, 40(sp)
	lw a5, 36(sp)
	beq a5, zero, label603
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label603
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label141
	j label603
label493:
	li a4, 1
label81:
	bne a4, zero, label380
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label502
	sw zero, 52(sp)
	lw a4, 48(sp)
label84:
	bne a4, zero, label380
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label511
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label87
label141:
	addiw a3, a1, 11
	li a4, 11
	bge a2, a4, label711
	mv a4, zero
	j label143
label711:
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
label143:
	beq a4, zero, label603
	addiw a3, a1, 12
	li a4, 12
	blt a2, a4, label724
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label147
label724:
	mv a4, zero
label147:
	bne a4, zero, label149
	j label603
label511:
	li a4, 1
label87:
	bne a4, zero, label380
	addiw a3, a1, 28
	li a4, 14
	bge a2, a4, label519
	li a4, 1
	j label91
label149:
	addiw a3, a1, 13
	li a4, 13
	bge a2, a4, label735
	mv a4, zero
	j label151
label735:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
label151:
	bne a4, zero, label153
	j label603
label519:
	sw zero, 60(sp)
	lw a4, 56(sp)
label91:
	bne a4, zero, label380
	addiw a3, a1, 30
	li a4, 15
	bge a2, a4, label531
	li a4, 1
	j label94
label153:
	addiw a3, a1, 14
	li a4, 14
	bge a2, a4, label747
	mv a4, zero
	j label155
label747:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
label155:
	beq a4, zero, label603
	addiw a3, a1, 15
	li a4, 15
	bge a2, a4, label759
	mv a4, zero
label159:
	bne a4, zero, label161
	j label603
label531:
	sw zero, 64(sp)
	lw a4, 60(sp)
label94:
	bne a4, zero, label380
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label541
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label97
label541:
	li a4, 1
label97:
	bne a4, zero, label380
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label550
	sw zero, 72(sp)
	lw a4, 68(sp)
	j label100
label161:
	addiw a3, a1, 16
	li a4, 16
	bge a2, a4, label771
	mv a4, zero
	j label163
label771:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
label163:
	beq a4, zero, label603
	addiw a3, a1, 17
	li a4, 17
	bge a2, a4, label783
	mv a4, zero
	j label167
label550:
	li a4, 1
label100:
	bne a4, zero, label380
	addiw a3, a1, 36
	li a4, 18
	bge a2, a4, label558
	li a4, 1
	j label103
label783:
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
label167:
	beq a4, zero, label603
	addiw a3, a1, 18
	li a4, 18
	bge a2, a4, label795
	mv a4, zero
	j label171
label558:
	sw zero, 76(sp)
	lw a4, 72(sp)
label103:
	bne a4, zero, label380
	addiw a4, a1, 38
	li a3, 19
	bge a2, a3, label567
	li a3, 1
	j label106
label795:
	li a5, 1
	sw a5, 76(sp)
	lw a4, 72(sp)
label171:
	beq a4, zero, label603
	addiw a4, a1, 19
	li a3, 19
	bge a2, a3, label807
	mv a3, zero
	j label175
label567:
	sw zero, 80(sp)
	lw a3, 76(sp)
label106:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label56
	mv a1, a5
	j label56
label807:
	li a5, 1
	sw a5, 80(sp)
	lw a3, 76(sp)
label175:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label119
	mv a1, a4
	j label119
label759:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	j label159
label502:
	li a4, 1
	j label84
label251:
	mv a0, a1
	addiw a0, a1, 3
	j label23
