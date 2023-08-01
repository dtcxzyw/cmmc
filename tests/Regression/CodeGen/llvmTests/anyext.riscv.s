.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl bar
bar:
	li a3, 65535
	and a1, a1, a3
	and a2, a0, a3
	divw a0, a2, a1
	li a2, 4294967295
	and a1, a0, a2
	andi a0, a1, 1
	ret
.p2align 2
.globl foo
foo:
	andi a2, a0, 255
	andi a3, a1, 255
	divw a0, a2, a3
	li a2, 4294967295
	and a1, a0, a2
	andi a0, a1, 1
	ret
