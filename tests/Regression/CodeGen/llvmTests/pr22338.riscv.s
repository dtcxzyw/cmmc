.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl fn
fn:
	xori a3, a1, 1
	xori a0, a0, 1
	li a1, 4294967295
	sltiu a2, a3, 1
	and a4, a2, a1
	sltu a2, zero, a4
	subw a3, zero, a2
	andi a4, a3, 2
	and a2, a4, a1
	sltu a4, zero, a0
	and a3, a4, a1
	sllw a2, a3, a2
	and a0, a2, a1
	ret
