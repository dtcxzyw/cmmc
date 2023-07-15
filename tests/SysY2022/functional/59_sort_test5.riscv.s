.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 9
	li a3, 5
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a1, 0(sp)
	sw a0, 4(sp)
	li a0, 2
	sw a2, 8(sp)
	li a2, 6
	sw a0, 12(sp)
	li a0, 1
	sw zero, 16(sp)
	sw a0, 20(sp)
	li a0, 7
	sw a2, 24(sp)
	li a2, 8
	sw a3, 28(sp)
	sw a0, 32(sp)
	sw a2, 36(sp)
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	j label231
label244:
	li a3, 9
	bge a2, a3, label46
	j label234
label12:
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	j label244
label231:
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	j label244
label75:
	li a0, 9
	sh2add a1, a0, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
label251:
	ble a1, a3, label100
label228:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label25
	j label241
label254:
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	j label251
label88:
	mv s1, zero
	j label19
label100:
	mv a4, zero
	sext.w a3, a3
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	j label228
label241:
	ble a1, zero, label88
	j label254
label19:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label21
	j label19
label46:
	mv a3, zero
	sext.w a2, a2
	sh2add a5, a0, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
label234:
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a0, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	j label231
label10:
	sh2add a0, a0, s0
	slliw a5, a2, 1
	sw a4, 0(a0)
	mv a0, a2
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a3, a5, 1
	mv a2, a3
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a0, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	sh2add a3, a2, s0
	lw a4, 0(a3)
	lw a5, 4(a3)
	slt a3, a4, a5
	addw a2, a2, a3
	sh2add a5, a1, s0
	sh2add a4, a2, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	ble a3, a4, label10
	addiw a1, a1, -1
	blt a1, zero, label75
	slliw a3, a1, 1
	mv a0, a1
	addiw a2, a3, 1
	li a3, 10
	bge a2, a3, label12
	li a3, 9
	bge a2, a3, label46
	j label234
label18:
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	j label251
label25:
	sh2add t0, a2, s0
	sh2add a2, a3, s0
	sw a5, 0(t0)
	slliw a5, a3, 1
	sw a4, 0(a2)
	mv a2, a3
	addiw a4, a5, 1
	mv a3, a4
	ble a0, a4, label18
	ble a1, a4, label100
	sh2add a4, a4, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label25
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label18
	ble a1, a3, label100
	j label228
label21:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
