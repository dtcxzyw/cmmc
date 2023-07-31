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
	mv s5, zero
	addiw s3, a0, -20
	addiw s1, a0, -4
	mv s0, a0
pcrel709:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel709)
pcrel710:
	auipc a0, %pcrel_hi(A)
	addi s4, a0, %pcrel_lo(pcrel710)
	ble s0, zero, label99
.p2align 2
label4:
	ble s0, zero, label102
	slli a0, s5, 12
	mv s7, zero
	add s6, s4, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s7, s6
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s0, s7, label6
	addiw s5, s5, 1
	bgt s0, s5, label4
	mv s5, zero
	ble s0, zero, label16
.p2align 2
label11:
	ble s0, zero, label12
	slli a0, s5, 12
	mv s7, zero
	add s6, s2, a0
.p2align 2
label14:
	jal getint
	sh2add a1, s7, s6
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s0, s7, label14
	addiw s5, s5, 1
	bgt s0, s5, label11
label16:
	li a0, 65
	jal _sysy_starttime
pcrel711:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel711)
	mv a1, zero
label17:
	mv a2, zero
	j label19
.p2align 2
label455:
	addiw a2, a2, 1
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label144:
	mv a4, zero
	j label23
.p2align 2
label26:
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	ble s0, zero, label609
.p2align 2
label68:
	ble s0, zero, label69
	slliw a5, a3, 12
	li a4, 4
	add a2, s2, a5
	ble s0, a4, label398
	li t0, 16
	ble s1, t0, label408
	mv a5, zero
.p2align 2
label74:
	sh2add a4, a5, a2
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	addiw a4, a5, 16
	ble s3, a4, label430
	mv a5, a4
	j label74
.p2align 2
label25:
	slliw a5, a4, 12
	add t0, s4, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	beq a5, zero, label26
	j label156
.p2align 2
label196:
	sh2add t3, t2, t0
	sh2add t4, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t3)
	bgt s0, t2, label31
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label68
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label156:
	ble s0, zero, label556
	slliw t1, a4, 12
	li t3, 4
	add t0, a0, t1
	ble s0, t3, label165
	mv t1, zero
.p2align 2
label29:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 0(t2)
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
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s1, t2, label196
	mv t1, t2
	j label29
.p2align 2
label165:
	mv t2, zero
	mv t3, t0
	mv t4, a2
	lw t1, 0(t0)
	li t2, 1
	lw t6, 0(a2)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t0)
	ble s0, t2, label559
.p2align 2
label31:
	sh2add t3, t2, t0
	sh2add t4, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t1, t1, t5
	sw t1, 0(t3)
	bgt s0, t2, label31
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label68
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
label221:
	mv a4, zero
	bgt s0, zero, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label59:
	slliw a5, a4, 12
	add t1, s4, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	beq a5, zero, label66
	j label60
.p2align 2
label343:
	mv t2, zero
	mv t3, t0
	mv t5, a2
	lw t1, 0(t0)
	li t2, 1
	lw t6, 0(a2)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t0)
	ble s0, t2, label567
.p2align 2
label62:
	sh2add t3, t2, t0
	sh2add t5, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label62
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label60:
	ble s0, zero, label338
	slliw t1, a4, 12
	li t3, 4
	add t0, s2, t1
	ble s0, t3, label343
	mv t1, zero
.p2align 2
label64:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s1, t2, label387
	mv t1, t2
	j label64
.p2align 2
label387:
	sh2add t3, t2, t0
	sh2add t5, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t1, t1, t4
	sw t1, 0(t3)
	bgt s0, t2, label62
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label71:
	sh2add a4, a5, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label71
	j label405
.p2align 2
label430:
	sh2add t0, a4, a2
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble s1, a4, label574
.p2align 2
label76:
	sh2add t0, a4, a2
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt s1, a4, label76
	mv a5, a4
	sh2add a4, a4, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label71
	addiw a3, a3, 1
	bgt s0, a3, label68
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label19:
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
label627:
	mv s4, zero
	mv a0, zero
	bgt s0, zero, label43
	j label42
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
	j label627
.p2align 2
label405:
	addiw a3, a3, 1
	bgt s0, a3, label68
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label556:
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label68
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label559:
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label68
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label574:
	mv a5, a4
	sh2add a4, a4, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label71
	addiw a3, a3, 1
	bgt s0, a3, label68
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label78:
	bgt s0, zero, label79
	j label443
.p2align 2
label80:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label80
	j label455
