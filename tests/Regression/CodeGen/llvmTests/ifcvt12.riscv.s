.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
	mulw a1, a0, a1
	subw a1, a2, a1
	sltiu a2, a0, 1
	bne a2, zero, label10
	mv a0, a1
label10:
	ret