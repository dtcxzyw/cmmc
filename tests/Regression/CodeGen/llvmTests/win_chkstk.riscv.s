.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl dont_crash
dont_crash:
	ret
.p2align 2
.globl main128
main128:
	mv a0, zero
	ret
.p2align 2
.globl main4k
main4k:
	mv a0, zero
	ret
.p2align 2
.globl main4k_win64
main4k_win64:
	mv a0, zero
	ret
