.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl func
func:
	li a3, 10
	mv a2, zero
	blt a0, a3, label9
	mv a2, a1
label9:
	mv a0, a2
	ret
