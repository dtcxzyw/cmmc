.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_ifcvt
test_ifcvt:
	bne a0, zero, label5
	addiw a0, a1, -1
label3:
	ret
label5:
	addiw a0, a1, 1
	j label3
