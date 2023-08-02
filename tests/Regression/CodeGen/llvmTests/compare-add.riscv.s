.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl X
X:
	addiw a1, a0, 14
	lui a5, 3
	addiw a2, a5, 57
	xor a4, a1, a2
	sltu a3, zero, a4
	zext.w a0, a3
	ret
