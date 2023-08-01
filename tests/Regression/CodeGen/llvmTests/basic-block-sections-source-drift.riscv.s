.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	li a2, 2
	bne a1, zero, label11
	mv a2, zero
label11:
	li a3, 4294967295
	li a1, 1
	and a2, a2, a3
	bne a0, zero, label13
	mv a1, a2
label13:
	mv a0, a1
	ret
