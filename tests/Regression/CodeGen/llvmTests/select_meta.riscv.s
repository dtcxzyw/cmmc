.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	andi a0, a0, 3
	xori a0, a0, 1
	sltiu a3, a0, 1
	mv a0, a1
	bne a3, zero, label10
	mv a0, a2
label10:
	ret
