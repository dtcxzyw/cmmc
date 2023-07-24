.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl bar
bar:
.p2align 2
	li a2, 65535
	and a1, a1, a2
	and a3, a0, a2
	li a2, 4294967295
	divw a0, a3, a1
	and a1, a0, a2
	andi a0, a1, 1
	ret
.globl foo
foo:
.p2align 2
	andi a2, a0, 255
	andi a3, a1, 255
	li a1, 4294967295
	divw a0, a2, a3
	and a2, a0, a1
	andi a0, a2, 1
	ret
