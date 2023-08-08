.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo4
foo4:
	ble a1, zero, label24
	li a2, 4
	ble a1, a2, label3
	addiw a3, a1, -4
	addiw a5, a1, -20
	li a2, 16
	ble a3, a2, label5
	mv a2, a0
	mv a4, zero
	mv t0, zero
.p2align 2
label13:
	sw a4, 0(a2)
	addiw t2, a4, 4
	addiw t1, a4, 8
	addiw t3, a4, 44
	addiw t0, t0, 16
	sw t2, 4(a2)
	addiw t2, a4, 12
	sw t1, 8(a2)
	addiw t1, a4, 16
	sw t2, 12(a2)
	addiw t2, a4, 20
	sw t1, 16(a2)
	addiw t1, a4, 24
	sw t2, 20(a2)
	addiw t2, a4, 28
	sw t1, 24(a2)
	addiw t1, a4, 32
	sw t2, 28(a2)
	addiw t2, a4, 36
	sw t1, 32(a2)
	addiw t1, a4, 40
	sw t2, 36(a2)
	addiw t2, a4, 48
	sw t1, 40(a2)
	addiw t1, a4, 52
	sw t3, 44(a2)
	sw t2, 48(a2)
	addiw t2, a4, 56
	sw t1, 52(a2)
	addiw t1, a4, 60
	sw t2, 56(a2)
	addiw a4, a4, 64
	sw t1, 60(a2)
	ble a5, t0, label17
	addi a2, a2, 64
	j label13
label17:
	sh2add a2, t0, a0
label6:
	sw a4, 0(a2)
	addiw a5, a4, 4
	addiw t1, a4, 8
	addiw t0, t0, 4
	sw a5, 4(a2)
	addiw a5, a4, 12
	sw t1, 8(a2)
	addiw a4, a4, 16
	sw a5, 12(a2)
	ble a3, t0, label10
	addi a2, a2, 16
	j label6
label10:
	sh2add a0, t0, a0
	mv a2, a4
label19:
	sw a2, 0(a0)
	addiw t0, t0, 1
	addiw a2, a2, 4
	ble a1, t0, label24
	addi a0, a0, 4
	j label19
label24:
	ret
label3:
	mv a2, zero
	mv t0, zero
	j label19
label5:
	mv a2, a0
	mv t0, zero
	mv a4, zero
	j label6
