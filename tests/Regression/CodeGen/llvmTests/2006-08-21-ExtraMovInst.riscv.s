.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	mv a2, a1
	addiw a3, a0, 1
	li a4, 39
	ble a1, a4, label11
label2:
	ret
label11:
	mv a1, a3
	addiw a3, a3, 1
	li a4, 40
	blt a2, a4, label11
	mv a0, a1
	j label2
