.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	li a1, -268435441
	addw a0, a0, a1
	ret
.globl test2
test2:
	li a0, 65533
	ret
.globl test3
test3:
	li a1, 65533
	or a0, a0, a1
	ret
