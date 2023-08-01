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
label2:
	blt t1, a1, label5
	j label202
.p2align 2
label234:
	sw a0, 20(sp)
	lw t4, 16(sp)
	beq t4, zero, label925
	addiw t3, t2, 5
	bge t1, t0, label19
label247:
	mv t2, t3
	addiw t1, t1, 1
	j label2
.p2align 2
label5:
	addiw t3, t2, 1
	bgt t1, zero, label207
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label8:
	addiw t3, t2, 2
	bge t1, a3, label216
	mv t4, zero
	j label220
.p2align 2
label11:
	addiw t3, t2, 3
	blt t1, a4, label226
	sw a0, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label14
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
label202:
	mv t1, zero
	j label69
.p2align 2
label207:
	sw a0, 8(sp)
	mv t4, a0
	bne a0, zero, label8
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label216:
	sw a0, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label11
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label226:
	mv t4, zero
	j label229
.p2align 2
label14:
	addiw t3, t2, 4
	bge t1, a5, label234
	mv t4, zero
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
.p2align 2
label69:
	blt t1, a1, label72
	j label430
label916:
	sw zero, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label89
label487:
	mv t2, t3
	addiw t1, t1, 1
	j label69
label89:
	addiw t3, t2, 12
	li t4, 6
	blt t1, t4, label487
	sw zero, 28(sp)
	lw t4, 24(sp)
	bne t4, zero, label487
	addiw t3, t2, 14
	li t4, 7
	blt t1, t4, label487
	sw zero, 32(sp)
	lw t4, 28(sp)
	bne t4, zero, label487
	addiw t3, t2, 16
	li t4, 8
	blt t1, t4, label487
	sw zero, 36(sp)
	lw t4, 32(sp)
	bne t4, zero, label487
	addiw t3, t2, 18
	li t4, 9
	blt t1, t4, label487
	sw zero, 40(sp)
	lw t4, 36(sp)
	bne t4, zero, label487
	addiw t3, t2, 20
	li t4, 10
	blt t1, t4, label487
	sw zero, 44(sp)
	lw t4, 40(sp)
	bne t4, zero, label487
	addiw t3, t2, 22
	li t4, 11
	blt t1, t4, label487
	sw zero, 48(sp)
	lw t4, 44(sp)
	bne t4, zero, label487
	addiw t4, t2, 24
	li t3, 12
	blt t1, t3, label564
	sw zero, 52(sp)
	lw t3, 48(sp)
label103:
	bne t3, zero, label571
	addiw t4, t2, 26
	li t3, 13
	blt t1, t3, label576
	sw zero, 56(sp)
	lw t3, 52(sp)
label107:
	bne t3, zero, label571
	addiw t4, t2, 28
	li t3, 14
	bge t1, t3, label587
	mv t3, a0
label111:
	bne t3, zero, label571
	addiw t4, t2, 30
	li t3, 15
	bge t1, t3, label599
	mv t3, a0
label114:
	bne t3, zero, label571
	addiw t4, t2, 32
	li t3, 16
	bge t1, t3, label608
	mv t3, a0
label117:
	bne t3, zero, label571
	addiw t4, t2, 34
	li t3, 17
	bge t1, t3, label617
	mv t3, a0
	j label120
label430:
	mv a3, a0
	j label136
.p2align 2
label72:
	addiw t3, t2, 2
	ble t1, zero, label436
	sw zero, 8(sp)
	mv t4, zero
	addiw t3, t2, 4
	blt t1, a3, label445
	j label945
.p2align 2
label436:
	mv t4, a0
	bne a0, zero, label440
	j label439
.p2align 2
label445:
	mv t4, a0
	beq a0, zero, label911
.p2align 2
label451:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label136:
	blt a3, a1, label139
label146:
	lw a2, 8(sp)
	addiw a1, t2, 3
	bne a2, zero, label179
	j label177
label148:
	lw a4, 24(sp)
	addiw a3, a1, 3
	beq a4, zero, label694
	lw a5, 28(sp)
	addiw a3, a1, 6
	bne a5, zero, label153
	j label700
label177:
	lw a3, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a3, zero, label148
	mv a1, a4
	j label148
