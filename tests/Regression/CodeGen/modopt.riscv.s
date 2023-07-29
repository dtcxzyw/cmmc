.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
.p2align 2
	ble a0, zero, label8
	li a1, 4950
	li a2, 65535
	mul a0, a0, a1
	rem a1, a0, a2
	sext.w a0, a1
	j label2
label8:
	mv a0, zero
label2:
	ret
