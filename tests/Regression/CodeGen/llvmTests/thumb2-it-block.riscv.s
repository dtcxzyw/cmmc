.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	subw a2, zero, a0
	li a3, 4294967295
	slti a4, a0, 0
	and a2, a2, a3
	bne a4, zero, label24
	mv a2, a0
label24:
	subw a0, zero, a1
	slti a4, a1, 0
	and a0, a0, a3
	bne a4, zero, label22
	mv a0, a1
label22:
	addw a0, a2, a0
	and a0, a0, a3
	ret