.p2align 2
label945:
	sw zero, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label451
	addiw t3, t2, 6
	blt t1, a4, label456
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label463
	addiw t4, t2, 8
	blt t1, a5, label468
	j label914
.p2align 2
label439:
	addiw t3, t2, 4
	blt t1, a3, label445
	sw zero, 12(sp)
	lw t4, 8(sp)
	bne t4, zero, label451
	addiw t3, t2, 6
	blt t1, a4, label456
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label463
	addiw t4, t2, 8
	blt t1, a5, label468
	j label914
.p2align 2
label911:
	addiw t3, t2, 6
	blt t1, a4, label456
	sw zero, 16(sp)
	lw t4, 12(sp)
	bne t4, zero, label463
	addiw t4, t2, 8
	blt t1, a5, label468
label914:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label475
	j label474
.p2align 2
label456:
	mv t4, a0
	beq a0, zero, label913
.p2align 2
label463:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
.p2align 2
label913:
	addiw t4, t2, 8
	bge t1, a5, label933
.p2align 2
label468:
	mv t3, a0
	beq a0, zero, label915
.p2align 2
label475:
	mv t2, t4
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label915:
	addiw t3, t2, 10
	bge t1, t0, label916
label480:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label933:
	sw zero, 20(sp)
	lw t3, 16(sp)
	bne t3, zero, label475
label474:
	addiw t3, t2, 10
	blt t1, t0, label480
	j label916
label19:
	sw a0, 24(sp)
	lw t4, 20(sp)
	beq t4, zero, label247
	addiw t3, t2, 6
	li t4, 6
	blt t1, t4, label247
	sw a0, 28(sp)
	lw t4, 24(sp)
	beq t4, zero, label247
	addiw t3, t2, 7
	li t4, 7
	blt t1, t4, label247
	sw a0, 32(sp)
	lw t4, 28(sp)
	bne t4, zero, label24
	j label247
label694:
	mv a1, a3
label155:
	lw a5, 44(sp)
	addiw a3, a1, 3
	bne a5, zero, label176
	mv a1, a3
	j label171
label157:
	addiw a3, a1, 3
	bne a2, zero, label168
	j label726
label171:
	lw a5, 52(sp)
	addiw a3, a1, 3
	bne a5, zero, label173
label779:
	mv a1, a3
	j label157
label173:
	lw a5, 56(sp)
	addiw a3, a1, 6
	beq a5, zero, label779
	lw a5, 60(sp)
	addiw a3, a1, 9
	beq a5, zero, label779
	lw a3, 64(sp)
	addiw a5, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a3, zero, label157
	mv a1, a5
	j label157
label726:
	mv a1, a3
	j label162
label159:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label162:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label164
	mv a1, a2
	j label159
label164:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label167
	mv a0, a2
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a2, zero, a3
	mv a0, a2
	j label159
label139:
	addiw a4, a3, -1
	addiw t2, t2, 1
	ble a3, a4, label146
	sh2add a5, a4, a2
	sw a0, 0(a5)
	bne a4, zero, label670
	lw a4, 8(sp)
	j label141
label670:
	addiw a5, a3, -2
	sh2add t0, a5, a2
	lw a4, 0(t0)
label141:
	beq a4, zero, label146
	addiw a3, a3, 1
	j label136
label179:
	lw a3, 12(sp)
	addiw a1, t2, 6
	bne a3, zero, label148
	j label177
label700:
	mv a1, a3
label151:
	addiw a1, a1, 3
	j label155
label176:
	lw a3, 48(sp)
	addiw a1, a1, 6
	beq a3, zero, label157
	j label171
label168:
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label169
label760:
	mv a1, a2
	j label162
.p2align 2
label440:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label153:
	lw a5, 32(sp)
	addiw a3, a1, 9
	bne a5, zero, label708
	lw a3, 36(sp)
	addiw a1, a1, 12
	bne a3, zero, label155
	j label151
label169:
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label760
	addiw a1, a1, 12
	beq a4, zero, label159
	j label162
