.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl function
function:
	mv a2, a0
	li a3, 4294967295
	xor a1, a0, a1
	mulw a0, a0, a0
	sltiu a1, a1, 1
	and a0, a0, a3
	bne a1, zero, label12
	mv a0, a2
label12:
	ret
