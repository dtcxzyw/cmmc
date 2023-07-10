.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl PR32316
PR32316:
	andi a4, a0, 255
	li a3, 4294967295
	andi a2, a2, 255
	sltiu a0, a4, 1
	and a4, a0, a3
	sltu a3, zero, a2
	sltu a1, a1, a4
	andi a4, a3, 255
	andi a0, a1, 255
	addw a1, a0, a4
	andi a0, a1, 255
	ret
