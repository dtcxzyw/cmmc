.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl ashr
ashr:
.p2align 2
	li a0, -1
	ret
.globl ashr_reg
ashr_reg:
.p2align 2
	srlw a0, a0, a1
	ret
.globl lshr
lshr:
.p2align 2
	li a0, -1
	ret
.globl lshr_reg
lshr_reg:
.p2align 2
	srlw a0, a0, a1
	ret
.globl shl
shl:
.p2align 2
	li a0, -4
	ret
.globl shl_reg
shl_reg:
.p2align 2
	sllw a0, a0, a1
	ret
