.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
	beq a0, zero, label11
	mv a0, a1
	j label2
label11:
	slt a0, a2, a3
	li a1, 4294967295
	and a0, a0, a1
label2:
	ret
