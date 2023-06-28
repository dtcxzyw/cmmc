.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
	mulw a0, a0, a1
	subw a0, a2, a0
	ret
.globl f2
f2:
	mulw a0, a0, a1
	subw a0, a0, a2
	ret
