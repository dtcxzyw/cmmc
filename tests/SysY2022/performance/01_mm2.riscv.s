.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s2, 64(sp)
	sd s8, 72(sp)
	jal getint
	li s2, 4
pcrel523:
	auipc a1, %pcrel_hi(A)
	li s5, 5
	addiw s0, a0, -4
	mv s7, zero
	mv s1, a0
	addi s4, a1, %pcrel_lo(pcrel523)
pcrel524:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel524)
	bgt s1, zero, label73
label87:
	mv s7, zero
	ble s1, zero, label6
.p2align 2
label68:
	ble s1, zero, label69
	slli a0, s7, 12
	mv s8, zero
	add s6, s3, a0
.p2align 2
label71:
	jal getint
	sh2add a1, s8, s6
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s1, s8, label71
	addiw s7, s7, 1
	bgt s1, s7, label68
	j label6
.p2align 2
label73:
	ble s1, zero, label74
	slli a0, s7, 12
	mv s8, zero
	add s6, s4, a0
.p2align 2
label76:
	jal getint
	sh2add a1, s8, s6
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s1, s8, label76
	addiw s7, s7, 1
	bgt s1, s7, label73
	j label87
label74:
	addiw s7, s7, 1
	bgt s1, s7, label73
	j label87
label69:
	addiw s7, s7, 1
	bgt s1, s7, label68
label6:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel525:
	auipc a2, %pcrel_hi(C)
	addi a0, a2, %pcrel_lo(pcrel525)
.p2align 2
label7:
	mv a2, zero
	bgt s1, zero, label11
	j label97
label441:
	mv s4, zero
	mv a1, zero
	j label36
.p2align 2
label207:
	mv a5, zero
	bgt s1, zero, label53
	j label442
label36:
	bgt s1, a1, label39
	j label49
.p2align 2
label447:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
	addiw a1, a1, 1
	blt a1, s5, label7
	j label441
.p2align 2
label53:
	slliw a3, a5, 12
	add t1, s4, a3
	sh2add t0, a4, t1
	lw a3, 0(t0)
	beq a3, zero, label54
	bgt s1, zero, label56
	j label446
.p2align 2
label54:
	addiw a5, a5, 1
	bgt s1, a5, label53
	j label447
.p2align 2
label56:
	slliw t1, a5, 12
	add t0, s3, t1
	ble s1, s2, label274
	mv t1, zero
	j label59
.p2align 2
label57:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s1, t1, label57
	addiw a5, a5, 1
	bgt s1, a5, label53
	j label450
.p2align 2
label59:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t5, 0(t3)
	mulw t6, a3, t5
	addw a6, t4, t6
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t5, a3, a6
	addw t6, t4, t5
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a3, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a3, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	bgt s0, t1, label59
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s1, t1, label57
	addiw a5, a5, 1
	bgt s1, a5, label53
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
	j label477
.p2align 2
label11:
	ble s1, zero, label100
	slliw a4, a2, 12
	add a3, a0, a4
	ble s1, s2, label105
	mv a4, zero
.p2align 2
label13:
	sh2add a5, a4, a3
	addiw a4, a4, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt s0, a4, label13
.p2align 2
label15:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label15
	addiw a2, a2, 1
	bgt s1, a2, label11
.p2align 2
label432:
	mv a4, zero
	mv a3, zero
	mv a2, s3
	ble s1, zero, label129
.p2align 2
label130:
	mv a5, zero
	bgt s1, zero, label22
	j label133
.p2align 2
label435:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
	mv a2, zero
	bgt s1, zero, label61
	j label433
.p2align 2
label22:
	slliw a3, a5, 12
	add t0, s4, a3
	sh2add t1, a4, t0
	lw a3, 0(t1)
	beq a3, zero, label23
	bgt s1, zero, label25
	j label434
.p2align 2
label23:
	addiw a5, a5, 1
	bgt s1, a5, label22
	j label435
.p2align 2
label25:
	slliw t1, a5, 12
	add t0, a0, t1
	ble s1, s2, label151
	mv t1, zero
	j label28
.p2align 2
label26:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a3, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	bgt s1, t1, label26
	addiw a5, a5, 1
	bgt s1, a5, label22
	j label438
.p2align 2
label28:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t5, 0(t3)
	mulw a6, a3, t5
	addw t6, t4, a6
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a3, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw t5, a3, t6
	addw a6, t4, t5
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a3, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	bgt s0, t1, label28
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a3, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	bgt s1, t1, label26
	addiw a5, a5, 1
	bgt s1, a5, label22
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
	j label469
