.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl commonbase
commonbase:
	li t0, 2000
	mul a4, a1, t0
	add a5, a0, a4
	sh2add a3, a2, a5
	lw a1, -2004(a3)
	lw a0, -2000(a3)
	lw t0, -1996(a3)
	addw a2, a1, a0
	lw a5, -4(a3)
	addw a4, a2, t0
	lw a2, 0(a3)
	addw a0, a4, a5
	lw a5, 4(a3)
	addw a1, a0, a2
	lw a0, 1996(a3)
	addw a4, a1, a5
	lw a5, 2000(a3)
	addw a2, a4, a0
	lw a4, 2004(a3)
	addw a1, a2, a5
	addw a0, a1, a4
	ret
