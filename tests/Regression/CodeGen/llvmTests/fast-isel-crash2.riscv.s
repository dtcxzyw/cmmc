.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	andi a0, a0, 255
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
	ret
