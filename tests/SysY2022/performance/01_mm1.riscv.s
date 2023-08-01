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
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	jal getint
	li s2, 4
	mv s9, zero
	li s5, 16
pcrel648:
	auipc a1, %pcrel_hi(A)
	li s7, 5
	addiw s4, a0, -20
	addiw s0, a0, -4
	mv s1, a0
	addi s6, a1, %pcrel_lo(pcrel648)
pcrel649:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel649)
label2:
	bgt s1, s9, label4
label99:
	mv s9, zero
	j label9
.p2align 2
label4:
	ble s1, zero, label102
	slli a0, s9, 12
	mv s10, zero
	add s8, s6, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s10, s8
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s1, s10, label6
	addiw s9, s9, 1
	bgt s1, s9, label4
	j label99
label9:
	ble s1, s9, label16
.p2align 2
label11:
	ble s1, zero, label12
	slli a0, s9, 12
	mv s10, zero
	add s8, s3, a0
.p2align 2
label14:
	jal getint
	sh2add a1, s10, s8
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s1, s10, label14
	addiw s9, s9, 1
	bgt s1, s9, label11
label16:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel650:
	auipc a2, %pcrel_hi(C)
	addi a0, a2, %pcrel_lo(pcrel650)
.p2align 2
label17:
	mv a2, zero
	bgt s1, zero, label78
	j label137
label573:
	mv s6, zero
	mv a0, zero
	j label39
.p2align 2
label221:
	mv a5, zero
	bgt s1, zero, label59
	j label574
label39:
	bgt s1, a0, label43
	j label42
.p2align 2
label59:
	slliw a3, a5, 12
	add t1, s6, a3
	sh2add t0, a4, t1
	lw a3, 0(t0)
	beq a3, zero, label66
	bgt s1, zero, label61
	j label338
.p2align 2
label66:
	addiw a5, a5, 1
	bgt s1, a5, label59
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
	addiw a1, a1, 1
	blt a1, s7, label17
	j label573
.p2align 2
label61:
	slliw t1, a5, 12
	add t0, s3, t1
	ble s1, s2, label343
	mv t1, zero
	j label64
.p2align 2
label62:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a3, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s1, t1, label62
	addiw a5, a5, 1
	bgt s1, a5, label59
	j label597
.p2align 2
label64:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw a6, 0(t3)
	mulw t6, a3, a6
	addw t5, t4, t6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t6, a3, a6
	addw t5, t4, t6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw t5, a3, t6
	addw a6, t4, t5
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a3, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	bgt s0, t1, label64
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a3, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s1, t1, label62
	addiw a5, a5, 1
	bgt s1, a5, label59
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
	j label595
label137:
	mv a4, zero
	mv a3, zero
	mv a2, s3
	bgt s1, zero, label144
	j label143
.p2align 2
label78:
	ble s1, zero, label443
	slliw a4, a2, 12
	add a3, a0, a4
	bgt s1, s2, label82
	mv a4, zero
.p2align 2
label80:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label80
	addiw a2, a2, 1
	bgt s1, a2, label78
	j label603
.p2align 2
label82:
	ble s0, s5, label458
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
	bgt s4, a5, label83
.p2align 2
label85:
	sh2add a4, a5, a3
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s0, a5, label85
	mv a4, a5
	sh2add a5, a5, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label80
.p2align 2
label587:
	addiw a2, a2, 1
	bgt s1, a2, label78
	j label137
.p2align 2
label144:
	mv a5, zero
	bgt s1, zero, label25
	j label147
.p2align 2
label568:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label144
	mv a2, zero
	bgt s1, zero, label68
	j label566
.p2align 2
label25:
	slliw a3, a5, 12
	add t1, s6, a3
	sh2add t0, a4, t1
	lw a3, 0(t0)
	beq a3, zero, label26
	bgt s1, zero, label28
	j label567
.p2align 2
label26:
	addiw a5, a5, 1
	bgt s1, a5, label25
	j label568
.p2align 2
label28:
	slliw t1, a5, 12
	add t0, a0, t1
	ble s1, s2, label165
	mv t1, zero
.p2align 2
label29:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t5, 0(t3)
	mulw a6, a3, t5
	addw t6, t4, a6
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw a6, 4(t3)
	mulw t6, a3, a6
	addw t5, t4, t6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a3, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a3, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	bgt s0, t1, label29
.p2align 2
label31:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	bgt s1, t1, label31
	addiw a5, a5, 1
	bgt s1, a5, label25
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label144
label594:
	mv a2, zero
	ble s1, zero, label566
.p2align 2
label68:
	ble s1, zero, label69
	slliw a4, a2, 12
	add a3, s3, a4
	bgt s1, s2, label73
	mv a4, zero
