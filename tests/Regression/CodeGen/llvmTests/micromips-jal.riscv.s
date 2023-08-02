.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	mv a0, zero
	ret
.p2align 2
.globl sum
sum:
	addw a2, a0, a1
	zext.w a0, a2
	ret
