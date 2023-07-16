.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	4000
.text
.globl main
main:
	addi sp, sp, -40
	sd s1, 32(sp)
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	ble s1, zero, label2
	j label30
label2:
	addiw a1, s1, -1
	mv a0, zero
	bne zero, a1, label8
	j label23
label8:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(label8)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	ble a1, a0, label16
	sh2add a5, a0, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add t1, a0, s1
	addiw s2, a0, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a0, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	j label148
label16:
	sh2add a3, s2, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	bne s0, s2, label20
	mv s0, zero
	ble s2, zero, label23
label19:
	sh2add a1, s0, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s0, s0, 1
	ble s2, s0, label23
	j label19
label14:
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
label147:
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	ble a1, a2, label16
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	j label147
label148:
	sh2add a5, a2, s1
	lw a4, 0(a5)
	blt a3, a4, label14
	j label147
label20:
	bge s0, s2, label21
	addiw a1, s2, -1
	bne a0, a1, label8
	j label23
label21:
	addiw a0, s2, 1
	bne a0, a1, label8
label23:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label30:
	auipc a1, %pcrel_hi(array)
	mv s3, zero
	addi s2, a1, %pcrel_lo(label30)
label25:
	jal getint
	sh2add a1, s3, s2
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s1, s3, label2
	j label25
