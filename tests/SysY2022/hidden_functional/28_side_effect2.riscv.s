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
	bne a0, zero, label7
	mv a1, t1
	addiw t0, t0, 1
	bge t0, a3, label957
.p2align 2
label2:
	addiw t1, a1, 1
	bgt t0, zero, label206
	mv t2, zero
	j label210
.p2align 2
label7:
	addiw t1, a1, 2
	bge t0, a4, label215
	mv t2, zero
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
.p2align 2
label10:
	addiw t1, a1, 3
	bge t0, a5, label224
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
label224:
	sw a0, 16(sp)
	lw t2, 12(sp)
	beq t2, zero, label940
	addiw t1, a1, 4
	li t2, 4
	bge t0, t2, label13
label940:
	mv a1, t1
label67:
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
.p2align 2
label215:
	sw a0, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label10
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label957
label13:
	sw a0, 20(sp)
	lw t2, 16(sp)
	bne t2, zero, label14
	j label940
.p2align 2
label210:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
label957:
	mv t0, zero
	j label69
label126:
	addiw t1, a1, 8
	li t2, 4
	bge t0, t2, label127
.p2align 2
label447:
	mv a1, t1
.p2align 2
label74:
	addiw t0, t0, 1
	bge t0, a3, label451
.p2align 2
label69:
	addiw t1, a1, 2
	bgt t0, zero, label442
	mv t2, a0
	bne a0, zero, label447
	addiw t1, a1, 4
	blt t0, a4, label621
	sw zero, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label628
	addiw t2, a1, 6
	blt t0, a5, label633
	j label945
.p2align 2
label442:
	sw zero, 8(sp)
	mv t2, zero
	addiw t1, a1, 4
	bge t0, a4, label959
.p2align 2
label621:
	mv t2, a0
	beq a0, zero, label944
.p2align 2
label628:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label69
label451:
	mv a4, a0
label76:
	bge a4, a3, label79
	addiw a5, a4, -1
	addiw a1, a1, 1
	ble a4, a5, label79
	sh2add t0, a5, a2
	sw a0, 0(t0)
	bne a5, zero, label115
	lw a5, 8(sp)
	j label116
.p2align 2
label959:
	sw zero, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label628
	addiw t2, a1, 6
	bge t0, a5, label945
label633:
	mv a1, t2
	addiw t0, t0, 1
	blt t0, a3, label69
	j label451
label944:
	addiw t2, a1, 6
	blt t0, a5, label633
label945:
	sw zero, 16(sp)
	lw t1, 12(sp)
	beq t1, zero, label126
label640:
	mv a1, t2
	j label74
label127:
	sw zero, 20(sp)
	lw t2, 16(sp)
	bne t2, zero, label447
	addiw t2, a1, 10
	li t1, 5
	blt t0, t1, label640
	sw zero, 24(sp)
	lw t1, 20(sp)
	bne t1, zero, label640
	addiw t1, a1, 12
	li t2, 6
	blt t0, t2, label447
	sw zero, 28(sp)
	lw t2, 24(sp)
	bne t2, zero, label447
	addiw t2, a1, 14
	li t1, 7
	blt t0, t1, label640
	sw zero, 32(sp)
	lw t1, 28(sp)
	bne t1, zero, label640
	addiw t1, a1, 16
	li t2, 8
	blt t0, t2, label447
	sw zero, 36(sp)
	lw t2, 32(sp)
	bne t2, zero, label447
	addiw t2, a1, 18
	li t1, 9
	blt t0, t1, label640
	sw zero, 40(sp)
	lw t1, 36(sp)
	bne t1, zero, label640
	addiw t3, a1, 20
	li t2, 10
	bge t0, t2, label716
	mv t1, a0
	j label140
label79:
	lw a3, 8(sp)
	addiw a2, a1, 3
	beq a3, zero, label462
	lw a4, 12(sp)
	addiw a1, a1, 6
	bne a4, zero, label81
	j label111
label462:
	mv a1, a2