.p2align 2
label71:
	sh2add a5, a4, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label71
	addiw a2, a2, 1
	bgt s1, a2, label68
.p2align 2
label583:
	mv a4, zero
	mv a3, zero
	mv a2, a0
	bgt s1, zero, label221
	j label220
.p2align 2
label73:
	ble s0, s5, label408
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
	bgt s4, a5, label74
.p2align 2
label76:
	sh2add a4, a5, a3
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s0, a5, label76
	mv a4, a5
	sh2add a5, a5, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label71
.p2align 2
label585:
	addiw a2, a2, 1
	bgt s1, a2, label68
	j label583
.p2align 2
label165:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt s1, t1, label31
	addiw a5, a5, 1
	bgt s1, a5, label25
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label144
	j label594
.p2align 2
label343:
	mv t1, zero
	mv t2, t0
	mv t5, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t4, a3, t6
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt s1, t1, label62
	addiw a5, a5, 1
	bgt s1, a5, label59
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
	j label595
label42:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s6
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label43:
	ble s1, zero, label232
	slli a2, a0, 12
	add a1, s3, a2
	bgt s1, s2, label45
	mv a2, zero
	mv a3, s6
	mv a5, a1
	li a2, 1
	lw a4, 0(a1)
	addw a3, s6, a4
	bgt s1, a2, label52
.p2align 2
label575:
	mv s6, a3
	j label55
.p2align 2
label45:
	ble s0, s5, label240
	mv a2, zero
	mv a4, s6
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
	bgt s0, a2, label46
	mv a3, a4
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s1, a2, label52
	j label576
.p2align 2
label49:
	sh2add a3, a2, a1
	addiw a2, a2, 16
	lw t0, 0(a3)
	lw t1, 4(a3)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 8(a3)
	addw t0, a4, a5
	lw a4, 12(a3)
	lw t1, 16(a3)
	addw a5, t0, a4
	lw t0, 20(a3)
	addw a4, a5, t1
	lw t1, 24(a3)
	addw a5, a4, t0
	lw t2, 28(a3)
	addw a4, a5, t1
	lw t0, 32(a3)
	addw a5, a4, t2
	lw t1, 36(a3)
	addw a4, a5, t0
	lw t0, 40(a3)
	addw a5, a4, t1
	lw t1, 44(a3)
	addw a4, a5, t0
	lw t0, 48(a3)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 52(a3)
	addw t0, a4, a5
	lw a4, 56(a3)
	lw a3, 60(a3)
	addw a5, t0, a4
	addw a4, a5, a3
	bgt s4, a2, label49
	j label46
.p2align 2
label52:
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s1, a2, label52
	j label575
.p2align 2
label55:
	addiw a0, a0, 1
	bgt s1, a0, label43
	j label42
label566:
	mv a4, zero
	mv a3, zero
	mv a2, a0
	bgt s1, zero, label221
	j label220
.p2align 2
label69:
	addiw a2, a2, 1
	bgt s1, a2, label68
	j label566
.p2align 2
label458:
	mv a5, zero
	mv a4, a3
	li a5, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a5, label85
	mv a4, a5
	sh2add a5, a5, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label80
	j label587
.p2align 2
label408:
	mv a5, zero
	mv a4, a3
	li a5, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a5, label76
	mv a4, a5
	sh2add a5, a5, a3
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label71
	j label585
.p2align 2
label567:
	addiw a5, a5, 1
	bgt s1, a5, label25
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label144
	j label143
.p2align 2
label338:
	addiw a5, a5, 1
	bgt s1, a5, label59
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
label595:
	addiw a1, a1, 1
	blt a1, s7, label17
	j label573
.p2align 2
label597:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
	j label595
label12:
	addiw s9, s9, 1
	bgt s1, s9, label11
	j label16
.p2align 2
label576:
	mv s6, a3
	addiw a0, a0, 1
	bgt s1, a0, label43
	j label42
.p2align 2
label443:
	addiw a2, a2, 1
	bgt s1, a2, label78
	j label137
label143:
	mv a2, zero
	bgt s1, zero, label68
	j label566
.p2align 2
label147:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, s3, a3
	bgt s1, a4, label144
	j label143
label220:
	addiw a1, a1, 1
	blt a1, s7, label17
	j label573
.p2align 2
label574:
	addiw a4, a4, 1
	slliw a3, a4, 12
	add a2, a0, a3
	bgt s1, a4, label221
	j label220
label603:
	mv a4, zero
	mv a3, zero
	mv a2, s3
	bgt s1, zero, label144
	j label143
label102:
	addiw s9, s9, 1
	j label2
label232:
	addiw a0, a0, 1
	j label39
label240:
	mv a4, s6
	mv a2, zero
	j label46
