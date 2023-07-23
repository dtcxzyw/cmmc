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
	addiw a0, a2, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	j label232
label245:
	li a4, 9
	bge a3, a4, label47
	j label235
label13:
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	j label245
label232:
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	j label245
label76:
	li a0, 9
	sh2add a1, a0, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
label252:
	ble a1, a3, label101
label229:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label26
	j label242
label255:
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	j label252
label89:
	mv s1, zero
	j label20
label101:
	mv a4, zero
	sext.w a3, a3
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	j label229
label242:
	ble a1, zero, label89
	j label255
label20:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label22
	j label20
label47:
	mv a4, zero
	sext.w a3, a3
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
label235:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	j label232
label11:
	sh2add a2, a2, s0
	slliw t0, a3, 1
	sw a5, 0(a2)
	mv a2, a3
	sh2add a5, a3, s0
	sw a4, 0(a5)
	addiw a4, t0, 1
	mv a3, a4
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a1, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label11
	addiw a1, a1, -1
	blt a1, zero, label76
	mv a2, a0
	addiw a0, a0, -2
	addiw a3, a2, 1
	mv a2, a1
	li a4, 10
	bge a3, a4, label13
	li a4, 9
	bge a3, a4, label47
	j label235
label19:
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	j label252
label26:
	sh2add a2, a2, s0
	sh2add t0, a3, s0
	sw a5, 0(a2)
	mv a2, a3
	slliw a5, a3, 1
	sw a4, 0(t0)
	addiw a4, a5, 1
	mv a3, a4
	ble a0, a4, label19
	ble a1, a4, label101
	sh2add a4, a4, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	mv t0, s0
	sh2add a5, a3, s0
	lw a4, 0(s0)
	lw a5, 0(a5)
	ble a4, a5, label26
	ble a1, zero, label89
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
	ble a1, a3, label101
	j label229
label22:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
