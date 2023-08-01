.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl ashr
ashr:
	li a0, -1
	ret
.p2align 2
.globl ashr_reg
ashr_reg:
	srlw a0, a0, a1
	ret
.p2align 2
.globl lshr
lshr:
	li a0, -1
	ret
.p2align 2
.globl lshr_reg
lshr_reg:
	srlw a0, a0, a1
	ret
.p2align 2
.globl shl
shl:
	li a0, -4
	ret
.p2align 2
.globl shl_reg
shl_reg:
	sllw a0, a0, a1
	ret
