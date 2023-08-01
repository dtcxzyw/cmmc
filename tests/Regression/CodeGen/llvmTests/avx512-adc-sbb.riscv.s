.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl PR32316
PR32316:
	andi a3, a0, 255
	li a4, 4294967295
	sltiu a0, a3, 1
	and a3, a0, a4
	sltu a1, a1, a3
	andi a3, a2, 255
	andi a0, a1, 255
	sltu a4, zero, a3
	andi a2, a4, 255
	addw a1, a0, a2
	andi a0, a1, 255
	ret
