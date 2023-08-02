.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	ori a1, a0, 1
	lui a3, 2
	addiw a2, a3, -1135
	and a0, a1, a2
	ret
