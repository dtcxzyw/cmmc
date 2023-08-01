.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	andi a3, a0, 3
	li a4, 1
	mv a0, a1
	beq a3, a4, label11
	mv a0, a2
label11:
	ret
