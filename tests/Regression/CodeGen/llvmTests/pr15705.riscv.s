.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl PR15705
PR15705:
	mv a4, a0
	xor a0, a0, a2
	sltiu a5, a0, 1
	mv a0, a3
	bne a5, zero, label15
	mv a0, a1
label15:
	xor a1, a4, a1
	sltiu a3, a1, 1
	mv a1, a2
	bne a3, zero, label13
	mv a1, a0
label13:
	mv a0, a1
	ret
