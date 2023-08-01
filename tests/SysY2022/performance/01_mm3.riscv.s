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
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	jal getint
	mv s5, zero
	addiw s1, a0, -8
	mv s0, a0
pcrel576:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel576)
pcrel577:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel577)
label2:
	bgt s0, s5, label4
label87:
	mv s5, zero
	j label9
.p2align 2
label4:
	ble s0, zero, label90
	slli a0, s5, 12
	mv s6, zero
	add s4, s3, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label6
	addiw s5, s5, 1
	bgt s0, s5, label4
	j label87
label9:
	bgt s0, s5, label73
label11:
	li a0, 65
	jal _sysy_starttime
pcrel578:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel578)
	mv a1, zero
	j label12
.p2align 2
label73:
	ble s0, zero, label429
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
.p2align 2
label75:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label75
	addiw s5, s5, 1
	bgt s0, s5, label73
	j label11
label12:
	mv a2, zero
	bgt s0, zero, label16
	j label111
label508:
	mv s3, zero
	mv a1, zero
	j label48
.p2align 2
label279:
	mv a5, zero
	bgt s0, zero, label65
	j label509
label48:
	bgt s0, a1, label51
	j label61
.p2align 2
label65:
	slliw a2, a5, 12
	add t1, s3, a2
	sh2add t0, a4, t1
	lw a2, 0(t0)
	beq a2, zero, label72
	ble s0, zero, label352
	slliw t1, a5, 12
	li t2, 8
	add t0, s2, t1
	ble s0, t2, label357
	mv t2, zero
