.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl X
X:
.p2align 2
	addiw a1, a0, 14
	li a2, 12345
	xor a0, a1, a2
	li a2, 4294967295
	sltu a1, zero, a0
	and a0, a1, a2
	ret
