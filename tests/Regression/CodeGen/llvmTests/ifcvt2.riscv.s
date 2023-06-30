.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t1
t1:
	li a4, 10
	slt a4, a4, a2
	slti a5, a3, 4
	or a4, a4, a5
	sltu a4, zero, a4
	addw a1, a0, a1
	addw a0, a2, a1
	subw a0, a0, a3
	bne a4, zero, label20
	mv a0, a1
label20:
	ret
.globl t2
t2:
	li a4, 10
	slt a4, a4, a2
	slti a5, a3, 4
	and a4, a4, a5
	addw a1, a0, a1
	addw a0, a2, a1
	subw a0, a0, a3
	bne a4, zero, label37
	mv a0, a1
label37:
	ret
