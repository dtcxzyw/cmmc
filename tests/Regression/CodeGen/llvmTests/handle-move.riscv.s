.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
	addiw a2, a2, 1
	divuw a0, a1, a0
	addw a0, a2, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f2
f2:
	remuw a0, a1, a0
	subw a1, a2, a3
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f3
f3:
	addw a2, a0, a1
	subw a0, a0, a1
	mulw a0, a2, a0
	ret
.globl f4
f4:
	subw a0, a0, a1
	subw a1, a1, a2
	divuw a0, a0, a1
	subw a1, a2, a3
	mulw a0, a1, a0
	ret
