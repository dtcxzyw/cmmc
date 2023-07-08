.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	sltu a1, zero, a1
	li a2, 4294967295
	subw a1, zero, a1
	andi a1, a1, 2
	and a2, a1, a2
	li a1, 1
	bne a0, zero, label12
	mv a1, a2
label12:
	mv a0, a1
	ret
