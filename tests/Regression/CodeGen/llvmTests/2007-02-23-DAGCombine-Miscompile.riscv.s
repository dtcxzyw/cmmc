.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	li a1, -1
	slt a0, a1, a0
	li a1, 2
	subw a0, a1, a0
	ret
