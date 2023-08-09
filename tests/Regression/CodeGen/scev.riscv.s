.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo4
foo4:
	ble a1, zero, label30
	li a4, 3
	ble a1, a4, label38
	addiw a3, a1, -3
	addiw a5, a1, -18
	li a2, 15
	ble a3, a2, label44
	mv a2, a0
	mv a4, zero
	mv t0, zero
.p2align 2
label16:
	sw a4, 0(a2)
	addiw t1, a4, 4
	addiw t2, a4, 8
	addiw t3, a4, 20
	addiw t0, t0, 16
	sw t1, 4(a2)
	addiw t1, a4, 12
	sw t2, 8(a2)
	addiw t2, a4, 16
	sw t1, 12(a2)
	addiw t1, a4, 24
	sw t2, 16(a2)
	addiw t2, a4, 28
	sw t3, 20(a2)
	sw t1, 24(a2)
	addiw t1, a4, 32
	sw t2, 28(a2)
	addiw t2, a4, 36
	sw t1, 32(a2)
	addiw t1, a4, 40
	sw t2, 36(a2)
	addiw t2, a4, 44
	sw t1, 40(a2)
	addiw t1, a4, 48
	sw t2, 44(a2)
	addiw t2, a4, 52
	sw t1, 48(a2)
	addiw t1, a4, 56
	sw t2, 52(a2)
	addiw t2, a4, 60
	sw t1, 56(a2)
	addiw a4, a4, 64
	sw t2, 60(a2)
	ble a5, t0, label99
	addi a2, a2, 64
	j label16
label99:
	mv t1, a4
	mv a5, t0
label4:
	ble a3, a5, label48
	sh2add a2, a5, a0
	mv a4, t1
	j label10
label14:
	addi a2, a2, 16
label10:
	sw a4, 0(a2)
	addiw t0, a4, 4
	addiw t1, a4, 8
	addiw a5, a5, 4
	sw t0, 4(a2)
	addiw t0, a4, 12
	sw t1, 8(a2)
	addiw a4, a4, 16
	sw t0, 12(a2)
	bgt a3, a5, label14
	mv a2, a5
	mv a3, a4
label21:
	ble a1, a2, label30
	sh2add a0, a2, a0
	j label25
label29:
	addi a0, a0, 4
label25:
	sw a3, 0(a0)
	addiw a2, a2, 1
	addiw a3, a3, 4
	bgt a1, a2, label29
label30:
	ret
label38:
	mv a2, zero
	mv a3, zero
	j label21
label44:
	mv t1, zero
	mv a5, zero
	mv a4, zero
	mv t0, zero
	j label4
label48:
	mv a2, t0
	mv a3, a4
	j label21
