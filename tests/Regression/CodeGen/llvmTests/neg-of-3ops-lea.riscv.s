.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t0
t0:
	li a3, 32
	subw a2, a3, a0
	subw a0, a2, a1
	ret
.p2align 2
.globl t1
t1:
	addw a2, a0, a1
	li a3, 32
	subw a0, a3, a2
	ret
.p2align 2
.globl t2
t2:
	addw a2, a0, a1
	li a3, 32
	subw a0, a3, a2
	ret
.p2align 2
.globl t3
t3:
	addiw a2, a0, -32
	addw a3, a1, a2
	subw a0, zero, a3
	ret
