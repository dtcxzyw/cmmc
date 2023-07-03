.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	andi a0, a0, 255
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	li a1, 65535
	and a1, a0, a1
	beq a0, zero, label14
	divw a0, a0, zero
	li a1, 65535
	and a0, a0, a1
	andi a0, a0, 255
	sext.b a0, a0
	li a1, 4294967295
	and a0, a0, a1
	j label3
label14:
	andi a0, a1, 255
	sext.b a0, a0
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
