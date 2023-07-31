.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo4
foo4:
.p2align 2
	ble a1, zero, label13
	li a3, 4
	ble a1, a3, label21
	addiw a3, a1, -4
	addiw a5, a1, -20
	li a2, 16
	ble a3, a2, label27
	mv a2, zero
	mv a4, zero
label4:
	sh2add t0, a4, a0
	addiw t1, a2, 4
	addiw t2, a2, 8
	addiw a4, a4, 16
	sw a2, 0(t0)
	sw t1, 4(t0)
	addiw t1, a2, 12
	sw t2, 8(t0)
	addiw t2, a2, 16
	sw t1, 12(t0)
	addiw t1, a2, 20
	sw t2, 16(t0)
	addiw t2, a2, 24
	sw t1, 20(t0)
	addiw t1, a2, 28
	sw t2, 24(t0)
	addiw t2, a2, 32
	sw t1, 28(t0)
	addiw t1, a2, 36
	sw t2, 32(t0)
	addiw t2, a2, 40
	sw t1, 36(t0)
	addiw t1, a2, 44
	sw t2, 40(t0)
	addiw t2, a2, 48
	sw t1, 44(t0)
	addiw t1, a2, 52
	sw t2, 48(t0)
	addiw t2, a2, 56
	sw t1, 52(t0)
	addiw t1, a2, 60
	sw t2, 56(t0)
	addiw a2, a2, 64
	sw t1, 60(t0)
	bgt a5, a4, label4
label7:
	sh2add a5, a4, a0
	addiw t0, a2, 4
	addiw t1, a2, 8
	addiw a4, a4, 4
	sw a2, 0(a5)
	sw t0, 4(a5)
	addiw t0, a2, 12
	sw t1, 8(a5)
	addiw a2, a2, 16
	sw t0, 12(a5)
	bgt a3, a4, label7
	mv a3, a4
label10:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw a2, 0(a4)
	addiw a2, a2, 4
	bgt a1, a3, label10
label13:
	ret
label21:
	mv a2, zero
	mv a3, zero
	j label10
label27:
	mv a4, zero
	mv a2, zero
	j label7