label111:
	lw a2, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a2, zero, label81
	mv a1, a4
label81:
	lw a4, 24(sp)
	addiw a2, a1, 3
	beq a4, zero, label470
	lw a5, 28(sp)
	addiw a2, a1, 6
	beq a5, zero, label106
	lw a5, 32(sp)
	addiw a2, a1, 9
	beq a5, zero, label109
	j label106
label470:
	mv a1, a2
label83:
	lw a5, 44(sp)
	addiw a2, a1, 3
	beq a5, zero, label476
	lw a2, 48(sp)
	addiw a1, a1, 6
	beq a2, zero, label85
	j label99
label533:
	mv a1, a2
label85:
	addiw a2, a1, 3
	bne a3, zero, label93
label480:
	mv a1, a2
label87:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label89
label488:
	mv a1, a2
label96:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label476:
	mv a1, a2
label99:
	lw a5, 52(sp)
	addiw a2, a1, 3
	beq a5, zero, label533
	lw a5, 56(sp)
	addiw a2, a1, 6
	beq a5, zero, label533
	lw a5, 60(sp)
	addiw a2, a1, 9
	beq a5, zero, label533
	lw a5, 64(sp)
	addiw a2, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a5, zero, label85
	mv a1, a2
	j label85
label89:
	lw a3, 32(sp)
	addiw a2, a1, 6
	bne a3, zero, label92
label90:
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a0, zero, a3
	j label96
label115:
	lw a5, -4(t0)
label116:
	beq a5, zero, label79
	addiw a4, a4, 1
	j label76
label93:
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label94
	j label480
label106:
	addiw a1, a2, 3
	j label83
label14:
	addiw t1, a1, 5
	li t2, 5
	blt t0, t2, label940
	sw a0, 24(sp)
	lw t2, 20(sp)
	bne t2, zero, label16
	j label940
label94:
	lw a3, 20(sp)
	addiw a2, a1, 9
	bne a3, zero, label480
	addiw a1, a1, 12
	beq a4, zero, label96
	j label87
label92:
	lw a3, 36(sp)
	addiw a2, a1, 9
	beq a3, zero, label488
	j label90
label109:
	lw a5, 36(sp)
	addiw a2, a1, 12
	bne a5, zero, label470
	j label106
label16:
	addiw t1, a1, 6
	li t2, 6
	blt t0, t2, label940
	sw a0, 28(sp)
	lw t2, 24(sp)
	beq t2, zero, label940
	addiw t1, a1, 7
	li t2, 7
	blt t0, t2, label940
	sw a0, 32(sp)
	lw t2, 28(sp)
	beq t2, zero, label940
	addiw t1, a1, 8
	li t2, 8
	blt t0, t2, label940
	sw a0, 36(sp)
	lw t2, 32(sp)
	beq t2, zero, label940
	addiw t1, a1, 9
	li t2, 9
	blt t0, t2, label940
	sw a0, 40(sp)
	lw t2, 36(sp)
	bne t2, zero, label24
	j label940
label716:
	sw zero, 44(sp)
	lw t1, 40(sp)
label140:
	bne t1, zero, label724
	addiw t2, a1, 22
	li t3, 11
	bge t0, t3, label728
	mv t1, a0
	j label144
label24:
	addiw t1, a1, 10
	li t3, 10
	bge t0, t3, label308
	mv t2, zero
	j label25
label308:
	sw a0, 44(sp)
	lw t2, 40(sp)
label25:
	bne t2, zero, label27
	j label940
label728:
	sw zero, 48(sp)
	lw t1, 44(sp)
label144:
	bne t1, zero, label640
	addiw t3, a1, 24
	li t2, 12
	bge t0, t2, label740
	mv t1, a0
label147:
	bne t1, zero, label724
	addiw t2, a1, 26
	li t3, 13
	blt t0, t3, label750
	sw zero, 56(sp)
	lw t1, 52(sp)
	j label151
label750:
	mv t1, a0
