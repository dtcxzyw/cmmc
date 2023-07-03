.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl fn
fn:
	xori a1, a1, 1
	xori a0, a0, 1
	sltiu a2, a1, 1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	and a2, a2, a1
	and a0, a0, a1
	sltu a2, zero, a2
	subw a2, zero, a2
	andi a2, a2, 2
	and a2, a2, a1
	sllw a0, a0, a2
	and a0, a0, a1
	ret
