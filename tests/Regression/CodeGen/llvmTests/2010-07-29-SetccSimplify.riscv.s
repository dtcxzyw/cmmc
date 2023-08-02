.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl extend2bit_v2
extend2bit_v2:
	andi a1, a0, 255
	sext.b a2, a1
	xori a3, a2, 3
	sltiu a4, a3, 1
	zext.w a0, a4
	ret
