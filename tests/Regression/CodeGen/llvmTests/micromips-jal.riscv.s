.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	mv a0, zero
	ret
.globl sum
sum:
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret