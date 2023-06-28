.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo16
foo16:
	li a1, 65535
	and a0, a0, a1
	andi a0, a0, -4
	and a0, a0, a1
	ret
.globl foo32
foo32:
	andi a0, a0, -4
	ret
