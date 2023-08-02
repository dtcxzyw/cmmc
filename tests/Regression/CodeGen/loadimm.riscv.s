.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl imm1
imm1:
	mv a0, zero
	ret
.p2align 2
.globl imm2
imm2:
	li a0, 1
	ret
.p2align 2
.globl imm3
imm3:
	li a0, -1
	ret
.p2align 2
.globl imm4
imm4:
	li a1, 125
	slli a0, a1, 8
	ret
