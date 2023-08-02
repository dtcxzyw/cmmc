.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl X
X:
	addiw a1, a0, 14
	lui a3, 3
	addiw a0, a3, 57
	xor a2, a1, a0
	sltu a1, zero, a2
	zext.w a0, a1
	ret
