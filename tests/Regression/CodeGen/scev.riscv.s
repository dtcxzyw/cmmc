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
	ble a3, a2, label57
	mv a2, a0
	mv a4, zero
	mv t0, zero
	j label25
.p2align 2
label29:
	addi a2, a2, 64
.p2align 2
label25:
	sw a4, 0(a2)
	addiw t1, a4, 4
	addiw t2, a4, 8
	addiw t3, a4, 12
	addiw t0, t0, 16
	sw t1, 4(a2)
	addiw t1, a4, 16
	sw t2, 8(a2)
	addiw t2, a4, 20
	sw t3, 12(a2)
	addiw t3, a4, 36
	sw t1, 16(a2)
	addiw t1, a4, 24
	sw t2, 20(a2)
	addiw t2, a4, 28
	sw t1, 24(a2)
	addiw t1, a4, 32
	sw t2, 28(a2)
	addiw t2, a4, 40
	sw t1, 32(a2)
	addiw t1, a4, 44
	sw t3, 36(a2)
	sw t2, 40(a2)
	addiw t2, a4, 48
	sw t1, 44(a2)
	addiw t1, a4, 52
	sw t2, 48(a2)
	addiw t2, a4, 56
	sw t1, 52(a2)
	addiw t1, a4, 60
	sw t2, 56(a2)
	addiw a4, a4, 64
	sw t1, 60(a2)
	bgt a5, t0, label29
	mv t1, a4
	mv a5, t0
label13:
	ble a3, a5, label61
	sh2add a2, a5, a0
	mv a4, t1
	j label19
label23:
	addi a2, a2, 16
label19:
	sw a4, 0(a2)
	addiw t0, a4, 4
	addiw t1, a4, 8
	addiw a5, a5, 4
	sw t0, 4(a2)
	addiw t0, a4, 12
	sw t1, 8(a2)
	addiw a4, a4, 16
	sw t0, 12(a2)
	bgt a3, a5, label23
	mv a2, a5
	mv a3, a4
label3:
	ble a1, a2, label30
	sh2add a0, a2, a0
	j label7
label11:
	addi a0, a0, 4
label7:
	addiw a2, a2, 1
	sw a3, 0(a0)
	addiw a3, a3, 4
	bgt a1, a2, label11
label30:
	ret
label38:
	mv a2, zero
	mv a3, zero
	j label3
label57:
	mv t1, zero
	mv a5, zero
	mv a4, zero
	mv t0, zero
	j label13
label61:
	mv a2, t0
	mv a3, a4
	j label3
