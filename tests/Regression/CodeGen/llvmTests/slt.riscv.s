.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl sgt
sgt:
	li a2, 32767
	li a1, 7
	bgt a0, a2, label11
	li a1, 5
label11:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl slt
slt:
	slti a0, a0, 7
	li a1, 4
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
