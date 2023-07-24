.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t0
t0:
.p2align 2
	li a2, 32
	subw a3, a2, a0
	subw a0, a3, a1
	ret
.globl t1
t1:
.p2align 2
	addw a2, a0, a1
	li a3, 32
	subw a0, a3, a2
	ret
.globl t2
t2:
.p2align 2
	addw a2, a0, a1
	li a3, 32
	subw a0, a3, a2
	ret
.globl t3
t3:
.p2align 2
	addiw a2, a0, -32
	addw a3, a1, a2
	subw a0, zero, a3
	ret
