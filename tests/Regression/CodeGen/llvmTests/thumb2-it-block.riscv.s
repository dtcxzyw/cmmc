.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	subw a3, zero, a0
	li a2, 4294967295
	and a3, a3, a2
	blt a0, zero, label22
	mv a3, a0
label22:
	subw a0, zero, a1
	and a0, a0, a2
	blt a1, zero, label24
	mv a0, a1
label24:
	addw a0, a3, a0
	and a0, a0, a2
	ret
