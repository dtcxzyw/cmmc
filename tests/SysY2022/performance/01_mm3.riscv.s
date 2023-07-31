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
.globl main
main:
.p2align 2
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getint
	mv s6, zero
	addiw s3, a0, -20
	addiw s1, a0, -4
	mv s0, a0
pcrel636:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel636)
pcrel637:
	auipc a0, %pcrel_hi(A)
	addi s4, a0, %pcrel_lo(pcrel637)
label2:
	bgt s0, s6, label4
label99:
	mv s6, zero
	j label9
.p2align 2
label4:
	ble s0, zero, label102
	slli a0, s6, 12
	mv s7, zero
	add s5, s4, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s0, s7, label6
	addiw s6, s6, 1
	bgt s0, s6, label4
	j label99
label9:
	ble s0, s6, label16
.p2align 2
label11:
	ble s0, zero, label12
	slli a0, s6, 12
	mv s7, zero
	add s5, s2, a0
.p2align 2
label14:
	jal getint
	sh2add a1, s7, s5
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s0, s7, label14
	addiw s6, s6, 1
	bgt s0, s6, label11
label16:
	li a0, 65
	jal _sysy_starttime
pcrel638:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel638)
	mv a1, zero
label17:
	mv a2, zero
	bgt s0, zero, label78
	j label137
label561:
	mv s4, zero
	mv a0, zero
	j label39
.p2align 2
label221:
	mv a4, zero
	bgt s0, zero, label59
	j label562
label39:
	bgt s0, a0, label43
	j label42
.p2align 2
label59:
	slliw a5, a4, 12
	add t1, s4, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	beq a5, zero, label66
	bgt s0, zero, label61
	j label338
.p2align 2
label66:
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label561
.p2align 2
label61:
	slliw t1, a4, 12
	li t2, 4
	add t0, s2, t1
	ble s0, t2, label343
	mv t1, zero
	j label64
.p2align 2
label62:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s0, t1, label62
	addiw a4, a4, 1
	bgt s0, a4, label59
	j label585
