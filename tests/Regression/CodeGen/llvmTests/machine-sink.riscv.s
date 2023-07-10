.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	addiw a3, a1, 2
	mv a2, a3
	bltu a0, a1, label8
	li a2, 1
label8:
	mv a0, a2
	ret
