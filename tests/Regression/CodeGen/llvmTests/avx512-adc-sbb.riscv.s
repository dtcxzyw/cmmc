.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl PR32316
PR32316:
	andi a0, a0, 255
	andi a2, a2, 255
	sltiu a4, a0, 1
	zext.w a3, a4
	sltu a4, zero, a2
	sltu a1, a1, a3
	andi a3, a4, 255
	andi a0, a1, 255
	addw a1, a0, a3
	andi a0, a1, 255
	ret