.p2align 2
label61:
	ble s1, zero, label62
	slliw a4, a2, 12
	add a3, s3, a4
	bgt s1, s2, label328
	mv a4, zero
	mv a5, a3
	li a4, 1
	sw zero, 0(a3)
	bgt s1, a4, label64
	j label453
.p2align 2
label328:
	mv a4, zero
	mv a5, a3
	li a4, 4
	sd zero, 0(a3)
	sd zero, 8(a3)
	bgt s0, a4, label66
	j label454
.p2align 2
label64:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label64
	addiw a2, a2, 1
	bgt s1, a2, label61
.p2align 2
label455:
	mv a4, zero
	mv a3, zero
	mv a2, a0
	bgt s1, zero, label207
	j label206
.p2align 2
label66:
	sh2add a5, a4, a3
	addiw a4, a4, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt s0, a4, label66
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label64
	addiw a2, a2, 1
	bgt s1, a2, label61
	j label455
.p2align 2
label151:
	mv t1, zero
	mv t2, t0
	mv t4, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t5, a3, t6
	addw t3, t3, t5
	sw t3, 0(t0)
	bgt s1, t1, label26
	addiw a5, a5, 1
	bgt s1, a5, label22
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
	j label469
.p2align 2
label274:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt s1, t1, label57
	addiw a5, a5, 1
	bgt s1, a5, label53
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
	j label477
.p2align 2
label39:
	ble s1, zero, label218
	slli a2, a1, 12
	add a0, s3, a2
	bgt s1, s2, label224
	j label223
.p2align 2
label443:
	mv s4, a4
	j label47
.p2align 2
label224:
	mv a4, s4
	mv a2, zero
.p2align 2
label41:
	sh2add a3, a2, a0
	addiw a2, a2, 4
	lw t0, 0(a3)
	lw a5, 4(a3)
	addw a4, a4, t0
	addw t0, a4, a5
	lw a4, 8(a3)
	lw a3, 12(a3)
	addw a5, t0, a4
	addw a4, a5, a3
	bgt s0, a2, label41
.p2align 2
label44:
	sh2add a5, a2, a0
	addiw a2, a2, 1
	lw a3, 0(a5)
	addw a4, a4, a3
	bgt s1, a2, label44
	j label443
.p2align 2
label47:
	addiw a1, a1, 1
	bgt s1, a1, label39
label49:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label433:
	mv a4, zero
	mv a3, zero
	mv a2, a0
	bgt s1, zero, label207
	j label206
.p2align 2
label62:
	addiw a2, a2, 1
	bgt s1, a2, label61
	j label433
.p2align 2
label105:
	mv a4, zero
	mv a5, a3
	li a4, 1
	sw zero, 0(a3)
	bgt s1, a4, label15
	addiw a2, a2, 1
	bgt s1, a2, label11
	j label432
.p2align 2
label454:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label64
	addiw a2, a2, 1
	bgt s1, a2, label61
	j label455
.p2align 2
label434:
	addiw a5, a5, 1
	bgt s1, a5, label22
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
	j label129
.p2align 2
label446:
	addiw a5, a5, 1
	bgt s1, a5, label53
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
	j label445
.p2align 2
label438:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
label469:
	mv a2, zero
	bgt s1, zero, label61
	j label433
.p2align 2
label450:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
label477:
	addiw a1, a1, 1
	blt a1, s5, label7
	j label441
label97:
	mv a4, zero
	mv a3, zero
	mv a2, s3
	bgt s1, zero, label130
	j label129
.p2align 2
label100:
	addiw a2, a2, 1
	bgt s1, a2, label11
	j label97
label129:
	mv a2, zero
	bgt s1, zero, label61
	j label433
.p2align 2
label133:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label130
	j label129
.p2align 2
label442:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label207
label445:
	addiw a1, a1, 1
	blt a1, s5, label7
	j label441
label206:
	addiw a1, a1, 1
	blt a1, s5, label7
	j label441
.p2align 2
label453:
	addiw a2, a2, 1
	bgt s1, a2, label61
	j label433
label218:
	addiw a1, a1, 1
	j label36
label223:
	mv a2, zero
	mv a4, s4
	mv a5, a0
	li a2, 1
	lw a3, 0(a0)
	addw a4, s4, a3
	bgt s1, a2, label44
	j label443
