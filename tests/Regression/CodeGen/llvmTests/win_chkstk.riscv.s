.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl dont_crash
dont_crash:
.p2align 2
	ret
.globl main128
main128:
.p2align 2
	mv a0, zero
	ret
.globl main4k
main4k:
.p2align 2
	mv a0, zero
	ret
.globl main4k_win64
main4k_win64:
.p2align 2
	mv a0, zero
	ret
