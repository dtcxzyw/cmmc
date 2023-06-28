.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	addiw a0, a0, 1
	ret
.globl test2
test2:
	addiw a0, a0, 4
	ret
