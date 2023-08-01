.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	divuw a0, a1, a0
	addiw a3, a2, 1
	li a2, 4294967295
	addw a1, a0, a3
	and a0, a1, a2
	ret
.p2align 2
.globl f2
f2:
	remuw a0, a1, a0
	subw a2, a2, a3
	li a3, 4294967295
	addw a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl f3
f3:
	addw a2, a0, a1
	subw a3, a0, a1
	mulw a0, a2, a3
	ret
.p2align 2
.globl f4
f4:
	subw a0, a0, a1
	subw a4, a1, a2
	subw a2, a2, a3
	divuw a1, a0, a4
	mulw a0, a1, a2
	ret
