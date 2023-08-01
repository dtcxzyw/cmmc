.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl bar
bar:
	sltu a0, zero, a0
	ret
.p2align 2
.globl foo
foo:
	mv a0, zero
	ret