label151:
	bne t1, zero, label640
	addiw t3, a1, 28
	li t2, 14
	blt t0, t2, label762
	sw zero, 60(sp)
	lw t1, 56(sp)
	j label155
label762:
	mv t1, a0
label155:
	bne t1, zero, label724
	addiw t2, a1, 30
	li t3, 15
	blt t0, t3, label774
	sw zero, 64(sp)
	lw t1, 60(sp)
	j label158
label774:
	mv t1, a0
label158:
	bne t1, zero, label640
	addiw t3, a1, 32
	li t2, 16
	blt t0, t2, label783
	sw zero, 68(sp)
	lw t1, 64(sp)
	j label162
label783:
	mv t1, a0
label162:
	bne t1, zero, label724
	addiw t4, a1, 34
	li t2, 17
	blt t0, t2, label795
	sw zero, 72(sp)
	lw t1, 68(sp)
	j label166
label795:
	mv t1, a0
label166:
	beq t1, zero, label168
	mv a1, t4
	j label74
label168:
	addiw t2, a1, 36
	li t3, 18
	bge t0, t3, label806
	mv t1, a0
label170:
	bne t1, zero, label640
	addiw t3, a1, 38
	li t2, 19
	blt t0, t2, label819
	sw zero, 80(sp)
	lw t1, 76(sp)
	j label174
label819:
	mv t1, a0
label174:
	bne t1, zero, label724
	addiw a1, a1, 40
	blt t0, a3, label74
	sw zero, 84(sp)
	j label74
label27:
	addiw t1, a1, 11
	li t3, 11
	bge t0, t3, label317
	mv t2, zero
label28:
	beq t2, zero, label940
	addiw t1, a1, 12
	li t3, 12
	blt t0, t3, label327
	sw a0, 52(sp)
	lw t2, 48(sp)
	j label32
label327:
	mv t2, zero
label32:
	beq t2, zero, label940
	addiw t1, a1, 13
	li t3, 13
	bge t0, t3, label338
	mv t2, zero
	j label35
label338:
	sw a0, 56(sp)
	lw t2, 52(sp)
label35:
	beq t2, zero, label940
	addiw t1, a1, 14
	li t3, 14
	blt t0, t3, label348
	sw a0, 60(sp)
	lw t2, 56(sp)
label38:
	beq t2, zero, label940
	addiw t1, a1, 15
	li t3, 15
	bge t0, t3, label356
	mv t2, zero
label41:
	beq t2, zero, label940
	addiw t1, a1, 16
	li t3, 16
	bge t0, t3, label365
	mv t2, zero
label44:
	beq t2, zero, label940
	addiw t1, a1, 17
	li t3, 17
	bge t0, t3, label374
	mv t2, zero
label47:
	beq t2, zero, label940
	addiw t1, a1, 18
	li t3, 18
	bge t0, t3, label383
	mv t2, zero
	j label51
label383:
	sw a0, 76(sp)
	lw t2, 72(sp)
label51:
	beq t2, zero, label940
	addiw t1, a1, 19
	li t3, 19
	bge t0, t3, label395
	mv t2, zero
	j label54
label395:
	sw a0, 80(sp)
	lw t2, 76(sp)
label54:
	beq t2, zero, label940
	addiw a1, a1, 20
	blt t0, a3, label67
	sw a0, 84(sp)
	j label67
label374:
	sw a0, 72(sp)
	lw t2, 68(sp)
	j label47
label317:
	sw a0, 48(sp)
	lw t2, 44(sp)
	j label28
label740:
	sw zero, 52(sp)
	lw t1, 48(sp)
	j label147
label356:
	sw a0, 64(sp)
	lw t2, 60(sp)
	j label41
label348:
	mv t2, zero
	j label38
label806:
	sw zero, 76(sp)
	lw t1, 72(sp)
	j label170
label365:
	sw a0, 68(sp)
	lw t2, 64(sp)
	j label44
label724:
	mv a1, t3
	j label74
