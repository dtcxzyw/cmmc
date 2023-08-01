.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	mulw a4, a0, a1
	mv a1, a0
	subw a3, a2, a4
	beq a0, zero, label10
	mv a1, a3
label10:
	mv a0, a1
	ret
