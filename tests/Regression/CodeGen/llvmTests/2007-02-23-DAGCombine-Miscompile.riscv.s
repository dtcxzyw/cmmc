.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	li a2, -1
	li a3, 2
	slt a1, a2, a0
	subw a0, a3, a1
	ret
