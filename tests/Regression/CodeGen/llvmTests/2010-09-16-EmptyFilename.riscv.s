.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl bar
bar:
	li a0, 21
	ret
.globl foo
foo:
	li a0, 42
	ret
