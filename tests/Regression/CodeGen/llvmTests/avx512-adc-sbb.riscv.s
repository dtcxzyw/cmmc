.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl PR32316
PR32316:
	andi a3, a0, 255
	sltiu a5, a3, 1
	zext.w a4, a5
	andi a5, a2, 255
	sltu a0, a1, a4
	sltu t0, zero, a5
	andi a3, a0, 255
	andi a4, t0, 255
	addw a1, a3, a4
	andi a0, a1, 255
	ret
