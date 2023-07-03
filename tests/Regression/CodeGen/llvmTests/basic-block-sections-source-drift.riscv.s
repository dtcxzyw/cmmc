.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	sltu a1, zero, a1
	li a2, 4294967295
	subw a1, zero, a1
	andi a1, a1, 2
	and a1, a1, a2
	sltu a2, zero, a0
	li a0, 1
	bne a2, zero, label12
	mv a0, a1
label12:
	ret
