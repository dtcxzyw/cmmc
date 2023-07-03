.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl call
call:
	ret
.globl manyargs
manyargs:
	sext.b t0, a0
	sext.h a1, a1
	li a0, 4294967295
	and t0, t0, a0
	and a0, a1, a0
	andi a1, a2, 255
	addw a0, t0, a0
	addw a1, a0, a1
	li a0, 65535
	and a2, a3, a0
	and a0, a5, a0
	addw a1, a1, a2
	andi a2, a4, 255
	addw a1, a1, a2
	addw a0, a1, a0
	ret
