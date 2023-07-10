.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test5
test5:
	li a1, 65535
	and a2, a0, a1
	slliw a3, a2, 2
	sraiw a4, a3, 8
	and a0, a4, a1
	ret
