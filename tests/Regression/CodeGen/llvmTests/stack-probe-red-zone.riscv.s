.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl testStackProbesOff
testStackProbesOff:
.p2align 2
	mv a0, zero
	ret
.globl testStackProbesOn
testStackProbesOn:
.p2align 2
	ret