.p2align 2
label64:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t6, 0(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	bgt s1, t1, label64
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s0, t1, label62
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	j label583
label137:
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	j label143
.p2align 2
label78:
	ble s0, zero, label443
	slliw a4, a2, 12
	li a5, 4
	add a3, a0, a4
	bgt s0, a5, label82
	mv a4, zero
.p2align 2
label80:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label80
	addiw a2, a2, 1
	bgt s0, a2, label78
	j label591
.p2align 2
label82:
	li a5, 16
	ble s1, a5, label458
	mv a5, zero
.p2align 2
label83:
	sh2add a4, a5, a3
	addiw a5, a5, 16
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	bgt s3, a5, label83
	mv a4, a5
.p2align 2
label85:
	sh2add t0, a4, a3
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt s1, a4, label85
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label80
.p2align 2
label575:
	addiw a2, a2, 1
	bgt s0, a2, label78
	j label137
.p2align 2
label144:
	mv a4, zero
	bgt s0, zero, label25
	j label147
.p2align 2
label556:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a2, zero
	bgt s0, zero, label68
	j label554
.p2align 2
label25:
	slliw a5, a4, 12
	add t0, s4, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label26
	bgt s0, zero, label28
	j label555
.p2align 2
label26:
	addiw a4, a4, 1
	bgt s0, a4, label25
	j label556
.p2align 2
label28:
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label165
	mv t1, zero
.p2align 2
label29:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw a6, 0(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	bgt s1, t1, label29
.p2align 2
label31:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	bgt s0, t1, label31
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
label582:
	mv a2, zero
	ble s0, zero, label554
.p2align 2
label68:
	ble s0, zero, label69
	slliw a4, a2, 12
	li a5, 4
	add a3, s2, a4
	bgt s0, a5, label73
	mv a4, zero
.p2align 2
label71:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label71
	addiw a2, a2, 1
	bgt s0, a2, label68
label571:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	j label220
.p2align 2
label73:
	li a5, 16
	ble s1, a5, label408
	mv a5, zero
.p2align 2
label74:
	sh2add a4, a5, a3
	addiw a5, a5, 16
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	bgt s3, a5, label74
	mv a4, a5
.p2align 2
label76:
	sh2add t0, a4, a3
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt s1, a4, label76
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label71
.p2align 2
label573:
	addiw a2, a2, 1
	bgt s0, a2, label68
	j label571
.p2align 2
label343:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt s0, t1, label62
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	j label583
.p2align 2
label165:
	mv t1, zero
	mv t2, t0
	mv t4, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t0)
	bgt s0, t1, label31
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	j label582
label42:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label43:
	ble s0, zero, label232
	slli a2, a0, 12
	li a3, 4
	add a1, s2, a2
	bgt s0, a3, label45
	mv a2, zero
	mv a3, s4
	mv a5, a1
	li a2, 1
	lw a4, 0(a1)
	addw a3, s4, a4
	bgt s0, a2, label52
.p2align 2
label563:
	mv s4, a3
	j label55
.p2align 2
label45:
	li a2, 16
	ble s1, a2, label240
	mv a2, zero
	mv a4, s4
	j label49
.p2align 2
label46:
	sh2add a3, a2, a1
	addiw a2, a2, 4
	lw a5, 0(a3)
	lw t0, 4(a3)
	addw a4, a4, a5
	addw a5, a4, t0
	lw a4, 8(a3)
	lw a3, 12(a3)
	addw t0, a5, a4
	addw a4, t0, a3
	bgt s1, a2, label46
	mv a3, a4
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s0, a2, label52
	j label564
.p2align 2
label49:
	sh2add a3, a2, a1
	lw a5, 0(a3)
	addiw a2, a2, 16
	lw t0, 4(a3)
	addw a4, a4, a5
	lw t1, 8(a3)
	addw a5, a4, t0
	lw t0, 12(a3)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 16(a3)
	addw t0, a5, a4
	lw a5, 20(a3)
	addw a4, t0, a5
	lw t0, 24(a3)
	lw t1, 28(a3)
	addw a5, a4, t0
	lw t0, 32(a3)
	addw a4, a5, t1
	lw t1, 36(a3)
	addw a5, a4, t0
	lw t0, 40(a3)
	addw a4, a5, t1
	lw t1, 44(a3)
	addw a5, a4, t0
	lw t2, 48(a3)
	addw a4, a5, t1
	lw t0, 52(a3)
	addw a5, a4, t2
	lw t1, 56(a3)
	addw a4, a5, t0
	lw a3, 60(a3)
	addw a5, a4, t1
	addw a4, a5, a3
	bgt s3, a2, label49
	j label46
.p2align 2
label52:
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s0, a2, label52
	j label563
.p2align 2
label55:
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
label554:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	j label220
label69:
	addiw a2, a2, 1
	bgt s0, a2, label68
	j label554
.p2align 2
label408:
	mv a4, zero
	mv t0, a3
	li a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s1, a4, label76
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label71
	j label573
.p2align 2
label458:
	mv a4, zero
	mv t0, a3
	li a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s1, a4, label85
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s0, a4, label80
	j label575
.p2align 2
label338:
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	j label583
.p2align 2
label555:
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	j label143
label583:
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label561
.p2align 2
label585:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	j label583
label12:
	addiw s6, s6, 1
	bgt s0, s6, label11
	j label16
label564:
	mv s4, a3
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
label220:
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label561
label562:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	j label220
label143:
	mv a2, zero
	bgt s0, zero, label68
	j label554
label147:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	j label143
label443:
	addiw a2, a2, 1
	bgt s0, a2, label78
	j label137
label591:
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	j label143
label102:
	addiw s6, s6, 1
	j label2
label240:
	mv a4, s4
	mv a2, zero
	j label46
label232:
	addiw a0, a0, 1
	j label39
