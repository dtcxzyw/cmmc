.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl g
g:
	sh1add a3, a1, a0
	mulw a4, a1, a1
	mulw a2, a0, a3
	addw a0, a2, a4
	ret