.p2align 2
label68:
	sh2add t1, t2, t0
	sh2add t3, t2, a3
	lw t4, 0(t1)
	addiw t2, t2, 8
	lw a6, 0(t3)
	mulw t5, a2, a6
	addw t6, t4, t5
	sw t6, 0(t1)
	lw t4, 4(t1)
	lw a6, 4(t3)
	mulw t5, a2, a6
	addw t6, t4, t5
	sw t6, 4(t1)
	lw t4, 8(t1)
	lw t5, 8(t3)
	mulw t6, a2, t5
	addw a6, t4, t6
	sw a6, 8(t1)
	lw t4, 12(t1)
	lw a6, 12(t3)
	mulw t5, a2, a6
	addw t6, t4, t5
	sw t6, 12(t1)
	lw t4, 16(t1)
	lw t5, 16(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 16(t1)
	lw t4, 20(t1)
	lw t5, 20(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 20(t1)
	lw t4, 24(t1)
	lw a6, 24(t3)
	mulw t6, a2, a6
	addw t5, t4, t6
	sw t5, 24(t1)
	lw t4, 28(t1)
	lw t6, 28(t3)
	mulw t5, a2, t6
	addw t3, t4, t5
	sw t3, 28(t1)
	bgt s1, t2, label68
	mv t1, t2
.p2align 2
label70:
	sh2add t3, t1, t0
	sh2add t6, t1, a3
	lw t2, 0(t3)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a2, t4
	addw t2, t2, t5
	sw t2, 0(t3)
	bgt s0, t1, label70
.p2align 2
label72:
	addiw a5, a5, 1
	bgt s0, a5, label65
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, a0, a5
	bgt s0, a4, label279
label537:
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label508
label111:
	mv a4, zero
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label148
	j label147
.p2align 2
label16:
	ble s0, zero, label114
	slliw a4, a2, 12
	li a5, 8
	add a3, a0, a4
	ble s0, a5, label119
	mv a4, zero
	mv a5, a3
	li a4, 8
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	bgt s1, a4, label20
	j label493
.p2align 2
label18:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label18
	addiw a2, a2, 1
	bgt s0, a2, label16
	j label519
.p2align 2
label20:
	sh2add a5, a4, a3
	addiw a4, a4, 8
	sd zero, 0(a5)
	sd zero, 8(a5)
	sd zero, 16(a5)
	sd zero, 24(a5)
	bgt s1, a4, label20
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label18
	addiw a2, a2, 1
	bgt s0, a2, label16
	j label111
.p2align 2
label148:
	mv a5, zero
	ble s0, zero, label27
.p2align 2
label28:
	slliw a2, a5, 12
	add t0, s3, a2
	sh2add t1, a4, t0
	lw a2, 0(t1)
	beq a2, zero, label29
	bgt s0, zero, label31
	j label498
.p2align 2
label29:
	addiw a5, a5, 1
	bgt s0, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, s2, a5
	bgt s0, a4, label148
	mv a2, zero
	bgt s0, zero, label38
	j label242
.p2align 2
label31:
	slliw t1, a5, 12
	li t2, 8
	add t0, a0, t1
	ble s0, t2, label170
	mv t2, zero
.p2align 2
label32:
	sh2add t1, t2, t0
	sh2add t3, t2, a3
	lw t4, 0(t1)
	addiw t2, t2, 8
	lw a6, 0(t3)
	mulw t6, a2, a6
	addw t5, t4, t6
	sw t5, 0(t1)
	lw t4, 4(t1)
	lw t5, 4(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 4(t1)
	lw t4, 8(t1)
	lw t5, 8(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 8(t1)
	lw t4, 12(t1)
	lw a6, 12(t3)
	mulw t6, a2, a6
	addw t5, t4, t6
	sw t5, 12(t1)
	lw t4, 16(t1)
	lw t6, 16(t3)
	mulw t5, a2, t6
	addw a6, t4, t5
	sw a6, 16(t1)
	lw t4, 20(t1)
	lw a6, 20(t3)
	mulw t5, a2, a6
	addw t6, t4, t5
	sw t6, 20(t1)
	lw t4, 24(t1)
	lw t6, 24(t3)
	mulw t5, a2, t6
	addw a6, t4, t5
	sw a6, 24(t1)
	lw t4, 28(t1)
	lw t5, 28(t3)
	mulw t3, a2, t5
	addw t4, t4, t3
	sw t4, 28(t1)
	bgt s1, t2, label32
	mv t1, t2
.p2align 2
label34:
	sh2add t3, t1, t0
	sh2add t5, t1, a3
	lw t2, 0(t3)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a2, t6
	addw t2, t2, t4
	sw t2, 0(t3)
	bgt s0, t1, label34
	addiw a5, a5, 1
	bgt s0, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, s2, a5
	bgt s0, a4, label148
label526:
	mv a2, zero
	bgt s0, zero, label38
label242:
	mv a4, zero
	mv a5, zero
	mv a3, a0
	bgt s0, zero, label279
	j label278
.p2align 2
label38:
	ble s0, zero, label245
	slliw a4, a2, 12
	li a5, 8
	add a3, s2, a4
	ble s0, a5, label250
	mv a4, zero
	mv a5, a3
	li a4, 8
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	bgt s1, a4, label42
	j label505
.p2align 2
label40:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label40
	addiw a2, a2, 1
	bgt s0, a2, label38
	j label529
.p2align 2
label42:
	sh2add a5, a4, a3
	addiw a4, a4, 8
	sd zero, 0(a5)
	sd zero, 8(a5)
	sd zero, 16(a5)
	sd zero, 24(a5)
	bgt s1, a4, label42
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label40
	addiw a2, a2, 1
	bgt s0, a2, label38
	j label242
.p2align 2
label357:
	mv t1, zero
	mv t3, t0
	mv t6, a3
	lw t2, 0(t0)
	li t1, 1
	lw t4, 0(a3)
	mulw t5, a2, t4
	addw t2, t2, t5
	sw t2, 0(t0)
	bgt s0, t1, label70
	addiw a5, a5, 1
	bgt s0, a5, label65
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, a0, a5
	bgt s0, a4, label279
	j label537
.p2align 2
label170:
	mv t1, zero
	mv t3, t0
	mv t5, a3
	lw t2, 0(t0)
	li t1, 1
	lw t6, 0(a3)
	mulw t4, a2, t6
	addw t2, t2, t4
	sw t2, 0(t0)
	bgt s0, t1, label34
	addiw a5, a5, 1
	bgt s0, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, s2, a5
	bgt s0, a4, label148
	j label526
.p2align 2
label51:
	ble s0, zero, label290
	slli a2, a1, 12
	li a3, 8
	add a0, s2, a2
	bgt s0, a3, label296
	mv a2, zero
	mv a4, s3
	mv a5, a0
	li a2, 1
	lw a3, 0(a0)
	addw a4, s3, a3
	bgt s0, a2, label53
	j label510
.p2align 2
label296:
	mv a4, s3
	mv a2, zero
	j label56
.p2align 2
label53:
	sh2add a5, a2, a0
	addiw a2, a2, 1
	lw a3, 0(a5)
	addw a4, a4, a3
	bgt s0, a2, label53
	mv s3, a4
	addiw a1, a1, 1
	bgt s0, a1, label51
	j label61
.p2align 2
label56:
	sh2add a3, a2, a0
	addiw a2, a2, 8
	lw a5, 0(a3)
	lw t0, 4(a3)
	addw a4, a4, a5
	addw a5, a4, t0
	lw a4, 8(a3)
	addw t0, a5, a4
	lw a5, 12(a3)
	addw a4, t0, a5
	lw t0, 16(a3)
	lw t1, 20(a3)
	addw a5, a4, t0
	lw t0, 24(a3)
	addw a4, a5, t1
	lw a3, 28(a3)
	addw a5, a4, t0
	addw a4, a5, a3
	bgt s1, a2, label56
	sh2add a5, a2, a0
	addiw a2, a2, 1
	lw a3, 0(a5)
	addw a4, a4, a3
	bgt s0, a2, label53
	mv s3, a4
	addiw a1, a1, 1
	bgt s0, a1, label51
	j label61
label27:
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, s2, a5
	bgt s0, a4, label148
label497:
	mv a2, zero
	bgt s0, zero, label38
	j label242
.p2align 2
label119:
	mv a4, zero
	mv a5, a3
	li a4, 1
	sw zero, 0(a3)
	bgt s0, a4, label18
	addiw a2, a2, 1
	bgt s0, a2, label16
	j label111
.p2align 2
label250:
	mv a4, zero
	mv a5, a3
	li a4, 1
	sw zero, 0(a3)
	bgt s0, a4, label40
	addiw a2, a2, 1
	bgt s0, a2, label38
	j label242
.p2align 2
label493:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label18
	addiw a2, a2, 1
	bgt s0, a2, label16
	j label111
.p2align 2
label505:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label40
	addiw a2, a2, 1
	bgt s0, a2, label38
	j label242
.p2align 2
label352:
	addiw a5, a5, 1
	bgt s0, a5, label65
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, a0, a5
	bgt s0, a4, label279
	j label513
.p2align 2
label498:
	addiw a5, a5, 1
	bgt s0, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, s2, a5
	bgt s0, a4, label148
	j label497
label61:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s3
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
label114:
	addiw a2, a2, 1
	bgt s0, a2, label16
	j label111
label509:
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a3, a0, a5
	bgt s0, a4, label279
label513:
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label508
label245:
	addiw a2, a2, 1
	bgt s0, a2, label38
	j label242
label519:
	mv a4, zero
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label148
label147:
	mv a2, zero
	bgt s0, zero, label38
	j label242
label529:
	mv a4, zero
	mv a5, zero
	mv a3, a0
	bgt s0, zero, label279
label278:
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label12
	j label508
label290:
	addiw a1, a1, 1
	j label48
label510:
	mv s3, a4
	addiw a1, a1, 1
	j label48
label429:
	addiw s5, s5, 1
	j label9
label90:
	addiw s5, s5, 1
	j label2
