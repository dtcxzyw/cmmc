.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo4
foo4:
	mv a2, a0
	ble a1, zero, label9
	mv a0, zero
	mv a4, zero
label2:
	addiw a3, a4, 4
	ble a1, a3, label6
	sh2add a4, a4, a2
	addiw a5, a0, 4
	addiw t0, a0, 8
	sw a0, 0(a4)
	sw a5, 4(a4)
	addiw a5, a0, 12
	sw t0, 8(a4)
	addiw a0, a0, 16
	sw a5, 12(a4)
	mv a4, a3
	j label2
label6:
	sh2add a3, a4, a2
	addiw a4, a4, 1
	sw a0, 0(a3)
	addiw a0, a0, 4
	bgt a1, a4, label6
label9:
	ret
