.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo4
foo4:
.p2align 2
	ble a1, zero, label9
	li a3, 4
	bgt a1, a3, label18
	mv a2, zero
	mv a3, zero
	j label6
label18:
	mv a2, zero
	mv a3, zero
label3:
	sh2add a4, a2, a0
	addiw t0, a3, 4
	addiw a5, a3, 8
	sw a3, 0(a4)
	sw t0, 4(a4)
	addiw t0, a3, 12
	sw a5, 8(a4)
	addiw a3, a3, 16
	addiw a5, a2, 8
	sw t0, 12(a4)
	addiw a4, a2, 4
	bgt a1, a5, label33
	mv a2, a3
	mv a3, a4
	j label6
label33:
	mv a2, a4
	j label3
label6:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw a2, 0(a4)
	addiw a2, a2, 4
	bgt a1, a3, label6
label9:
	ret
