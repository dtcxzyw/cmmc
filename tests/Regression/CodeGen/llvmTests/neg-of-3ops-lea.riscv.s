.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t0
t0:
	li a2, 32
	subw a0, a2, a0
	subw a0, a0, a1
	ret
.globl t1
t1:
	addw a0, a0, a1
	li a1, 32
	subw a0, a1, a0
	ret
.globl t2
t2:
	addw a0, a0, a1
	li a1, 32
	subw a0, a1, a0
	ret
.globl t3
t3:
	addiw a0, a0, -32
	addw a0, a1, a0
	subw a0, zero, a0
	ret
