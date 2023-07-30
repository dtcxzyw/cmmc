.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl fn
fn:
.p2align 2
	xori a3, a1, 1
	li a1, 4294967295
	sltiu a2, a3, 1
	and a3, a2, a1
	li a2, 2
	bne a3, zero, label22
	mv a2, zero
label22:
	and a2, a2, a1
	xori a0, a0, 1
	sltu a3, zero, a0
	and a4, a3, a1
	sllw a2, a4, a2
	and a0, a2, a1
	ret