.p2align 2
label220:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label167:
	lw a2, 36(sp)
	addiw a1, a1, 9
	beq a2, zero, label159
	mv a0, a1
	lw a3, 40(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label159
.p2align 2
label229:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label925:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label24:
	addiw t3, t2, 8
	li t4, 8
	blt t1, t4, label247
	sw a0, 36(sp)
	lw t4, 32(sp)
	beq t4, zero, label247
	addiw t3, t2, 9
	li t4, 9
	blt t1, t4, label247
	sw a0, 40(sp)
	lw t4, 36(sp)
	beq t4, zero, label247
	addiw t3, t2, 10
	li t4, 10
	blt t1, t4, label247
	sw a0, 44(sp)
	lw t4, 40(sp)
	beq t4, zero, label247
	addiw t3, t2, 11
	li t4, 11
	blt t1, t4, label247
	sw a0, 48(sp)
	lw t4, 44(sp)
	beq t4, zero, label247
	addiw t3, t2, 12
	li t4, 12
	bge t1, t4, label330
	mv t4, zero
label34:
	beq t4, zero, label247
	addiw t3, t2, 13
	li t4, 13
	bge t1, t4, label342
	mv t4, zero
label38:
	beq t4, zero, label247
	addiw t3, t2, 14
	li t4, 14
	blt t1, t4, label355
	sw a0, 60(sp)
	lw t4, 56(sp)
label42:
	beq t4, zero, label247
	addiw t3, t2, 15
	li t4, 15
	bge t1, t4, label366
	mv t4, zero
	j label46
label571:
	mv t2, t4
	addiw t1, t1, 1
	j label69
label617:
	sw zero, 72(sp)
	lw t3, 68(sp)
label120:
	bne t3, zero, label571
	addiw t4, t2, 36
	li t3, 18
	blt t1, t3, label627
	sw zero, 76(sp)
	lw t3, 72(sp)
label123:
	bne t3, zero, label571
	addiw t4, t2, 38
	li t3, 19
	blt t1, t3, label636
	sw zero, 80(sp)
	lw t3, 76(sp)
label126:
	addiw t5, t2, 40
	mv t2, t4
	beq t3, zero, label898
	addiw t1, t1, 1
	blt t1, a1, label72
	j label430
label366:
	sw a0, 64(sp)
	lw t4, 60(sp)
label46:
	beq t4, zero, label247
	addiw t3, t2, 16
	li t4, 16
	blt t1, t4, label379
	sw a0, 68(sp)
	lw t4, 64(sp)
	j label50
label379:
	mv t4, zero
label50:
	beq t4, zero, label247
	addiw t3, t2, 17
	li t4, 17
	blt t1, t4, label391
	sw a0, 72(sp)
	lw t4, 68(sp)
label54:
	beq t4, zero, label247
	addiw t3, t2, 18
	li t4, 18
	blt t1, t4, label403
	sw a0, 76(sp)
	lw t4, 72(sp)
	j label57
label403:
	mv t4, zero
label57:
	beq t4, zero, label247
	addiw t4, t2, 19
	li t3, 19
	bge t1, t3, label411
	mv t3, zero
	j label61
label411:
	sw a0, 80(sp)
	lw t3, 76(sp)
label61:
	addiw t5, t2, 20
	mv t2, t5
	bne t3, zero, label66
	mv t2, t4
	addiw t1, t1, 1
	j label2
label66:
	addiw t1, t1, 1
	blt t1, a1, label5
	j label202
label587:
	sw zero, 60(sp)
	lw t3, 56(sp)
	j label111
label898:
	mv t2, t5
	addiw t1, t1, 1
	j label69
label391:
	mv t4, zero
	j label54
label636:
	mv t3, a0
	j label126
label627:
	mv t3, a0
	j label123
label355:
	mv t4, zero
	j label42
label342:
	sw a0, 56(sp)
	lw t4, 52(sp)
	j label38
label330:
	sw a0, 52(sp)
	lw t4, 48(sp)
	j label34
label576:
	mv t3, a0
	j label107
label608:
	sw zero, 68(sp)
	lw t3, 64(sp)
	j label117
label564:
	mv t3, a0
	j label103
label708:
	mv a1, a3
	addiw a1, a3, 3
	j label155
label599:
	sw zero, 64(sp)
	lw t3, 60(sp)
	j label114
