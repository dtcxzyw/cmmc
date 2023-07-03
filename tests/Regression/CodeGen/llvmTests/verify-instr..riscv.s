.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl mulw
mulw:
	mv a2, a0
	mv a3, a1
	bge a0, a1, label16
	addiw a1, a0, 1
	ble a3, a1, label21
	li a2, 4294967295
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	j label65
label16:
	li a0, 1
	j label8
label65:
	li a2, 4294967295
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	j label66
label8:
	ret
label21:
	li a1, 4294967295
	and a0, a0, a1
	j label8
label66:
	li a2, 4294967295
	and a0, a0, a2
	and a1, a1, a2
	mulw a0, a1, a0
	addiw a1, a1, 1
	ble a3, a1, label21
	j label66