.p2align 2
label577:
	mv a5, a4
	sh2add a4, a4, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label80
	addiw a2, a2, 1
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label443:
	addiw a2, a2, 1
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label338:
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label23:
	bgt s0, a4, label25
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s2, a4
	bgt s0, a3, label144
	mv a3, zero
	bgt s0, zero, label68
	mv a4, zero
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label609:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label69:
	addiw a3, a3, 1
	bgt s0, a3, label68
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label408:
	mv a4, zero
	mv t0, a2
	li a4, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s1, a4, label76
	mv a5, a4
	sh2add a4, a4, a2
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label71
	addiw a3, a3, 1
	bgt s0, a3, label68
	mv a3, zero
	mv a4, zero
	mv a2, a0
	bgt s0, zero, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label567:
	addiw a4, a4, 1
	bgt s0, a4, label59
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	bgt s0, a3, label221
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label79:
	slliw a4, a2, 12
	li t0, 4
	add a3, a0, a4
	ble s0, t0, label448
	li t0, 16
	ble s1, t0, label458
	mv a5, zero
.p2align 2
label83:
	sh2add a4, a5, a3
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	addiw a4, a5, 16
	ble s3, a4, label480
	mv a5, a4
	j label83
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
	mv a5, a4
	sh2add a4, a4, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label80
	addiw a2, a2, 1
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
.p2align 2
label480:
	sh2add t0, a4, a3
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble s1, a4, label577
.p2align 2
label85:
	sh2add t0, a4, a3
	addiw a4, a4, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt s1, a4, label85
	mv a5, a4
	sh2add a4, a4, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	bgt s0, a5, label80
	addiw a2, a2, 1
	bgt s0, a2, label78
	mv a3, zero
	mv a4, zero
	mv a2, s2
	bgt s0, zero, label144
	mv a2, a0
	addiw a1, a1, 1
	li a2, 5
	blt a1, a2, label17
	j label627
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
	bgt s0, zero, label44
	j label232
.p2align 2
label237:
	mv a2, zero
	mv a5, a1
	li a2, 1
	lw a3, 0(a1)
	addw s4, s4, a3
	bgt s0, a2, label52
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
.p2align 2
label44:
	slli a2, a0, 12
	li a3, 4
	add a1, s2, a2
	ble s0, a3, label237
	li a3, 16
	ble s1, a3, label240
	mv a2, zero
	mv a4, s4
.p2align 2
label49:
	sh2add a3, a2, a1
	lw a5, 0(a3)
	lw t0, 4(a3)
	addw a4, a4, a5
	lw t1, 8(a3)
	addw a5, a4, t0
	lw t0, 12(a3)
	addw a4, a5, t1
	lw t1, 16(a3)
	addw a5, a4, t0
	lw t0, 20(a3)
	addw a4, a5, t1
	lw t1, 24(a3)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 28(a3)
	addw t0, a4, a5
	lw a4, 32(a3)
	lw t1, 36(a3)
	addw a5, t0, a4
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
	lw t0, 60(a3)
	addw a5, a4, t1
	addiw a3, a2, 16
	addw a4, a5, t0
	ble s3, a3, label312
	mv a2, a3
	j label49
.p2align 2
label240:
	mv a2, s4
	mv a3, zero
.p2align 2
label46:
	sh2add a5, a3, a1
	addiw a3, a3, 4
	lw a4, 0(a5)
	lw t1, 4(a5)
	addw a2, a2, a4
	lw t0, 8(a5)
	addw a4, a2, t1
	addw a2, a4, t0
	lw a4, 12(a5)
	addw s4, a2, a4
	ble s1, a3, label258
	mv a2, s4
	j label46
.p2align 2
label258:
	mv a2, a3
	sh2add a5, a3, a1
	addiw a2, a3, 1
	lw a3, 0(a5)
	addw s4, s4, a3
	ble s0, a2, label565
.p2align 2
label52:
	sh2add a5, a2, a1
	addiw a2, a2, 1
	lw a3, 0(a5)
	addw s4, s4, a3
	bgt s0, a2, label52
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
.p2align 2
label12:
	addiw s5, s5, 1
	bgt s0, s5, label11
	j label16
.p2align 2
label565:
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
.p2align 2
label102:
	addiw s5, s5, 1
	bgt s0, s5, label4
	mv s5, zero
	bgt s0, zero, label11
	j label16
.p2align 2
label99:
	mv s5, zero
	bgt s0, zero, label11
	j label16
.p2align 2
label232:
	addiw a0, a0, 1
	bgt s0, a0, label43
	j label42
.p2align 2
label312:
	mv a2, a4
	j label46
.p2align 2
label398:
	mv a5, zero
	j label71
.p2align 2
label448:
	mv a5, zero
	j label80
