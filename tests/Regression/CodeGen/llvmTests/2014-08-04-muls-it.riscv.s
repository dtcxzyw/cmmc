.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl function
function:
	mulw a2, a0, a0
	li a4, 4294967295
	and a3, a2, a4
	mv a2, a3
	beq a0, a1, label12
	mv a2, a0
label12:
	mv a0, a2
	ret
